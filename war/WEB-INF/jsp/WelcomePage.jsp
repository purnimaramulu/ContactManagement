<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<section id="main" data-module="list">

		<div class="container">
		<table>
		<td class="contactslist"></td>
		</table>	
		</div>
	</div>


<script>
$( document ).ready(function() {

	$.ajax({
 	 	type: 'GET',
 		url: "/list",
 		dataType: 'text', 
		contentType:"application/json" ,
		 
		success: function(data){
			
			var htmlElement = "";
			console.log(data)
			var jsonData = JSON.parse(data) 

			for(var i=0; i<jsonData.length; i++){
							
				var object = jsonData[i].propertyMap; //You are in the current object
			     htmlElement += '<table>'		 
				  +'<td id='+object.name+' class="elements"><h5>'+object.email+'<br>'+object.name+'</h5></input></td>'
				  '<table>';
                  $('.contactslist').html(htmlElement);
				}
		 
			}
				
		 });
	});
</script>


</html>
