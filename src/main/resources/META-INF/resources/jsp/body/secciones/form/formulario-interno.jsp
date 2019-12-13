<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/general.css"%>'>
<!-- Banner -->  
<%@ include file="../../../header/banner.jsp" %>
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
<div class="container mt-50">
	<div class="row justify-content-center" style="height: 400px;">
		<div class="col-12 col-sm-12 col-md-10">
			<form id="form-eve1" class="formulario formulario-xl" action="#" >
				<!--Tab uno-->
        			<div class="tab form-row align-items-center" style="width:100%;">
			    		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-1">
			    			<label class="text-white" for="">Solicitante:<span class="yellow">*</span></label>
			    			<input type="text" class="form-control" id="titulo" placeholder="" >
			    		</div>
			    		<div class="col-md-12 mb-1">
			    			<label class="text-white" for="">Tipo de servicio:</label>
		    		    	<div class="select-area formulario-select">
		    	  	    		<select class="custom-select">
		    						<option selected><span ></span></option>
		    						<option id="op1" value="1"><span id="sp">Normal</span></option>
		    						<option value="2">Urgente</option>
		    					</select>
	    					</div>
			    		</div>
	                	<div class="col-md-6 mb-1">
	                    	<label class="text-white" for="">Fecha de solicitud</label>
	                    	<input type="date" class="form-control"  placeholder="">
	                	</div>
	                	<div class="col-md-6 mb-1">
	                    	<label class="text-white" for="">Fecha requerida:</label>
	                    	<input type="date" class="form-control"  placeholder="">
	                	</div>
						<div class="col-md-12 mt-50">
							<a class=" w-50 pt-1 pb-1 float-right text-center" id="nextBtn" onclick="nextPrev(1)" style="background: #cbb874;color: black;display: block;margin: auto;">Siguiente</a>
						</div>
					</div>
            <!--Fin de tab uno-->

               <div class="tab">
                <div class="form-group col-lg-12">
                    <div class="row">
                        <div class="col-6">
                         
      
       <div class="form-group">
         <label for="">Fecha:</label>
                <div class='input-group date' id='datetimepicker5'>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                        <i class="far fa-calendar-alt"></i>
                    </span>
                    <input type='date' class="form-control" />

                </div>
            </div>
  
                        </div>
                        <div class="col-6">
                           <label for="">Horario:</label>
                        <input class="form-control" id="text" type="text" value=""> 
                        </div>
                    </div>
                    
                    <label class="texto-basico" for="">
                    
                    Garantía: </label>
                    <div id="g-user">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" id="titulo" placeholder="">
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label for="">Montaje:</label>
                    <div class="select-area formulario-select">
                        <i class="fas fa-chevron-down"></i>
                        <select class="custom-select">
                            <option selected><span></span></option>
                            <option value="1">select 1</option>
                            <option value="2">Select 2</option>
                            <option value="3">Select 3</option>
                        </select>
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label for="">Servicio de alimentos y bebidas:</label><br>
                 <div class="select-area formulario-select ">
            <i class="fas fa-chevron-down"></i>
            <select class="js-select2" multiple="multiple">

                <option value="O1" data-badge="">Option1</option>
                <option value="O2" data-badge="">Option2</option>
                <option value="O3" data-badge="">Option3</option>
                <option value="O4" data-badge="">Option4</option>
                <option value="O5" data-badge="">Option5</option>
                <option value="O6" data-badge="">Option6</option>
                <option value="O7" data-badge="">Option7</option>
                <option value="O8" data-badge="">Option8</option>
                <option value="O9" data-badge="">Option9</option>
                <option value="O10" data-badge="">Option10</option>
                <option value="O11" data-badge="">Option11</option>
                <option value="O12" data-badge="">Option12</option>
                <option value="O13" data-badge="">Option13</option>
            </select>
          </div>
         </div>



               <div class="form-group col-lg-12">
                    <label for="">Mantenimiento:</label>
                    <div class="select-area formulario-select">
                        <i class="fas fa-chevron-down"></i>
                        <select class="custom-select">
                            <option selected><span></span></option>
                            <option value="1">select 1</option>
                            <option value="2">Select 2</option>
                            <option value="3">Select 3</option>
                        </select>
                    </div>
                </div>

                       <div class="form-group col-lg-12">
                    <label for="">Tecnologia:</label><br>
                 <div class="select-area formulario-select ">
            <i class="fas fa-chevron-down"></i>
            <select class="js-select2" multiple="multiple">

                <option value="O1" data-badge="">Option1</option>
                <option value="O2" data-badge="">Option2</option>
                <option value="O3" data-badge="">Option3</option>
                <option value="O4" data-badge="">Option4</option>
                <option value="O5" data-badge="">Option5</option>
                <option value="O6" data-badge="">Option6</option>
                <option value="O7" data-badge="">Option7</option>
                <option value="O8" data-badge="">Option8</option>
                <option value="O9" data-badge="">Option9</option>
                <option value="O10" data-badge="">Option10</option>
                <option value="O11" data-badge="">Option11</option>
                <option value="O12" data-badge="">Option12</option>
                <option value="O13" data-badge="">Option13</option>
            </select>
          </div>
         </div>
                <div class="form-group col-lg-12">
                    <label for="">Control de accesos:</label>
                    <div class="select-area formulario-select">
                        <i class="fas fa-chevron-down"></i>
                        <select class="custom-select">
                            <option selected><span></span></option>
                            <option value="1">select 1</option>
                            <option value="2">Select 2</option>
                            <option value="3">Select 3</option>
                        </select>
                    </div>
                </div>

                <div class="form-group col-lg-12">
                   
                    <div class="form-group">
    <label for="Comentarios">Comentarios:</label>
    <textarea class="form-control" id="txtcoment" rows="12"></textarea>
  </div>
                </div>
                <div class="form-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-6">
            <div class="form-check">
              <input class="form-check-input" type="radio" value="" id="CheckPoliticas" required="">
                  <label class="form-check-label" for="invalidCheck3">
                    He leido y acepto la <a href="">politica de vacaciones vigente</a> en CASA CUERVO MÉXICO.
                  </label>
            </div>
        </div>
              
                <div class="form-group col-lg-12 text-right mt-25">
                    <a href="#" class="btn btn-principal">Enviar</a>
                </div>
            </div>
            	
			</form>
		</div><!-- Fin de col -->
	</div><!-- Fin de row -->
</div><!-- Fin de container -->
<!-- Fin seccion de  Formulario -->
            <script type="">
        
        $(".js-select2").select2({
            closeOnSelect : false,
            placeholder : "",
            allowHtml: true,
            allowClear: true,
            tags: true // создает новые опции на лету
        });
         
    
                function iformat(icon, badge,) {
                    var originalOption = icon.element;
                    var originalOptionBadge = $(originalOption).data('badge');
                 
                    return $('<span><i class="fa ' + $(originalOption).data('icon') + '"></i> ' + icon.text + '<span class="badge">' + originalOptionBadge + '</span></span>');
                }
    </script>

<script src='<%=request.getContextPath()+"/js/formSteps.js"%>'>
</script>

<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()+"/css/formSteps.css"%>'>
