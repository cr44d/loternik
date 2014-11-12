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
		a:hover {
			text-decoration: underline;
		}
		
		/* STYLE */
		body {
			font-family: 'Open Sans', Helvetica, Arial, sans-serif;
			color: #333;
		}
		h1, h2, legend {
			font-weight: bold;
		}
		h1, h2 {
			text-align:center;
			padding: 0.25em 0;
		}
		h1, h2, input {
			border: 0.1em solid;
		}
		h1 {
			text-transform: uppercase;
		}
		a, .button {
			color: #00f;			
		}
		
		.example {
			color:#aaa;
		}
		body {
			padding: 0 0.75em;
			text-align: center;
		}
		#page {
			text-align:left;
			margin: 0 auto;
			max-width: 33em;
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
			padding: 0.25em 1em;
			width: 100%;
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
	<form action="results">
		<fieldset>
			<legend>Wybierz, kogo chcesz losować:</legend>
			<p>
				Wyszukaj swój obwód wyborczy na stronie <a href="http://wybory2014.pkw.gov.pl/pl/obwody">Państwowej Komisji Wyborczej</a> i&nbsp;uzupełnij poniższe pola tekstowe:
			</p>
			<ol>
				<li>
					<label for="" class="name">Kandydat na: </label><input type="text" name="" id="" class="name">
				</li>
				<li>
					<label for="" class="name">Kandydat do: </label><input type="text" name="" id="" class="name">
					<label for="" class="number">Nr okręgu: </label><input type="text" name="" id="" class="number">
				</li>
				<li>
					<label for="" class="name">Kandydat do: </label><input type="text" name="" id="" class="name">
					<label for="" class="number">Nr okręgu: </label><input type="text" name="" id="" class="number">
				</li>
				<li>
					<label for="" class="name">Kandydat do: </label><input type="text" name="" id="" class="name">
					<label for="" class="number">Nr okręgu: </label><input type="text" name="" id="" class="number">
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