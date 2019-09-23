

$(document).ready(function(){
$("#list").on( "click", function(event){
	if($(event.target).parent().hasClass("todolist1")){ 
$(event.target).parent().find(".edit input").trigger("click");
	}
	if ($(event.target).hasClass("todolist1")) {
	$(event.target).find(".edit input").trigger("click");	
		
	}
});
$('#todolist_title').on('click', function(event){

$('.spoiler').css('display','flex').fadeIn('slow');

})




});