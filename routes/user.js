const express=require('express');

const pool=require('../pool.js');

var router=express.Router();
//登录接口 get
router.get('/v1/login/:tname&:tpwd',function(req,res){
	var $tname=req.params.tname;
	var $tpwd=req.params.tpwd;
	var sql='select * from tb_user where tname=? and tpwd=?';
	pool.query(sql,[$tname,$tpwd],function(err,result){
		if(err) throw err;
		if (result.length==0)
		{
			res.send("0");
		}else{
			res.send("1");
		}
	});
});
//查询所有用户 get
router.get('/v1/userlist',function(req,res){
	var sql='select * from tb_user';
	pool.query(sql,function(err,result){
		if(err) throw err;
		//console.log(result);
		res.send(result);
	});
});
//根据uid删除用户 delete
router.delete('/v1/deluser/:tid',function(req,res){
	var $tid=req.params.tid;
	var sql='delete from tb_user where tid=?';
	pool.query(sql,[$tid],function(err,result){
		if(err) throw err;
		if (result.affectedRows>0)
		{
			res.send('1');
		}else{
			res.send('0');
		}
	});
});
//根据uid查询某一个用户 get
router.get('/v1/searchuser/:tid',function(req,res){
	var $tid=req.params.tid;
	var sql='select * from tb_user where tid=?';
	pool.query(sql,[$tid],function(err,result){
		if(err) throw err;
		//console.log(result);
		res.send(result);
	});
});
//注册 post   有请求主体
router.post('/v1/register',function(req,res){
	var obj=req.body;
	var sql='insert into tb_user set ?';
	pool.query(sql,[obj],function(err,result){
		if(err) throw err;
		if (result.affectedRows>0)
		{
			res.send("1");
		}else{
			res.send("0");
		}
	});
});
//修改用户信息 put 有请求主体
router.put('/v1/updateuser',function(req,res){
	var obj=req.body;
	//console.log(obj);
	var sql='update tb_user set ? where tid=?';
	pool.query(sql,[obj,obj.tid],function(err,result){
		if(err) throw err;

		if (result.affectedRows>0)
		{
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//查询用户名是否已存在
router.get("/v1/checktname",function(req,res){
	var $tname=req.query.tname;
	pool.query("select tname from tb_user where tname=?",[$tname],function(err,result){
		if(err) throw err;
		if (result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});




module.exports=router;










