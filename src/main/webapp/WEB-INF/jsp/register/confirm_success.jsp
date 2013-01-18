<%@ include file="/WEB-INF/jsp/contenido_antes.jsp" %>		
<div class="well">
	Estimado <b>${preRegisterInformation.name} ${preRegisterInformation.secondName} ${preRegisterInformation.thirdName}</b>, 
	de la <b>${preRegisterInformation.university.name}</b> su cuenta ha sido confirmada con la direcci&oacuten de correo 
	electr&oacutenico <b>${preRegisterInformation.informationAccount.email}</b>
	<br/><br/> 	 
	Puede iniciar sesi&oacuten <a href="${pageContext.request.contextPath}/resolver/login.htm">aqu&iacute</a>
	<br/><br/>
	<b>Muchas gracias!</b>
	<br/><br/>	    
	<a class="btn btn-info" href="${pageContext.request.contextPath}/resolver/index.htm?unshow-message">Aceptar</a>
</div>
<%@ include file="/WEB-INF/jsp/contenido_despues.jsp" %>