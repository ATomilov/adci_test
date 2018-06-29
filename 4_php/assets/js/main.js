jQuery(document).ready(function ($) {
  $('body').on('click', 'form[name="searchText"] > button[type=submit]', function (e) {
      e.preventDefault();
      var targetSearch = $('#targetSearch').val();
      var mainText = $('.main-text-container').text();
      if (targetSearch!='') {
        $.ajax({
          method: "POST",
          url: '../../highlight_text.php',
          data: 'targetSearch=' + targetSearch + '&mainText=' + mainText,
      	}).done(function (data) {
        	$('.main-text-container').html(data);
      	})
      }
      else {
        alert("Заполните поле поиска, пожалуйста");
      }
      
  });
});