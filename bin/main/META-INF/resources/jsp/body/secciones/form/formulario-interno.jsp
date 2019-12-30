<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/general.css"%>'>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/form.css"%>'>
<%@ include file="/init.jsp" %>
<!-- Banner -->  
<%@ include file="../../../header/banner.jsp" %>
<style>
.ancho-date{
	width: 46%;
}
.container-flex{
	display: flex;
	justify-content: space-between;
}
@media only screen and (max-width: 991px) {
  .container-flex{
	display: flex;
	flex-direction: column;
	}
	.ancho-date{
	width: 100%;
	}
}
/**** CALENDAR ***/
.ui-datepicker{
	top: 271px !important;
}
.ui-datepicker .ui-datepicker-header {
    background: none;
    border: none;
}

.ui-widget.ui-widget-content {
    border: 1px solid rgb(205, 184, 116);
    background: black;
    border-radius: 15px;
}

.ui-state-default {
	border: unset !important;
    background: none !important;
    color: #FFFFFF !important;
}

.ui-state-highlight, 
.ui-widget-content .ui-state-highlight, 
.ui-widget-header .ui-state-highlight {
    border: unset !important;
    background: #CDB874 !important;
    color: black !important;
}
.ui-widget-content{
padding: 15px;
}

.ui-datepicker td span,
.ui-datepicker td a {
    text-align: center;
}

.ui-datepicker .ui-datepicker-title {
    
    display: flex;
    justify-content: center;
}

.ui-datepicker select.ui-datepicker-month{
	margin-right: 10px;
}

.ui-datepicker select.ui-datepicker-month,
.ui-datepicker select.ui-datepicker-year {
    width: 47%;
    background: black;
    color: white;
    border: 1px solid #CDB874;
}

.ui-datepicker-calendar thead {
	border-top: 1px solid #CDB874;
}
.ui-datepicker .ui-datepicker-title {
    margin: 0; 
    margin-top: 20px !important;
}
.ui-datepicker-title button {
	position: absolute !important;
    right: -10px;
    top: -18px;
    left: initial !important;
}
.ui-datepicker-title select[data-event="change"] {
	height: 27px;
    padding: 0px 6px !important;
    margin-bottom: .7rem;
    border-radius: 0px;
}
.ui-datepicker-calendar thead {
	color: white;
}
.ui-state-disabled, .ui-widget-content .ui-state-disabled, .ui-widget-header .ui-state-disabled {
    opacity: .7 !important;
}
</style>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/formSteps.css"%>'>
<% String tipoSelect = (String) request.getAttribute("select"); %>
<!-- Fin de Banner --> 
<!-- seccion de pasos -->  

<div class="md-stepper-horizontal gold">
            <div class="md-step active done">
                <div class="md-step-circle" style="opacity: 0;"><span>0</span></div>
                <div class="md-step-title"></div>
                <div class="md-step-bar-left" style="right: 25%;"></div>
                <div class="md-step-bar-right" style="left: 25%;"></div>
            </div>
            <div class="md-step active">
                <div id="checkout" class="md-step-circle"><span>1</span></div>
                <div class="md-step-title">Solicitante</div>
                <div class="md-step-optional"></div>
                <div class="md-step-bar-left"></div>
                <div class="md-step-bar-right"></div>
            </div>
            <div class="md-step">
                <div id="finish-purcharse" class="md-step-circle"><span>2</span></div>
                <div class="md-step-title">Destinatario</div>
                <div class="md-step-bar-left"></div>
                <div class="md-step-bar-right"></div>
            </div>
            <div class="md-step">
                <div class="md-step-circle" style="opacity: 0;"><span>0</span></div>
                <div class="md-step-title"></div>
                <div class="md-step-bar-left" style="right: 25%;"></div>
                <div class="md-step-bar-right" style="left: 25%;"></div>
            </div>
