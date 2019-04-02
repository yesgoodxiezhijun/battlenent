SET NAMES UTF8;
DROP DATABASE IF EXISTS baoxue;
CREATE DATABASE baoxue CHARSET=UTF8;
USE baoxue;

CREATE TABLE bx_login (
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname varchar(25) ,
  upwd varchar(32) 
);
INSERT INTO bx_login VALUES(null,"tom",md5(123));

CREATE TABLE bx_cart(
   cid INT PRIMARY KEY AUTO_INCREMENT, 
   count INT(100),
   img_url varchar(255),
   title varchar(255),
   price INT(11),
   pid   INT(200),
   uid   INT(200)
);




CREATE TABLE bx_index(
  pid INT PRIMARY KEY AUTO_INCREMENT, 
  title varchar(255),
  img_url varchar(255) ,
  price int(11) ,
  texitem varchar(255) ,
  img_urllun varchar(255) ,
  img_urltwo varchar(255) 
);
INSERT INTO bx_index VALUES(null, '2018暴雪嘉年华大礼包', 'http://127.0.0.1:3000/image/download1.jpg', 39, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '半藏卫衣', 'http://127.0.0.1:3000/image/download2.jpg', 39, '打开专属你的嘉联华', 'a93c0242910d73499f1e002006a282fb.png|eb1e3538f4bf5f729c6655f02fc8e1ab.jpg|c2442ffb8dcfc415f50bf9725b32491b.jpg|e1dd27b08c6a089b4c1441a87445c669.jpg|3e0df7f9036cded07bc6609ca6d577c7.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '2018暴雪嘉年华大礼包', 'http://127.0.0.1:3000/image/download3.jpg', 39, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '2018暴雪嘉年华大礼包', 'http://127.0.0.1:3000/image/download4.jpg', 39, '打开专属你的嘉联华', '0d81be91c7fd996793bbcc32fc3fcd2a.jpg|6da5548490934de3bd003ee2f0d9e15c.jpg|20d3656b04957a7dc353c9957c024288.jpg|25e5e79aef18ad1ab1eafe22e0dd2621.png|f8a3fd67f10e61d947eaa8ffa704fdc6.jpg', '02f5f1471effd094b70d43463b2e674c (1).gif');

INSERT INTO bx_index VALUES(null, '2018暴雪嘉年华大礼包', 'http://127.0.0.1:3000/imageone/banner750_950.jpg', 39, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, 'Logo印花 自动伞 魔兽世界', 'http://127.0.0.1:3000/imageone/1.jpg', 39, '打开专属你的嘉联华', '95ab45d83ef87a4159703f0e16faff3c.png|a56f6a40fb7edfb54858d59ec1a688a4.jpg|de0ac568f4eefc1954ca3999dd526403.jpg|f63707da50d72a0acc9669300519d4b7.jpg|07472118c7ce9aed660c23b461f78df1.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '英雄主题 巧克力礼盒 守望先锋', 'http://127.0.0.1:3000/imageone/345x220.jpg', 39, '打开专属你的嘉联华', '1c22f12b729f906f794be86b7aa4ee0d.jpg|2be598bdaa696e0b68872dd2c1221d1f.jpg|1522fadaafcc16f75c7621283567bc5a.jpg|22657bf5bf9ffadbbc1ad4398adb19c3.jpg|f2ab96747c99523a9fd21e682b273ba8.png', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '暴雪游戏 随机角色小手办 系列4', 'http://127.0.0.1:3000/imageone/11.jpg', 39, '打开专属你的嘉联华', '44872b2ea09534a21ad2e2dbe01e27de.jpg|7fc4f4c4ac36052ed08dbfecf5dbc5ca.jpg|15d7e4ca94abd35268b6ee1f8e8afa48.png', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '守望先锋 天使 可动人偶', 'http://127.0.0.1:3000/imageone/345x220shouban.jpg', 39, '打开专属你的嘉联华', 'ca99effeb80b84c3de9fb42318dfe62b.jpg|80959238a06f7e1cd88cbe0c09bbc62b.png|11aa47390559bb09d5d7547d2118a3db.jpg|3a0402c004961e238ae9312e549e8ce4.jpg|bbc9a0fd14833c7f033fe6c911359bde.jpg','detaildownload.jpg');

INSERT INTO bx_index VALUES(null, 'logo文件夹 守望先锋', 'http://127.0.0.1:3000/imageone/nav2.png', 25, '储存你的行动文件', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, 'logo文件夹 守...', 'http://127.0.0.1:3000/imageone/dow1.jpg', 25, '储存你的行动文件', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '死神微标 钥匙扣...', 'http://127.0.0.1:3000/imageone/downl1.jpg', 39, '从阴影中降临...', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '洋葱小鱿新年版...', 'http://127.0.0.1:3000/imageone/downl2.jpg', 39, '这个世界需要跟多小鱿', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '死神主题 巧克力...', 'http://127.0.0.1:3000/imageone/downl3.jpg', 39, '守望先锋和纯黑巧克力的美妙融合', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '《魔兽世界》佩...', 'http://127.0.0.1:3000/imageone/downl4.jpg', 39, '这个冬天，佩佩温暖', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '炉石传说 艺术设...', 'http://127.0.0.1:3000/imageone/downl5.jpg', 39, '谁想来一场华丽的冒险？', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '炉石传说 艺术设...', 'http://127.0.0.1:3000/imageone/downl5.jpg', 39, '谁想来一场华丽的冒险？', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '魔兽世界 阵营...', 'http://127.0.0.1:3000/imageone/IMG20190104_161304.png', 459, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '炉石传说 冒险者...', 'http://127.0.0.1:3000/imageone/fea4c121c4b94812e2ffeaff1bc1cd62.png', 459, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '《魔兽世界》佩...', 'http://127.0.0.1:3000/imageone/downl4.jpg', 120, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, 'Logo印花 自动伞...', 'http://127.0.0.1:3000/imageone/95ab45d83ef87a4159703f0e16faff3c.png', 99, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '联盟全自动雨伞...', 'http://127.0.0.1:3000/imageone/8a5b2422ca26568a133a4e1d96ddec8a.png', 39, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '部落全自动伞...', 'http://127.0.0.1:3000/imageone/f0565b5bfaed38b9a1276e04409fefa5.png', 39, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '袅兽宝宝抱枕 魔...', 'http://127.0.0.1:3000/imageone/76c877e05f1120e8aab8585bc15bb0c2.png', 139, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '魔兽世界 雕像...', 'http://127.0.0.1:3000/imageone/banner750_370雕像.jpg', 459, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '猎空 雕像守望先...', 'http://127.0.0.1:3000/imageone/d2582ca0550bb2985a72bd27e25f7399.png', 1459, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '魔兽世界 旅行者...', 'http://127.0.0.1:3000/imageone/e687123eb064bddd74ba4345da74d572.png', 120, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '预售 定金守望者...', 'http://127.0.0.1:3000/imageone/a62a9ff5fd9976f6460cbbc5b08e5428.png', 299, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

INSERT INTO bx_index VALUES(null, '末日铁拳 雕像守...', 'http://127.0.0.1:3000/imageone/b81783cc8214b6508da746644ebf2831.png', 39, '打开专属你的嘉联华', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');

#商品3
INSERT INTO bx_index VALUES(null, '争霸艾泽拉斯 部...', 'http://127.0.0.1:3000/imageone/455d5f420af9d9748afe8cb3dafde941.png', 59, '争霸艾泽拉斯', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '争霸艾泽拉斯 联...', 'http://127.0.0.1:3000/imageone/21520f5bee1b9036a9a62dfeb4438383.png', 50, '争霸艾泽拉斯', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '守望先锋 卢西奥...', 'http://127.0.0.1:3000/imageone/6463874a355ea51a085cfd51717f8da3.png', 99, '守望先锋', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '守望先锋 Dva手...', 'http://127.0.0.1:3000/imageone/3424fece64c7eff891d40e2fe31dda3e.png', 69, '守望先锋', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '对抗玛洛加尔顿...', 'http://127.0.0.1:3000/imageone/9483bd248ebf2048814dd36e3f72648c.png', 79, '对抗玛洛加尔顿', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '袅兽宝宝抱枕 魔...', 'http://127.0.0.1:3000/imageone/76c877e05f1120e8aab8585bc15bb0c2.png', 39, '袅兽宝宝抱枕', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
#商品4
INSERT INTO bx_index VALUES(null, '阵营标志 手环魔...', 'http://127.0.0.1:3000/imageone/dow5.png', 89, '阵营标志', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '守望先锋 要是挂...', 'http://127.0.0.1:3000/imageone/619510cb200fc208f33573eae75f98f0.png', 59, '守望先锋', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '守望先锋 Cute 8...', 'http://127.0.0.1:3000/imageone/6eeb85758f19d513b109b5a77154f22e.png', 49, '守望先锋', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '夺魂之镰 硅胶卡...', 'http://127.0.0.1:3000/imageone/9b6eb5daa65da5670090d8f406cf4115.png', 49, '夺魂之镰 ', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '对话互动气泡 钥...', 'http://127.0.0.1:3000/imageone/f2b52294080cfae2aec7c98bf4b2c6da.png', 39, '对话互动气泡', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
#商品5
INSERT INTO bx_index VALUES(null, '半藏卫衣守望者...', 'http://127.0.0.1:3000/imageone/e7cf78f44500e5d5db75d8e20f32b997.png', 189, '半藏卫衣守望者', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '伊利丹 夜光套头...', 'http://127.0.0.1:3000/imageone/58eb9cafc4601d912c39d3b42fbb0b95.png', 139, '夜光套头', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '连帽拉链卫衣 守...', 'http://127.0.0.1:3000/imageone/08e25da5aa3ecc0af42ac6ae567c9f51.png', 339, '连帽拉链卫衣', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '拉链卫衣 暗黑破...', 'http://127.0.0.1:3000/imageone/90f0a2baa658604ed0585abfe9629e37.png', 439, '拉链卫衣', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '魔兽世界 勇士V...', 'http://127.0.0.1:3000/imageone/d1518fe9d526a98b93b6fbcd8c8ff93b.png', 139, '魔兽世界', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '魔兽世界 阿尔萨...', 'http://127.0.0.1:3000/imageone/a6d63fdf596eada5b24ed393d403488f.png', 339, '魔兽世界', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
#商品6
INSERT INTO bx_index VALUES(null, '笔记本 炉石传说', 'http://127.0.0.1:3000/imageone/886e2fd990e399f425b934b0bccd2b57.png',89, '炉石传说', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '笔记本 暗黑破坏...', 'http://127.0.0.1:3000/imageone/c29c347f0ca0fafa4fdfb2dbabbe3540.png',159, '笔记本', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '魔兽世界 编年史...', 'http://127.0.0.1:3000/imageone/a8b53c8036362135cc5c72b2cbe4a9cd.png',149, '魔兽世界', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '魔兽世界编年史...', 'http://127.0.0.1:3000/imageone/2a8fb810d2bea6cf9147e50dbf6c19e6.png', 149, '魔兽世界', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '艺术设定集 中文...', 'http://127.0.0.1:3000/imageone/fd6771b9647c5a484c4c575e7c6d82d4.png', 339, '艺术设定集', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');
INSERT INTO bx_index VALUES(null, '守望先锋 Tokido...', 'http://127.0.0.1:3000/imageone/a6d63fdf596eada5b24ed393d403488f.png', 69, '守望先锋', 'detaildownload1.jpg|detaildownload2.jpg|detaildownload3.png|detaildownload4.jpg|detaildownload5.jpg', 'detaildownload.jpg');


CREATE TABLE bx_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title  VARCHAR(255),
  img_url  VARCHAR(255),
  ctime  DATETIME,
  point   INT,
  content VARCHAR(2000)
);

INSERT INTO bx_news VALUES(null,'123','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'124','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'125','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'126','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'127','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'128','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'129','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123a','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123b','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123c','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123d','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123e','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123f','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123g','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123h','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123i','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123j','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123k','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123l','http://127.0.0.1:3000/image/use1.png',now(),0,'123');
INSERT INTO bx_news VALUES(null,'123m','http://127.0.0.1:3000/image/use1.png',now(),0,'123');



CREATE TABLE bx_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  content VARCHAR(50),
  ctime DATETIME,
  nid   INT
);

INSERT INTO bx_comment VALUES(null,'赞一个1',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个2',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个3',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个4',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个5',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个6',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个7',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个8',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个9',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个10',now(),5);
INSERT INTO bx_comment VALUES(null,'赞一个11',now(),5);