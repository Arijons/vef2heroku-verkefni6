<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- þvingar farsíma vafra til að birta gögn 1:1 og þá virka viðmið (breakpoints) í stílsíðum -->
	<meta charset="utf-8">
	<title>Verkefni 6</title>
	<link rel="stylesheet" type="text/css" href="static/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="static/css/grid1_1_1_4.css">
	<link rel="stylesheet" type="text/css" href="static/css/form.css">
	<link rel="stylesheet" type="text/css" href="static/css/style.css">	
</head> 
<body class="wrapper"> 
	% from bottle import *
	% from beaker.middleware import SessionMiddleware
	% bs = request.environ.get('beaker.session')
	<header>
		<h1><i>Vefverslun</i></h1>
		<div class="shopping-cart">
		</section>
	<!--teljari í körfu-->
	<% 
		from bottle import *
		from beaker.middleware import SessionMiddleware
		bs = request.environ.get('beaker.session')
		cnt = 0
		for i in range(6):
			if bs.get(str(i)):
			cnt += 1
			end
		end
	%>
       <a class="button" href="/chart">Magn í körfu {{cnt}}</a>
  
	</header>
	<section class="content"> 
	<article class="midja">
			<h2>Aðaldálkur</h2>
			<h4>Í verkefni 1 hafa nemendur kost á því að leysa þetta verkefni með nýja CSS grindakerfinu sem þróað hefur verið undanfarin ár og nú eru framleiðendur helstu vafra internetsins búnir að innleiða þessa lausn í nýjustu vafrana sjá: <a href="https://caniuse.com/"> Can I use </a> nema ennþá þarf forskeyti (<em>e. prefix</em>) á IE og Edge vafrana.
			</h4>
			<form>
			<div class="row">
				<div class="column">
					<h5>bláir NIKE skór</h5>
					<a href="/chart/0">
			 		<img src="static/jpg/skor1-200x150.jpg"></a>
					<h5>Verð:20.000 kr</h5>			   
				</div>
				<div class="column">
					<h5>Rauðir og Svartir adidas skór</h5>
					<a href="/chart/1">
			 		<img src="static/jpg/skor2-200x150.jpg"></a>
					<h5>Verð: 10.000 kr</h5>
				</div>
				<div class="column">
					<h5>Gráir nike skór</h5>
					<a href="/chart/2">
			 		<img src="static/jpg/skor3-200x150.jpg"></a>
					<h5>Verð: 15.000 kr</h5>
				</div>
				<div class="column">
					<h5>ACE Tango skór</h5>
					<a href="/chart/3">
			 		<img src="static/jpg/skor4-200x150.jpg"></a>
					<h5>Verð: 5.000 kr</h5>
				</div>
				<div class="column">
					<h5>Silvur litaðir NIKE skór</h5>
					<a href="/chart/4">
			 		<img src="static/jpg/skor5.jpg"></a>
					<h5>Verð: 10.000 kr</h5>
				</div>
				<div class="column">
					<h5>svartir adidas skór</h5>
					<a href="/chart/5">
			 		<img src="static/jpg/skor6.jpg"></a>
					<h5>Verð: 5.000 kr</h5>		
				</div>
			</div>
		</form>
			<p><a href="https://tympanus.net/codrops/css_reference/grid/">CSS grid</a></p>		
			<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum euismod sodales lacus eu tempor. Maecenas eget felis vitae massa pharetra mattis non pellentesque dolor. Suspendisse potenti. Donec lorem risus, hendrerit id est id, efficitur elementum metus. Quisque hendrerit neque non ante interdum euismod. Proin ut nulla pretium, tempor sem at, gravida nisl. Suspendisse potenti. Donec lorem risus, hendrerit id est id, efficitur elementum metus. Quisque hendrerit neque non ante interdum euismod. Proin ut nulla pretium, tempor sem at, gravida nisl.
			</p>
		</article>
		<aside class="vinstri">
			<h3>Vinstri dálkur</h3>
			<p><a href="https://www.w3schools.com/html/html_responsive.asp"> What is Responsive Web Design? </a>  Nullam in velit faucibus, sagittis ligula in, tincidunt erat. Ut turpis justo, suscipit vitae commodo ut, luctus non quam.
			</p>
			<p>Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
		</aside>
		<aside class="haegri">
			<h3>Hægri dálkur</h3>
			<p><strong>Litaval er frjálst!</strong> Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
			<p><a href="https://www.uxpin.com/studio/blog/best-practices-examples-of-excellent-responsive-design/">Best practices of responsive web design </a>
			</p>
			<p>Ut turpis justo, suscipit vitae commodo ut, luctus non quam.
			</p>
		</aside>
	</section>
	<footer>
		<h3>Fótur</h3>
		<p><a href="https://developer.mozilla.org/en-US/docs/Web/CSS">Cascading Style Sheets </a>  (CSS) is a stylesheet language used to describe the presentation of a document written in HTML or XML (including XML dialects such as SVG or XHTML). CSS describes how elements should be rendered on screen, on paper, in speech, or on other media.</p>
	</footer>


</body>
</html>