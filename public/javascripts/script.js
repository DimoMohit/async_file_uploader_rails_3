(function($){
	$.fn.initailizeCropping = function(){
		var $image = $(".img-container img");
		$image.cropper({
		  aspectRatio: 16 / 9,
		  data: {
		    x: 480,
		    y: 60,
		    resizable: true,
		    width: 640,
		    height: 360
		  },
		  preview: ".img-preview",
		  done: function(data) {
		    //$('.img-container img').cropper("setDragMode", "crop");
		  }
		});	
	}
}(jQuery));
$(document).ready(function(){
	$(".crop").on("click",function(){
		$('img').initailizeCropping();
	});
	$('form').trigger('submit.rails');
});