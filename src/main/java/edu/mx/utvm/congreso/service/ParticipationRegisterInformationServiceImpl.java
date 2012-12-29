package edu.mx.utvm.congreso.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import edu.mx.utvm.congreso.dao.impl.ParticipationRegisterInformationDaoImpl;
import edu.mx.utvm.congreso.dominio.ParticipationRegisterInformation;
import edu.mx.utvm.congreso.mail.MailService;
import edu.mx.utvm.congreso.util.Util;
@Service
public class ParticipationRegisterInformationServiceImpl implements ParticipationRegisterInformationService{

	@Autowired
	private MailService mail;
	
	@Autowired
	private InformationAccountService accountService;
	
	@Autowired
	private UserRoleService roleService;
	
	@Autowired
	private ParticipationRegisterInformationDaoImpl informationDao;
	
	@Value("${URL_CONFIRM_PREREGISTER}")
	private String urlConfirm;
	
	@Value("${MAIL_SENDER}")
	private String mailSender;
		
	
	@Override
	public void save(ParticipationRegisterInformation participationRegisterInformation) {

    	/* Build name */
    	StringBuffer nombre = new StringBuffer();
    	nombre.append(participationRegisterInformation.getName()).append(" ");
    	nombre.append(participationRegisterInformation.getSecondName()).append(" ");
    	nombre.append(participationRegisterInformation.getThirdName()).append(" ");
    	
		/* Generate token and set to object*/
		String token = Util.generateToken(participationRegisterInformation.getInformationAccount().getEmail());
		participationRegisterInformation.getInformationAccount().setToken(token);
		participationRegisterInformation.getInformationAccount().setReferenceKey(token);
		
		/* Generate url confirm */
		String urlConfirm = this.urlConfirm + token;
		
		/* Mapa de propiedades */
    	Map<String, String> model = new HashMap<String, String>();
    	model.put("nombre", nombre.toString());
    	model.put("url", urlConfirm);
    	
		mail.sendMail(mailSender, participationRegisterInformation
				.getInformationAccount().getEmail(), "Confirmaci�n de cuenta",
				model, MailService.TEMPLATE_PARTICIPATION_CONFIRMATION);
		
		accountService.save(participationRegisterInformation.getInformationAccount());
		roleService.save(participationRegisterInformation.getUserRole());
		informationDao.create(participationRegisterInformation);		
	}

}