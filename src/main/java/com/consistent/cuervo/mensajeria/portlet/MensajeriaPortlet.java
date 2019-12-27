package com.consistent.cuervo.mensajeria.portlet;

import com.consistent.cuervo.mensajeria.constants.MensajeriaPortletKeys;
import com.consistent.cuervo.mensajeria.models.Empleado;
import com.consistent.cuervo.mensajeria.models.Mensajeria;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.upload.UploadPortletRequest;
import com.liferay.portal.kernel.util.FileUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;
import com.liferay.portal.kernel.util.WebKeys;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;

/**
 * @author bernardohernandez
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.header-portlet-css=/css/main.css",
		"com.liferay.portlet.header-portlet-css=/css/jquery-ui.css",
		"com.liferay.portlet.footer-portlet-javascript=/js/jquery-ui.js",
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
	
	public void getSelectionCedis(ActionRequest request, ActionResponse response) {
		String selectCedis = ParamUtil.getString(request,"selectCedis");
		request.setAttribute("selectCedis", selectCedis);
		response.setRenderParameter("mvcPath", "/jsp/body/secciones/form/formulario-cedis.jsp");
	}
	/**
	 * 
	 * @param request
	 * @param response
	 */
	public void sendInterno(ActionRequest request, ActionResponse response) {
				log.info("<--------- Form interno ---------->");
		try {
			String destinatarioRemitente = "";
			String solicitante = empleado.getNombre()+ " " +  empleado.getApellidos();
			String tipoServicio = (!ParamUtil.getString(request, "tipoServicio").equals(null))? ParamUtil.getString(request,"tipoServicio"):"";
			String fechaSolicitud = (!ParamUtil.getString(request, "fechaSolicitud").equals(null))? ParamUtil.getString(request,"fechaSolicitud"):"";
			String fechaRequerida = (!ParamUtil.getString(request, "fechaRequerida").equals(null))? ParamUtil.getString(request,"fechaRequerida"):"";
			String destinatario = (!ParamUtil.getString(request, "Destinatario").equals(null))? ParamUtil.getString(request,"Destinatario"):"";
			String remitente = (!ParamUtil.getString(request, "Remitente").equals(null))? ParamUtil.getString(request,"Remitente"):"";
			String fechaRemitente = (!ParamUtil.getString(request, "fechaRemitente").equals(null))? ParamUtil.getString(request,"fechaRemitente"):"";
			String numeroExterior = (!ParamUtil.getString(request, "numeroExterior").equals(null))? ParamUtil.getString(request,"numeroExterior"):"";
			String estado = (!ParamUtil.getString(request, "estado").equals(null))? ParamUtil.getString(request,"estado"):"";
			String numeroInterior = (!ParamUtil.getString(request, "numeroInterior").equals(null))? ParamUtil.getString(request,"numeroInterior"):"";
			String ciudadMunicipio = (!ParamUtil.getString(request, "ciudadMunicipio").equals(null))? ParamUtil.getString(request,"ciudadMunicipio"):"";
			String telefono = (!ParamUtil.getString(request, "telefono").equals(null))? ParamUtil.getString(request,"telefono"):"";
			String codigoPostal = (!ParamUtil.getString(request, "codigoPostal").equals(null))? ParamUtil.getString(request,"codigoPostal"):"";
			String horarioAtencion = (!ParamUtil.getString(request, "horarioAtencion").equals(null))? ParamUtil.getString(request,"horarioAtencion"):"";
			String colonia = (!ParamUtil.getString(request, "colonia").equals(null))? ParamUtil.getString(request,"colonia"):"";
			String calle = (!ParamUtil.getString(request, "calle").equals(null))? ParamUtil.getString(request,"calle"):"";
			String descripcionServicio = (!ParamUtil.getString(request, "descripcionServicio").equals(null))? ParamUtil.getString(request,"descripcionServicio"):"";
			
			if(!destinatario.isEmpty()) {
				log.info("destinatario no esta vacio");
				log.info(destinatario);
				destinatarioRemitente = destinatario;
			}else if(!remitente.isEmpty()){
				log.info("remitente no esta vacio");
				log.info(remitente);
				destinatarioRemitente = remitente;
			}
			log.info("destinatarioRemitente: "+destinatarioRemitente);
			ThemeDisplay themeDisplay = (ThemeDisplay)  request.getAttribute(WebKeys.THEME_DISPLAY);
			String destino = "";
			String correoRemitente = "";
			
			if(!themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("emailMensajeria").toString().equals(null) && !themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("emailMensajeria").toString().equals("")){
				destino = themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("emailMensajeria").toString();
				log.info(destino);
				}
			if(!themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("correoRemitente").toString().equals(null) && !themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("correoRemitente").toString().equals("")){
				correoRemitente = themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("correoRemitente").toString();
				log.info(destino);
				}
			Mensajeria mensajeria = new Mensajeria(solicitante, tipoServicio, fechaSolicitud, fechaRequerida, destinatarioRemitente, fechaRemitente, numeroExterior, estado, numeroInterior, ciudadMunicipio, telefono, codigoPostal, horarioAtencion, colonia, calle, descripcionServicio);
			mensajeria.setFromMensajeria(destino);
			mensajeria.setCorreoRemitente(correoRemitente);
			log.info(mensajeria.toString());
			mensajeria.sendMail();
			
		}catch (Exception e) {
			// TODO: handle exception
			log.error("sendInterno: "+e.getCause());
			e.printStackTrace();
		}
	}
	
	public void sendCedis(ActionRequest request, ActionResponse response) {
		log.info("<--------- Form interno ---------->");
		try {	
			byte[] bytes = null;
			String PATH = request.getContextPath();
			log.info(PATH);
			UploadPortletRequest portletRequest = PortalUtil.getUploadPortletRequest(request);
			String sourceFileName = portletRequest.getFileName("evidenciaProducto");
			File file = portletRequest.getFile("evidenciaProducto");
			try {
				bytes = FileUtil.getBytes(file);
			} catch (IOException e2) {			
				e2.printStackTrace();
			}
			File plecatopFile = new File(sourceFileName);
			FileOutputStream fileOuputStreamP = new FileOutputStream(plecatopFile);
			fileOuputStreamP.write(bytes);
			fileOuputStreamP.close();
			String destinatarioRemitente = "";
			String solicitante = empleado.getNombre()+ " " + empleado.getApellidos();
			String tipoServicio = (!ParamUtil.getString(request, "tipoServicio").equals(null))? ParamUtil.getString(request,"tipoServicio"):"";
			String fechaSolicitud = (!ParamUtil.getString(request, "fechaSolicitud").equals(null))? ParamUtil.getString(request,"fechaSolicitud"):"";
			String fechaRequerida = (!ParamUtil.getString(request, "fechaRequerida").equals(null))? ParamUtil.getString(request,"fechaRequerida"):"";
			String destinatario = (!ParamUtil.getString(request, "Destinatario").equals(null))? ParamUtil.getString(request,"Destinatario"):"";
			String remitente = (!ParamUtil.getString(request, "Remitente").equals(null))? ParamUtil.getString(request,"Remitente"):"";
			String fechaRemitente = (!ParamUtil.getString(request, "fechaRemitente").equals(null))? ParamUtil.getString(request,"fechaRemitente"):"";
			String numeroExterior = (!ParamUtil.getString(request, "numeroExterior").equals(null))? ParamUtil.getString(request,"numeroExterior"):"";
			String estado = (!ParamUtil.getString(request, "estado").equals(null))? ParamUtil.getString(request,"estado"):"";
			String numeroInterior = (!ParamUtil.getString(request, "numeroInterior").equals(null))? ParamUtil.getString(request,"numeroInterior"):"";
			String ciudadMunicipio = (!ParamUtil.getString(request, "ciudadMunicipio").equals(null))? ParamUtil.getString(request,"ciudadMunicipio"):"";
			String telefono = (!ParamUtil.getString(request, "telefono").equals(null))? ParamUtil.getString(request,"telefono"):"";
			String codigoPostal = (!ParamUtil.getString(request, "codigoPostal").equals(null))? ParamUtil.getString(request,"codigoPostal"):"";
			String horarioAtencion = (!ParamUtil.getString(request, "horarioAtencion").equals(null))? ParamUtil.getString(request,"horarioAtencion"):"";
			String colonia = (!ParamUtil.getString(request, "colonia").equals(null))? ParamUtil.getString(request,"colonia"):"";
			String calle = (!ParamUtil.getString(request, "calle").equals(null))? ParamUtil.getString(request,"calle"):"";
			String descripcionServicio = (!ParamUtil.getString(request, "descripcionServicio").equals(null))? ParamUtil.getString(request,"descripcionServicio"):"";
			
			if(!destinatario.isEmpty()) {
				log.info("destinatario no esta vacio");
				log.info(destinatario);
				destinatarioRemitente = destinatario;
			}else if(!remitente.isEmpty()){
				log.info("remitente no esta vacio");
				log.info(remitente);
				destinatarioRemitente = remitente;
			}
			log.info("destinatarioRemitente: "+destinatarioRemitente);
			
			ThemeDisplay themeDisplay = (ThemeDisplay)  request.getAttribute(WebKeys.THEME_DISPLAY);
			String destino = "";
			String correoRemitente = "";
			
			if(!themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("emailMensajeria").toString().equals(null) && !themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("emailMensajeria").toString().equals("")){
				destino = themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("emailMensajeria").toString();
				log.info(destino);
				}
			if(!themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("correoRemitente").toString().equals(null) && !themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("correoRemitente").toString().equals("")){
				correoRemitente = themeDisplay.getSiteGroup().getExpandoBridge().getAttribute("correoRemitente").toString();
				log.info(destino);
				}
			Mensajeria mensajeria = new Mensajeria(solicitante, tipoServicio, fechaSolicitud, fechaRequerida, destinatarioRemitente, fechaRemitente, numeroExterior, estado, numeroInterior, ciudadMunicipio, telefono, codigoPostal, horarioAtencion, colonia, calle, descripcionServicio);
			mensajeria.setFromMensajeria(destino);
			mensajeria.setCorreoRemitente(correoRemitente);
			mensajeria.setEvidencia(plecatopFile);
			log.info(mensajeria.toString());
			mensajeria.sendMailWithFile();
			
		}catch (Exception e) {
			// TODO: handle exception
			log.error("sendCedis: "+e.getCause());
			e.printStackTrace();
		}
	}
	
}