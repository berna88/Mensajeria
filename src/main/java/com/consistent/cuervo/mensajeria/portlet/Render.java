package com.consistent.cuervo.mensajeria.portlet;

import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;

import com.consistent.cuervo.mensajeria.constants.MensajeriaPortletKeys;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCRenderCommand;

@Component(
		property = {
				"javax.portlet.name="+MensajeriaPortletKeys.MENSAJERIA,
				"mvc.command.name=/formulario-interno"
		},
		service = MVCRenderCommand.class
		)

public class Render implements MVCRenderCommand{
	
	private static final Log log = LogFactoryUtil.getLog(Render.class);
	
	@Override
	public String render(RenderRequest renderRequest, RenderResponse renderResponse) throws PortletException {
		// TODO Auto-generated method stub
		String f = (String) renderRequest.getParameter("select");
		log.debug(""+f);
		renderRequest.setAttribute("HolaInterno", f);
		
		return "/jsp/body/secciones/form/formulario-interno.jsp";
	}

}
