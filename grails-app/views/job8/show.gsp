
<%@ page import="researchgrails4.Job8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'job8.label', default: 'Job8')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-job8" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-job8" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list job8">
			
				<g:if test="${job8Instance?.cdiFile}">
				<li class="fieldcontain">
					<span id="cdiFile-label" class="property-label"><g:message code="job8.cdiFile.label" default="Cdi File" /></span>
					
						<span class="property-value" aria-labelledby="cdiFile-label"><g:fieldValue bean="${job8Instance}" field="cdiFile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.externalJobId}">
				<li class="fieldcontain">
					<span id="externalJobId-label" class="property-label"><g:message code="job8.externalJobId.label" default="External Job Id" /></span>
					
						<span class="property-value" aria-labelledby="externalJobId-label"><g:fieldValue bean="${job8Instance}" field="externalJobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.hidden}">
				<li class="fieldcontain">
					<span id="hidden-label" class="property-label"><g:message code="job8.hidden.label" default="Hidden" /></span>
					
						<span class="property-value" aria-labelledby="hidden-label"><g:formatBoolean boolean="${job8Instance?.hidden}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.jobDir}">
				<li class="fieldcontain">
					<span id="jobDir-label" class="property-label"><g:message code="job8.jobDir.label" default="Job Dir" /></span>
					
						<span class="property-value" aria-labelledby="jobDir-label"><g:fieldValue bean="${job8Instance}" field="jobDir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="job8.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${job8Instance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.numTimeSteps}">
				<li class="fieldcontain">
					<span id="numTimeSteps-label" class="property-label"><g:message code="job8.numTimeSteps.label" default="Num Time Steps" /></span>
					
						<span class="property-value" aria-labelledby="numTimeSteps-label"><g:fieldValue bean="${job8Instance}" field="numTimeSteps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.percentage}">
				<li class="fieldcontain">
					<span id="percentage-label" class="property-label"><g:message code="job8.percentage.label" default="Percentage" /></span>
					
						<span class="property-value" aria-labelledby="percentage-label"><g:fieldValue bean="${job8Instance}" field="percentage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.powerflowVersion}">
				<li class="fieldcontain">
					<span id="powerflowVersion-label" class="property-label"><g:message code="job8.powerflowVersion.label" default="Powerflow Version" /></span>
					
						<span class="property-value" aria-labelledby="powerflowVersion-label"><g:fieldValue bean="${job8Instance}" field="powerflowVersion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.rank}">
				<li class="fieldcontain">
					<span id="rank-label" class="property-label"><g:message code="job8.rank.label" default="Rank" /></span>
					
						<span class="property-value" aria-labelledby="rank-label"><g:fieldValue bean="${job8Instance}" field="rank"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.submissionTime}">
				<li class="fieldcontain">
					<span id="submissionTime-label" class="property-label"><g:message code="job8.submissionTime.label" default="Submission Time" /></span>
					
						<span class="property-value" aria-labelledby="submissionTime-label"><g:formatDate date="${job8Instance?.submissionTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.summaryFlag}">
				<li class="fieldcontain">
					<span id="summaryFlag-label" class="property-label"><g:message code="job8.summaryFlag.label" default="Summary Flag" /></span>
					
						<span class="property-value" aria-labelledby="summaryFlag-label"><g:formatBoolean boolean="${job8Instance?.summaryFlag}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.timeStep}">
				<li class="fieldcontain">
					<span id="timeStep-label" class="property-label"><g:message code="job8.timeStep.label" default="Time Step" /></span>
					
						<span class="property-value" aria-labelledby="timeStep-label"><g:fieldValue bean="${job8Instance}" field="timeStep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.timeToFinish}">
				<li class="fieldcontain">
					<span id="timeToFinish-label" class="property-label"><g:message code="job8.timeToFinish.label" default="Time To Finish" /></span>
					
						<span class="property-value" aria-labelledby="timeToFinish-label"><g:fieldValue bean="${job8Instance}" field="timeToFinish"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.timeToStart}">
				<li class="fieldcontain">
					<span id="timeToStart-label" class="property-label"><g:message code="job8.timeToStart.label" default="Time To Start" /></span>
					
						<span class="property-value" aria-labelledby="timeToStart-label"><g:fieldValue bean="${job8Instance}" field="timeToStart"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="job8.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${job8Instance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${job8Instance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="job8.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${job8Instance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:job8Instance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${job8Instance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
