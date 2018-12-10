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


	<div class="form-row">
		<div class="col-md-4 mb-4">
			<label for="validationCustom01">Nome do produto</label> <input
				type="text" class="form-control" id="validationCustom01"
				placeholder="First name" value="Mark" required>
			<div class="valid-feedback">Looks good!</div>
		</div>
		<div class="col-md-4 mb-3">
			<label for="validationCustom02">Descrição</label> <input type="text"
				class="form-control" id="validationCustom02"
				placeholder="description" value="Otto" required>
			<div class="valid-feedback"></div>
		</div>
		<div class="col-md-4 mb-3">
			<label for="validationCustomUsername">Preço</label>
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroupPrepend">R$</span>
				</div>
				<input type="number" class="form-control"
					id="validationCustomNumber" placeholder="Preço"
					aria-describedby="inputGroupPrepend" required>
				<div class="invalid-feedback"></div>
			</div>
		</div>
	</div>

	<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>