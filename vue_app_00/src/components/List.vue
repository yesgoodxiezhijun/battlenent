<template>
 <div class="app-list">
     <h3>数据列表</h3>
     <ul>
        <li v-for="item of list" :key="item.id">
           号码{{item.id}} 姓名:{{item.name}} 年龄:{{item.age}}
        </li>
     </ul>
   </div>
</template>
<script>
    export default{
        data(){
            return {
                list:[
                    {id:1,name:"tom",age:19},
                    {id:2,name:"jerry",age:20},
                    {id:3,name:"james",age:21}
                ]
            }
        }
    }
</script>
<style >
    
</style>