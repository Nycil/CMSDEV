// JavaScript Document

// Fancybox Popup Functions //
$(document).ready(function() {
	//$('.fancybox').fancybox();
	$(".fancybox").fancybox({
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$('.gallery').fancybox();
	$(".photo_gallery").fancybox({
		prevEffect		: 'none',
		nextEffect		: 'none',
		closeBtn		: false,
		helpers		: { 
			title	: { type : 'inside' },
			buttons	: {}
		}
	});
});

$(document).ready(function() {
	$(".slide_show").fancybox({
		prevEffect		: 'none',
		nextEffect		: 'none',
		closeBtn		: false,
		helpers		: { 
			title	: { type : 'inside' },
			buttons	: {}
		}
	});
});

$('.fancybox-buttons').fancybox({
		openEffect  : 'none',
		closeEffect : 'none',
		
		prevEffect : 'none',
		nextEffect : 'none',
		
		closeBtn  : false,
		
		helpers : {
			title : {
				type : 'inside'
			},
			buttons	: {}
		},
		
		afterLoad : function() {
			this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
		}
});

$(document).ready(function() {
	$(".fancybox-thumb").fancybox({
		prevEffect	: 'none',
		nextEffect	: 'none',
		helpers	: {
			title	: {
				type: 'outside'
			},
			overlay	: {
				opacity : 0.8,
				css : {
					'background-color' : '#000'
				}
			},
			thumbs	: {
				width	: 50,
				height	: 50
			}
		}
	});
});

$(document).ready(function() {
	$(".3dwalkthrough").fancybox({
		maxWidth	: 685,
		maxHeight	: 670,
		fitToView	: false,
		width		: 685,
		height		: 520,
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".sociallinks").fancybox({
		maxWidth	: 685,
		maxHeight	: 670,
		fitToView	: false,
		width		: 685,
		height		: 520,
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".pdf").fancybox({
		maxWidth	: 1010,
		maxHeight	: 800,
		fitToView	: false,
		width		: 1010,
		height		: 700,
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".nitya_slideshow").fancybox({
		maxWidth	: 1005,
		maxHeight	: 585,
		fitToView	: false,
		width		: 1005,
		height		: 585,
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".cv_sqirel").fancybox({
		maxWidth	: 1000,
		maxHeight	: 800,
		fitToView	: false,
		width		: 940,
		height		: 730,
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".candidate_comments").fancybox({
		maxWidth	: 1000,
		maxHeight	: 800,
		fitToView	: false,
		width		: 475,
		height		: 600,
		autoSize	: true,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".interview_process").fancybox({
		maxWidth	: 1000,
		maxHeight	: 800,
		fitToView	: false,
		width		: 920,
		height		: 700,
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".reject_candidate").fancybox({
		maxWidth	: 1000,
		maxHeight	: 800,
		fitToView	: false,
		width		: 350,
		height		: 300,
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
	$(".various").fancybox({
		maxWidth	: 1000,
		maxHeight	: 800,
		fitToView	: false,
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
});

// Cufon Font Replacement //
Cufon.replace('h1,h2,h3,h4,h5', { fontFamily: 'Liberation Sans', hover: true });
Cufon.replace('#youarehere,#punchline,.blue-heading', { fontFamily: 'Liberation Sans', hover: true });