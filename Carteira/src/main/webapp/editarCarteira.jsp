<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="modelo.Carteira"%>
<%@ page import="dao.CarteiraDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Usu?rio</title>

<!-- STYLES -->
<link rel="stylesheet" href="style.css">

<!-- BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

</head>
<body>


	<!-- INICIO NAVBAR -->
	<nav class="navbar navbar-light" style="background-color: black;">
		<a class="navbar-brand logo" href="principal.jsp"
			style="margin-left: 28px; color: #fff;"> bank<span
			style="color: yellow;">pay</span>.
		</a> <a href="LogoutServlet" class="btn btn-md active" role="button"
			aria-pressed="true"
			style="margin-right: 30px; background-color: red;">Sair</a>
	</nav>
	<!-- FIM NAVBAR -->

	<!-- INICIO CONTAINERL -->
	<div class="container-fluid">
		<div class="row">
			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky" style="height: 80vh; margin-top: 20px;">
					<ul class="nav flex-column">
						<li class="nav-item"><a href="resultCadastrar.jsp"
							class="nav-link"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-wallet2" viewBox="0 0 16 16">
                                    <path
										d="M12.136.326A1.5 1.5 0 0 1 14 1.78V3h.5A1.5 1.5 0 0 1 16 4.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 13.5v-9a1.5 1.5 0 0 1 1.432-1.499L12.136.326zM5.562 3H13V1.78a.5.5 0 0 0-.621-.484L5.562 3zM1.5 4a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z" />
                                  </svg> Cadastrar Carteira
						</a></li>
						<li class="nav-item"><a href="resultWallet.jsp"
							class="nav-link"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-eye-fill" viewBox="0 0 16 16">
  								<path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
  								<path
										d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
								</svg> Ver carteiras
						</a></li>
					</ul>
					<hr>
					<ul class="nav flex-column">
						<li class="nav-item"><a href="resultUser.jsp"
							class="nav-link"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-person-circle" viewBox="0 0 16 16">
									  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
									  <path fill-rule="evenodd"
										d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
								</svg> Meu Usuario
						</a></li>
					</ul>
				</div>
			</nav>

			<%
			Carteira c = (Carteira) session.getAttribute("carteiraSelecionada");
			%>

			<div class="col-md-4 m-auto">
				<form action="AlterarCarteiraServlet" method="POST">

					<input type="hidden" name="id" id="id" value="<%=c.getId()%>" /> <input
						type="hidden" id="saldo" name="saldo" value="<%=c.getSaldo()%>">

					<div class="form-group">

						<label>Nome da Carteira:</label> <input type="text"
							class="form-control" id="nome" name="nome"
							value="<%=c.getNome()%>" required>
					</div>

					<button type="submit" class="btn btn-primary"
						style="margin-top: 20px;">Alterar</button>
				</form>
			</div>
		</div>
	</div>
	<!-- FIM CONTAINER -->

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
</body>
</html>