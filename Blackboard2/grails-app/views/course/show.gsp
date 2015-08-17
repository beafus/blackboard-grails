
<%@ page import="blackboard2.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	
	<body>
		
		<div id="show-course" class="content scaffold-show" role="main">
		
				<g:if test="${courseInstance?.title}">
				<h1>Course:  ${courseInstance?.title}</h1>	
				</g:if>
				<br></br>
				
			   <ul class="property-list course">
			
				<g:if test="${courseInstance?.creditHours}">
				<li class="fieldcontain">
					<span id="creditHours-label" class="property-label"><g:message code="course.creditHours.label" default="Credit Hours" />:   </span>
					
					<span class="property-value" aria-labelledby="creditHours-label"><g:fieldValue bean="${courseInstance}" field="creditHours"/></span>
					
				</li>
				</g:if>
				<br></br>
			
				<g:if test="${courseInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="course.description.label" default="Description" />:   </span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${courseInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			
			
			</ul>
		
		</div>
	</body>
</html>
