const express = require('express');
const Controller = require('../app/controller/MovieController');
const router = express.Router();
var path = require('path');
const fileUpload = require("express-fileupload");
// router.use(fileUpload());
module.exports = {
    home:router.get('',Controller.home),
    download:router.get('/download/:link',Controller.download),
    upload:router.post('/upload/file',Controller.upload),
    upload:router.get('/upload/post',Controller.post),
    detailForm:router.get('/detail',Controller.detailForm),
    detailUplaod:router.post('/detailUplaod',Controller.detailUplaod),
    postComment:router.post('/postComment',Controller.postComment),
}