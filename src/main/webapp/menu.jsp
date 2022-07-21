<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.98.0">
<title>Sistema de Ventas</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/navbars-offcanvas/">

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


<!-- Custom styles for this template -->
<link href="../css/paginas/navbar.css" rel="stylesheet">
</head>
<body>

	<main>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			aria-label="Offcanvas navbar large">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Sistema de Gestión de Ventas</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2"
					aria-controls="offcanvasNavbar2">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="offcanvas offcanvas-end text-white bg-dark"
					tabindex="-1" id="offcanvasNavbar2"
					aria-labelledby="offcanvasNavbar2Label">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title" id="offcanvasNavbar2Label">Offcanvas</h5>
						<button type="button" class="btn-close btn-close-white"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
						<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="Home.jsp">Inicio</a></li>
							<li class="nav-item"><a class="nav-link" href="Subastas">Subastas</a>
							</li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="offcanvasNavbarLgDropdown" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">
									Mantenimientos </a>
								<ul class="dropdown-menu"
									aria-labelledby="offcanvasNavbarLgDropdown">
									<li><a class="dropdown-item" href="#">Productos</a></li>
									<li><a class="dropdown-item" href="#">Opciones</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="CerrarSesion">Cerrar
											Sesión</a></li>
								</ul></li>
						</ul>
						<form class="d-flex mt-3 mt-lg-0" role="search">
							<input class="form-control me-2" type="search"
								placeholder="palabras a buscar" aria-label="Buscar">
							<button class="btn btn-outline-success" type="submit">Buscar</button>
						</form>
					</div>
				</div>
			</div>
		</nav>
		<div class="container-fluid">
			<!--  >div class="row">
				<nav id="sidebarMenu"
					class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
					<div class="position-sticky pt-3">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#"> <span data-feather="home"
									class="align-text-bottom"></span> Dashboard
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="file" class="align-text-bottom"></span> Orders
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="shopping-cart" class="align-text-bottom"></span>
									Products
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="users" class="align-text-bottom"></span>
									Customers
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="bar-chart-2" class="align-text-bottom"></span>
									Reports
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="layers" class="align-text-bottom"></span>
									Integrations
							</a></li>
						</ul>

						<h6
							class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
							<span>Saved reports</span> <a class="link-secondary" href="#"
								aria-label="Add a new report"> <span
								data-feather="plus-circle" class="align-text-bottom"></span>
							</a>
						</h6>
						<ul class="nav flex-column mb-2">
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="file-text" class="align-text-bottom"></span>
									Current month
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="file-text" class="align-text-bottom"></span> Last
									quarter
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="file-text" class="align-text-bottom"></span>
									Social engagement
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									data-feather="file-text" class="align-text-bottom"></span>
									Year-end sale
							</a></li>
						</ul>
					</div>
				</nav>
			</div-->
	</main>


	<script src="js/bootstrap.bundle.min.js"></script>


</body>
</html>