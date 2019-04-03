//引入express模块
const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//创建空路由
var router = express.Router();
//登录
router.get('/login',(req,res)=>{
    //获取用户名密码
    var obj=req.query;
    var u=obj.u_name;
    var p=obj.u_pwd;
    //检查用户是否存在
    pool.query('SELECT u_id,u_name FROM user_list WHERE u_name=? AND u_pwd=md5(?)',[u,p],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            req.session.uid = result[0].u_id;
            req.session.uname = result[0].u_name;
            res.send({code:1,msg:"登录成功"});
        }else{
            res.send({code:0,msg:"登录失败，用户名或密码错误"});
        }
    })
});
// 返回是否登录
router.get('/isLogin',(req,res)=>{
    var u_id = req.session.uid;
    var u_name = req.session.uname;
    if(u_id == null ||u_name == null){
        res.send({code:0,msg:"未登录"});
    }else{
        res.send({code:1,uname:u_name,uid:u_id});
    }
});
// 退出登录
router.get('/logout',(req,res)=>{
    req.session.uid = null;
    req.session.uname = null;
    res.send({code:1,msg:"退出成功"});
});
// 返回用户收货地址
router.get('/address',(req,res)=>{
    //获取用户id
    var u_id = req.session.uid;
    pool.query('SELECT u_name,u_tel,u_address FROM user_list WHERE u_id= ?',[u_id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
});
//导出模块
module.exports=router;