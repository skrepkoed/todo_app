

$(document).ready(function(){
var items=[]


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
	
	let check= +$(event.target).attr('value')
	let index = items.indexOf(check)
console.log($(event.target).attr('value'));

console.log(index)
if (index!==-1){
items.splice(index)

}else{
items.push(check)}
console.log(items)
      
})
$(document).on('click', '#collection', function(event){
$('#some_ids').val(items);

})

$(document).on('click', '#del_collection', function(event){
$('#some_ids_del').val(items);
items=[]

})

/* think about pin later*/

pin()



});