<template>
    <div class="app-newsinfo">
      <div> <img :src="listimg" alt="listimg"> </div>
      <div class="newsinfomsg">
         <textarea 
         placeholder="请评论最多120个字"
         maxlength="120"
         v-model="msg"
         ></textarea>
         <button @click="insetnew">提交</button>
      </div>
       <comment-box></comment-box>
    <button class="newsinfo-footer" @click="fanhui">返回</button>
    </div>
</template>
<script>
   import {Toast} from 'mint-ui';
   import  comment from"../sub/Subinfo.vue";
export default {
    data(){
        return {
            list:[],
            listimg:[],
            msg:""
        }
    },
    methods: {
  
        fanhui(){
            var pid=this.$route.query.pid;
            this.$router.push("/Detail?pid="+pid);   
        },
        insetnew(){
             var m=this.msg;
             var size=m.trim().length;
             if(size==0){Toast("评论不能为空");return;};
             var nid=this.$route.query.nid;
             var  postDate=this.qs.stringify({
                 nid:nid,content:this.msg
             });
             var url="http://127.0.0.1:3000/";
                url+="addcomment";
                this.axios.post(url,postDate).then(result=>{
                         if(result.data.code==1){
                            Toast("评论成功")
                         }
                })
             
        },
        newsinfo(){
            var pid=this.$route.query.pid;
			var url="http://127.0.0.1:3000/detail?pid="+pid;
            this.axios.get(url).then(result=>{
                var l=result.data.data;
                this.listimg=l[0].img_url
            })
        }
    },
    created() {
        this.newsinfo()
    },
    components:{"comment-box":comment}
}
</script>
<style >
 .app-newsinfo{
    padding-top:40px;
    background-color:#fff;
 } 
 .newsinfo-footer{
    position:fixed;
    z-index:11;
    width:100%;
    height:54px;
    bottom:0%;
    font-size:1rem;  
 }
 .app-newsinfo>div:nth-child(1)>img{
   width:60%;
   border-radius:15px;
   margin:0 auto;
   background-color: rgba(250, 250, 250,0.2);
 }
 .app-newsinfo>div:nth-child(1){
     text-align: center;
     background-image:linear-gradient(150deg, rgb(101, 128, 252) 0%,#00aeff 120% );
     width:100%;
     height:300px;
     display: flex;
     flex-wrap: wrap;
     flex-direction: column;
     justify-content: space-around;
     margin-bottom:10px;
 }
 .newsinfomsg{
    padding:0 6px 10px 6px; 
 }
 .newsinfomsg::after{
     content:"";
     display:table;
     clear:both;
 }
 .newsinfomsg textarea{
   border-radius:10px;
   font-size:0.9rem;
   box-shadow:1px 5px 5px -6px #000;
 }
 .newsinfomsg button{
     margin-right:10px;
     float: right;
     background-color:#00aeff;
     color:#fff;
     border-radius:5px;
 }
</style>