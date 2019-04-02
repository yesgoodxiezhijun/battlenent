<template>
    <div class="app-detail">
        <div class="AppDetailNav">
            <a href="javescript:;" @click="goucart"> </a>
            <a href="javescript:;" @click="detailsou"> </a>
            <b>网易暴风雪走边商城</b>
        </div>
        <div class="AppDetailFoot">
           <a href="javascript:;"> <span>客服</span>  </a>
           <a href="javascript:;"> <span>收藏</span> </a>
           <button @click="addcart">加入购物车</button>
           <button>立即购买</button>
        </div>
        <!-- 轮播图 -->
          <mt-swipe :auto="3000" >
              <mt-swipe-item v-for="item of list" :key="item.id">
                 <img :src="'http://127.0.0.1:3000/image/'+item"/>
              </mt-swipe-item>
           </mt-swipe>
        <!-- ----------------- -->
        <div class="app-detail-price">
            <h4>{{listtitle}}</h4>
            <span>{{lsittext}}</span>
            <p>￥{{listprice}}.00</p>
            <div class="mui-numbox">
                <button class="mui-btn mui-btn-numbox-minus" type="button" @click="goodsub" >-</button>
                <input class="mui-input-numbox" type="number" value="1" v-model="val"/>
                <button class="mui-btn mui-btn-numbox-plus" type="button" @click="goodadd">+</button>
            </div>
        </div>

        <div class="app-detail-price1">
             <a href="javascript:;">
                <span>&gt;</span>
                <span>服务:</span>
                <span> · 全场满88包邮 · 部分地区无法配送</span>
             </a>
             <a href="javascript:;">
                <span>&gt;</span>
                <span>服务:</span>
                <span> 已选 "限定礼包" x1  </span>
             </a>
        </div >
        
        <div class="app-detail-price2">
             <div class="app-detail-price2-item">
                <span>&gt;</span>
                <a href="javascript:;" @click="Newsinfo">查看全部</a>
                <span>评价 (46)</span>
             </div>
             <div class="app-detail-price2-item1">
                <span>2019-02-15  21:19:04</span>
                <img src="../image/nav1.png" alt="">
                <span>匿名用户</span>
             </div>
             <span>值得等待!!</span>
             <p>限定礼包</p>
        </div>

        <div class="app-detail-price3">
            ——— 详情 ———
        </div>
        <div class="app-detail-price4">
              <span>
          如果您购买了2018暴雪嘉年华虚拟门票<br>
         请在下单前进入以下网址绑定网易通行证<br>
         领取嘉年华大礼包60元抵用券一张<br><br>
         http://blizzcon.blizzard.cn/event-  <br>
         info/account-bind

              </span>
           <img :src="listimg" alt="">   
        </div>
    </div>
</template>
<script>
 import {Toast} from "mint-ui";
 export default {
      
        data(){ return { 
            pid:this.$route.query.pid,
            list:[],
            listpid:0,
            listimgurl:0,
            listtitle:0,
            lsittext:0,
            listprice:0,
            listimg:0,
            val:1
             }
        },  
	methods:{
        detailsou(){
            this.$router.push("/Search");
		},
        Newsinfo(){
              var pid=this.$route.query.pid;
             this.$router.push("/Newsinfo?pid="+pid)
        },
        goucart(){
            var pid=this.$route.query.pid;
            this.$router.push("/Cart?pid="+pid);
            },
        goodadd(){this.val++;},
        goodsub(){if(this.val>1){this.val--;}},
		handleImagge(){	
            var pid=this.$route.query.pid;
			var url="http://127.0.0.1:3000/detail?pid="+pid;
            this.axios.get(url).then(result=>{
                var l=result.data.data;
                this.list=((result.data.data)[0].img_urllun).split("|");
                this.listpid=l[0].pid;
                this.listimgurl=l[0].img_url;
                this.listtitle=l[0].title;
                this.lsittext=l[0].texitem;
                this.listprice=l[0].price;
                this.listimg=l[0].img_urltwo;
                this.listimg="http://127.0.0.1:3000/image/"+this.listimg;
            })
            
		},
        addcart(){
             var count=this.val;
             var img=this.listimgurl;
             var title= this.listtitle;
             var price=(this.listprice)*(this.val);
            // console.log(price);
             var pid=this.listpid;
             var uid=1;
             var url="http://127.0.0.1:3000/";
                url+="addcart?count="+count;
                url+="&img="+img+"&title="+title;
                url+="&price="+price+"&pid="+pid;
                url+="&uid="+1;
              //  console.log(url);
            this.axios.get(url).then(result=>{
              //  console.log(result.data.code)
                if(result.data.code==1){
                    Toast("添加成功");
                }else{
                    Toast("请登陆");
                }
            })
        },
	},
	created(){
		this.handleImagge();
	}
}
</script>
<style >
.app-detail{padding-bottom:70px;}
/* -------轮播图------- */
     .app-detail .mint-swipe{height:410px;}
     .app-detail .mint-swipe img{width:100%;height:100%}
     .mui-grid-view.mui-grid-9 .mui-media{width:135px;}
     .mui-grid-view.mui-grid-9 .mui-media img{width:70%;}
