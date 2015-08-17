	
		
        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="Please Login" /></h1>
       
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${userInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form controller="user" action="authenticate" >
                <fieldset class="form">
                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} ">
                        <label for="userName">
                            <g:message code="user.userName.label" default="User Name" />
                            
                        </label>
                        <g:textField name="userName"  placeholder="username" value="${userInstance?.userName}"/>
                    </div>
                    
                    <div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'password', 'error')} ">
                        <label for="password">
                            <g:message code="user.password.label" default="Password" />
                            
                        </label>
                        <g:field type="password" placeholder="password" name="password" value="${userInstance?.password}"/>
                    </div>
                </fieldset>
            
                <fieldset class="buttons">
                    <g:submitButton name="login" class="btn btn-primary" value="Login" />
                </fieldset>
            </g:form>
        </div>