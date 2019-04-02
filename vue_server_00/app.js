//app.js
//1:加载模块 express pool.js
const express = require("express");
const pool = require("./pool");
//2:创建服务器端对象
var app = express();
//3:监听 3000
app.listen(3000);
//4:指定静态目录  public 
app.use(express.static("public"));
//5:加载跨域访问模块
const cors = require("cors");
//6:配置跨域访问模块 那个域名跨域访问允许
//  脚手架8080允许
//origin      允许跨域访问域名列表
//credentials 跨域访问保存session id
app.use(cors({
  origin:["http://127.0.0.1:8080",
  "http://localhost:8080"],
  credentials:true
}));

//6.1:下载 express-session 并且配置
const session = require("express-session");
app.use(session({
  secret:"128位随机字符", //安全字符串
  resave:false,          //每次请求是否都更新数据
  saveUninitialized:true, //初始化时保存数据
  cookie:{
    maxAge:1000 * 60 * 60 * 8
  }
}));

//7:加载第三方模块 body-parser
//body-parser 针对post请求处理请求参数
//如果配置成功 req.body..
const bodyParser = require("body-parser");
//8:配置对特殊 json是否是自动转换 不转换
app.use(bodyParser.urlencoded({extended:false}))


//功能一  index
app.get("/bxindex",(req,res)=>{
  var sql="SELECT*FROM bx_index";
  pool.query(sql,(err,result)=>{
     if(err)throw err;
     res.send({code:1,data:result});
  })
});

//功能二  商业详情
app.get("/detail",(req,res)=>{ 
  var pid=req.query.pid;
  var sql=" SELECT*FROM bx_index WHERE pid= ? ";
  pool.query(sql,[pid],(err,result)=>{
     if(err)throw err;
     res.send({code:1,data:result})
  })
})

//功能三 登录
app.get("/login",(req,res)=>{
  var uname=req.query.uname;
  var upwd=req.query.upwd;
  var sql=" SELECT id FROM bx_login";
     sql+=" WHERE uname = ? AND upwd = md5(?)";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"用户名或密码错误"});
    }else{
      var id=result[0].id;
      req.session.uid=id;
      res.send({code:1,msg:"登录成功"});
    }
  });
})

//功能四 注册
app.get("/register",(req,res)=>{
  var uname=req.query.uname;
  var upwd=req.query.upwd;
  var sql="INSERT INTO bx_login VALUES(null, ? ,md5( ? ))";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err)throw err;
      res.send({code:1,msg:"注册成功"})
  })
})

//验证账号
app.get("/yanzheng",(req,res)=>{
  var uname=req.query.uname;
  var sql="SELECT*FROM bx_login WHERE uname= ?";
  pool.query(sql,[uname],(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send({code:-1,msg:"账号已存在"})
    }else{
      res.send({code:1,msg:"可以申请账号"})
    }
  })
})

//功能五 商品添加
app.get("/addcart",(req,res)=>{
  if(!req.session.uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }

  var count=parseInt(req.query.count);
  var img=req.query.img;
  var title=req.query.title;
  var price=parseInt(req.query.price);
  var pid=parseInt(req.query.pid);
  var uid=parseInt(req.query.uid);
  var sql=" SELECT cid FROM bx_cart";
     sql+=" WHERE uid = ? AND pid = ? ";
   pool.query(sql,[uid,pid],(err,result)=>{
     if(err)throw err;
        if(result.length==0){
          var sql = ` INSERT INTO bx_cart`;
          sql+=` VALUES(null,${count},"${img}","${title}",${price},${pid},${uid})`;
        }else{
          var sql = ` UPDATE bx_cart`;
          sql+=` SET count=count+1 WHERE pid=${pid}`;
          sql+=` AND uid = ${uid}`;
          sql+=` AND price = ${price}`;
        }
        pool.query(sql,(err,result)=>{
          if(err)throw err;
          if(result.affectedRows>0){
            res.send({code:1,msg:"添加成功"});
          }else{
            res.send({code:-1,msg:"添加失败"});
          }
        })
   })
});

//功能六  购物车
app.get("/appcart",(req,res)=>{
  if(!req.session.uid){
    res.send({code:-1,msg:"请登陆"});
    return;
  }
  var sql="SELECT*FROM bx_cart";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send({code:1,data:result});
  })
})

//功能七 购物车删除
app.get("/deletecart",(req,res)=>{
  var cid=req.query.cid;
  var sql=" DELETE FROM bx_cart WHERE cid= ?";
  pool.query(sql,[cid],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"})
    }else{
      res.send({code:-1,mdg:"删除失败"})
    }
  })
})

//功能八 购物车多个删除
app.get("/removeduoge",(req,res)=>{
  var cids=req.query.cids;
  var sql=" DELETE FROM bx_cart";
     sql+=" WHERE cid IN ("+cids+")"; 
  //http://127.0.0.1:3000/removeduoge?cids=9,13
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"})
    }else{
      res.send({code:-1,msg:"删除失败"})
    }
  })
})

//功能九  用户推出
app.get("/logout",(req,res)=>{
  req.session.uid=null;
  res.send({code:1,msg:"已退出"});
})
//功能十 判断的跳转
app.get("/appyang",(req,res)=>{
  if(!req.session.uid){
    res.send({code:-1,msg:"请登陆"});
  }else{
    res.send({code:1,msg:"已登陆"});
  }
})
//功能十 suosuo
app.get("/search",(req,res)=>{
  var key=req.query.key;
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!key){return;}
  if(!pno){ pno=1; };
  if(!pageSize){pageSize};
  var sql=" SELECT pid,title,price,img_url";
     sql+=" FROM bx_index";
     sql+=" WHERE title LIKE ?";
     sql+=" LIMIT ?,?";  
  var offset=(pno-1)*pageSize;
   pageSize = parseInt(pageSize);
   pool.query(sql,["%"+key+"%",offset,pageSize],(err,result)=>{
     if(err)throw err;
        res.send({code:1,data:result}) 
   })

})

//功能十一 发表评论
app.post("/addcomment",(req,res)=>{
  var nid=req.body.nid;
  var content=req.body.content;
  var sql=" INSERT INTO bx_comment VALUES";
    sql+=" (null,?,now(),?)";
    pool.query(sql,[content,nid],(err,result)=>{
      if(err)throw err;
      if(result.affectedRows>0){
        res.send({code:1,msg:"评论发表成功"});
      }else{
        res.send({code:-1,msg:"评论发表失败"});
      }
    })
});

//功能十二  过去评论 
app.get("/getComment",(req,res)=>{
  var nid=req.query.nid;
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){pno=1};
  if(!pageSize){package=5}
  var sql=" SELECT id,content,ctime,nid";
      sql+=" FROM bx_comment";
      sql+=" WHERE nid= ?";
      sql+=" LIMIT ?,?";
      var offset=(pno-1)*pageSize;
      pageSize=parseInt(pageSize);
      pool.query(sql,[nid,offset,pageSize],(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result})
      })
})