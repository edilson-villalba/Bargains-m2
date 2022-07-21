<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%-- <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> --%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>	
<%@include file="menu.jsp"%>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
</style>
<link href="dashboard.css" rel="stylesheet">
</head>
<body>
	<main>
		<form id="formGrillaId" method="POST" >
			<input type="hidden" name="ACCION" id="accionId" value="LISTAR">
		</form>
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h1 class="h2">Dashboard</h1>
			<div class="btn-toolbar mb-2 mb-md-0">
				<div class="btn-group me-2">
					<button type="button" class="btn btn-sm btn-outline-primary" onclick="nuevaSubasta()">Nueva Subasta</button>
					<button type="button" class="btn btn-sm btn-outline-secondary">Compartir</button>
					<button type="button" class="btn btn-sm btn-outline-secondary">Exportar</button>
				</div>
				<button type="button"
					class="btn btn-sm btn-outline-secondary dropdown-toggle">
					<span data-feather="calendar" class="align-text-bottom"></span>
					Esta semana
				</button>
			</div>
		</div>

<%-- 		<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> --%>

		<h2>Datos de Subastas</h2>
		<div class="table-responsive">
			<table class="table table-striped table-sm">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">#</th>
						<th scope="col">Titulo</th>
						<th scope="col">Fecha Cierre</th>
						<th scope="col">Hora Cierre</th>
						<th scope="col">Total</th>
						<th scope="col">Estado</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${SUBASTAS}" var="sub">
						<tr>
							<td><c:out value="${sub.id}"/></td>
							<td><c:out value="${sub.nroSubasta}"/></td>
							<td><c:out value="${sub.tituloSubasta}"/></td>
							<td><javatime:format value="${sub.fechaHoraCierre}" pattern="dd/MM/yyyy" /></td>
							<td><javatime:format value="${sub.fechaHoraCierre}" pattern="HH:mm:ss"  /></td>
							<td><c:out value="${sub.totalFinal}"/></td>
							<td><c:out value="${sub.estado.descripcion}"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</main>

	<script src="js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="dashboard.js"></script>
	<script type="text/javascript" src="js/paginas/subastas.js"></script>
</body>
</html>