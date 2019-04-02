<template>
 <div class="app-home">
 <!--顶部导航条-->
     <div>
		 <nav-box></nav-box>
	 </div>
	 
 <!--轮播图-->
    <mt-swipe :auto="3000" >
       <mt-swipe-item v-for="item of listlun" :key="item.pid">
          <img :src="item.img_url"  @click="usedetail" :data-pid="item.pid" />
       </mt-swipe-item>
    </mt-swipe>

    <div class="nav-divspan">
		<span>七天无理由退货</span>
	   <span>网易品质保证&nbsp;</span>
    </div>
     <!---------------8宫格---------------------------------->
       <ul class="mui-table-view mui-grid-view mui-grid-9 " >
              <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3 " 
			            v-for="item of navhome" :key="item.num">
			           <a href="javascript:;">
		                    <span class=""><img :src="'http://127.0.0.1:3000/image/'+item.img"
							 @click="usegoodlist" :data-num="item.num"/></span>
		                    <div class="mui-media-body">{{item.title}}</div>
						</a></li>
		        </ul>

    <!-----------------------商品-------------------------------->
    <div class="app-home-shop">
		<div class="app-home-shop-item">
          <span>人气推荐</span> <a href="#">跟多></a>
		</div>
        <div class="app-home-shop-item-01" id="apphomeshopitem01">
		    <div class="app-home-shop-item-2" v-for="item of listone" :key="item.pid">
                <img  :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
		    	<span>{{item.title}}</span>
		    </div>
		    
        </div>
	</div>
    
	<!-- -----------------商品1---------------------- -->
	<div class="app-home-shop1">
		<div class="app-home-shop-item">
          <span>最新周边</span> <a href="#">跟多></a>
		</div>

		<div class="app-home-shop1-item" v-for="item of listtwoitem1" :key="item.pid">
            <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
		    <div v-for="item of listtwoitem" :key="item.pid">
				<img :src="item.img_url" alt=""/><br>
				<b>{{item.title}}</b>
				<p>{{item.texitem}}</p>
				<a href="javascript:;">￥{{item.price}}.00</a>
			</div>
		</div>

		<div class="app-home-shop1-item1">
              <div class="appHomeShop1Item1" :style="'width:'+listtwolength+'px'">
                      <div v-for="item of listtwo" :key="item.pid">
						  <div class="appHomeShop1Item1Image"> 
						     <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
						  </div>
						  <span>{{item.title}}</span>
						  <p>￥{{item.price}}.00</p>
					  </div>
					
			  </div>
		</div>
	</div>
	<!-- -------------------商品2----------------- -->
	<div class="app-home-shop2">
		   <div v-for="item of listtherritem" :key="item.pid">
			     <img src="../image/IMG20190104_161304.png" alt="" > 
		   </div>
		   <div class="app-home-shop1-item1">
              <div class="appHomeShop1Item1" :style="'width:'+listtherrlength+'px'">
                      <div v-for="item of listtherr" :key="item.pid">
						  <div class="appHomeShop1Item1Image"> 
						     <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid">
						  </div>
							<span>{{item.title}}</span>
						  <p>￥{{item.price}}.00</p>
					  </div>
					  
			  </div>
		</div>
	
	
	
	
	</div>
	<!-- 商品3------------------------------- -->
	<div class="app-home-shop2">
		    <div v-for="item of listfouritem" :key="item.pid">
			  <img :src="item.img_url" alt=""  />
			</div>
		   <div class="app-home-shop1-item1">
               <div class="appHomeShop1Item1" :style="'width:'+listfourlength+'px'">
                      <div v-for="item of listfour" :key="item.pid">
						  <div class="appHomeShop1Item1Image"> 
						     <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
						  </div>
						  <span>{{item.title}}</span>
						  <p>￥{{item.price}}.00</p>
					  </div>
					
			  </div>
		</div>
	
	
	
	
	</div>
	<!--————————————————————— 商品5————————————— -->
	<div class="app-home-shop2"> 
           <img src="../image/banner750_370鼠标垫.jpg" alt="">
		   <div class="app-home-shop1-item1">
              <div class="appHomeShop1Item1" :style="'width:'+listfivelength+'px'">
                      <div v-for="item of listfive" :key="item.pid">
						  <div class="appHomeShop1Item1Image"> 
						     <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
						  </div>
						  <span>{{item.title}}</span>
						  <p>￥{{item.price}}.00</p>
					  </div>
					
			  </div>
		</div>
	
	
	
	
	</div>
	<!-- ——————————————————商品6———————————— -->
	<div class="app-home-shop2"> 
           <img src="../image/banner750_370配饰.jpg" alt="">
		   <div class="app-home-shop1-item1">
              <div class="appHomeShop1Item1" :style="'width:'+listsixlength+'px'">
                      <div v-for="item of listsix" :key="item.pid">
						  <div class="appHomeShop1Item1Image"> 
						     <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
						  </div>
						  <span>{{item.title}}</span>
						  <p>￥{{item.price}}.00</p>
					  </div>
			  </div>
		</div>
	
	
	
	
	</div>
	<!-- ——————————————————商品7———————————————————————— -->
	<div class="app-home-shop2"> 
           <img src="../image/banner750_370卫衣.jpg" alt="">
		   <div class="app-home-shop1-item1">
               <div class="appHomeShop1Item1" :style="'width:'+listsevenlength+'px'">
                      <div v-for="item of listseven" :key="item.pid">
						  <div class="appHomeShop1Item1Image"> 
						     <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
						  </div>
						  <span>{{item.title}}</span>
						  <p>￥{{item.price}}.00</p>
					  </div>
			  </div>
		</div>
	
	
	
	
	</div>
	<!-- ----------------------商品8-------------------------------- -->
	 <div class="app-home-shop2"> 
           <img src="../image/banner750_370魔兽书.jpg" alt="">
		   <div class="app-home-shop1-item1">
              <div class="appHomeShop1Item1" :style="'width:'+listeightlength+'px'">
                      <div v-for="item of listeight" :key="item.pid">
						  <div class="appHomeShop1Item1Image"> 
						     <img :src="item.img_url" alt="" @click="usedetail" :data-pid="item.pid"/>
						  </div>
						  <span>{{item.title}}</span>
						  <p>￥{{item.price}}.00</p>
					  </div>
			  </div>
		</div>
	
	
	
	
	</div>
 </div>

