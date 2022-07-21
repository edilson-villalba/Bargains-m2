function nuevaSubasta(){
	$("#formGrillaId").attr('action', 'Subastas');
	$("#accionId").val("NUEVA");
	$("#formGrillaId").submit();
}

$("#formSubastasId").submit(function(){

	var form = $("#formSubastasId").serializeArray();
	$("#accionId").val("GUARDAR");
	$.ajax({
		url:'Subastas', 
		data:form,
		success: function(data) {
                   alert('volvimos');
                 }
	});
});

function insertar(){
	var form = $("#formSubastasId").serializeArray();
	$("#accionId").val("GUARDAR");
	$.ajax({
		url:'Subastas', 
		data:form,
		success: function(data) {
                   alert('volvimos');
                 }
	});
	
}
