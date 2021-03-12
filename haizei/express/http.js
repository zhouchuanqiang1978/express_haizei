const express= require('express');
const app=express();
const rout=require('./router')
app.engine('html',require('express-art-template'));
app.use(express.static('public'));
app.use(rout)

app.listen('8000',()=>{
  console.log('服务器已启动，请访问127.0.0.1:8000')
})