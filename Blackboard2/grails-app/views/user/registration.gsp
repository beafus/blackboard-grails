<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to BlackBoard</title>
		
	
	</head>
	<body>
	
		
		
		<div id="page-body" role="main">
			<h1>Welcome to BlackBoard</h1>
			<br></br>			

			<div id="controller-list" role="navigation">
				<h2>Registration page:</h2>
				<br></br>	
				
					
			<g:if test="${message}">
				<div class="well warning">
				${message}
				</div>
			</g:if>
				
				<g:form controller="user">
				
				<p>Please enter a user name and a password.</p>
				
				<g:field type="text" placeholder="username" name="userName" min="5" max="10" required="" value="${userInstance?.userName}"/>

                <g:field type="password" placeholder="password" name="password" value="${userInstance?.password}"/>
			
                <g:actionSubmit value="Register" class="btn btn-primary" action="register"/>
                 </g:form>
				
					
				
						
			</div>
		
		  
		</div>
		
		
		
		
		
		
		
		
		
		
	</body>
</html>