function isValidEmailAddress(emailAddress) {
  var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
  return pattern.test(emailAddress);
  }

jQuery(document).ready(function ($) {
  var firstname='';
  var lastname='';
  var email='';
  var firstnameBlock = '<div class="header">Введите свои данные</div><div class="firstname-question-container" id="block-1"><div class="firstname-question"><label for="firstname-data">Ваше имя:<input type="text" name="firstname-data" class="app-input" id="firstname-data" requared></label><a href="#" class="next">Далее</a></div></div>';
  var lastnameBlock = '<div class="header">Введите свои данные</div><div class="lastname-question-container" id="block-2"><div class="lasname-question"><label for="lastname-data">Ваша фамилия:<input type="text" name="lastname-data" class="app-input" id="lastname-data" requared></label><a href="#" class="prev">Назад</a><a href="#" class="next">Далее</a></div></div>';
  var emailBlock = '<div class="header">Введите свои данные</div><div class="email-question-container" id="block-3"><div class="email-question"><label for="email-data">Вашe email:<input type="email" name="email-data" class="app-input" id="email-data" requared></label><a href="#" class="prev">Назад</a><a href="#" class="next">Завершить</a></div></div>';
  var thanksfulBlock = '<div class="thanksful-message-container"><div class="thanksful-message-text">Спасибо!</div></div>';
  $('.main-container').html(firstnameBlock);
  $('body').on('click', '.next', function (e) {
    e.preventDefault();
    var blockId = $(this).parent().parent().attr('id');
    var id = blockId.split('-');
    switch (id[1]){
      case '1':
        firstname = $(this).prev().find('.app-input').val();
        console.log($('#firstname-data'));
        if (firstname != ''){
          $('.main-container').html(lastnameBlock);
          $('#lastname-data').val(lastname);
        }
        else {
          alert("Заполните, пожалуйста, поле");
        }
        break;
      case '2':
        lastname = $(this).prevUntil('input').find('.app-input').val();
        console.log(lastname);
        if (lastname != ''){
          $('.main-container').html(emailBlock);
          $('#email-data').val(email);
        }
        else {
          alert("Заполните, пожалуйста, поле");
        }
        break;
      case '3':
        email = $(this).prevUntil('input').find('.app-input').val();
        console.log(email);
        if (email != ''){
          if (isValidEmailAddress(email)){
            $('.main-container').html(thanksfulBlock);
          }
          else {
            alert("Почта некорректна :( ");
          }
        }
        else {
          alert("Заполните, пожалуйста, поле");
        }
        break;
    }
  });
  $('body').on('click', '.prev', function (e) {
    e.preventDefault();
    var blockId = $(this).parent().parent().attr('id');
    var id = blockId.split('-');
    switch (id[1]){
      case '2':
        $('.main-container').html(firstnameBlock);
        $('#firstname-data').val(firstname);
        break;
      case '3':
      	email = $(this).prevUntil('input').find('.app-input').val();
        $('.main-container').html(lastnameBlock);
        $('#lastname-data').val(lastname);
        break;
    }
  });
});