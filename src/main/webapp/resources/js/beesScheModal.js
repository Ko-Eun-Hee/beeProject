$(function(){


$('#sche-modal-btn').click(function () {

    //비즈 페이지에서 주석제거. -  자동으로 배경 높이 산정하여 Modal background 까는 설정//
    //var height = Number($('#bees-contents').css('height').replace('px',""))+20;
    //$('.sche-modal-bg').css('height',height+"px");
    $('.sche-modal-bg').css('display','block');
    $('#sche-modal').css('display', 'block');
    
    })
    
    $('#sche-modal-close').click(function () {
    
    $('#sche-modal').css('display', 'none');
    $('.sche-modal-bg').css('display','none');
    
    
    })


})