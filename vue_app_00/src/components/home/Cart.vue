<template>
   <div class="app-cart">
      <div class="app-cart-nav">
          <span @click="fanhui">返回 &gt;</span>
          <b>购物车</b>
      </div>
      <div class="app-cart-footer">
          <button>下单</button>
          <b >￥{{zong}}.00</b>
        <span @click="selectall"><img src="../image/cart1.png" alt="" :style="'display:'+none"></span>
        <span>已选</span>
        <button @click="deletequan" class="deletequan">删除</button>
      </div>
      <!--  ============================   -->
       <div class="cart-contarner" v-for="(item,i) of list" :key="item.cid"   >
         <input type="checkbox" @click="deleteitem" :checked="item.cb" :data-i="i">
         <div class="cart-contarner-img">    
             <img :src="item.img_url" alt="">
         </div>
        <div>
            <h3>{{item.title}}</h3>
            <span>限定礼包</span>
            <h5>￥{{item.price}}.00</h5>
        </div>
        <div class="btn-delete">
            <button @click="deletecart"  :data-cid="item.cid" :data-idx="i">删除</button>
        </div>
       </div>
     <div class="footer"></div>
   </div>
</template>
<script>
 import {Toast} from "mint-ui";
export default {
    data(){return{
         list:[],
         noneconet:0,
         none:"none",
         zong:0,
         cb:false,
         allcb:false
    }},
    methods: {
      
        fanhui(){
             var pid=this.$route.query.pid;
             if(pid==undefined){
                this.$router.push("/Home"); 
             }else{
                 this.$router.push("/Detail?pid="+pid);
             }
        },
        appcart(){
           var url="http://127.0.0.1:3000/appcart"
           this.axios.get(url).then(result=>{
               if(result.data.code == -1){
                   Toast("请登录");
                   return;
               }
               var rows=result.data.data;
               this.$store.commit("updateCount",rows.length);
               this.zong=0;
               for(var item of rows){
                  this.zong+=item.price;
                  item.cb=false;
                  this.list=0;
                  this.list=rows;
               }  
           })
        },
        selectall(e){
            var conet=this.noneconet++;
            var allcbitem=1;
            if(conet%2==1){
               this.none="none";
               allcbitem=false;
            }else{
               this.none="block";
              allcbitem=true;
            }
            var cb=allcbitem;
            this.allcb=cb;
            for(var tiem of this.list){tiem.cb=cb;}
            
        },
        deleteitem(e){
            var idx=e.target.dataset.i;
            var checked=e.target.checked;
            this.list[idx].cb=checked;
            var count=0;
            for(var item of this.list){
                if(item.cb)(count++);
            }
            if(count==this.list.length){
                this.allcb=true;
                this.none="block";
            }else{
                this.allcb=false;
                this.none="none";
            }
        },
        deletequan(){
         var html="";
         var quannum=0;
            for(var item of this.list){  
                
                if(item.cb){
                 quannum++;
                 html+=item.cid+",";      
                 // console.log(item)                      
                }
            }    
              if(quannum==this.list.length){
                 this.list=0;
              }
            html=html.substring(0,html.length-1);
            var url="http://127.0.0.1:3000/";
               url+="removeduoge?cids="+html;
            this.axios.get(url).then(result=>{
                if(result.data.code==1){
                    Toast("删除成功");        
                }
                 this.appcart();
           })
         },
           deletecart(e){
             var cid=e.target.dataset.cid;
             var idx=e.target.dataset.idx;
             var url="http://127.0.0.1:3000/deletecart?cid="+cid;
             this.axios.get(url).then(result=>{
                 if(result.data.code==1){
                     Toast("删除成功");
                     this.list.splice(idx,1);       
                 }
                     
                 this.appcart();
             })
        }
    },
    created(){
        this.appcart();
    }


}
</script>
<style >
  .app-cart{padding-top:45px;}
  .app-cart-nav{width:70%;height:38px;position:fixed;z-index:11;right:0;line-height:45px;top:0px;
             background:url(../image/home-bg.ba0dfe5d.png) no-repeat center center;
            }
  .app-cart-nav>b{color:#fff;margin-left:20%;}  
  .app-cart-nav>span{float:right;color:#fff;font-weight:bold;margin-right:7%;font-size:0.9rem;}
  .app-cart-footer{width:100%;height:50px;line-height:50px;position:fixed;z-index:11;
                   bottom:7%;background-color:#fff;border-top:1px solid #ccc;}
  .app-cart-footer>button:nth-child(1){width:30%;height:50px;float:right;font-size:1.1rem;line-height:35px;
                        background-color:#00aeff;color:#fff;}
  .app-cart-footer>b{float:right;margin:0 8px;color:red;font-size:1.1rem;}
  .app-cart-footer>span:nth-child(3){display:block;width:25px;height:25px;margin:12px 5px 0 10px;
                             border:1px solid #aaa;float: left;position:relative;}
  .app-cart-footer>span:nth-child(3)>img{width:100%;position:absolute;top:0;display:block;}
  .app-cart-footer>span:nth-child(4){float: left;margin:0 8px;font-size:0.9rem;}
  .cart-contarner{width:100%;height:150px;display:flex;background-color:#fff;
                   flex-wrap:wrap;position: relative;margin:3px 0;}
  .cart-contarner::before{content:"";display:table;}
  .cart-contarner>input{display:block;width:17px;height:17px;margin:15% 10px 0 10px;}
  .cart-contarner-img{width:40%;height:80%;margin-top:10%;}
  .cart-contarner-img>img{border:1px solid #eee;height:50%;margin:auto;}
  .cart-contarner>div:nth-child(3){width:50%;height:150px;padding-top:8%;}
  .cart-contarner>div:nth-child(3) h3{font-size:0.9rem;}
  .cart-contarner>div:nth-child(3) span{font-size:0.8rem;color:#666;}
  .cart-contarner>div:nth-child(3) h5{font-size:0.9rem;color:red;}
  .cart-contarner>div:nth-child(4){position: absolute;bottom:65%;right:-80%;height:30px;position:relative;width:30%;height:30px;}
  .btn-delete button{width:45px;height:35px;background-color:#00aeff;color:#fff;
        border-radius:10px;font-size:0.5rem;text-align:center;border:none;}
  .footer{height:80px;}
  .deletequan{font-size:5px;background-color:#00aeff;line-height:18px;padding-left:6px;margin-top:10px;
               border:none;
              color:#fff;width:35px;height:30px;display:inline-block;border-radius:15px;}
</style>