</template>
<script>
    import  navbox from"../sub/abc.vue";
    export default{
        data(){ return {
			 jihuo:0,
			navhome:[
				{img:"jiaju1.png",title:"家具生活",num:"1"},
				{img:"jiaju2.png",title:"手办模型",num:"2"},
				{img:"jiaju3.png",title:"数码外设",num:"3"},
				{img:"jiaju4.png",title:"配饰挂件",num:"4"},
				{img:"jiaju5.png",title:"服装服饰",num:"5"},
				{img:"jiaju6.png",title:"图书文具",num:"6"},
				{img:"jiaju7.png",title:"超值专区",num:"7"},
				{img:"jiaju8.png",title:"全部分类",num:"8"},
			],
			list:[],
			listlun:[],
			listone:[],
			listtwo:[],listtwolength:0,
			listtwoitem:[],
			listtwoitem1:[],
			listtherr:[],listtherritem:[],listtherrlength:0,
			listfour:[],listfouritem:[],listfourlength:0,
			listfive:[],listfivelength:0,
			listsix:[],listsixlength:0,
			listseven:[],listsevenlength:0,
			listeight:[],listeightlength:0
			 } },  
	methods:{
		usegoodlist(e){
			  var num=e.target.dataset.num;
			  this.$router.push("/GoodList?num="+num);
	      	},
		usedetail(e){
				var pid=e.target.dataset.pid;
				this.$router.push("/Detail?pid="+pid);
		    },
		bxindex(){
            var url="http://127.0.0.1:3000/bxindex";
			this.axios.get(url).then(result=>{
				var l=result.data.data;
			    this.listlun=l.slice(0,4);
				this.listone=l.slice(4,9);
				this.listtwoitem=l.slice(9,10);
				this.listtwoitem1=l.slice(10,11);
				this.listtwo=l.slice(11,16);
				this.listtwolength=(this.listtwo.length)*135;
				this.listtherritem=l.slice(17,18);
				this.listtherr=l.slice(18,24);
				this.listtherrlength=(this.listtherr.length)*135;
				this.listfouritem=l.slice(24,25);
				this.listfour=l.slice(25,29);
				this.listfourlength=(this.listfour.length)*135;
                this.listfive=l.slice(29,34);
				this.listfivelength=(this.listfive.length)*135;
                this.listsix=l.slice(34,38);
				this.listsixlength=(this.listsix.length)*135;
                this.listseven=l.slice(38,43);
				this.listsevenlength=(this.listseven.length)*135;
                this.listeight=l.slice(43,48);
				this.listeightlength=(this.listeight.length)*135;
				//console.log(this.listfourlength);
				//this.list=result.data;
			})
		}
	
	},
	created(){
		this.bxindex();
	},
	components:{"nav-box":navbox}
    }
