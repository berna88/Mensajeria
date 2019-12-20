package com.consistent.cuervo.mensajeria.portlet;

import com.consistent.cuervo.mensajeria.constants.MensajeriaPortletKeys;
import com.consistent.cuervo.mensajeria.models.Empleado;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.osgi.service.component.annotations.Component;

/**
 * @author bernardohernandez
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.header-portlet-css=/css/main.css",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=Mensajeria",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + MensajeriaPortletKeys.MENSAJERIA,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class MensajeriaPortlet extends MVCPortlet {
	// log
	private static final Log log = LogFactoryUtil.getLog(MensajeriaPortlet.class);
	// Modelo del empleado
	private Empleado empleado;
	
	@Override
		public void render(RenderRequest renderRequest, RenderResponse renderResponse)
				throws IOException, PortletException {
			// TODO Auto-generated method stub
		log.info("<--------- render ---------->");
		try {
			User user = PortalUtil.getUser(renderRequest);
			empleado = new Empleado(user);
			
			if(empleado.getUser()!=null) {
				log.info("Logeado");
				renderRequest.setAttribute("Empleado", empleado);
			}else {
				log.info("No logeado");
				Empleado empleado = new Empleado();
				renderRequest.setAttribute("Empleado", empleado);
			}
			super.render(renderRequest, renderResponse);
		}catch (Exception e) {
			// TODO: handle exception
			log.error("doView"+ e.getCause());
			e.printStackTrace();
		}
			
		}
	/**
	 * @author bernardohernandez
	 * @param request
	 * @param response
	 */
	public void getSelection(ActionRequest request, ActionResponse response) {
		String select = ParamUtil.getString(request,"select");
		request.setAttribute("select", select);
		response.setRenderParameter("mvcPath", "/jsp/body/secciones/form/formulario-interno.jsp");
	}
	/**
	 * 
	 * @param request
	 * @param response
	 */
	public void sendInterno(ActionRequest request, ActionResponse response) {
				log.info("<--------- Form interno ---------->");
		try {
			String solicitante = (!ParamUtil.getString(request, "solicitante").equals(null))? ParamUtil.getString(request,"solicitante"):"";
			String tipoServicio = (!ParamUtil.getString(request, "tipoServicio").equals(null))? ParamUtil.getString(request,"tipoServicio"):"";
			String fechaSolicitud = (!ParamUtil.getString(request, "fechaSolicitud").equals(null))? ParamUtil.getString(request,"fechaSolicitud"):"";
			String fechaRequerida = (!ParamUtil.getString(request, "fechaRequerida").equals(null))? ParamUtil.getString(request,"fechaRequerida"):"";
			String fechaDestinatario = (!ParamUtil.getString(request, "fechaDestinatario").equals(null))? ParamUtil.getString(request,"fechaDestinatario"):"";
			String fechaRemitente = (!ParamUtil.getString(request, "fechaRemitente").equals(null))? ParamUtil.getString(request,"fechaRemitente"):"";
			String numeroExterior = (!ParamUtil.getString(request, "numeroExterior").equals(null))? ParamUtil.getString(request,"numeroExterior"):"";
			String estado = (!ParamUtil.getString(request, "estado").equals(null))? ParamUtil.getString(request,"estado"):"";
			log.info("Solicitante: "+solicitante+tipoServicio+fechaSolicitud+fechaRequerida+fechaDestinatario+fechaRemitente+numeroExterior+estado);
			
		}catch (Exception e) {
			// TODO: handle exception
			log.error("sendInterno: "+e.getCause());
			e.printStackTrace();
		}
	}
	
}