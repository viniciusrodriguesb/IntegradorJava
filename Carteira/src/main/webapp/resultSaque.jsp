<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- P�GINA DE SAQUE   -->
	<form action="sacarServlet" method="POST">
	
		<label>Selecione a carteira que deseja utilizar: </label>
		<input type="text" name="nomeC" id="nomeC"/>
		
		<label>Digite o valor que deseja sacar: </label>
		<input type="number" name="saldoC" id="saldoC"/>
		
		<input type="submit" value="Cadastrar"/>
	</form>
</body>
</html>