const express=require('express');
const controller=require('./controller')
const router=express.Router();


router.get('/',controller.getall)
      .get('/getone', controller.getone)
      .get('/update',controller.update_get)
      .post('/update',controller.update_post)
      .get('/delete',controller.delete)
      .get('/add',controller.add)
      .post('/add_post',controller.add_post)

module.exports=router