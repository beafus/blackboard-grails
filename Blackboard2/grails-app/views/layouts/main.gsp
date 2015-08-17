<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Blackboard</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'logo.ong')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'black.jpg')}">
  		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
		
		<style type="text/css" media="screen">
		
		
			body {
        padding-top: 20px;
        padding-bottom: 40px;
        margin-left: 80px;
        margin-right: 80px;
      }

    
		</style>
		
		
		
	</head>
	<body>
	
	<div class="container-narrow">

 <div class="masthead">
   <ul class="nav nav-pills pull-right">
        
       
               
         	
		<g:if test="${!session.user}">
        	 <li class="active"><a href="${createLink(uri: '/')}">Home</a></li>   	
    	</g:if>
    	<g:else>
    		 <li>
       		 <g:form controller="user">
         		<g:actionSubmit name="homepage" class="btn btn-primary" value="Your Page" action="homePage" />
         	 </g:form>
         	</li> 
         	 <li>
       		 <g:form controller="course">
         		<g:actionSubmit name="enroll" class="btn btn-primary" value="Enroll to a course" action="enrolment" />
         	 </g:form>
         	</li>  
         	 <li>
       		 <g:form controller="course">
         		<g:actionSubmit name="enrolllist" class="btn btn-primary" value="Your courses" action="enrolment_list" />
         	 </g:form>
         	</li>     	
    	</g:else>
    	 <li>
        <g:form controller="course">
         <g:actionSubmit controller="course" name="courselist" class="btn btn-primary" value="Courses" action="course_list" />
         </g:form>
         </li>
       
   </ul>
  <h3 class="muted">Blackboard </h3>
     </div>

  <hr>

 <div align="center"   class="jumbotron">
 <h1>Welcome to Blackboard</h1>
 <asset:image src="logo.png"  />
  <p class="lead">The perfect platform for all students!</p>
   <g:form controller="user">
   <g:actionSubmit name="courselist" class="btn btn-large btn-success" value="Register" action="registration" />
   </g:form>
 </div>
 <div align="right" >
		<g:render template="searchableForm"></g:render>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<hr>
		</div>
	
	
		
		<g:layoutBody/>
		<div class="footer" role="contentinfo">
		
		
		
		<br></br>
		<hr>
		<g:if test="${!session.user}">
 
     	<g:render template="loginForm"></g:render>
    	</g:if>
    	<g:else>
    
     	<g:render template="logOutForm"></g:render>
    	</g:else>
		
		</div>
		
		<br></br>
		
	
	</body>
</html>
