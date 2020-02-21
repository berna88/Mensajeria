package com.consistent.cuervo.mensajeria.email;

import java.io.File;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import com.liferay.mail.kernel.model.MailMessage;
import com.liferay.mail.kernel.service.MailServiceUtil;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;

/**
 * Clase que tiene el metodo de envio correo. 
 * <p> 
 * 	@author Bernardo Hernández Ramírez
 *	@version 1.0
 *	@since 2020-02-20
 */
public class SendMail {
	
	private static final Log log = LogFactoryUtil.getLog(SendMail.class);
	
	public static boolean isSendMail(String para, String de, String asunto,String body, File file){
		try{
			InternetAddress fromAddress = new InternetAddress(de);
			InternetAddress toAddress = new InternetAddress(para);
			
			MailMessage mailMessage = new  MailMessage();
			mailMessage.setFrom(fromAddress);
			mailMessage.setTo(toAddress);
			mailMessage.setSubject(asunto);
			mailMessage.setHTMLFormat(true);
			mailMessage.setBody(body);
			mailMessage.addFileAttachment(file);
			log.debug("Se envia el correo");
			MailServiceUtil.sendEmail(mailMessage);
			
		}catch (AddressException e) {
			e.getMessage();
			return false;
		}
		
		return true;
	}

}
