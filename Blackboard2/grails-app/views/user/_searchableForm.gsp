
<%@ page import="org.springframework.util.ClassUtils" %>
<%@ page import="grails.plugin.searchable.internal.lucene.LuceneUtils" %>
<%@ page import="grails.plugin.searchable.internal.util.StringQueryUtils" %>

    <script type="text/javascript">
        var focusQueryInput = function() {
            document.getElementById("searchText").focus();
        }
    </script>
    
<g:form controller= "course" action= "searchableView" id="searchableView" name="searchableView" method="get">
        <g:textField name="searchText" value="${params.searchText}" size="50"/> <input type="submit"  class="btn btn-primary" value="Search" />
 </g:form>
 
 




  <div id="main">
    <g:set var="haveQuery" value="${params.searchText?.trim()}" />
    <g:set var="haveResults" value="${searchResult?.results}" />
    <div class="title">
      <span>
        <g:if test="${haveQuery && haveResults}">
          Showing <strong>${searchResult.offset + 1}</strong> - <strong>${searchResult.results.size() + searchResult.offset}</strong> of <strong>${searchResult.total}</strong>
          results for <strong>${params.searchText}</strong>
        </g:if>
        <g:else>
 
        </g:else>
      </span>
    </div>

    <g:if test="${haveQuery && !haveResults && !parseException}">
      <p>Nothing matched your query - <strong>${params.searchText}</strong></p>
      
    </g:if>

    

    <g:if test="${parseException}">
      <p>Your query - <strong>${params.searchText}</strong> - is not valid.</p>
    </g:if>
    
    <br></br>
    <g:if test="${haveResults}">
      <div class="results">
        <g:each var="result" in="${searchResult.results}" status="index">
          <div class="result">
            <g:set var="className" value="${ClassUtils.getShortName(result.getClass())}" />
  
            <g:set var="link" value="${createLink(controller: className[0].toLowerCase() + className[1..-1], action: 'show', id: result.id)}" />
            <div class="name"><a href="${link}">${className} #${result.id}</a></div>
            <g:set var="desc" value="${result.toString()}" />
            <g:if test="${desc.size() > 120}"><g:set var="desc" value="${desc[0..120] + '...'}" /></g:if>
            <div class="desc">${desc.encodeAsHTML()}</div>
            <div class="displayLink">${link}</div>
          </div>
        </g:each>
      </div>

        
    </g:if>
    
    
  </div>


