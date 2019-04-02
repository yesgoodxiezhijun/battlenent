<template>
   <div class="app-register">
      <div>
          <input type="text" v-model="uname" placeholder="6-18位字母数字组合">
          <span> 
               <select name="" id="">
                  <option value="1">@163.com</option>
                  <option value="2">@126.com</option>
                  <option value="3">@yeah.net</option>
                </select>
            </span>
      </div>
      <div>
          <input type="number" v-model="upwd" placeholder="输入验证手机号">
        <h5 class="tishi">{{text}}</h5>
          <button @click="register">登录</button>
       </div>

        <div>
            <input type="checkbox">
            <span>用户注册即代表同意
                <a href="javascript:;">《服务条款》</a>和
                <a href="javascript:;">《网易私隐政策》</a>
            </span>
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
             text:"",
             yanzheng:false
          }
        
    },
    methods: {
        register(){    
         var url="http://127.0.0.1:3000";
            url+="/yanzheng?uname="+this.uname;
            this.axios.get(url).then(result=>{
                if(result.data.code==-1){
                  this.text="";
                  this.text="账号已存在";
                  this.yanzheng=false;
                  return;
                }else{ this.yanzheng=true; }
                })
           var u=this.uname;
           var p=this.upwd;
             if(!u&&!p){
                this.text="";
                this.text="邮箱或手机不能为空";
                this.yanzheng=false;
                return;
             }else{this.yanzheng=true;}
             var reg=/^[a-z0-9]{6,18}$/i;
             if(!reg.test(u)){
                this.text="";
                this.text="账号格式错误";
                this.yanzheng=false;
                return;
             }else{this.yanzheng=true;}
            var tpl=/^1[34578]\d{9}$/;
            if(!tpl.test(p)){
                this.text="";
                this.text="手机格式错误";
                this.yanzheng=false;
                return;
            }else{this.yanzheng=true;}
            if(this.yanzheng){
             var url1="http://127.0.0.1:3000/";
                 url1+="register?uname="+u;
                 url1+="&upwd="+p;
                 this.axios.get(url1).then(result=>{
                    // console.log(result.data);
                    if(result.data.code==1){
                         Toast("注册成功"); 
                        this.$router.push("/Login");
                     }
                 })
            }
        }
    },
    created(){
    },
}
</script>
<style >
 .app-register{width:100%;height:684px;background-color:#fff;padding-top:50px;
             position:fixed;z-index: 11;border-bottom:1px solid #aaa; 
             }
.app-register>div:nth-child(1){display:flex;flex-flow:wrap;justify-content:space-around;
                 height:45px;margin:50px 0 10px 0;}
.app-register>div:nth-child(1)>input{width:55%;height:45px;border:1px solid #aaa;border-radius:5px;}
.app-register>div:nth-child(1)>span{width:30%;display:inline-block;height:45px;padding-bottom:3px;
                   border:1px solid #aaa;border-radius:5px;}
.app-register>div:nth-child(1)>span>select{height:40px;display: block;}
.app-register>div:nth-child(2)>input{margin:20px auto;
         width:92.5%;height:45px;border:1px solid #aaa;border-radius:5px;display:block; }
.app-register>div:nth-child(2)>button{margin:10px auto;background-color:#b7272d;color:#fff;
          width:92.5%;height:45px;border:1px solid #aaa;font-size:1.1rem;
          border-radius:5px;display:block; }
.app-register>div:nth-child(2)>h5{text-align:center;line-height:30px;
                color:red;display:block;width:100%;height:30px;}
.app-register>div:nth-child(3){width:100%;text-align:center;}
.app-register>div:nth-child(3)>span{font-size:0.8rem;margin:0 auto;width:100%;}     
.app-register>div:nth-child(3)>span>a{font-size:0.8rem;}   
</style>