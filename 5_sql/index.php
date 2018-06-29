<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Task 5</title>
</head>
<body>
<?php
  $connection = new mysqli("localhost","root","",'Training');
  $query1 = "SELECT Trainee.name, Trainee.email, Course.name, DATE_FORMAT(FROM_UNIXTIME(History.end), '%e %b %Y') AS 'finish course date' FROM History LEFT JOIN Trainee ON History.trainee_id = Trainee.trainee_id RIGHT JOIN Course ON History.course_id = Course.course_id WHERE Course.name='PHP' AND History.status=1 AND EXTRACT(MONTH FROM(FROM_UNIXTIME(History.end))) = EXTRACT(MONTH FROM(CURDATE() - INTERVAL 1 MONTH))";
	$query2="SELECT Course.name, COUNT(*) AS 'successful quantity' FROM History LEFT JOIN Course ON History.course_id = Course.course_id WHERE  History.status=1 AND EXTRACT(MONTH FROM(FROM_UNIXTIME(History.start))) = EXTRACT(MONTH FROM(CURDATE())) GROUP BY Course.name";
	$result1 = $connection->query($query1);
	while($row = mysqli_fetch_array($result1,MYSQLI_NUM)) 
	{
	  echo '<p>';
	  echo ("Стажёр = " . $row[0] . "<br> Почта = " . $row[1] . "<br> Курс стажировки = " . $row[2] . "<br> Дата успешного прохождения = " . $row[3]);
	  echo '</p>';
	}
	$result2 = $connection->query($query2);
	while($row = mysqli_fetch_array($result2,MYSQLI_ASSOC)) 
	{
	  echo '<p>';
	  echo ("Курс стажировки = " . $row['name'] . "<br> Количество успешных прохождений = " . $row['successful quantity']);
	  echo '</p>';
	}
?>
</body>
</html>