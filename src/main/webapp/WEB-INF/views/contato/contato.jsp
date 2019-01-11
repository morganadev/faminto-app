<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="../includes/menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contato</title>
</head>
<link href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/webjars/font-awesome/5.5.0/css/all.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Righteous"
	rel="stylesheet">
<style>
.body {
	background: url(http://baoburgao.com.br/imagens/03.png) no-repeat center
		center fixed;
	background-size: cover;
	-webkit-background-size: cover;
	width: 100%;
	height: 100%;
	
}
</style>
<body class="body">
	<div class="container" align=center
		style="opacity: 0.9; margin-top: 10px;">
		<div class="col-12 bg-light">
			<h4 style="font-family: 'Righteous', cursive;">
				CONTATO<i class="fas fa-phone" style="margin-left: 10px"></i>
			</h4>
		</div>
	</div>
	<div class="container">
		<div class="bg-white col-12">
			<form>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputName">Nome</label> <input type="text"
							class="form-control" id="inputName" placeholder="Nome">
					</div>
					<div class="form-group col-4">
						<label for="inputEstado">Estado</label> <select id="inputEstado"
							class="form-control">
							<option selected>Selecione</option>
							<option>Santa Catarina</option>

						</select>

					</div>

				</div>
				<div class="form-row">
					<div class="form-group col-6">
						<label for="inputEmail">E-mail</label> <input type="text"
							class="form-control" id="inputEmail"
							placeholder="example@gmail.com">

					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-6">
						<label for="inputCity">Cidade</label> <input type="text"
							class="form-control" id="inputCity"
							placeholder="Digite a sua cidade">
					</div>

				</div>
				<div class="form-row">
					<div class="form-group col-6">
						<label for="inputPhone">Telefone</label> <input type="text"
							class="form-control" id="inputPhone" placeholder="(XX)XXXX-XXXX" value="()">
					</div>

				</div>
				<div class="form-group">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck">
						<label class="form-check-label" for="gridCheck">Desejo
							receber e-mails com promoções Faminto </label>
					</div>
				</div>

				<div>
					<button onclick="msg()" type="submit" class="btn btn-dark">Enviar</button>
				</div>
			</form>


			<hr class="bg-warning">

			<div class="Adress" style="font-family: 'Righteous', cursive;">
				<h5>Onde nos encontrar</h5>
				<p>Fábrica de negócios</p>
				<p>Rua Antonio da Veiga,105 - Victor Konder,Blumenau - SC</p>
				<div class="col-2">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14231.622802404794!2d-49.0772297!3d-26.9064877!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x25c8a528021a84e0!2zRsOhYnJpY2EgRGUgTmVnw7NjaW9z!5e0!3m2!1spt-BR!2sbr!4v1546801222998"
						width="300" height="300" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</div>
				<hr class="bg-warning" style="margin-bottom: 10px;">
			</div>
		</div>
	</div>

<script>
function msg() {
	  alert("Contato enviado!Aguarde nosso retorno!");
	}
</script>
	<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>