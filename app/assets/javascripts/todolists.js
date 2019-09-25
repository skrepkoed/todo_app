

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
	let data = sessionStorage.getItem(checked)
console.log($(event.target).attr('value'));
console.log( sessionStorage)
console.log(checked)
if(checked.includes(check)){
 checked.splice(checked.indexOf(check))
 data.splice(checked.indexOf(check))

}else{checked.push(check)
sessionStorage.setItem('checked', checked);}

})
$('.icon-checkmark.collection').on('click', function(){

	let value = $(this).attr('value')
	 
$.ajax({
url : "/collections",
        type : "put",
        data : { data_value: JSON.stringify(sessionStorage)}

})


})
/* think about pin later*/

pin()



});