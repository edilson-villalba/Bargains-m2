<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%-- <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> --%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>	
<%@include file="menu.jsp"%>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/paginas/form-validation.css" rel="stylesheet">

 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
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
<body class="bg-light">
	
	<main>
    <div class="py-5 text-center">
<!--       <img class="d-block mx-auto mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
      <h2>Formulario de Subastas</h2>
      <p class="lead">En este formulario se puede cargar una nueva subasta o modificar una ya existente.</p>
    </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-0 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Your cart</span>
          <span class="badge bg-primary rounded-pill">3</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Product name</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$12</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Second product</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$8</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Third item</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">Promo code</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success">−$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong>$20</strong>
          </li>
        </ul>

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
      </div>
      <div class="col-md-7 col-lg-12">
        <h4 class="mb-3">Datos de la Subasta</h4>
        <form id="formSubastasId" method="POST" class="needs-validation" novalidate>
		  <input type="hidden" name="ACCION" id="accionId" value="GUARDAR">
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="tituloId" class="form-label">T&iacute;tulo:</label>
              <input type="text" class="form-control" id="tituloId" name="titulo" placeholder="" value="" required>
              <div class="invalid-feedback">
                El título es requerido.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="nroSubastaId" class="form-label">Número</label>
              <input type="text" class="form-control" id="nroSubastaId" name="nroSubasta" placeholder="" value="" required>
              <div class="invalid-feedback">
                El número de subasta es requerido.
              </div>
            </div>

            <div class="col-12">
              <label for="fechaHoraCierreId" class="form-label">Fecha Hora Cierre</label>
              <div class="input-group has-validation">
<!--                 <span class="input-group-text">@</span> -->
                <input type="text" class="form-control" id="fechaHoraCierreId" name="fechaHoraCierre" required>
              <div class="invalid-feedback">
                  La fecha y hora de cierre son requeridos.
                </div>
              </div>
            </div>

            <div class="col-12">
              <label for="observacionesId" class="form-label">Observaciones <span class="text-muted">(Opcional)</span></label>
              <input type="text" class="form-control" id="observacionesId" name="observaciones" placeholder="Agregar obs. sobre la subasta">
              <div class="invalid-feedback">
                Ingrese las observaciones.
              </div>
            </div>

<!--             <div class="col-12"> -->
<!--               <label for="address" class="form-label">Address</label> -->
<!--               <input type="text" class="form-control" id="address" placeholder="1234 Main St" required> -->
<!--               <div class="invalid-feedback"> -->
<!--                 Please enter your shipping address. -->
<!--               </div> -->
<!--             </div> -->

<!--             <div class="col-12"> -->
<!--               <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)</span></label> -->
<!--               <input type="text" class="form-control" id="address2" placeholder="Apartment or suite"> -->
<!--             </div> -->

	
            <div class="col-md-4">
              <label for="estadoId" class="form-label">Estado</label>
              <select class="form-select" id="estadoId" name="estado" required>
                <option value="">Selecciona una opción...</option>
                <c:forEach items="${ESTADOS_SUBASTA}" var="est">
                	<option value="${est.id}" label="${est.descripcion}"></option>
                </c:forEach>
              </select>
              <div class="invalid-feedback">
                Por favor, selecciona un estado válido.
              </div>
            </div>

            <div class="col-md-4">
              <label for="totalBaseId" class="form-label">Total Base</label>
              <input type="text" class="form-control" id="totalBaseId" name="totalBase" placeholder="0.0" readonly="readonly">
              <div class="invalid-feedback">
                Por favor, ingresa un total de base válido.
              </div>
            </div>

            <div class="col-md-4">
              <label for="totalFinalId" class="form-label">Total Final</label>
              <input type="text" class="form-control" id="totalFinalId" name="totalFinal" placeholder="0.0" readonly="readonly">
              <div class="invalid-feedback">
                Por favor, ingresa un total final válido.
              </div>
            </div>
          </div>

          <hr class="my-4">
		  <h4 class="mb-3">Detalles de la Subasta</h4>
          <button class="w-100 btn btn-primary btn-lg" type="button" onclick="insertar()">Guardar</button>
        </form>
      </div>
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
	<script type="text/javascript" src="js/paginas/form-validation.js"></script>
	<script type="text/javascript" src="js/paginas/subastas.js"></script>
</body>
</html>