<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Enrol to the course you want</title>
		
	</head>
	
	
	
	<body>
	
		<div id="page-body" role="main">
			<h1>Select your subjects</h1>
			<br></br>
			

			<div class="row">
			<p>Select a subject to study!</p>
			
			<g:if test="${message}">
				<div class="well warning">
				${message}
				</div>
			</g:if>
			
			<g:if test="${enrolment}" >
			
				<div class="well info">
				
					<p>${user.userName } You successfully enrolled to the subject ${enrolment.course.title} </p>
					<p>The course is about:</p>
					<p> ${enrolment.course.description }</p>
			
				</div>
			</g:if>
			
			<g:form controller="Course" action="makeEnrolment">
				<g:select   class="btn btn-default" optionKey="id" name="courseId" from="${courses}"/>
				<g:submitButton  class="btn btn-primary" name="submit"/>		
			</g:form>
			
					
				
				
			</div>
			
			<br></br>
			<ul>
							
			   
			    <li><g:link controller="Course" action="enrolment_list">Your subjects</g:link></li>	
			    <li><g:link controller="Course" action="course_list">Check all the subjects</g:link></li>	
			 												
			</ul>
			
			
		</div>
		
		
		
		
		
		
	
		
	</body>
</html>