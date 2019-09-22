

$(document).ready(function(){
$("#list").on( "click", function(event){
	if($(event.target).parent().hasClass("todolist1")){ 
$(event.target).parent().find(".edit input").trigger("click");
	}
	if ($(event.target).hasClass("todolist1")) {
	$(event.target).find(".edit input").trigger("click");	
		
	}
});




});