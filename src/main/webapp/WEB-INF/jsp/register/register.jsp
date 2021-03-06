<%@ include file="/WEB-INF/jsp/contenido_antes.jsp" %>
<form:form action="save" method="post" modelAttribute="formRegister" id="formRegister" name="formRegister">

	<div class="row">
		<div class="span12">		    		    
		    <div class="alert alert-info">
		    	<strong>Preregistro</strong>
		    	<ul>		    		
			    	<li><span class="label label-warning">Aviso</span> $400.00 M.N hasta el 15 de Febrero del 2013</li>
			    	<li><span class="label label-warning">Aviso</span> $450.00 M.N a partir del 16 de Febrero del 2013</li>
		    	</ul>
		    
		    	<strong>Instrucciones</strong>
		    	<ol>
			    	<li>Realice su pregregistro en el siguiente formulario de captura</li>
			    	<li>Confirme su cuenta de usuario, a trav&eacutes del correo electr&oacutenico</li>
			    	<li>Inicie sesi&oacuten en el sitio para generar su ficha de dep&oacutesito</li>
			    	<li>
			    		Envie su ficha de dep&oacutesito, escaneada al siguiente correo 
			    		<a href="mailto:#">avazquez@utvm.edu.mx</a> 
			    		para confirmar su pago en el sistema
			    	</li>
		    	</ol>
		    	
		    	<strong>&Oacute deposito a cuenta</strong>
		    	<ol>
		    		<li>Banco Mercantil del Norte, S.A.</li>
			    	<li>Nombre: Universidad Tecnol&oacutegica  del  Valle del Mezquital</li>
			    	<li>No de cuenta: <b>0860465674</b></li>
			    	<li>CLABE: <b>072 298 00860465674 4</b></li>
			    	<li>Plaza: <b>2538</b></li>
			    	<li>Sucursal: <b>Ixmiquilpan</b></li>
		    	</ol>
		    </div>
		</div>
	</div>
    
	<fieldset>
		<div class="row">
			<div class="span9">
				<label>Correo electr&oacutenico</label>
				<span class="obligatorio">*</span>
				<form:input path="correoElectronico"/>								
				<spring:hasBindErrors name="formRegister">
					<span class="label label-important">
						<form:errors path="correoElectronico" />
					</span>
				</spring:hasBindErrors>
				
				<label>Confirmar correo electr&oacutenico</label>
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
		
		<div class="row">
			<div class="span9">			
			
				<label>Instituci&oacuten de procedencia</label>
				<span class="obligatorio">*</span>
				<form:select path="idInstitucionProcedencia">
					<form:option value="" label="--- Seleccione ---"/>
					<form:options items="${universities}" itemValue="id" itemLabel="name" />
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
				
				<label>Tel&eacutefono</label>
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
					<form:options items="${ocupations}" itemValue="id" itemLabel="name" />
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