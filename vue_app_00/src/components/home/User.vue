<template>
    <div class="app-user">
      <div class="user-nav"><b>个人主页</b></div>
      <div>
          <img src="../image/use1.png" alt="">
           <span>小明</span>
      </div>

      <div class="user-container">
         <span id="spansub">我的订单</span>
         <span>
             <span >全部订单</span>
             <img src="../image/user6.png" alt="">
         </span>
      </div>

      <div class="user-container-two">
           <span><span>待付款</span> </span>
           <span><span>尾款待支付</span> </span>
           <span><span>代发货</span> </span>
           <span><span>待收货</span> </span>
           <span><span>待评价</span> </span>
      </div>

      <div class="user-container">
            <span >我的优惠券</span>
            <span>
                <span>0张</span>
                <img src="../image/user6.png" alt="">
            </span>
      </div>
      <div class="user-container">
            <span>我的地址</span>
            <span>
                <span></span>
                <img src="../image/user6.png" alt="">
            </span>
      </div>
      <div class="user-container">
            <span>我的收藏夹</span>
            <span>
                <span></span>
                <img src="../image/user6.png" alt="">
            </span>
      </div>
      <div class="user-container">
            <span>账号安全</span>
            <span>
                <span></span>
                <img src="../image/user6.png" alt="">
            </span>
      </div>
      <div class="user-container">
            <span>联系客服</span>
            <span>
                <span></span>
                <img src="../image/user6.png" alt="">
            </span>
      </div>
      <div class="user-container">
            <span>意见反馈</span>
            <span>
                <span></span>
                <img src="../image/user6.png" alt="">
            </span>
      </div>
      <div class="user-container">
            <span>常见问题</span>
            <span>
                <span></span>
                <img src="../image/user6.png" alt="">
            </span>
      </div>
      
      <button @click="logout">退出登录</button>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
   data(){
       return {}
   },
   methods: {
       logout(){
             var url="http://127.0.0.1:3000/logout";
             this.axios.get(url).then(res=>{
                this.$router.push("/Home");
               Toast("已退出");
        }) 
       }
   },
}
</script>
<style >
   .app-user{width:100%;height:900px;background-color:#fff;padding-bottom:50px;} 
   .user-nav{width:70%;height:44px;position:fixed;z-index:11;right:0;line-height:44px;
             background:url(../image/home-bg.ba0dfe5d.png) no-repeat center center;
            }
    .user-nav>b{color:#fff;margin-left:20%;}
    .app-user>div:nth-child(2){width:100%;height:300px;text-align:center;padding-top:90px;
             background:url(../image/userCenter-banner.6783c997.png) no-repeat center center }
     .app-user>div:nth-child(2)>span{display:block;}
     .app-user>div:nth-child(2)>img{border-radius:50%;margin-bottom:10px;width:30%;}
     .user-container{width:100%;height:40px;border-bottom:1px solid #ddd;margin-top:10px;
                     line-height:40px;padding:0 15px;position: relative;}
     .user-container>span:nth-child(1){float:left;font-size:0.8rem;color:#666;}
     .user-container>span:nth-child(2) span{float:right;line-height:40px;color:#666;
                       height:40px;display:block;font-size:0.8rem;padding-right:4%;}
     .user-container>span:nth-child(2) img{height:13px;position: absolute;right:3%;top:34%;}
     .user-container-two{display:flex;flex-flow:nowrap;justify-content: space-around;
                    height:70px;width:100%;padding:0 5px; }
      #spansub{font-weight:bold;font-size:1rem ;color:#000;}
     .user-container-two>span{width:18%;height:100%;text-align: center;
                        background:url(../image/user2.png) no-repeat 50% 30%;
                        background-size:35%;padding-top:45px;display:block;}
     .user-container-two>span>span{font-size:0.8rem;color:#666;width:100%;}
     .user-container-two>span:nth-child(1){ background:url(../image/user2.png) no-repeat 50% 30%;
                                      background-size:35%}
     .user-container-two>span:nth-child(2){ background:url(../image/user2.png) no-repeat 50% 30%;
                                      background-size:35%}
     .user-container-two>span:nth-child(3){ background:url(../image/user3.png) no-repeat 50% 30%;
                                      background-size:35%}
     .user-container-two>span:nth-child(4){ background:url(../image/user4.png) no-repeat 50% 30%;
                                      background-size:35%}
     .user-container-two>span:nth-child(5){ background:url(../image/user5.png) no-repeat 50% 30%;
                                      background-size:35%}
     .app-user>button{width:100%;height:40px;color:#00aeff;border:none;margin-top:15px;
                     font-weight:bold;font-size:1.1rem;}
</style>