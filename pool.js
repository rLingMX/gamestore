//创建连接池
const mysql=require('mysql');
//建立数据库连接
var pool=mysql.createPool({
	host     : process.env.MYSQL_HOST,
    port     : process.env.MYSQL_PORT,
    user     : process.env.ACCESSKEY,
    password : process.env.SECRETKEY,
    database : 'app_' + process.env.APPNAME,
	connectionLimit:3,
	multipleStatements: true  //允许执行多条SQL语句
});
//导出连接池对象
module.exports=pool;