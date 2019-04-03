//引入express模块
const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//创建空路由
var router = express.Router();
//获取轮播图信息
router.get('/shuffling',(req,res)=>{
   pool.query("SELECT s_id,s_name,img_url FROM index_shuffling ORDER BY s_id DESC LIMIT 0,4",(err,result)=>{
       if(err) throw err;
       res.send({code:1,data:result});
   })
});
//获取首页导航信息
router.get('/navbar',(req,res)=>{
    pool.query('SELECT nav_id,nav_name,nav_icon FROM index_navbar ORDER BY nav_id DESC LIMIT 0,4',(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
});
//获取首页推荐信息
router.get('/recommended',(req,res)=>{
    pool.query('SELECT r_id,r_name,img_url,r_price FROM index_recommended ORDER BY r_id DESC LIMIT 0,4',(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
});


//导出模块
module.exports=router;