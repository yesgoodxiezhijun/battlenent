<template>
     <div class="app-login">
           <div class="app-login-nav">
              <span @click="fanhome">网易暴风雪周边商城</span>            
           </div>
           <div class="app-login-item">
              <img src="../image/login/hxm_b2c-h5_p_20150730_static_media_bitmap.bbb73d9b.png" alt="">
           </div>
        
        <div class="app-login-form">
              <div>
                  <div >       
                     <input type="email" name="uname" placeholder="邮箱" v-model="uname">
                     <span class="app-login-form-span"></span>
                  </div>
                  <div >
                     <input type="password" name="upwd"placeholder="密码" v-model="upwd">
                     <span class="app-login-form-span"></span>
                  </div>
                  <span>
                       <b class="app-login-b" :style="'display:'+bnone">{{btext}}</b>
                       <span class="app-login-form-span-none" :style="'display:'+disnone">
                            
                           <img src="../image/login/webzj_gjlogo2.png" alt="">
                           使用  <a href="javascript:;">网易账号管家</a>,全面保护 <br>
                           你的账号!
                       </span>
                  </span>
                  <button @click="btn">登录</button>
                  <a href="javascript:;">忘记密码？</a>
                  <a href="javascript:;" @click=" detail()">去注册</a>
              </div>

        </div> 
 
     </div>
</template>
<script>
 import {Toast} from "mint-ui";
export default {
    data(){
        return {
            uname:"",
            upwd:"",
            disnone:"block",
            bnone:"none",
            btext:""
        }
    },
    methods: {
        fanhome(){this.$router.push("/Home");},
        detail(){this.$router.push("/Register"); },
        btn(){
           this.disnone="none";
           this.bnone="block";
           
           var url="http://127.0.0.1:3000/"
               url+="login?uname="+this.uname;
               url+="&upwd="+this.upwd;
               console.log(url);
            this.axios.get(url).then(result=>{
                if(result.data.code==1){
              this.$router.push("/Home");
                Toast("登录成功");
                }else{
              this.btext="账号或密码错误";
                }
            })
        }
    },
}
</script>
<style >
   .fanhome{color:#fff;display:block;width:30px;height:30px;
   background-color: #00aeff;text-align:center;
   top:1%;right:1%;
   line-height:30px;border-radius:50%;font-size:1.8em;}
   .app-login{
        position: relative;
       height:100%;width:100%;
        position:fixed;z-index:11;
        background:url(../image/login/hxm_b2c-h5_p_20150730_static_media_login-background.d3a5456b.png);
          }
    .app-login-nav{width:100%;height:50px;background:#aaa;
                 background:url(../image/home-bg.ba0dfe5d.png);
                 }
    .app-login-nav span{display:block;width:100%;height:100%;color:#fff;
       background:url(../image/xiazai9.png) no-repeat 4% 60%;font-weight: bold;
       background-size:20%;text-align: center;font-size:1.2rem;line-height:50px;
    }
   .app-login-item{padding-top:110px;text-align: center;padding-bottom:40px; }
   .app-login-item img{width:40%;}
   .app-login-form{margin:0 10px;}
   .app-login-form>div>div{margin:10px 0px;border:1px solid #999;}
   .app-login-form>div input{width:100%;height:42px;border:none;
             margin:0;margin:0;color:#eee;font-size: 1.1rem;
            background-color:rgba(0, 0, 0, 0);
            }
    .app-login-form>div button{display:block;width:100%;height:44px;margin:10px 0;
                        background-color:#00aeff;color:#fff;font-size: 1.2rem;
                        border:none;
                       }  
    .app-login-form>div>span{display:block;height:50px;width:100%;}
    .app-login-form>div>span>span{padding-left:20px;padding-top:5px;line-height:20px;
                    width:100%;height:50px;position: relative;font-size:0.7rem;
                       }                   
    .app-login-form>div> img{position: absolute;top:8px;left:3px;}
    .app-login-form>div a:nth-child(6){float: right;color:#999;font-size:0.8rem;}                
    .app-login-form>div a:nth-child(5){float: left;color:#999;font-size:0.8rem;}     
   .app-login-form div{position: relative;}            
    .app-login-form-span{position: absolute;top:0px;right:0px;
        display:block;width:40px;height:40px;
        background:url(../image/webzj_cdn101_sprite_61fbe151ab715649c6b7c4ec39156201.png) no-repeat -140px -80px;  background-size:1000%;display:none;
             }   
     .app-login-b{text-align:center;width:100%;height:100%;line-height:50px;color:red;font-weight:normal;font-size:0.8rem;}         
</style>
