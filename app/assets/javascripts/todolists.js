

$(document).ready(function(){
let checked=[]
sessionStorage.setItem('checked', checked);
$("#list").on( "click", function(event){

	if($(event.target).not($('.icon-checkmark')).parent().hasClass("todolist1")){ 
$(event.target).parent().find(".edit input").trigger("click");
	}
	if ($(event.target).not($('.icon-checkmark')).hasClass("todolist1")) {
	$(event.target).find(".edit input").trigger("click");	
		
	}
});
$('.container #todolist_title').on('click', function(event){

$('.spoiler').css('display','flex').fadeIn('slow');

})
$(document).on('click', '.icon-checkmark', function(event){
	event.preventDefault()
	event.stopPropagation();
	let check= $(event.target).attr('value')
console.log($(event.target).attr('value'))
if(checked.includes(check)){
 checked.splice([checked.indexOf(check)])
}else{checked.push(check)
sessionStorage.setItem('checked', checked);}

})

/* think about pin later*/

pin()



});