/* ------nav----------- */
    .AppDetailNav{width:70%;height:40px;z-index:11;left:30%;position: relative;position:fixed;
                  background:url(../image/home-bg.ba0dfe5d.png) no-repeat center center;}
    .AppDetailNav a{float: right;display:block;width:40px;height:40px;margin:0 5px 0 0;}
    .AppDetailNav a:first-child{
                   background:url(../image/xiazai10.png) no-repeat 20% 60%;
                    background-size:50%;}
    .AppDetailNav a:nth-child(2){
                    background:url(../image/xiazai8.png) no-repeat 80% 60%;
                     background-size:50%;}
    .AppDetailNav b{color:#fff;font-size:1.25rem;position: absolute;
                   top:30%;left:4%; }
    .AppDetailFoot{position: fixed;bottom:0%;width:100%;background-color:#fff;height:60px;
                   z-index:11;}
    .AppDetailFoot button{width:30%;height:60px;font-size:1.1rem;}
    .AppDetailFoot a{width:20%;height:60px;display:inline-block;text-align:center;padding-top:9%;
                     border:1px solid rgba(0,0,0,0.1)}
    .AppDetailFoot a span{font-size:0.7rem;color:#000;}
    .AppDetailFoot button:nth-child(4){background-color:#00aeff;color:#fff;}
    .AppDetailFoot a:nth-child(1){
                        background:url(../image/xiazai11.png) no-repeat 50% 26%;
                        background-size:35%;
                               }
    .AppDetailFoot a:nth-child(2){
                        background:url(../image/xiazai12.png) no-repeat 50% 26%;
                         background-size:35%;  
                               }
  /* ------------------内容------------------------------ */
  .app-detail-price{width:100%;height:130px;position: relative;
                 background-color:#fff;padding:20px 4px 0px 20px;}
   .app-detail-price span{font-size:0.9rem;display:block;margin:14px 0 10px 0;}
   .app-detail-price p{font-size:1.2rem;display:inline-block;color:red;}

   .app-detail-price1{background-color:#fff;margin:10px 0;}
   .app-detail-price1 a{display:block;width:100%;height:50px;
                     line-height:50px;border:1px solid rgba(0,0,0,0.2);}
   .app-detail-price1 a:nth-child(1){border-bottom:none;}               
   .app-detail-price1 a span:nth-child(1){float: right;color:#aaa;margin-right:10px;}
   .app-detail-price1 a span:nth-child(2){color:#aaa;margin-left:10px;font-size:1rem;}
   .app-detail-price1 a span:nth-child(3){color:#555;margin-left:10px;font-size:1rem;}

   .app-detail-price2{background-color:#fff;margin:10px 0;padding-bottom:8px;}
   .app-detail-price2-item{width:100%;height:50px;border:1px solid rgba(0,0,0,0.2);
                         line-height:50px;}
 .app-detail-price2-item span:nth-child(1){float:right;color:#aaa;margin-right:10px;}               
   .app-detail-price2-item a:nth-child(2){float: right;color:#043770;margin-right:10px;}       
     .app-detail-price2-item span:nth-child(3){color:#555;margin-left:10px;}   
   .app-detail-price2-item1{margin:0px 3px;height:60px;width:100%;
                  line-height:60px;position: relative;} 
     .app-detail-price2-item1 img{width:7%;margin:0 10px;position: absolute;top:15px;}
     .app-detail-price2-item1 span{font-size:1rem;color:#aaa;}
      .app-detail-price2-item1 span:nth-child(1){position: absolute;right:20px;}
      .app-detail-price2-item1 span:nth-child(3){margin-left:50px;}
     .app-detail-price2>span{padding-left:10px;margin:10px;} 
     .app-detail-price2>p{padding-left:10px;margin:10px;} 
     .app-detail-price3{text-align: center;padding:10px 0;color:#aaa;}
     .app-detail-price4 {text-align:center;background-color:#fff;padding:20px 0;color:#777;}
     .app-detail-price4 img{width:100%;}
     /* ---------------------------- */
     .mui-numbox{position:absolute !important;right:5%;bottom:15%;}
</style>
