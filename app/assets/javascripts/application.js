// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

function rateAll(min, max){

    if(typeof(min)==='undefined') min = 3;
    if(typeof(max)==='undefined') max = 6;


    var x=document.getElementById("myframe");
    var y=(x.contentWindow || x.contentDocument);
    if (y.document)y=y.document;
    x=y.getElementsByTagName('iframe')[0];
    var y=(x.contentWindow || x.contentDocument);
    if (y.document)y=y.document;
    inputs = y.getElementsByTagName('input');
    var l = inputs.length;
    for(var i=0;i<l;i++){

    	ratingValue = parseInt(Math.random() * (max - min) + min) ;
    	console.log(ratingValue);
        if(inputs[i].id=="radiobutton"+ratingValue.toString())
            inputs[i].checked = true;
        if(inputs[i].getAttribute('type')=="button" && inputs[i].getAttribute('value').toLowerCase()=="submit")
             inputs[i].click();
    }
}


function getRandomArbitary (min, max) {
    return parseInt(Math.random() * (max - min) + min) ;
}