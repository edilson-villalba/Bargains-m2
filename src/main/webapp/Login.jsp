<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Ingreso al Sistema</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.form-control:focus {
  box-shadow: inset 0 0 5px 0 rgba(0, 0, 0, 0.12) !Important;
}
</style>
</head>
<body>
	<div class="container w-50 pt-2">
		<div class="card">
			<div class="card-header text-center">
				<h2 >
					<font color="blue">Ingreso al sistema</font>
				</h2>
			</div>
			<div class="card-body">
			<form action="Login" method="POST">
			<div class="form-group">			
				<span id="usuarioSpan">Usuario:</span> <input class="form-control" type="text"
					name="usuario" id="usuario" size="20" maxlength="20"><br>
				<span id="claveSpan">Clave:</span> <input class="form-control" type="password"
					name="clave" id="clave" size="20" maxlength="20"><br>
				<div class="text-center">
				<input class="btn btn-primary " type="submit" value="Ingresar al Sistema"></div>
			</div>
			</form>
			</div>
		</div>
	</div>
</body>
</html>