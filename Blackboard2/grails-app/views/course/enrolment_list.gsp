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
				<h2>List of your courses</h2>
				<br></br>
				<ul>
				
				
				
				
				
   			 	
			
			
				
				<g:if test="${enrolments}" >
				<p>You have enrolled to:  </p>
				
				<g:each var="enrolment" in="${enrolments}">
				<div class="well info">	
				<br>	 
					<p><b>${enrolment.course.title}</b></p>
					<p>Credit hours: ${enrolment.course.creditHours }</p>
					<p>The course is about ${enrolment.course.description }</p>
					</br>
				</div>
				</g:each>
				</g:if>
				
			
				
													
				</ul>
			</div>
		
		  
		</div>
		
		
		
	
		
	</body>
</html>