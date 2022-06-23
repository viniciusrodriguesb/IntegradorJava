
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bem-Vindo</title>

     <!-- STYLES -->
     <link rel="stylesheet" href="styles.css">

     <!-- BOOTSTRAP -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>
  <!-- INICIO NAVBAR -->
	
	<nav class="navbar bg-dark shadow">
		<div class="container-fluid">
			
			<a class="logo" href="#">bank<span>pay</span>.</a>
			
			<a style="margin-right: 25px;" href="index.html">Sair</a>
		</div>
	</nav>
	
	<!-- FIM NAVBAR -->

	<!-- INICIO MAIN -->
	<section>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-2 mt-4">
					<ul class="list-group shadow">
						<li class="list-group-item"><a href="Cadastro.html">Cadastrar nova carteira</a></li>
						<li class="list-group-item"><a href="#">Dados da carteira</a></li>
						<li class="list-group-item"><a href="#">Exibir saldo</a></li>
						<li class="list-group-item"><a href="#">Depositar</a></li>
						<li class="list-group-item"><a href="#">Sacar</a></li>
					</ul>
				</div>
				<div class="col-sm-10"></div>
			</div>
		</div>
	</section>
<!-- FIM MENU LATERAL -->

<!-- INICIO MAIN -->
<section>
    <div class="container">
        <div class="row">
            <form action="InsertServlet" method="POST">
                <h3>Cadastre sua carteira</h3>
                     
                 <label>Digite nome da sua carteira: </label>
                 <input type="text" name="nome">
                 
                   <!-- 
                    <br><br>
                    <label>Digite a senha para confirmar: </label>
                   <input type="password" name="senha"> -->
                   
                   <br><br>
                   <input type="submit" value="Cadastrar Carteira">
            </form>
        </div>
    </div>
</section>
</div>
<!-- FIM MAIN -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>