<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="modelo.Usuario"%>
<%@ page import="dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Usu�rio</title>

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
						<li class="nav-item"><a href="resultSaldo.jsp"
							class="nav-link"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-currency-dollar" viewBox="0 0 16 16">
                                    <path
										d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z" />
                                  </svg> Exibir Saldo
						</a></li>
						<li class="nav-item"><a href="resultDeposito.jsp"
							class="nav-link"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-download" viewBox="0 0 16 16">
                                    <path
										d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z" />
                                    <path
										d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z" />
                                  </svg> Depositar
						</a></li>
						<li class="nav-item"><a href="resultSaque.jsp"
							class="nav-link"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor" class="bi bi-upload"
									viewBox="0 0 16 16">
	                                    <path
										d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z" />
	                                    <path
										d="M7.646 1.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 2.707V11.5a.5.5 0 0 1-1 0V2.707L5.354 4.854a.5.5 0 1 1-.708-.708l3-3z" />
                                  </svg> Sacar
						</a></li>
					</ul>
					<hr>
					<ul class="nav flex-column">
						<li class="nav-item"><a href="resultUser.jsp" class="nav-link"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-person-circle"
									viewBox="0 0 16 16">
									  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
									  <path fill-rule="evenodd"
										d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
								</svg> Meu Usuario
						</a></li>
					</ul>
				</div>
			</nav>

			<%
			Usuario usr = (Usuario) session.getAttribute("usuarioSelecionado");
			%>

			<div class="col-md-4 m-auto">
				<form action="AlterarUsuarioServlet" method="POST">

					<input type="hidden" name="id" id="id" value="<%=usr.getId()%>" />

					<div class="form-group">

						<label>Nome Completo:</label> <input type="text"
							class="form-control" id="nome" name="nome"
							value="<%=usr.getNome()%>" required>

					</div>

					<div class="form-group">

						<label>Usuario:</label> <input type="text" class="form-control"
							id="usuario" name="usuario" value="<%=usr.getUsuario()%>" required>
					</div>

					<div class="form-group mb-3">

						<label>Senha:</label> <input type="password" class="form-control"
							id="senha" name="senha" value="<%=usr.getSenha()%>" required>

					</div>

					<button type="submit" class="btn btn-primary">Alterar</button>
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