<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to BlackBoard</title>
		
	
	</head>
	<body>
	
		
		
		<div id="page-body" role="main">
			<h1>Welcome to BlackBoard</h1>			

			<div id="controller-list" role="navigation">
				
			<h2>List of all courses</h2>
			<br></br>
					
				<g:each var="course" in="${courses}">
				
				<ul>
				
   				 <p><b>Title:</b> ${course.title}</p>
   			 	
   			 	<p>Description: ${course.description}</p>
   			 	<p>Credit hours: ${course.creditHours}</p>
   			 	<br><br/>
   			 	</ul>
   			 	
				</g:each>
						
			</div>
		
		  
		</div>
		
		
		
		
		
		
		
		
		
		
	</body>
</html>