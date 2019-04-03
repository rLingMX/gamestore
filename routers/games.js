//引入express模块
const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//创建空路由
var router = express.Router();
//获取游戏列表
router.get('/list',(req,res)=>{
    var key = req.query.k;
    var keywords = req.query.kw;
    if(!key){key = 1};
    if(!keywords){keywords = 1};
    pool.query('SELECT g_id,g_name,g_img,g_price FROM game_list WHERE ? = ?',[key,keywords],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
});
//获取游戏详情
router.get('/details',(req,res)=>{
    var g_id = req.query.g_id;
    if(!g_id){
        res.send({code:0,msg:"商品id为空!"});
        return;
    }
    pool.query('SELECT g_id,g_name,g_date,g_price,g_dlc_id,g_platform,g_game_type,g_esrb_rating,g_players,g_details,g_publisher,g_developers,g_img,g_details_img FROM game_list WHERE g_id = ?',[g_id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
});
// 获取留言信息
router.get('/msg',(req,res)=>{
   var g_id = req.query.g_id;
   if(!g_id){
       res.send({code:0,msg:"获取留言失败"});
   }
   pool.query('SELECT gc_id,g_id,gc_content,u_name,gc_time FROM game_comments WHERE g_id = ?',[g_id],(err,result)=>{
       if(err) throw err;
       res.send({code:1,data:result})
   })
});
// 添加留言
router.post('/addMsg',(req,res)=>{
    var g_id = req.body.g_id;
    var gc_content = req.body.gc_content;
    var u_name = 'lingmx';   //----------------------------------------------------------------待修改
    pool.query('INSERT INTO game_comments VALUES(null,?,?,?,now())',[g_id,gc_content,u_name],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"添加成功"})
    })
});
//导出模块
module.exports=router;