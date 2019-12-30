/**
 * 
 */

	$(document).ready(function(){
		
		$.datepicker.regional['es'] = {
				closeText: 'Cerrar',
				prevText: '< Ant',
				nextText: 'Sig >',
				currentText: 'Hoy',
				monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
				monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
				dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
				dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
				dayNamesMin: ['D','L','M','M','J','V','S'],
				weekHeader: 'Sm',
				dateFormat: 'dd/mm/yy',
				firstDay: 1,
				isRTL: false,
				showMonthAfterYear: false,
				yearSuffix: ''
		};
		
		var inputFecha = $( "#fechaInicio" );
		var changeCloseButton = function(input) {
			console.log('fechaInicio');
			setTimeout(function() {
				console.log('changeCloseButton ', input);
		        var headerPanel = inputFecha.datepicker( "widget" ).find( ".ui-datepicker-title" );
		        var closeBtn = $('<button style=\"position:relative; left: 90%;border: none;background: none; color: #CDB874;outline: none;padding: 10px;\">X</button>');
		        
		        closeBtn.bind("click", function() {
		        	$( "#fechaRegreso" ).datepicker( "hide" );
		        });
		        
		        closeBtn.prependTo(headerPanel);
		    }, 1000 );
		};
		
		$( "#fechaInicio" ).datepicker({
			changeMonth: true,
            changeYear: true,
            hideIfNoPrevNext: true,
            minDate: 0,
            dateFormat: "yy-mm-dd",
			beforeShow: changeCloseButton,			
			onChangeMonthYear: changeCloseButton
		}).focus(function () {
	        $(".ui-datepicker-next").hide();
	        $(".ui-datepicker-prev").hide();
	    });
		
		$("#datepicker2").datepicker({
			 showButtonPanel: true,
			 beforeShow: function( input ) {
			 	setTimeout(function() {
			   		var buttonPane = $( input ).datepicker( "widget" ).find( ".ui-datepicker-buttonpane" );

			   		var btn = $('Clear');
			   		btn.unbind("click").bind("click", function () { 
			   			$.datepicker._clearDate( input );
			  		});

			   		btn.appendTo( buttonPane );

			 }, 1 );
			      }
			});
		
		$( "#fechaRegreso" ).datepicker({
			changeMonth: true,
            changeYear: true,
            hideIfNoPrevNext: true,
            minDate: 0,
            dateFormat: "yy-mm-dd",
            beforeShow: function( input ) {
            	console.log('fechaRegreso beforeShow');
            	setTimeout(function() {
    		        var headerPanel = $(input).datepicker( "widget" ).find( ".ui-datepicker-title" );
    		        var closeBtn = $('<button style=\"position:relative; left: 90%;border: none;background: none; color: #CDB874;outline: none;padding: 10px;\">X</button>');
    		        
    		        closeBtn.bind("click", function() {
    		        	$( "#fechaRegreso" ).datepicker( "hide" );
    		        });
    		        
    		        closeBtn.prependTo(headerPanel);
    		    }, 300 );
            },
			onChangeMonthYear: function( input ) {
				console.log('fechaRegreso onChangeMonthYear');
				setTimeout(function() {
			        var headerPanel = $(input).datepicker( "widget" ).find( ".ui-datepicker-title" );
			        var closeBtn = $('<button style=\"position:relative; left: 90%;border: none;background: none; color: #CDB874;outline: none;padding: 10px;\">X</button>');
			        
			        closeBtn.bind("click", function() {
			        	$( "#fechaRegreso" ).datepicker( "hide" );
			        });
			        
			        closeBtn.prependTo(headerPanel);
			    }, 200 );
            },
		}).focus(function () {
	        $(".ui-datepicker-next").hide();
	        $(".ui-datepicker-prev").hide();
	    });		
		
		$.datepicker.setDefaults($.datepicker.regional['es']);
	});