$(function(){
  function animation(){
    $('.lunchbox-content-box,.lunchbox-contents,.oseti,.footer-information,.footer,.lunch-content-box,.lunch-contents').each(function(){
      //ターゲットの位置を取得
      var target = $(this).offset().top;
      //スクロール量を取得
      var scroll = $(window).scrollTop();
      //ウィンドウの高さを取得
      var windowHeight = $(window).height();
      //ターゲットまでスクロールするとフェードインする
      if (scroll > target - windowHeight){
        $(this).css('opacity','1');
        $(this).css('transform','translateY(0)','translateX(0)');
      }
    });
  }
  animation();
  $(window).scroll(function (){
    animation();
  });
});