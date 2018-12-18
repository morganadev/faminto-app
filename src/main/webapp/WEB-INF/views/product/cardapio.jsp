<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cardápio</title>

<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/webjars/font-awesome/5.5.0/css/all.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Staatliches"
	rel="stylesheet">
</head>
<body>
	<div class="bg-dark">

		<div class="p-3 mb-2" align="center">
			<div align="left">
				<h3 class="text-warning"
					style="font-family: 'Staatliches', cursive; margin-left: 10px;">
					FAMINTO <img
						src="https://image.flaticon.com/icons/svg/188/188154.svg"
						width="40" height="40" alt="Pacman free icon"
						title="Pacman free icon"
						style="margin-left: 10px; margin-right: 30px;">
				</h3>
			</div>
			<div>
				<h4 class="bg-white col-3 rounded text-dark">
					<img
						src="https://cdn0.iconfinder.com/data/icons/christmas-2200/64/beer-drink-alcohol-food-pub-512.png"
						width="50" style="margin-right: 18px">CARDÁPIO<img
						src="https://cdn0.iconfinder.com/data/icons/christmas-2200/64/beer-drink-alcohol-food-pub-512.png"
						width="50" style="margin-left: 18px">
				</h4>
				<div align="right">
					<a href="./checkout"><button
							class="btn btn-warning mb-5 text-dark">Finalizar
							Carrinho</button></a>
				</div>
			</div>
			<hr class="bg-warning" style="margin-top: 20px; height: 1px"></hr>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark col-3 rounded">

			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="./">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Pedido</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Carrinho</a>
					</li>
				</ul>
			</div>
		</nav>


		<div class="row">
			<c:forEach items="${produtos}" var="produto">
				<form action="/carrinho/add" method="POST" id="form_${produto.id }">
					<input type="hidden" value="${produto.id }" name="productId">
					<div class="card border border-dark"
						style="width: 18rem; margin: 15px; margin-left: 30px;"
						align="center">
						<div class="card-body">
							<div class="card-title mb-3">
								<i class="fas fa-utensils"></i>
								<h5 class="card-title">${produto.nome}</h5>
							</div>
							<p class="card-text">${produto.descricao}</p>
							<p class="card-number">
								<strong>R$ ${produto.preco}</strong>
							</p>
							<div class="thumbnail">

								<button type="submit"
									class="btn btn-outline-warning mb-5 text-dark">
									<strong> Incluir no carrinho</strong><i
										class="fas fa-cart-arrow-down"></i>
								</button>

							</div>
						</div>
					</div>
				</form>
			</c:forEach>
		</div>

	</div>


	<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>