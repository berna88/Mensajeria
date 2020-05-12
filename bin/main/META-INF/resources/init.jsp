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
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/jquery-confirm.min.css"%>'>
<script src='<%=request.getContextPath()+"/js/jquery-confirm.min.js"%>'></script>
<style>
.jconfirm .jconfirm-box{
	background: #202020 !important;
    color: white;
    border: solid 1px #b1a16b;
}
.jconfirm-title-c{
	text-align: center;
    color: #b1a16b;
}
.jconfirm-content{
	text-align: center;
}
.jconfirm-buttons button{
    border: none;
    background: #b1a16b !important;
    color: #202020;
}
</style>