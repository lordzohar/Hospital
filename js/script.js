
$(document).ready(function(){
	//Set Options
    var speed=500;  //fade speed
    var autoswitch=true;//auto slider option
    var autoswitch_speed=4000;//Auto slide speed
    
    //add initial active class
    $('.slide').first().addClass('active');
    
    //hide all class
    $('.slide').hide();
    
    //show first slide
    $('.active').show();
    
    //Next Handler
    $('#next').on('click',nextSlide);
    
    //prev handler
    $('#prev').on('click',prevSlide);
    
    //autoswitch handler
    if(autoswitch==true){
        setInterval(nextSlide,autoswitch_speed);
    }
    
    //switch to next slide
    function nextSlide(){
        $('.active').removeClass('active').addClass('oldActive');
        if($('.oldActive').is(':last-child')){
            
            $('.slide').first().addClass('active');
            
        }
        else{
            $('.oldActive').next().addClass('active');
        }
        $('.oldActive').removeClass('oldActive');
        $('.slide').fadeOut(speed);
        $('.active').fadeIn(speed);
        }
    
    //switch to prev slide
    function prevSlide(){
            $('.active').removeClass('active').addClass('oldActive');
        if($('.oldActive').is(':first-child')){
            
            $('.slide').last().addClass('active');
            }
        else{
            $('.oldActive').prev().addClass('active');
        }
        $('.oldActive').removeClass('oldActive');
        $('.slide').fadeOut(speed);
        $('.active').fadeIn(speed);
    }
    
});

