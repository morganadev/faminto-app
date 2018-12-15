<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserir produtos</title>


<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<form action="./form" method="POST">
		<div class="form-row">
			<div class="col-md-4 mb-4">
				<label for="validationCustom01">Nome do produto</label> <input
					type="text" class="form-control" id="validationCustom01"
					placeholder="Insira o nome do produto" name="nome"  required>
				<div class="valid-feedback">Looks good!</div>
			</div>
		</div>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="validationCustom02">Descrição</label>
				<textarea rows=3 class="form-control" id="validationCustom02"
					placeholder="Inclua uma descrição" name="descricao"  required></textarea>
				<div class="valid-feedback"></div>
			</div>
		</div>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="validationCustomUsername">Preço</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupPrepend">R$</span>
					</div>
					<input type="number" class="form-control"
						id="validationCustomNumber" placeholder="Preço"
						aria-describedby="inputGroupPrepend" name="preco" required>
					<div class="invalid-feedback"></div>
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Salvar produto</button>

	</form>
	

	<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>