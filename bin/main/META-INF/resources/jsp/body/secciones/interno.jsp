<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="tab-pane fade active show" id="pills-seccion" role="tabpanel" aria-labelledby="pills-seccion-tab">
	<section class="row align-items-center justify-content-center no-gutters" style="height: auto;">
		<article class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-3 mt-50">
			<h6>Tipo de servicio:</h6>
			<form action="${getSelectionURL}" method="post">
				<select name="<portlet:namespace />select" id="interno" style="background: black;border: solid 1px #ccb874;color: white;padding: 6px 14px;width: 100%;-webkit-appearance: none;">
				  <option value="Enviar" class="option" selected>Enviar</option> 
				  <option value="Recibir" class="option">Recibir</option>
				</select>
				<%if(!empleado.getNombre().isEmpty()){%>
				<button type="submit" class="mt-50 border border-0 float-right w-50 pt-1 pb-1 font-weight-normal" style="background-color: #cbb874;">Solicitar</button>
				<%}else{%>
				<button type="submit" class="mt-50 border border-0 float-right w-50 pt-1 pb-1 font-weight-normal" style="background-color: #cbb874;" disabled>Solicitar</button>
				<%} %>
			</form>
		</article>
	</section>
</div>