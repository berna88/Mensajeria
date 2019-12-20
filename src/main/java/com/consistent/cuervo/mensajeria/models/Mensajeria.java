package com.consistent.cuervo.mensajeria.models;

import com.consistent.cuervo.mensajeria.email.SendMail;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;

public class Mensajeria {
	private static final Log log = LogFactoryUtil.getLog(Mensajeria.class);
	private String solicitante;
	private String tipoServicio;
	private String fechaSolicitud;
	private String fechaRequerida;
	private String fechaDestinaratio;
	private String fechaRemitente;
	private String numeroExterior;
	private String estado;
	private String numeroInterior;
	private String ciudadMunicipio;
	private String telefono;
	private String codigoPostal;
	private String horarioAtencion;
	private String colonia;
	private String calle;
	private String descripcionServicio;
	
	public String getSolicitante() {
		return solicitante;
	}
	public void setSolicitante(String solicitante) {
		this.solicitante = solicitante;
	}
	public String getTipoServicio() {
		return tipoServicio;
	}
	public void setTipoServicio(String tipoServicio) {
		this.tipoServicio = tipoServicio;
	}
	public String getFechaSolicitud() {
		return fechaSolicitud;
	}
	public void setFechaSolicitud(String fechaSolicitud) {
		this.fechaSolicitud = fechaSolicitud;
	}
	public String getFechaRequerida() {
		return fechaRequerida;
	}
	public void setFechaRequerida(String fechaRequerida) {
		this.fechaRequerida = fechaRequerida;
	}
	public String getFechaDestinaratio() {
		return fechaDestinaratio;
	}
	public void setFechaDestinaratio(String fechaDestinaratio) {
		this.fechaDestinaratio = fechaDestinaratio;
	}
	public String getFechaRemitente() {
		return fechaRemitente;
	}
	public void setFechaRemitente(String fechaRemitente) {
		this.fechaRemitente = fechaRemitente;
	}
	public String getNumeroExterior() {
		return numeroExterior;
	}
	public void setNumeroExterior(String numeroExterior) {
		this.numeroExterior = numeroExterior;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getNumeroInterior() {
		return numeroInterior;
	}
	public void setNumeroInterior(String numeroInterior) {
		this.numeroInterior = numeroInterior;
	}
	public String getCiudadMunicipio() {
		return ciudadMunicipio;
	}
	public void setCiudadMunicipio(String ciudadMunicipio) {
		this.ciudadMunicipio = ciudadMunicipio;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getCodigoPostal() {
		return codigoPostal;
	}
	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}
	public String getHorarioAtencion() {
		return horarioAtencion;
	}
	public void setHorarioAtencion(String horarioAtencion) {
		this.horarioAtencion = horarioAtencion;
	}
	public String getColonia() {
		return colonia;
	}
	public void setColonia(String colonia) {
		this.colonia = colonia;
	}
	public String getCalle() {
		return calle;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	public String getDescripcionServicio() {
		return descripcionServicio;
	}
	public void setDescripcionServicio(String descripcionServicio) {
		this.descripcionServicio = descripcionServicio;
	}
	
	public Mensajeria(String solicitante, String tipoServicio, String fechaSolicitud, String fechaRequerida,
			String fechaDestinaratio, String fechaRemitente, String numeroExterior, String estado,
			String numeroInterior, String ciudadMunicipio, String telefono, String codigoPostal, String horarioAtencion,
			String colonia, String calle, String descripcionServicio) {
		super();
		this.solicitante = solicitante;
		this.tipoServicio = tipoServicio;
		this.fechaSolicitud = fechaSolicitud;
		this.fechaRequerida = fechaRequerida;
		this.fechaDestinaratio = fechaDestinaratio;
		this.fechaRemitente = fechaRemitente;
		this.numeroExterior = numeroExterior;
		this.estado = estado;
		this.numeroInterior = numeroInterior;
		this.ciudadMunicipio = ciudadMunicipio;
		this.telefono = telefono;
		this.codigoPostal = codigoPostal;
		this.horarioAtencion = horarioAtencion;
		this.colonia = colonia;
		this.calle = calle;
		this.descripcionServicio = descripcionServicio;
	}
	
	public Mensajeria() {
		this.solicitante = "";
		this.tipoServicio = "";
		this.fechaSolicitud = "";
		this.fechaRequerida = "";
		this.fechaDestinaratio = "";
		this.fechaRemitente = "";
		this.numeroExterior = "";
		this.estado = "";
		this.numeroInterior = "";
		this.ciudadMunicipio = "";
		this.telefono = "";
		this.codigoPostal = "";
		this.horarioAtencion = "";
		this.colonia = "";
		this.calle = "";
		this.descripcionServicio = "";
	}
	
	@Override
	public String toString() {
		return "Mensajeria [solicitante=" + solicitante + ", tipoServicio=" + tipoServicio + ", fechaSolicitud="
				+ fechaSolicitud + ", fechaRequerida=" + fechaRequerida + ", fechaDestinaratio=" + fechaDestinaratio
				+ ", fechaRemitente=" + fechaRemitente + ", numeroExterior=" + numeroExterior + ", estado=" + estado
				+ ", numeroInterior=" + numeroInterior + ", ciudadMunicipio=" + ciudadMunicipio + ", telefono="
				+ telefono + ", codigoPostal=" + codigoPostal + ", horarioAtencion=" + horarioAtencion + ", colonia="
				+ colonia + ", calle=" + calle + ", descripcionServicio=" + descripcionServicio + "]";
	}
	
	public void sendMail() {
		boolean enviado = SendMail.isSendMail("bhernandez@consistent.com.mx", "vtorres@consistent.mx", "Mensajeria [solicitante=" + solicitante + ", tipoServicio=" + tipoServicio + ", fechaSolicitud="
				+ fechaSolicitud + ", fechaRequerida=" + fechaRequerida + ", fechaDestinaratio=" + fechaDestinaratio
				+ ", fechaRemitente=" + fechaRemitente + ", numeroExterior=" + numeroExterior + ", estado=" + estado
				+ ", numeroInterior=" + numeroInterior + ", ciudadMunicipio=" + ciudadMunicipio + ", telefono="
				+ telefono + ", codigoPostal=" + codigoPostal + ", horarioAtencion=" + horarioAtencion + ", colonia="
				+ colonia + ", calle=" + calle + ", descripcionServicio=" + descripcionServicio + "]", null);
		if(enviado) {
			log.info("Se envio el correo correctamente");
		}else {
			log.info("No se envio correo");
		}
	}
	
	
}
