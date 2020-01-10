<%@page import="com.consistent.cuervo.mensajeria.models.Empleado"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %><%@
taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %><%@
taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %><%@
taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>

<liferay-theme:defineObjects />

<portlet:defineObjects />

<portlet:actionURL name="getSelection" var="getSelectionURL" />
<portlet:actionURL name="sendInterno" var="sendInternoURL" />
<portlet:actionURL name="getSelectionCedis" var="getSelectionCedisURL" />
<portlet:actionURL name="sendCedis" var="sendCedisURL" />
<%
Empleado empleado = (Empleado) request.getAttribute("Empleado"); 
String nombreCompleto = empleado.getNombre() +" "+empleado.getApellidos();

%>
<style>
.ui-widget.ui-widget-content{
	border-radius:1.3rem;
	position: absolute !important;
	margin-left: auto !important;
	margin-right: auto !important;
	margin-top: auto !important;
	margin-bottom: auto !important;
	height: 230px !important;
	width: 500px !important;
	top: 500px !important;
	left: 0 !important;
	right: 0 !important;
	background: rgb(23,23,23) !important;
	border: solid 1px rgb(204,184,116) !important;
}
.ui-widget.ui-widget-content .ui-dialog-titlebar {
	background: transparent !important;
    color: #ccb874 !important;
    border: none !important;
}
.ui-widget.ui-widget-content .ui-dialog-titlebar button{
	background: transparent !important;
    border: none !important;
}
.ui-dialog-title{
    width: 100% !important;
    text-align: center !important;
}
.ui-dialog-buttonpane{
	background: transparent !important;
    border: none !important;
}
.ui-dialog-buttonset{
width: 100%;
}
.ui-dialog-buttonset button{
    display: block;
    margin: auto !important;
    background: #CCB874;
    border-radius: 0;
    font-family: "Work Sans";
    font-weight: 600;
    color: #000 !important;
    font-size: 18px;
    line-height: 48px;
    padding: 0 30px;
    width: auto;
    border: none;
}

</style>