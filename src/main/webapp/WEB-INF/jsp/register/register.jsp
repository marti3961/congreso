<%@ include file="/WEB-INF/jsp/contenido_antes.jsp" %>

<form:form action="save" method="post" modelAttribute="formRegister" id="formRegister" name="formRegister">
	<fieldset>
		<legend>Informaci&oacuten de cuenta</legend>
		<div class="row">
			<div class="span9">
				<label>Correo electronico</label>
				<span class="obligatorio">*</span>								
				<form:input path="correoElectronico"/>								
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="correoElectronico" />
					</span>
				</spring:hasBindErrors>
				
				<label>Confirmar correo electronico</label>
				<span class="obligatorio">*</span>								
				<form:input path="confirmarcorreoElectronico"/>								
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="confirmarcorreoElectronico" />
					</span>
				</spring:hasBindErrors>

				<label>Clave</label>
				<span class="obligatorio">*</span>
				<form:password path="clave"/>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="clave" />
					</span>
				</spring:hasBindErrors>
				
				<label>Confirmar clave</label>
				<span class="obligatorio">*</span>
				<form:password path="confirmacionClave"/>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="confirmacionClave" />
					</span>
				</spring:hasBindErrors>
				
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="claveValidator" />
					</span>
				</spring:hasBindErrors>
			</div>
		</div>
		<legend>Informaci&oacuten personal</legend>
		<div class="row">
			<div class="span9">			
			
				<label>Institucion de procedencia</label>
				<span class="obligatorio">*</span>
				<form:select path="idInstitucionProcedencia">
					<form:option value="" label="--- Seleccione ---"/>
					<form:options items="${sectores}" />
				</form:select>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="idInstitucionProcedencia" />
					</span>
				</spring:hasBindErrors>
				
				<label>Nombre</label>
				<span class="obligatorio">*</span>																
				<form:input path="nombre"/>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="nombre" />
					</span>
				</spring:hasBindErrors>

				<label>Apellido paterno</label>
				<span class="obligatorio">*</span>
				<form:input path="apellidoPaterno"/>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="apellidoPaterno" />
					</span>
				</spring:hasBindErrors>
				
				<label>Apellido materno</label>
				<span class="obligatorio">*</span>
				<form:input path="apellidoMaterno"/>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="apellidoMaterno" />
					</span>
				</spring:hasBindErrors>
				
				<label>Telefono</label>
				<span class="obligatorio">*</span>
				<form:input path="telefono"/>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="telefono" />
					</span>
				</spring:hasBindErrors>
				
				<label>Ocupaci&oacuten</label>
				<span class="obligatorio">*</span>
				<form:select path="idOcupacion">
					<form:option value="" label="--- Seleccione ---"/>
					<form:options items="${ocupaciones}" />
				</form:select>
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="idOcupacion" />
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