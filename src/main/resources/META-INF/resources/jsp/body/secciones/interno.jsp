<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="tab-pane fade active show" id="pills-seccion" role="tabpanel" aria-labelledby="pills-seccion-tab">
	<section class="row align-items-center justify-content-center no-gutters" style="height: 400px;">
		<article class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-3">
			<h6>Tipo de servicio:</h6>
			<form action="" method="post">
				<select name="select" id="interno">
				  <option value="Enviar" class="option" selected>Enviar</option> 
				  <option value="Recibir" class="option">Recibir</option>
				</select>
				<a href="${getFormInterno}" class="mt-50 border border-0 w-50 pt-1 pb-1 font-weight-normal text-center float-right" style="background: #cbb874;color: black;display: block;margin: auto;">Solicitar</a>
				<!--  <button type="submit" class="mt-50 border border-0 float-right w-50 pt-1 pb-1 font-weight-normal" style="background-color: #cbb874;">Solicitar</button>-->
			</form>
		</article>
	</section>
</div>
<script>
function sendInterno() {
	 var interno = document.getElementById("interno");
	 var interValue	= interno.options[interno.selectedIndex].value;
	 console.log(interValue);
	 AUI().use('aui-io-request', function(A){
	        A.io.request('${getFormInterno}', {
	               method: 'post',
	               data: {
	            	   <portlet:namespace />param2: 'value2',
	               },
	               on: {
	                   	success: function() {
	                    alert(this.get('responseData'));
	                   }
	              }
	        });
	 
	    });
	 
	}
</script>