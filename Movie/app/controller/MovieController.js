const express = require("express");
const model = require('../model/MovieModel');

module.exports = {

    //home
    home: async function(req,res){

        let search = null
        var startindex = 0
        var indexn = 1
        var setLimit = 3
        if(req.query.page){
            startindex = (req.query.page - 1) * 3 
            indexn = parseInt(req.query.page)
        }

        let input = {
            start:startindex ,
            end:setLimit
        }
        
        if(req.query.search!=null){
            input = { ...input,search:req.query.search}
            search = req.query.search
        }

        let data = new Promise(function(resolve){
            model.home(input,function(data){
               resolve(data)
            })
        });
       
       

        let limit = new Promise(function(resolve) {
            model.limit(search,function(data){
                resolve(data)
            })
        });


        let sidebar = new Promise(function(resolve) {
            model.sidebar(input,function(data){
                resolve(data)
            })
        });
       
        res.render('index',{
            'movies': await data,
            'limit':await limit,
            'index':indexn,
            'sidebar':await sidebar
        })
       
       
    },

    //download
    download:async function(req,res){
       
        let link =  req.params.link.split('+').join(' ')
        const input = {
            post_link:link
        }
        let detail = new Promise(function(resolve) {
            model.download(input,function(data){
                let download = {
                   ...data.post[0],
                   ...data.detail[0],
                   ...data.language[0]
               };
               let detail = [download]
               resolve(detail)
            })
        });
     
        let comment = new Promise(function(resolve) {
            model.findComment(input,function(data){
                resolve(data)
            })
        });

        let sidebar = new Promise(function(resolve) {
            model.sidebar(input,function(data){
                resolve(data)
            })
        });
        
        res.render('download',{'detail':await detail,'chat':await comment,'postId':link,'sidebar':await sidebar})
       
       
    },

    // get comment
    // findComment: function(req,res){
    //     const input = {
    //         id:req.params.id
    //     }
    //    model.findComment(input,function(data){
    //        res.render('download',{'chat':data,'postId':input.id})
    //    })  
    //  },

   //post comment
   postComment:function(req,res){
       const input = {
           content:req.body.content,
           name:req.body.name,
           postId: req.body.postId,
           responseTo:req.body.responseTo ,
       }

       model.postComment(input,function(data){
          let link = req.body.postId.split(' ').join('+')
          res.redirect('/download/'+link)
         
       })
   },

    //folder builder
    upload:function(req,res){
       
    },
    //folder builder
    post:function(req,res){
        res.render('postForm')
    },

    //detail upload get builder
    detailForm:function(req,res){
      res.render('detailForm')
    },

    //detail upload post builder
    detailUplaod:function(req,res){
        let json = []
        json.push(req.body)
        const input = {
            movie_data:JSON.stringify(json),
            post_id:1
        }
        model.detail(input,function(data){
            console.log(data)
           // res.render('index',{'movies':data})
         })
    },




   
}