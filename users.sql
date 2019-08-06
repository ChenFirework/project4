SET NAMES UTF8;
DROP DATABASE IF EXISTS tb;
CREATE DATABASE tb CHARSET=UTF8;
USE tb;
CREATE TABLE tb_user(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	tname VARCHAR(16),
	tpwd VARCHAR(21),
	email VARCHAR(32),
	phone CHAR(11),
	sex BOOL
);
INSERT INTO tb_user VALUES(null,"诸葛亮","zgl123456","zgl@163.com","18112345678",1);
INSERT INTO tb_user VALUES(null,"黄月英","hyy123456","hyy@163.com","18212345678",0);
INSERT INTO tb_user VALUES(null,"孙尚香","ssx123456","ssx@163.com","18312345678",0);
INSERT INTO tb_user VALUES(null,"刘玄德","lxd123456","lxd@163.com","18412345678",1);
INSERT INTO tb_user VALUES(null,"沈梦溪","smx123456","smx@163.com","18512345678",1);
INSERT INTO tb_user VALUES(null,"曹阿瞒","cam123456","can@163.com","18612345678",1);
INSERT INTO tb_user VALUES(null,"周公瑾","zgj123456","zgj@163.com","18712345678",1);
INSERT INTO tb_user VALUES(null,"陆伯言","lby123456","lby@163.com","18812345678",1);
INSERT INTO tb_user VALUES(null,"夏侯渊","xhy123456","xhy@163.com","18912345678",1);
INSERT INTO tb_user VALUES(null,"郭奉孝","gfx123456","zgl@163.com","19012345678",1);
INSERT INTO tb_user VALUES(null,"孙仲谋","szm123456","szm@163.com","19112345678",1);
INSERT INTO tb_user VALUES(null,"赵子龙","zzl123456","zzl@163.com","19212345678",1);
INSERT INTO tb_user VALUES(null,"张翼德","zyd123456","zyd@163.com","19312345678",1);
INSERT INTO tb_user VALUES(null,"吕奉先","lfx123456","lfx@163.com","19412345678",1);
INSERT INTO tb_user VALUES(null,"关云长","gyc123456","gyc@163.com","19512345678",1);
INSERT INTO tb_user VALUES(null,"袁本初","ybc123456","ybc@163.com","19612345678",1);
INSERT INTO tb_user VALUES(null,"司马懿","smy123456","smy@163.com","19712345678",1);
INSERT INTO tb_user VALUES(null,"张春华","zch123456","zch@163.com","19812345678",0);
INSERT INTO tb_user VALUES(null,"孙伯符","sbf123456","sbf@163.com","19912345678",1);











