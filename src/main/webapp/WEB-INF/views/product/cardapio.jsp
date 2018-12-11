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
</head>
<body>

	<c:forEach items="${produto}" var="produto">
		<div class="card" style="width: 18rem;">
			<div class="card-body">
				<div class="card-title bg-sucess mb-3">
					<h5 class="card-title">${produto.nome}</h5>
				</div>
				<p class="card-text">${produto.descricao}</p>
				<div class="thumbnail">
					<button type="button" class="btn btn-outline-secondary mb-5">
						Incluir no carrinho <img
							src="https://cdn3.iconfinder.com/data/icons/food-set-3/91/Food_C218-512.png"
							alt="Imagem como Thumbnail" width="30px">
					</button>
				</div>
			</div>
		</div>
	</c:forEach>



	<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>