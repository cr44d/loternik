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
	<h3>Gratulujemy, wylosowałeś następujących kandydatów:</h3>
	<ol>
		<li> 
			<span class="name"><b>${prezydent['nazwisko']}, ${prezydent['imiona']}</b></span>
			<span class="party">${prezydent['komitet']}</span>
			<span class="office">${prezydent['Kandydat_do']}</span>
		</li>
		<li>
			<span class="name"><b>${radaM['nazwisko']}, ${radaM['imiona']}</b></span>
			<span class="party">${radaM['komitet']}</span>
			<span class="office">${radaM['Kandydat_do']}</span>
		</li>
		<li> 
			<span class="name"><b>${radaD['nazwisko']}, ${radaD['imiona']}</b></span>
			<span class="party">${radaD['komitet']}</span>
			<span class="office">${radaD['Kandydat_do']}</span>
		</li>
		<li> 
			<span class="name"><b>${sejmik['nazwisko']}, ${sejmik['imiona']}</b></span>
			<span class="party">${sejmik['komitet']}</span>
			<span class="office">${sejmik['Kandydat_do']}</span>
		</li>
	</ol>
	</form>	
	</div>
	<div>
		Jeśli chcesz dowiedzieć się o nas więcej, zapraszamy na <a href="http://fb.com/waznapol">nasz fanpage</a>.
	</div>

</body>
</html>
