<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <header>
    Регистрация пользователя
  </header>
  <form action="ending_registration.php" method="post">
    <label for="firstname">
      Имя:
      <input type="text" name="firstname" id="firstname">
    </label>
    <label for="lastname">
      Фамилия:
      <input type="text" name="lastname" id="lastname">
    </label>
    <label for="mail">
      Почта:
      <input type="email" name="mail" id="mail">
    </label>
    <label for="drupal7">
      <input type="radio" name="drupal7" id="d7">
      <input type="radio" name="drupal8" id="d8">
    </label>
    <label for="additionalinformation">
      Дополнительная информация:
      <textarea name="additionalinformation" id="additional_inf" cols="30" rows="10">
      </textarea>
    </label>
    <div class="form-button-group">
      <button type="submit">Отправить</button>
      <button type="reset">Очистить</button>
    </div>
  </form>
  <footer>
    Something copyright
  </footer>
</body>
</html>