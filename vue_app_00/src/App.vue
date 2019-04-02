<template>
 <div class="app-container">
    <!-- <mt-header fixed title="学子商城"></mt-header> -->
    <!--src/App.vue-->
    <!--1：添加公共珠江 Home.vue/Header-->
    <div class="header-app">       
    <span @click="tiaohome"></span>
    <input type="text"  class="header-app1" value="搜索商品，共277款好物" @focus="sousuo">
    </div>
    <!--2:占位符用来显示其它的组件-->
    <router-view></router-view> 
    <!--3:添加公共组件 tabbar-->
    <nav class="mui-bar mui-bar-tab">
			<router-link to='/Home'  class="mui-tab-item mui-active" >
				<span class="mui-icon ">
               <img class="mui-icon-img-a" src="../src/components/image/xiazai5.png" alt="">
            </span>
				<span class="mui-tab-label">首页</span>
			</router-link>
			<a class="mui-tab-item" href="javascript:;"@click="fenlei">
				<span class="mui-icon  mui-icon-icon-contact-filled">
               <img class="mui-icon-img-d" src="../src/components/image/xiazai4.png" alt="">
            </span>
				<span class="mui-tab-label">分类</span>
			</a>
			<router-link class="mui-tab-item" to="/Cart">
				<span class="mui-icon mui-icon-extra mui-icon-extra-cart">
                                </span>
        
				<span class="mui-tab-label">购物车</span>
			</router-link>
			<a class="mui-tab-item" href="javascript:;" @click="yangtiao">
				<span class="mui-icon ">
               <img class="mui-icon-img-d" src="../src/components/image/xiazai2.png" alt="">
            </span>
				<span class="mui-tab-label">会员</span>
			</a>
		</nav>
 </div>
</template>
 <script>
 export default {
     data(){
         return {
        
         };
     },
     methods: {
        fenlei(){this.$router.push("/GoodList?num=2");},
        tiaohome(){ this.$router.push("/Home");},
        sousuo(){
            this.$router.push("/Search");
		},
         yangtiao(){
             var url="http://127.0.0.1:3000/appyang";
             this.axios.get(url).then(result=>{
                 if(result.data.code==1){
                    this.$router.push("/User");
                 }else{
                    this.$router.push("/Login");  
                 }
             })
         },
         appjihuo(){
           //  console.log(this.jihuo)
         }
     },
     created() {
        this.appjihuo()
     },

 }
 </script>
<style>
   .app-container{
     /* padding-top:40px;
     padding-bottom:50px; */
     overflow-x:hidden;
     position: relative;
   }
 .header-app{position: fixed;width:100%;z-index:1;}
 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
 .header-app{background:url(components/image/home-bg.ba0dfe5d.png) no-repeat center center; 
          height:44px;}
.header-app .header-app1{width:65%;border-radius:10px;
         color:#fff; text-align: center;font-size:0.8rem;
         float: right;margin:6px 14px 5px 0px;height:30px;display:block;
         background:#32669d url(components/image/xiazai8.png) no-repeat 17% 60%;
         background-size:1rem;
         }
.app-container .header-app span{display:block;height:50px;margin-bottom:6px;position:absolute;
width:30%;
background:url(components/image/xiazai9.png) no-repeat 50% 30%;background-size:72%;}
 .mui-icon-img-d{width:80%;}
 .mui-icon-img-a{width:200%;position: absolute;top:6px;left:-10px;}
.mui-tab-label{padding-bottom:2px ;}

</style>