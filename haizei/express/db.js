const mysql=require('mysql');
const connection=mysql.createConnection({
  host:'localhost',
  user:'haizei',
  password:'123456',
  database:'onepiece'
});

module.exports={
  wh:undefined,
  where(str) {
    this.wh = str;
    return this;
  },
  select(callback){
    let sql='';
    if (this.wh==undefined){
      sql='select * from users'
    }else{
      sql='select * from users where '+this.wh;
    }
    connection.query(sql,(err,res,fields)=>{
      callback(res);
      this.wh=undefined;
    })
  },
  update(obj,callback){
    let set='';
    if(this.wh==undefined){
      console.log('请添加where条件......');
      return;
    }else{
      for (i in obj){
        set+=i+'="'+obj[i]+'",'
      }
    }
     set = set.slice(0,set.length-1);
   let sql='update users set '+set+ ' where '+this.wh;
   connection.query(sql,(err,res,fields)=>{
     callback(res.changedRows)
   })
   this.wh=undefined;
  },
  delete(callback){
    if (this.wh==undefined){
      console.log('请输入删除条件...');
      return;
    }
    let sql='delete from users where '+this.wh;
    connection.query(sql,(err,res,field)=>{
         callback(res.affectedRows);
         this.wh=undefined;
    })
  },
  insert(obj,callback){
     let key='';
     let value=""
     for (i in obj){
       key+=i+',';
       value+='"'+obj[i]+'",'
     }
     key=key.slice(0,key.length-1);
     value=value.slice(0,value.length-1);
     let sql = "insert into users ("+key+") values ("+value+")";
     connection.query(sql,(err,res,fields)=>{
      callback(res.affectedRows);
     })
  }
}
