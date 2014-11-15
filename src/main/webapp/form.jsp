<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="cleartype" content="on">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>Loternik Wyborczy</title>
	<meta content="Wylosuj kandydatów, na których oddasz głos w wyborach." name="description">
	<link href='style.css' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
</head>
<body>
	<div id="page">
	<h1>Loternik Wyborczy</h1>
	<h2>Wybory Samorządowe 2014</h2>
	<form method="post" action="results" accept-charset="UTF-8" enctype="multipart/form-data">
		<fieldset>
			<legend>Wybierz, kogo chcesz losować:</legend>
			<p>
				Wyszukaj swój obwód wyborczy na stronie <a href="http://wybory2014.pkw.gov.pl/pl/obwody">Państwowej Komisji Wyborczej</a>, skopiuj i&nbsp;wklej nazwy urzędów i&nbsp;instytucji, do których odbywa się głosowanie i&nbsp;podaj numery okręgów:
			</p>
			<ol>
				<li>
					<label for="text1" class="name">Kandydat na: </label><input type="text" name="text1" id="text1" class="name">
				</li>
				<li>
					<label for="text2" class="name">Kandydat do: </label><input type="text" name="text2" id="text2" class="name">
					<label for="number2" class="number">Okręg nr: </label><input type="text" name="number2" id="number2" class="number">
				</li>
				<li>
					<label for="text3" class="name">Kandydat do: </label><input type="text" name="text3" id="text3" class="name">
					<label for="number3" class="number">Okręg nr: </label><input type="text" name="number3" id="number3" class="number">
				</li>
				<li>
					<label for="text4" class="name">Kandydat do: </label><input type="text" name="text4" id="text4" class="name">
					<label for="number4" class="number">Okręg nr: </label><input type="text" name="number4" id="number4" class="number">
				</li>
			</ol>
			<input type="submit" value="Losuj" class="button">
			<p class="example">
				Na przykład: <br>
				1) „Prezydent m.st. Warszawy” <br> 
				2) „Rada m.st. Warszawy” (i&nbsp;numer okręgu) <br>
				3) „Rada Dzielnicy Żoliborz m. st. Warszawy” (i&nbsp;numer okręgu) <br>
				4) „Sejmik Województwa Mazowieckiego” (i&nbsp;numer okręgu)<br>
			</p>
		</fieldset>
	</form>	
	</div>
</body>
</html>
