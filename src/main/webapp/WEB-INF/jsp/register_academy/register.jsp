<%@ include file="/WEB-INF/jsp/contenido_antes.jsp" %>

<form:form action="save" method="post"
	modelAttribute="formRegisterAcademy"
	id="formRegisterAcademy" name="formRegisterAcademy">
	<fieldset>
		<legend>Informaci&oacuten de cuenta</legend>
		<div class="row">
			<div class="span9">
				<label>Correo electronico</label> <span class="obligatorio">*</span>
				<form:input path="correoElectronico" />
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="correoElectronico" />
					</span>
				</spring:hasBindErrors>

				<label>Confirmar correo electronico</label> <span
					class="obligatorio">*</span>
				<form:input path="confirmarcorreoElectronico" />
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="confirmarcorreoElectronico" />
					</span>
				</spring:hasBindErrors>

				<label>Clave</label> <span class="obligatorio">*</span>
				<form:password path="clave" />
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="clave" />
					</span>
				</spring:hasBindErrors>

				<label>Confirmar clave</label> <span class="obligatorio">*</span>
				<form:password path="confirmacionClave" />
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="confirmacionClave" />
					</span>
				</spring:hasBindErrors>

				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="claveValidator" />
					</span>
				</spring:hasBindErrors>
			</div>
		</div>
		<legend>Informaci&oacuten del cuerpo academico</legend>
		<div class="row">
			<div class="span9">

				<label>Institucion de procedencia</label> <span class="obligatorio">*</span>
				<form:select path="idInstitucionProcedencia">
					<form:option value="" label="--- Seleccione ---" />
					<form:options items="${sectores}" />
				</form:select>
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="idInstitucionProcedencia" />
					</span>
				</spring:hasBindErrors>

				<label>Nombre del cuerpo academico</label> <span class="obligatorio">*</span>
				<form:input path="nombreDelCuerpoAcademico" />
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="nombreDelCuerpoAcademico" />
					</span>
				</spring:hasBindErrors>

				<label>Lineas de investigacion</label> <span class="obligatorio">*</span>
				<form:textarea path="lineasDeInvestigacion" rows="5" cols="30"/>
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="lineasDeInvestigacion" />
					</span>
				</spring:hasBindErrors>

				<label>Contacto</label> <span class="obligatorio">*</span>
				<form:textarea path="contacto" rows="5" cols="30"/>
				<spring:hasBindErrors name="formRegisterAcademy">
					<span class="label label-important"> <form:errors
							path="contacto" />
					</span>
				</spring:hasBindErrors>
			</div>

			<div class="span9">
				<button class="btn btn-info" type="submit">Registrar</button>
			</div>
		</div>
	</fieldset>
</form:form>

<%@ include file="/WEB-INF/jsp/contenido_despues.jsp" %>
<script type='text/javascript' src='${pageContext.request.contextPath}/recursos/js/register.js'></script>