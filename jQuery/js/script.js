$('.padding').css({'padding-bottom':'10px'});

$('.phone-code').css({
"font-weight":"bold",
"font-size":"50%"
});

$(':contains("(Velcom)")').each(function(){
  $(this).html($(this).html().split("(Velcom)").join(""));
});

var phone = $(".phone").html()
phone = phone[0]+phone[1]+phone[3]+"-"+phone[4]+phone[6]+"-"+phone[7]+phone[8]
$(".phone").html(phone)