</script>
<style >
   .app-home>div:nth-child(1){
	background-color: #012a60;
	width:100%; 
   }
   .app-home{background-color:#f4f4f4;padding-bottom:30px;padding-top:40px;}
     .app-home .mint-swipe{  height:200px; }
	  .app-home-nav{overflow: auto;width:100%;height:50px;background-color: #012a60;}
	  .app-home-nav .app-home-nav-item{display:flex;flex-wrap:wrap;justify-content:space-between;
	                                   width:630px;margin:0;padding:0 5px;
												  background-color: #012a60;
												  }
     .app-home-nav .app-home-nav-item a{width:84px;height:45px;display:block;
	                      background-color:#012a60;text-align:center;
	                      border:0.01rem solid #264770;margin:0 2px;
								 }
     .app-home-nav .app-home-nav-item  img{width:40%;margin:6% 0;}

     .app-home .mint-swipe img{width:100%;height:100%}
    .app-home .mui-grid-view.mui-grid-9 .mui-media{width:25% ;margin:2px 0;height:100px;
	           border:1px solid rgb(216, 215, 215);background-color: #fff !important;}
     .app-home .mui-grid-view.mui-grid-9 .mui-media img{width:50%;}
	 .nav-divspan span{border:1px solid rgb(110, 109, 109);
	      width:50%;display:inline-block;text-align: center;height:34px;line-height:34px;
		  font-size:0.9rem;
		  background-color:rgb(211, 209, 209);
		  background-image:url(../image/xiazai7.png) ;
		  background-repeat: no-repeat;
		  background-position:18% 50%;
		  background-size:8%;
	   }
	.app-home-shop{margin-top:10px;background-color:#fff;padding:8px 8px 16px 8px;
	margin-bottom:10px ;}	 
	.app-home-shop-item{padding:10px 5px 15px 5px;}
	.app-home-shop-item>a{color:#000;font-size:0.9rem;float:right;}	
	.app-home-shop-item-01{display:flex;flex-wrap:wrap;justify-content:space-around;}
	.app-home-shop-item-2{position: relative;width:49%;margin:3px 0;}
	.app-home-shop-item-2 img{width:100%;}	
	.app-home-shop-item-2 span{display:block;width:100%;position:absolute;
	bottom: 1px;color:#fff;text-align:center;padding:5px;
	background-color: rgba(50, 50, 50,0.5);font-size:0.8rem;
	}	
    #apphomeshopitem01>div:nth-child(1){width:100%;}
    #apphomeshopitem01>div:nth-child(1) img{width:100%;}
    #apphomeshopitem01>div:nth-child(1) span{width:100%;}
	.app-home-shop1{width:100%;background-color:#fff;padding:8px 8px 20px 8px;
	                margin-bottom:10px;}
    .app-home-shop1-item{background-color:#e2f6ff; }	 
	.app-home-shop1-item img{width:40%;}
	.app-home-shop1-item>div{float: right;width:58%;padding:15px;}	 
	.app-home-shop1-item>div img{width:13%;margin:5px 0;}
	.app-home-shop1-item>div b{font-size:1rem;}
	.app-home-shop1-item>div p{font-size:0.8rem;margin-top:6px;}
	.app-home-shop1-item>div a{color:red;}
    .appHomeShop1Item1>div{width:110px;height:150px;margin:5px 5px;}
    .appHomeShop1Item1Image{width:100%;padding:5px 5px 10px 5px;
	                  background-color:#f4f4f4;text-align: center;}
    .appHomeShop1Item1>div>div>img{width:90%;}
    .appHomeShop1Item1>div span{font-size:0.8rem;}
    .appHomeShop1Item1>div p{color:red;}
	.app-home-shop1-item1{width:100%;height:170px;}
	.appHomeShop1Item1{display:flex;flex-wrap:wrap;justify-content:space-around;}
	.app-home-shop1-item1{overflow:auto;}
	.app-home-shop2{width:100%;background-color:#fff;margin-bottom:10px;padding-bottom:10px;}
	.app-home-shop2 img{width:100%;}
</style>
