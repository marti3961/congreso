<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/jsp/resources.jsp" %>
</head>
<body>	
	<!-- wrapper-->
	<div id="wrapper">
		<!-- banner-->
		<div id="banner">
			<img src="${pageContext.request.contextPath}/recursos/images/encabezado.png" />
			<img src="${pageContext.request.contextPath}/recursos/images/FOTOS.png" />
		</div>
		<!-- fin banner-->
		<div class="row-fluid">
			<div class="navbar">
				<div class="navbar-inner">
					<a class="brand" href="${pageContext.request.contextPath}">Inicio</a>
					<ul class="nav">
												
						<li>
							<a href="${pageContext.request.contextPath}/resolver/login.htm">
							Iniciar Sesi&oacuten
							</a>
						</li>							
						
						<sec:authorize access="hasRole('ROLE_PREREGISTER')">
							<li>
								<a href="${pageContext.request.contextPath}/resolver/register_fiscal_data/form">
									Informaci&oacuten fiscal
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/resolver/payment/payment_ticket" target="_blank">Generar ficha de pago</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/j_spring_security_logout">
										Cerrar Sesi&oacuten
								</a>
							</li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_PREREGISTERED')">
							<li>
								<a href="${pageContext.request.contextPath}/resolver/register_fiscal_data/form">Registro de datos fiscales</a>
							</li>
							<li>
								<a href="#">
									Armar mis actividades
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/j_spring_security_logout">
										Cerrar Sesi&oacuten
								</a>
							</li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li>
								<a href="${pageContext.request.contextPath}/resolver/register/list_user_preregistered">Usuarios de PreRegistro</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/j_spring_security_logout">
										Cerrar Sesi&oacuten
								</a>
							</li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_ADMIN_PARTICIPATION')">
							<li>
								<a href="${pageContext.request.contextPath}/resolver/register_participation/list_user_participation">Lista de participantes</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}">Cuerpos academicos registrados</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/j_spring_security_logout">
										Cerrar Sesi&oacuten
								</a>
							</li>
						</sec:authorize>
					</ul>
				</div>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span3">
				<%@ include file="/WEB-INF/jsp/menu.jsp" %>
			</div>
			<div class="span9" id="contenido_principal">