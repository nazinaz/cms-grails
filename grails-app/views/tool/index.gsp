
<%@ page import="com.chefkoochooloo.dao.Tool" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tool.label', default: 'Tool')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tool" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tool" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'tool.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'tool.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${toolInstanceList}" status="i" var="toolInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${toolInstance.id}">${fieldValue(bean: toolInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: toolInstance, field: "url")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${toolInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
