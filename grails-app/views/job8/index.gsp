<%@ page import="researchgrails4.AppUtil" %>
<%@ page import="researchgrails4.TimeFilter" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'job8.label', default: 'Job8')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-job8" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-job8" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div>
				<a href="?researchSubmissionTime=1">
					research sort submissionTime
				</a>
				<div>
				<g:each in="${TimeFilter.values()}" status="i" var="timeFilter">
					<a href="?researchSubmissionTime=1&timeFilter=${timeFilter}" >
						${timeFilter}
					</a>
					<span>-</span>
				</g:each>
				</div>
				<% now = new Date() %>
				now = <%= now %>
		</div>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cdiFile" title="${message(code: 'job8.cdiFile.label', default: 'Cdi File')}" />
					
						<g:sortableColumn property="externalJobId" title="${message(code: 'job8.externalJobId.label', default: 'External Job Id')}" />
					
						<g:sortableColumn property="hidden" title="${message(code: 'job8.hidden.label', default: 'Hidden')}" />
					
						<g:sortableColumn property="jobDir" title="${message(code: 'job8.jobDir.label', default: 'Job Dir')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'job8.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="numTimeSteps" title="${message(code: 'job8.numTimeSteps.label', default: 'Num Time Steps')}" />
					
						<g:sortableColumn property="submissionTime" title="${message(code: 'job8.submissionTime.label', default: 'submissionTime')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${job8InstanceList}" status="i" var="job8Instance">
					<g:each in="${TimeFilter}" var="timeFilter">
						<g:if test="${AppUtil.afterTwoday(previosJob8, timeFilter ,job8Instance) }">
							<tr> <td colspan=7> ${timeFilter} </td> </tr>
						</g:if>
					</g:each>
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${job8Instance.id}">${fieldValue(bean: job8Instance, field: "cdiFile")}</g:link></td>
					
						<td>${fieldValue(bean: job8Instance, field: "externalJobId")}</td>
					
						<td><g:formatBoolean boolean="${job8Instance.hidden}" /></td>
					
						<td>${fieldValue(bean: job8Instance, field: "jobDir")}</td>
					
						<td>${fieldValue(bean: job8Instance, field: "name")}</td>
					
						<td>${fieldValue(bean: job8Instance, field: "numTimeSteps")}</td>
					
						<td>${fieldValue(bean: job8Instance, field: "submissionTime")}
						</td>
					
					</tr>
					<g:set var="previosJob8" value="${job8Instance}" />
					<g:set var="previosInTwoDay" value="${now.before(job8Instance.submissionTime+2)}" />
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${job8InstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
