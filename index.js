//引入express模块
const express=require('express');
//引入body-parser
const bodyParser=require('body-parser');
//引入cors模块
const cors = require("cors");
//引入模块
const login = require('./routers/login.js');
const index = require('./routers/index.js');
const GSclass = require('./routers/class.js');
const games = require('./routers/games.js');
const cart = require('./routers/cart.js')

//创建web服务器
var server=express();
//配置允许访问列
server.use(cors({
    origin: ["http://127.0.0.1:8888", "http://localhost:8888"],
    credentials: true
}));

// 3.11 加载模块 express-session
const session = require("express-session");
// 3.12 配置模块
server.use(session({
    secret:"LingMX的任天堂商店",
    resave:false,
    saveUninitialized:true,
    cookie:{
        maxAge:1000*60*60
    }
}));

//监听端口
server.listen(8686,()=>{
    console.log('Krypton gold！Krypton gold！Krypton gold！');
});
//托管静态资源到public
server.use(express.static('public'));
//配置中间件
server.use(bodyParser.urlencoded({
    extended:false
}));
//挂载模块
server.use('/user',login);
server.use('/home',index);
server.use('/store',GSclass);
server.use('/game',games);
server.use('/shop',cart);
