const express = require('express');
const Controller = require('../app/controller/DashboardController');
const router = express.Router();
var path = require('path');
const fileUpload = require("express-fileupload");
// router.use(fileUpload());


function movieRoute(){
    router.get('/panel/movie/index',Controller.movie.index)
    router.get('/panel/movie/create',Controller.movie.create)
    router.get('/panel/movie/edit',Controller.movie.edit)
   // router.get('/panel/movie/edit',Controller.edit)  
}

function commentRoute(){
    router.get('/panel/comment/index',Controller.comment.index)
   // router.get('/panel/movie/edit',Controller.edit)  
}

function userRoute(){
    router.get('/panel/user/index',Controller.user.index)
   // router.get('/panel/movie/edit',Controller.edit)  
}


module.exports = {
    dashboard:router.get('/panel/index',Controller.dashboard),
    user:userRoute(),
    movie:movieRoute(),
    comment:commentRoute()
}