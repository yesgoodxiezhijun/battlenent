<template>
   <div class="app-search">
       <div id="app-search-nav">
            <span></span>
            <span @click="fanhui"></span>
            <span @click="huiche" >搜索</span>
            <input type="text"  placeholder="请输入搜索内容" v-model="key" />
       </div>

        <div class="app-search-content">
         <div class="app-search-content-item" v-for="item of list" :key="item.pid">
               <div>
                  <img :src="item.img_url" :data-pid="item.pid" @click="zhudetail"/>
                </div>
                <span>{{item.title}}</span>
                <span>￥{{item.price}}.00</span>
         </div>
         <div class="app-search-content-item" id="app-search-content-item-sub" :style="'display:'+none">
                 
         </div> 
      </div>
      <div class="app-search-footer" @click="huicheitem"><span>查看跟多</span></div> 
     </div>
</template>
<script>
export default {
    data(){
        return {
            none:"block",
            key:"",
            pno:1,
            pageSize:5,
            list:[]
        }
    },
    methods: {
        fanhui(){ this.$router.push("/Home");},
        zhudetail(e){
            var pid=e.target.dataset.pid;
            this.$router.push("/Detail?pid="+pid);
            },
        huiche(){
            
           this.list="";
           var url = "http://127.0.0.1:3000/";
           url+="search?key="+this.key;
           url+="&pno="+this.pno;
           url+="&pageSize="+this.pageSize;
           this.axios.get(url).then(result=>{
             this.list=result.data.data;
             if(this.list.length%2==1){
               this.none="block";
              }else{this.none="none";}
         })
        },
        huicheitem(){
           this.pno++;
           var url = "http://127.0.0.1:3000/";
           url+="search?key="+this.key;
           url+="&pno="+this.pno;
           url+="&pageSize="+this.pageSize;
           this.axios.get(url).then(result=>{
             var rows = this.list.concat(result.data.data);
             this.list= rows;
             if(this.list.length%2==1){
               this.none="block";
              }else{this.none="none";}
         })
        }
    },
    created() {
    },
}
</script>
<style>
  #app-search-nav{width:100%;height:50px;position: relative;
    background:url(../image/home-bg.ba0dfe5d.png) no-repeat center center;   
    position:fixed;z-index:11;line-height:50px;} 
  #app-search-nav>input{width:70%;position:absolute;top:15%;left:5%;height:35px;
                    line-height:35px;
                    margin:auto 0;padding-left:8%;font-size:0.9rem;color:#4aadf8;}
  #app-search-nav>span:nth-child(1){display:block;position:absolute;
           width:30px;height:30px;top:17%;left:5%;z-index:1;
           background:url(../image/sousuo.png) no-repeat center center; 
           background-size:70%;  }
  #app-search-nav>span:nth-child(3){color:#fff;float:right;margin:0 4%;}
  #app-search-nav>span:nth-child(2){color:#fff;float:right;width:10%;display:block;
                height:100%; background:url(../image/user6.png) no-repeat center center;}
   .app-search-content{padding:45px 0 50px 0;display:flex;flex-wrap:wrap;justify-content: space-around;}
   .app-search-content-item{width:45%;height:250px;background:#fff;margin:5px;}
   .app-search-content-item>div{width:100%;margin:0 auto;height:180px;}
   .app-search-content-item>div>img{width:100%;}
   .app-search-content-item>span:nth-child(2){display:block;font-size:0.7rem;padding:10px 0 5px 15px;}
   .app-search-content-item>span:nth-child(3){color:red;font-size:0.9rem;padding: 13px;}
   .app-search-footer{width:100%;height:30px;background-color:rgba(255, 255, 255,0.5);position:fixed;z-index:11;
                     bottom:7%;text-align:center;line-height:30px;font-size:1rem;}
   .app-search-footer span{width:100%;color:#4aadf8;}
    #app-search-content-item-sub{background-color:rgba(1, 1, 1, 0)}
   .app-search-content-item>div:nth-child(1){display:flex;flex-wrap:wrap;
                       flex-direction:column;justify-content:space-around}
</style>