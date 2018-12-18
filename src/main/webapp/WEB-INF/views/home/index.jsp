<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faminto</title>

<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Staatliches"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<h3 class="text-warning"
			style="font-family: 'Staatliches', cursive; margin: 10px";>FAMINTO</h3>
		<img src="https://image.flaticon.com/icons/svg/188/188154.svg"
			width="40" height="40" alt="Pacman free icon"
			title="Pacman free icon" style="margin-right: 30px;">


		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Pedido</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Carrinho</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link" href="./cardapio">
						Cardápio </a>
			</ul>
			<form class="form-inline my-lg-4 col-md-4">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Procure seu lanche" aria-label="Search">
				<button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Pesquisar</button>
			</form>
		</div>

	</nav>
	<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>