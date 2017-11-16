<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<header>Welcome to my site</header>
	
	
	

<form id="form" class="topBefore" action="/submit" method="post">
		
		  <input id="name" type="text"  name ="name" placeholder="NAME">
		  <input id="email" type="text" name = "email" placeholder="E-MAIL">
		  <input id="mobilenumber" type="number"name = "mobilenumber" placeholder="Mobile">
		
		  <input id="Adress" name ="Adress" type="text" placeholder="Adress"></input>
  <input id="submit" type="submit" value="GO!">
  
</form>

<style>

input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
  color: #aca49c;
  font-size: 0.875em;
}

body {
  font-family: serif;
  background: #e2dedb;
  color: #b3aca7;
}

header {
  position: relative;
  margin: 100px 0 25px 0;
  font-size: 2.3em;
  text-align: center;
  letter-spacing: 7px;
}

#form {
  position: relative;
  width: 500px;
  margin: 50px auto 100px auto;
}

input {
  font-family: 'Lato', sans-serif;
  font-size: 0.875em;
  width: 470px;
  height: 50px;
  padding: 0px 15px 0px 15px;
  
  background: transparent;
  outline: none;
  color: #726659;
  
  border: solid 1px #b3aca7;
  border-bottom: none;
  
  transition: all 0.3s ease-in-out;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
}

input:hover {
  background: #b3aca7;
  color: #e2dedb;
}

textarea {
  width: 470px;
  max-width: 470px;
  height: 110px;
  max-height: 110px;
  padding: 15px;
  
  background: transparent;
  outline: none;
  
  color: #726659;
  font-family: 'Lato', sans-serif;
  font-size: 0.875em;
  
  border: solid 1px #b3aca7;
  
  transition: all 0.3s ease-in-out;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
}

textarea:hover {
  background: #b3aca7;
  color: #e2dedb;
}

#submit {
  width: 470px;
  
  padding: 0;
  margin: -5px 0px 0px 0px;
  
  font-family: 'Lato', sans-serif;
  font-size: 0.875em;
  color: #b3aca7;
  
  outline:none;
  cursor: pointer;
  
  border: solid 1px #b3aca7;
  border-top: none;
}

#submit:hover {
  color: #e2dedb;
}
</style>

<script>

		$( "#submit" ).click(function( event ) {

					var val = $("#name").val();
					var val2 = $("#email").val();
					
					var mobilenumber = $("#mobilenumber").val();
					var data = {"name": val,"email": val2, "mobilenumber": mobilenumber};
					var json = JSON.parse(data);
					
					console.log(val);
					$.ajax({
						url:"/submit",
						type:"POST",
						success:function(data){
							console.log("i am here");
							var myData = JSON.parse(data);
							alert(data);
							
						}
						
					});
	
				});
</script>
</html>