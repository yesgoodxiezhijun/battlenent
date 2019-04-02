<template>
    <div class="app-subinfo">
         <div class="cmt-list">
            <div class="cmt-item" v-for="(item,i) in list" :key="item.id">
                 <div>第{{i+1}}楼  发表时间:{{item.ctime | dateFilter}}</div>
                 <div>你好啊</div>
                 <div>{{item.content}}</div>
             </div>
         </div>
        <button class="footer-subinfo" @click="getMore">加载跟多...</button>         
    </div>
</template>
<script>
export default {
    data(){
        return {
            pno:0,
            pageSize:5,
            list:[]
        }
    },
    methods: {
        getMore(){
         this.pno++;
         var url = "http://127.0.0.1:3000/";
         url+="getComment?nid=5";
         url+="&pno="+this.pno;
         url+="&pageSize="+this.pageSize;
         this.axios.get(url).then(result=>{
             var rows = this.list.concat(result.data.data);
             this.list = rows;
            
         });
      }
    },
    created() {
        this.getMore();
    },
}
</script>
<style >
   .app-subinfo{
       padding:45px 10px 55px 10px;
       background-color: #fff;
   } 
   .cmt-list{
     border:1px solid #eee;
     border-radius:10px;
     padding:5px;
     
   }
   .cmt-item>div:nth-child(1){
       font-size:0.8rem;
       color: #999;  
   }
   .cmt-item{
        border-bottom:1px solid #eee;
   }
   .cmt-item>div:nth-child(3){
       color: #999;
       font-size:0.9rem;
       padding-right:10px;
       text-align:right;
   }
   .cmt-item>div:nth-child(2){
     background-color:#eee;
     border-radius:10px;
     padding:10px 5px;
     font-size:0.8rem;
   }
   .footer-subinfo{
       width:100%;
       font-size:1rem;
       border-radius:10px;
       border:none;
       background-color:rgba(0, 0, 0, 0.1);
   }
</style>