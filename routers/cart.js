//引入express模块
const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//创建空路由
var router = express.Router();
//获取购物车列表
router.get('/cart',(req,res)=>{
    var u_id = req.session.uid;
    if(!u_id){
        res.send({code:0,msg:"请登录"});
        return;
    }
    pool.query('SELECT sc_id,u_id,g_id,g_name,g_price,sc_count,g_img,sc_time FROM shopping_cart WHERE u_id = ?',[u_id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
});
//将商品添加到购物车
router.post("/add",(req,res)=>{
    // 1.获取参数
    var u_id = req.session.uid;
    var g_id = req.body.g_id;
    var g_price = req.body.g_price;
    var g_name = req.body.g_name;
    var g_img = req.body.g_img;
    // 2.判断用户是否登录
    if(!u_id){
        res.send({code:0,msg:"请登录"});
        return;
    }
    // 3.如果未登录 程序停止
    // 4.创建SQL语句查询当前用户是否添加过次商品
    var sql = "SELECT sc_id FROM shopping_cart WHERE u_id= ? AND g_id = ?";
    pool.query(sql,[u_id,g_id],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            // 5.创建SQL语句如果没有查询结果添加次商品
            var sql = `INSERT INTO shopping_cart VALUES(null,${u_id},${g_id},'${g_name}',${g_price},1,'${g_img}',now())`;
        }else{
            // 6.创建SQL语句如果没有结果更新数量
            var sql = `UPDATE shopping_cart SET sc_count = sc_count+1 WHERE u_id = ${u_id} AND g_id = ${g_id}`;
        }
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            res.send({code:1,msg:"添加成功"})
        })

    })
});
//更改商品数量
router.get("/changeCount",(req,res)=>{
    var u_id = 1;
    var g_id = req.query.g_id;
    var sc_count = req.query.sc_count;
    pool.query('UPDATE shopping_cart SET sc_count = ? WHERE u_id = ? AND g_id = ?',[sc_count,u_id,g_id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"添加成功"})
    })
});
//删除商品
router.get("/delItem",(req,res)=>{
   var sc_id = req.query.sc_id;
   pool.query('DELETE FROM shopping_cart WHERE sc_id = ?',[sc_id],(err,result)=>{
       if(err) throw err;
       res.send({code:1,msg:"删除成功"})
   })
});
//删除多个商品
// 功能十一:删除用户选中(多个)商品
router.get('/delItems',(req,res)=>{
    var ids = req.query.sc_id;
    var sql = "DELETE FROM shopping_cart WHERE sc_id IN ("+ids+")";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        // 执行SQL语句影响的行数
        // INSERT UPDATA DELETE 的判断条件
        if(result.affectedRows > 0){
            res.send({code:1,msg:'成功删除多个商品'})
        }else{
            res.send({code:-1,msg:'删除失败'})
        }
    })
})
//导出模块
module.exports=router;