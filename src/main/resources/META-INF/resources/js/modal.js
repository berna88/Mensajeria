var modal;
	var img= '<%=request.getContextPath()+"/img/notificuervo.svg" %>';
	YUI().use(
	 'aui-modal',
	 function(Y) {
	   modal = new Y.Modal(
	     {
	       bodyContent: '<h3>Tu solicitud ha sido enviada con éxito</h3>',
	       centered: true,
	       destroyOnHide: false,
	       headerContent: '<img style =" display: block; margin: auto;"src="'+img+'" alt="" height="42" width="42">',
	       modal: true,
	       render: '#modal',
	       resizable: {
	         handles: 'b, r'
	       },
	       toolbars: {
	         body: [
	           
	         ]
	       },
	       visible: false,
	       width: 650
	     }
	   ).render();
	 }
	);