var express = require('express');
var router = express.Router();

fileModel=require.main.require('./models/file');

router.get('/', function(request, response){
		response.render('upload/upload');
});

router.post('/',function(request,response){
	let formidable = require('formidable');
	let form = new formidable.IncomingForm();
	let fs = require('fs');
	form.parse(request, function(err, fields, files) {
	  
		let uploadObj = {};
		
	  if(fields.FileCategory) {
		uploadObj['filecategory'] = fields.FileCategory;
	   }

	  if(fields.FileType) {
		uploadObj['filetype'] = fields.FileType;
	  }

	  if(fields.FileName) {
		uploadObj['filename'] = fields.FileName;
	  }

	  let uploadDir = 'public';
	  if(files.UploadFile && files.UploadFile.name){ 
		let fileStrArr = files.UploadFile.name.split('.');
		let ext = fileStrArr[fileStrArr.length - 1];
		let fileName = files.UploadFile.name+(new Date()).getTime()+'.' + ext;
		uploadObj['videoupload'] = '/' + fileName;
		let readFileData = fs.readFileSync(files.UploadFile.path);
		if (readFileData && fs.writeFileSync(uploadDir + '/' + fileName, readFileData)) {
			fs.unlinkSync(files.UploadFile.path);
		}
	  }

	  if(files.Thumbnail.name){ 
		let fileStrArr = files.Thumbnail.name.split('.');
		let ext = fileStrArr[fileStrArr.length - 1];
		let fileName = files.Thumbnail.name+(new Date()).getTime()+'.' + ext;
		uploadObj['thumbnailupload'] = '/'+fileName;
		let readFileData = fs.readFileSync(files.Thumbnail.path);
		if (readFileData && fs.writeFileSync(uploadDir + '/'+fileName, readFileData)) {
			fs.unlinkSync(files.Thumbnail.path);
		}
	  }

	  fileModel.insert(uploadObj, function(success){
			if(success)
			{
				response.redirect('/upload');
			}
			else
			{
				response.send('Error inserting data');
			}
		});

	});
});

module.exports = router;
