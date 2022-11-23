const express = require("express");
const model = require('../model/MovieModel');


module.exports = {

    //home
    dashboard:async function(req,res){
        res.render('./backend/index',{'active':'dashboard'})
    },
    
    user:{
        index: async function(req,res){
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
        
                res.render('./backend/users/index',{
                    'movies': await data,
                    'limit':await limit,
                    'index':indexn,
                    'active':'administrator',
                })
              //  res.render('./backend/users/index')
            },
        
    },


    movie:{
       index:async function(req,res){
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

            res.render('./backend/movies/index',{
                'movies': await data,
                'limit':await limit,
                'index':indexn,
                'active':'movie',
            })
        //  res.render('./backend/movies/index')
        },
        create:function(req,res){
            res.render('./backend/movies/create',{
                'active':'movie',
            })
        },
        edit:function(req,res){
            res.render('./backend/movies/edit',{
                'active':'movie',
            })
        },
    },

    comment:{
        index:function(req,res){
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
            model.getComment(input,function(data){
                res.render('./backend/comments/index',{
                    'active':'comment',
                    'comment':data
                })
            })
          
        },
    }





   
}