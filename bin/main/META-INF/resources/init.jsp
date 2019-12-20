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
<%
Empleado empleado = (Empleado) request.getAttribute("Empleado"); 
String nombreCompleto = empleado.getNombre() +" "+empleado.getApellidos();
System.out.print("Nombre completo: "+nombreCompleto);
%>