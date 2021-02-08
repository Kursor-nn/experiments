var http = require('http');
var fs = require('fs');

var status = 'Is not configured';

var handleRequest = function(request, response) {
	
	var user_response = 'Current status : ' + status;
	if(request.url == '/config'){
		status = 'Its DONE!!!!'
		user_response = 'Current status : in progress';
	}

	response.writeHead(200);
	response.end(user_response);
};

var www = http.createServer(handleRequest);
www.listen(8080);

