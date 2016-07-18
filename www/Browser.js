/**
    Maycur In App Browser Plugin
    https://github.com/easyfisher/maycur-plugin-in-app-browser

    Copyright (c) Easter Dong 2016
*/

var exec = require('cordova/exec');

var Browser = function() {

}

Browser.show = function(url) {
	exec(null,
      	null,
      	"Browser",
      	"show",
      	[url]
    );
};

module.exports = Browser;