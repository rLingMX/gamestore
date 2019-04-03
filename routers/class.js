//引入express模块
const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//创建空路由
var router = express.Router();
//获取分类列表
router.get('/class',(req,res)=>{
   pool.query('SELECT i_id,i_name,img_url,i_color FROM index_news',(err,result)=>{
       if(err) throw err;
       res.send({code:1,data:result});
   })
});
//导出模块
module.exports=router;