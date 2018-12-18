<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de produto</title>
<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<table class="table">
	
		<thead>

			<tr class = "bg-warning">
				<th scope="col">ID</th>
				<th scope="col">Nome</th>
				<th scope="col">Descrição</th>
				<th scope="col">Preço</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${produtos }" var="produto">
				<tr class = "bg-secondary text-white">
					<th scope="row" class = "text-warning">${produto.id}</th>
					<td><strong>${produto.nome}</strong></td>
					<td><strong>${produto.descricao }</strong></td>
					<td><strong>R$ ${produto.preco }</strong></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<a class="nav-link" href="./produtos/form">Inserir novo produto</a>
	<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>