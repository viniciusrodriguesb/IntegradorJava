<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="modelo.Carteira"%>
<%@ page import="dao.CarteiraDAO"%>

<!DOCTYPE html>
<html lang="PT-BR">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Minhas Carteiras</title>

<!-- STYLES -->
<link rel="stylesheet" href="style.css">

<!-- BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<script>
	function confirmarExclusao(id){
		var resposta = confirm("Confirmar exclusao do registro?");
		
		if(resposta == true){
			window.location.href = "ExcluirCarteiraServlet?id=" + id;
		}
	}
</script>

</head>
<body>
	<!-- INICIO NAVBAR -->
	<nav class="navbar navbar-light" style="background-color: black;">
		<a class="navbar-brand logo" href="principal.jsp"
			style="margin-left: 28px; color: #fff;"> bank<span
			style="color: yellow;">pay</span>.
		</a> <a href="LogoutServlet" class="btn btn-md" role="button"
			aria-pressed="true"
			style="margin-right: 30px; background-color: red; color: white;">Sair</a>
		

	</nav>
	<!-- FIM NAVBAR -->

	<!-- INICIO MENU LATERAL -->
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
								</svg> Meu Usu?rio
						</a></li>
					</ul>
				</div>
			</nav>
			<!-- FIM DO MENU LATERAL -->

			<!-- INICIO DA TABELA -->
			<div class="col-8 m-auto">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Nome da Carteira</th>
							<th>Saldo Dispon?vel</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<%
							CarteiraDAO ctr = new CarteiraDAO();

							List<Carteira> listaCtr = new ArrayList<Carteira>();
							listaCtr = ctr.listar();

							for (Carteira forC : listaCtr) {
							%>
						
						<tr>
							<td><%=forC.getId()%></td>

							<td><%=forC.getNome()%></td>

							<td><%=forC.getSaldo()%></td>

							<th><svg onclick="confirmarExclusao(<%=forC.getId()%>)"
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
										  <path
										d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
										  <path fill-rule="evenodd"
										d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
									</svg></th>

							<th><a href="PrepararAlteracaoCarteira?id=<%=forC.getId()%>">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-pencil-square"
										viewBox="0 0 16 16">
									  <path
											d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
									  <path fill-rule="evenodd"
											d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" />
									</svg>
							</a></th>
						</tr>
					</tbody>

					<%
					}
					%>

				</table>
			</div>
		</div>
	</div>
	<!-- FIM DA TABELA -->


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