</div>
<!-- Fin de seccion de pasos -->  
<!--Seccion formulario -->      
	<div class="row justify-content-center" style="font-family: "Source Sans Pro";">
		<div class="col-12 col-sm-12 col-md-10">
			<form id="form-vacations" class="formulario formulario-xl" action="${sendInternoURL}" style="margin-left:0%;margin-right:0%;width:100%" method="post">
				<!--Tab uno-->
        			<div class="tab form-row">
        				<div class="row justify-content-center">
        					<div class="col-11 col-sm-11 col-md-12 col-lg-6 col-xl-6">
        						<div class="row">
						    		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-2">
						    			<label class="text-white" for="">Solicitante:<span class="yellow">*</span></label>
						    			<input type="text" class="form-control" id="titulo" value="<%=nombreCompleto%>" name="<portlet:namespace />solicitante" disabled="disabled">
						    		</div>
						    		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-2">
						    			<label class="text-white" for="">Tipo de servicio:<span class="yellow">*</span></label>
					    		    	<div class="select-area formulario-select" style="width: 100% !important">
					    	  	    		<select class="custom-select" name="<portlet:namespace />tipoServicio">
					    						<option value="normal" selected>Normal</option>
					    						<option value="urgente">Urgente</option>
					    					</select>
				    					</div>
						    		</div>
						    		<section class="container-flex col-md-12 col-lg-12 col-xl-12">
					                	<div class="ancho-date mb-2">
					                		<label class="text-white" for="FechaDeSolicitud" >
												Fecha de solicitud<span class="yellow">*</span>
											</label>
											<div class="input-group mb-3 ">
									 			<input id="fechaInicio" type="text" class="form-control form-control-sm calendar" style="background: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>') no-repeat scroll 5px 4px;background-size: 17px;background-position: 96%; " name="<portlet:namespace />fechaSolicitud" autocomplete="off">
											</div>
					                	</div>
					                	<div class="ancho-date mb-2">
					                		<label class="text-white" for="FechaRequerida" >
												Fecha requerida:<span class="yellow">*</span>
											</label>
											<div class="input-group mb-3 ">
												<input id="fechaRegreso" type="text" class="form-control form-control-sm calendar" style="background: url('<%=request.getContextPath()+"/img/calendar-cuervo.svg"%>') no-repeat scroll 5px 4px;background-size: 17px;background-position: 96%; " name="<portlet:namespace />fechaRequerida" autocomplete="off">
											</div>
					                	</div>
									</section>
									<div class="col-md-12 mt-50 mb-50">
										<a class=" w-50 pt-1 pb-1 float-right text-center" id="nextBtn" onclick="nextPrev(1)" style="background: #cbb874;color: black;display: block;margin: auto;">Siguiente</a>
									</div>
								</div>
							</div>
						</div>
					</div>
            <!--Fin de tab uno-->
			<!--Tab dos-->
               <div class="tab form-row">
               		<div class="row justify-content-center">
                    	<div class="col-12 col-sm-12 col-md-12 col-lg-11 col-xl-11">
                    		<div class="row">
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		                        	<%if(tipoSelect.equalsIgnoreCase("Enviar")){ %>
		         					<label for="destinatario" class="text-white">Destinatario:<span class="yellow">*</span></label>
		                    		<input class="form-control" type="text" name="<portlet:namespace />Destinatario" required/>
		                    		<% }else{%>
		                    		<label for="Remitente" class="text-white">Remitente:<span class="yellow">*</span></label>
		                    		<input class="form-control" type="text" name="<portlet:namespace />Remitente" required/>
		                    		<% } %>
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		                           	<label for="numeroExterior" class="text-white">Número Exterior:<span class="yellow">*</span></label>
		                        	<input class="form-control" id="text" type="text" name="<portlet:namespace />numeroExterior" required> 
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		         					<label for="estado" class="text-white">Estado:<span class="yellow">*</span></label>
		                    		<input class="form-control" type="text" name="<portlet:namespace />estado" required/>
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		                           	<label for="numeroInterior" class="text-white">Número Interior:<span class="yellow">*</span></label>
		                        	<input class="form-control" id="text" type="text" name="<portlet:namespace />numeroInterior" required> 
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		         					<label for="ciudadMunicipio" class="text-white">Ciudad / Municipio:<span class="yellow">*</span></label>
		                    		<input class="form-control" type="text" name="<portlet:namespace />ciudadMunicipio" required/>
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		                           	<label for="teléfono" class="text-white">Teléfono:<span class="yellow">*</span></label>
		                        	<input class="form-control" id="text" type="tel" name="<portlet:namespace />telefono" required> 
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		         					<label for="codigoPortal" class="text-white">Código Postal:<span class="yellow">*</span></label>
		                    		<input class="form-control" type="text" name="<portlet:namespace />codigoPostal" required/>
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		                           	<label for="horarioAtencion" class="text-white">Horario de atención:<span class="yellow">*</span></label>
		                        	<input class="form-control" id="text" type="text" name="<portlet:namespace />horarioAtencion" required> 
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
		                        	<div class="row">
		                        		<div class="col-12">
				         					<label for="colonia" class="text-white">Colonia:<span class="yellow">*</span></label>
				                    		<input class="form-control" type="text" name="<portlet:namespace />colonia" required/>
			                    		</div>
			                    		<div class="col-12">
				         					<label for="calle" class="text-white">Calle:<span class="yellow">*</span></label>
		                    				<input class="form-control" type="text" name="<portlet:namespace />calle" required/>
			                    		</div>
		                    		</div>
		                        </div>
		                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">
			                        <label for="descripcionServicio" class="text-white">Descripción del servicio:<span class="yellow">*</span></label>
			                        <textarea class="form-control" rows="5" id="comment" style="height: 100px;resize: none;" name="<portlet:namespace />descripcionServicio" required></textarea>  
		                        </div>
				                <div class="form-group col-lg-12 text-right mt-25 mb-50">
				                    <button class="btn w-25 pt-1 pb-1 float-right text-center" style="background: #cbb874;color: black;display: block;margin: auto;">Enviar</button>
				                </div>
                			</div><!-- Fin de row -->
                		</div><!-- Fin de col -->
                	</div><!-- Fin de justify content -->
            	</div><!-- Fin de tab2 -->
			</form><!-- Fin de formulario -->
		</div><!-- Fin de col -->
	</div><!-- Fin de row -->
<!-- Fin seccion de  Formulario -->

<%-- 
<script src='<%=request.getContextPath()+"/js/formSteps.js"%>'>
</script>
 --%>
 
<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //and fix the Previous/Next buttons:
  /*
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
  */
}
function nextPrev(n) {
  	// This function will figure out which tab to display
  	var x = document.getElementsByClassName("tab");
	var i, s = document.getElementsByClassName("md-step");
	console.log(s);
 
  	//... and adds the "active" class on the current step:
  	x[n].className += " active";
  	// Exit the function if any field in the current tab is invalid:
  	if (n == 1 && !validateForm()) return false;
  	for (i = 0; i < s.length; i++) {
    s[1].className = s[1].className.replace("active", "");
    s[2].className = s[2].className.replace("md-step", "md-step active");
  }
  console.log(s);
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  //-----------------------
 
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    //the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}
function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  //if (valid) {
   // document.getElementsByClassName("step")[currentTab].className += " finish";
  //}
  return valid; // return the valid status
}
function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  	var i, x = document.getElementsByClassName("md-step");
  	for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace("active", "");
    console.log(x);
  }
  //and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>