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
</head>
<body>
<div class="bg-dark">
	<div class="p-3 mb-2 bg-warning text-white" align="center">
		<h3>Cardápio</h3>
	</div>
	<div class="row">
		<c:forEach items="${produtos}" var="produto">
			<form action="/carrinho/add" method="POST" id="form_${produto.id }">
				<input type="hidden" value="${produto.id }" name="productId">
				<div class="card border border-dark"
					style="width: 18rem; margin: 15px;" align="center" >
					<div class="card-body">
						<div class="card-title bg-sucess mb-3">
							<i class="fas fa-utensils"></i>
							<h5 class="card-title">${produto.nome}</h5>
						</div>
						<p class="card-text">${produto.descricao}</p>
						<p class="card-number"> <strong>R$ ${produto.preco}</strong></p>
						<div class="thumbnail">
						
							<button type="submit" class="btn btn-outline-dark mb-5">
								Incluir no carrinho<i class="fas fa-cart-arrow-down"></i>
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