const db = require('../helper/mysql')

module.exports = {
    home:function(input,callback){
        var sql = ``;
        if(input.search){
            sql = `SELECT * FROM posts WHERE name LIKE "%${input.search}%" LIMIT ${input.start},${input.end}`;
        }else{
            sql = `SELECT * FROM posts  LIMIT ${input.start},${input.end}`;
        }
    
        // let sql = "SELECT * FROM posts"
         db.query(sql,function(err,data,fields){
             if(!!err){
                 console.log(err)
             }else{
                 return callback(data)
             }
         })
    },


    //limit
    limit:function(input,callback){
        let sql = ``;
        if(input!=null){
             sql = `SELECT count(id) as total FROM posts WHERE name LIKE "%${input}%"`;
        }else{
            sql = `SELECT count(id) as total FROM posts`;
        }
       
        db.query(sql,function(err,data,fields){
           if(err) throw err
           return callback(data);
        })
     },


    download:function(input,callback){
        let sql = `SELECT  * FROM posts where link = '${input.post_link}'`
        let data = {}
         db.query(sql,function(err,post,fields){
           
            if(post.length > 0){
                let sql = `SELECT  * FROM details where post_id = ${post[0].id}`
                 data.post = post
            
                db.query(sql,function(err,detail,fields){
                   
                    if(detail.length > 0){
                        data.detail = detail
                        let sql = `SELECT  * FROM languages where id = ${post[0].language_id}`
                        db.query(sql,function(err,lan,fields){
                           
                            if(lan.length > 0){
                                data.language = lan
                                return callback(data)
                            }
                        })
                    }
                })
            }
            
         })
        
        // let sql = `SELECT  * FROM details where post_link = '${input.post_link}'`
        
        // db.query(sql,function(err,detail,fields){
            
        //     if(detail.length > 0){
             
        //         let sql = `SELECT  * FROM languages where id = 1`
        //         db.query(sql,function(err,lan,fields){
        //             if(lan.length > 0){
        //                 data.language = lan
        //                 return callback(data)
        //             }
        //         })
        //     }
        // })
    },

    sidebar:function(input,callback){
        var sql = `SELECT * FROM posts WHERE trend=1 LIMIT 5` 
        db.query(sql,function(err,data,fields){
            if(!!err){
                console.log(err)
            }else{
                return callback(data)
            }
        }) 
    },

    upload:function(input,callback){
       
    },

    detail:function(input,callback){
       // let sql = "INSERT INTO details (movie_data) VALUES ?;"
       let sql = `UPDATE details SET movie_data = '${input.movie_data}' WHERE post_id = ${input.post_id};`
         db.query(sql,function(err,data,fields){
             if(!!err){
                 console.log(err)
             }else{
                 return callback(data)
             }
         })
    },

    findComment:function(input,callback){
        var sql = `SELECT * FROM comment WHERE postId='${input.post_link}'`
       
        db.query(sql,function(err,data,fields){
           if(!!err) throw err
            return callback(data)
        })
   },
   
   postComment:function(input,callback){
       var sql = "INSERT INTO comment SET ?";
        db.query(sql,input,function(err,data,fields){
           if(!!err) throw err
            return callback(data)
        })
   },

   getComment:function(input,callback){
    // var sql =``;
    
    // sql = `SELECT A.id AS user, B.id AS userReply
    // FROM comment A, comment B
    // WHERE A.id = B.responseTo`
   var sql = ``;
    if(input.search){
        sql = `SELECT * FROM comment WHERE name LIKE "%${input.search}%" LIMIT ${input.start},${input.end}`;
    }else{
        sql = `SELECT * FROM comment  LIMIT ${input.start},${input.end}`;
    }

    // let sql = "SELECT * FROM posts"
     db.query(sql,function(err,data,fields){
         if(!!err){
             console.log(err)
         }else{
             return callback(data)
         }
     })
   }

   

 
}