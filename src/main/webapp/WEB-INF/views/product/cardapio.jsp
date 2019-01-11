<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/menu.jsp"%>
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
<style>
</style>
</head>

<body class="bg-dark">
	<div>

		<hr class="bg-warning">
		<div align="center">
		
			<h4 class="bg-white col-3 rounded text-dark">
				<img
					src="https://cdn0.iconfinder.com/data/icons/christmas-2200/64/beer-drink-alcohol-food-pub-512.png"
					width="50" style="margin-right: 18px">CARDÁPIO<img
					src="https://cdn0.iconfinder.com/data/icons/christmas-2200/64/beer-drink-alcohol-food-pub-512.png"
					width="50" style="margin-left: 18px">
			</h4>

		</div>




		<div align="right" style="margin-right: 10px;">
			<a href="./carrinho/checkout"><button
					class="btn btn-warning mb-5 text-dark">Finalizar Carrinho</button></a>
		</div>

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