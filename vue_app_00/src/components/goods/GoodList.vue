<template>
      <div class="app-goodlist">
         <div class="goodlist-item" v-for="item of list" :key="item.pid">
               <div>
                  <img :src="item.img_url" alt=""@click="usedetail" :data-pid="item.pid"/>
                </div>
                <span>{{item.title}}</span>
                <span>￥{{item.price}}.00</span>
         </div>
         <div class="app-search-content-item" id="app-search-content-item-sub" :style="'display:'+none">
                 
         </div> 
      </div>
</template>
<script>
export default {
   data(){
        return {
            list:[],
            none:"block",
        }
   },
   methods: {
       usedetail(e){
        var pid=e.target.dataset.pid;
        this.$router.push("/Detail?pid="+pid);
       },
       indexgoodlist(){
            var num=this.$route.query.num;
            var url="http://127.0.0.1:3000/bxindex";
		this.axios.get(url).then(result=>{
                   var l=result.data.data;
                   if(num==1){
                        this.list=[];
                       this.list=l.slice(0,4); return; 
                   }else if(num==2){
                       this.list=[];
                       this.list=l.slice(25,29); return;
                   }else if(num==3){
                       this.list=[];
                       this.list=l.slice(5,9); return;
                   }else if(num==4){
                       this.list=[];
                       this.list=l.slice(11,16);  return;
                   }else if(num==5){
                       this.list=[];
                       this.list=l.slice(18,24); return; 
                   }else if(num==6){
                       this.list=[];
                       this.list=l.slice(25,29); return; 
                   }else if(num==7){
                       this.list=[];
                       this.list=l.slice(18,24); return; 
                   }else if(num==8){
                       this.list=[];
                       this.list=l.slice(25,29); return; 
                   }else{ this.list=[]; }
            });
       }  
   },
   created() {
     this. indexgoodlist();    
   },
}
</script>
<style >
   .app-goodlist{padding:45px 0 50px 0;display:flex;flex-wrap:wrap;justify-content: space-around;}
   .goodlist-item{width:45%;height:250px;background:#fff;margin:5px;}
   .goodlist-item>div{width:100%;margin:0 auto;height:180px;}
   .goodlist-item>div>img{width:100%;}
   .goodlist-item>span:nth-child(2){display:block;font-size:0.7rem;padding:10px 0 5px 15px;}
   .goodlist-item>span:nth-child(3){color:red;font-size:0.9rem;padding: 13px;}
   .goodlist-item>div:nth-child(1){display:flex;flex-wrap:wrap;
                       flex-direction:column;justify-content:space-around}

</style>