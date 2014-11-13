<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="cleartype" content="on">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	
	<title>Loternik Wyborczy</title>
	<meta content="Wylosuj kandydatów, na których oddasz głos w wyborach." name="description">
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<style>
		/* RESET */
		html, body, div, span,
		applet, object, iframe,
		h1, h2, h3, h4, h5, h6,
		p, blockquote, pre, hr,
		a, abbr, acronym, address,
		big, cite, code,
		del, dfn, em, font,
		img, ins, kbd, q,
		s, samp, small, strike,
		strong, sub, sup,
		tt, var, b, u, i, center, 
		dl, dt, dd, ol, ul, li,
		fieldset, form, input, 
		select, textarea,
		label, legend,
		table, caption, 
		tbody, tfoot, thead,
		tr, th, td,
		article, aside, 
		canvas, details, 
		embed, figure, 
		figcaption, footer, 
		hgroup, menu, 
		nav, output, 
		ruby, section, 
		summary, time, mark, 
		audio, video {
			margin: 0;
			padding: 0;
			border: 0;
			font-size: 100%;
			font: inherit;
			vertical-align: baseline;
		}
		article, 
		aside, 
		details, 
		figcaption, 
		figure, 
		footer, 
		header, 
		hgroup, 
		menu, 
		nav, 
		section {
			display: block;
		}
		a img {
			margin: 0;
			border: none;
			padding: 0;
		}
		input {
			border: 1px solid;
		}
		body {
			font-size: 1.5em;
			line-height: 1.5em;
		}
		h1, h2, h3, h4, h5, h6,
		p, ul, ol, dl, blockquote,
		form {
			margin: 0.75em 0;
		}
		b, strong {
			font-weight: bold; 
		}
		i, em, cite {
			font-style: italic; 
		}
		small { 
			font-size: 75%; 
		}
		a, a:visited, a:hover, a:active, a:focus, a.active:hover {
			outline: none;
			text-decoration: none;
		}
		
		/* STYLE */
		/* Typography */
		body {
			font-family: 'Open Sans', Helvetica, Arial, sans-serif;
		}
		
		/* Colors */
		body {color: #444;}
		.example, .office {color:#888;}
		h1 {background: #29f;}
		h2, h3, legend {color: #29f;}
		a {color:#4a5;}
		a:hover {color:#6b6;}
		input.button {background:#4a5;}
		input.button:hover {background:#6b6;}
		h1, input.button {color: #fff;}

		/* Layout */
		body {
			padding: 0 0.75em;
			text-align: center;
		}
		#page {
			text-align:left;
			margin: 0 auto;
			max-width: 33em;
		}
		h1 {
			position: fixed;
			z-index:1000;
			width:100%;
			left:0;
			top:0;
			margin: 0;
			padding: 0.75em 0;
			box-shadow: 0 0.125em 0.125em rgba(0,0,0,0.25);
		}
		h1, input.button {
			text-align:center;	
		}
		h2 {
			padding-top: 3.5em;
			padding-bottom: 0.5em;
		}
		ol {
			padding-left:1.5em;
		}
		input {
			background: transparent;
			padding: 0 0.25em;
			margin: 0.25em 0;
		}
		input.name {
			max-width:15em;
		}
		input.number {
			max-width:2em;
		}
		input.button {
			cursor:pointer;
			-webkit-appearance:none;
			padding: 0.25em 1em;
			width: 100%;
		}
		ol span {
			display:block;
		}
		@media screen and (max-width: 49.5em) {
			label {display:block;}
			input.name {max-width:9.5em;}
			
		}
	</style>
	
	
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->


</head>
<body>
	<div id="page">
	<h1>Loternik Wyborczy</h1>
	<h2>Wybory Samorządowe 2014</h2>
	<form method="post" action="results">
		<fieldset>
			<legend>Wybierz, kogo chcesz losować:</legend>
			<p>
				Wyszukaj swój obwód wyborczy na stronie <a href="http://wybory2014.pkw.gov.pl/pl/obwody">Państwowej Komisji Wyborczej</a>, skopiuj i&nbsp;wklej nazwy stanowisk i&nbsp;instytucji, do których odbywa się głosowanie i&nbsp;podaj numery okręgów:
			</p>
			<ol>
				<li>
					<label for="text1" class="name">Kandydat na: </label><input type="text" name="text1" id="text1" class="name">
				</li>
				<li>
					<label for="text2" class="name">Kandydat do: </label><input type="text" name="text2" id="text2" class="name">
					<label for="number2" class="number">Nr okręgu: </label><input type="text" name="number2" id="number2" class="number">
				</li>
				<li>
					<label for="text3" class="name">Kandydat do: </label><input type="text" name="text3" id="text3" class="name">
					<label for="number3" class="number">Nr okręgu: </label><input type="text" name="number3" id="number3" class="number">
				</li>
				<li>
					<label for="text4" class="name">Kandydat do: </label><input type="text" name="text4" id="text4" class="name">
					<label for="number4" class="number">Nr okręgu: </label><input type="text" name="number4" id="number4" class="number">
				</li>
			</ol>
			<input type="submit" value="Losuj" class="button">
			<p class="example">
				Na przykład: <br>
				1) „Prezydent m.st. Warszawy” <br> 
				2) „Rada m.st. Warszawy” (i&nbsp;numer okręgu) <br>
				3) „Rada Dzielnicy Żoliborz m.st. Warszawy” (i&nbsp;numer okręgu) <br>
				4) „Sejmik Województwa Mazowieckiego” (i&nbsp;numer okręgu)<br>
			</p>
		</fieldset>
	</form>	
	</div>
</body>
</html>