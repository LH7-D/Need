function getGkgl(){
	var gmjjhy2 = document.getElementById('gl');
    collectform.GKGL.value = gmjjhy2.options[gmjjhy2.selectedIndex].text;
}

window.onload = function(){
	$.getJSON("Gl1.action", function(data) {
		$("#gl").html("");
		$("#gl").append("<option value='---请选择---'></option>");
		$.each(data.fi, function(i, item) {
			alter(data.fi);
			$("#gl").append(
					"<option value='"+ item.bno+"'>"+item.bname+"</option>");
		});
	});
}
