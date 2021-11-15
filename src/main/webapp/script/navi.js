$(function(){
	$('nav.lnb ul li').click(function(){
		$(this).siblings().removeClass('active');
		$(this).addClass('active');
		$('.books').siblings().removeClass('active');
		$('.books').siblings('.'+$(this).attr('name')).addClass('active');
	})
})