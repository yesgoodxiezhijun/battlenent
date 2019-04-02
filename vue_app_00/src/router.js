import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Exam01 from "./components/Exam01.vue";
import Home from "./components/tabbar/Home.vue";
import Detail from "./components/home/Detail.vue";
import Login from "./components/home/Login.vue";
import Register from "./components/home/Register.vue";
import User from "./components/home/User.vue";
import Cart from "./components/home/Cart.vue";
import Newsinfo from "./components/home/Newsinfo.vue";
import abc from "./components/sub/abc.vue";
import GoodList from "./components/goods/GoodList.vue";
import Search from "./components/goods/Search.vue";
import Subinfo from "./components/sub/Subinfo.vue";
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',redirect:'/Home'},
    {path:'/Exam01',component:Exam01},
    {path:'/Home',component:Home},
    {path:'/Detail',component:Detail},
    {path:'/Register',component:Register},
    {path:'/Login',component:Login},
    {path:'/User',component:User},
    {path:'/Newsinfo',component:Newsinfo},
    {path:'/GoodList',component:GoodList},
    {path:'/Search',component:Search},
    {path:'/Cart',component:Cart},
    {path:'/Subinfo',component:Subinfo},
    {path:'/abc',component:abc}
  ]
})
