<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
  <header>
    <h1>Регистрация пользователя</h1>
  </header>
  <form action="ending_registration.php" name="registrationForm" method="post">
    <label for="firstname">
      Имя:<br>
      <input type="text" name="firstname" id="firstname" required>
    </label>
    <label for="lastname">
      Фамилия:<br>
      <input type="text" name="lastname" id="lastname" required>
    </label>
    <label for="mail">
      Почта:<br>
      <input type="email" name="mail" id="mail" required>
    </label>
    <hr>
    <label>Курсы:</label>
    <label for="d7">
      <input type="radio" name="drupal" id="d7" value="Drupal 7" checked>Drupal 7
    </label>
    <label for="d8">
    	<input type="radio" name="drupal" id="d8" value="Drupal 8">Drupal 8
    </label>
    <label for="additionalinformation">
      Дополнительная информация:
      <textarea name="additionalinformation" id="additional_inf" cols="30" rows="10" required></textarea>
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