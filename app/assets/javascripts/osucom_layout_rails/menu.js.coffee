  scrollTop = $(window).scrollTop()
  if scrollTop == 0
    $('#admin-bar-bg').css('opacity','0')
    
  $(window).scroll =>
    scrollTop = $(window).scrollTop()
    if scrollTop != 0
      $('#admin-bar-bg').stop().animate {'opacity':'0.8'},300
      #$('#admin-bar').css('background', '#F1F1F1')
    else   
      $('#admin-bar-bg').stop().animate {'opacity':'0'},300
      #$('#admin-bar').css('background', 'transparent')