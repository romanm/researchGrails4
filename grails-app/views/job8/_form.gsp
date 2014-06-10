<%@ page import="researchgrails4.Job8" %>



<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'cdiFile', 'error')} required">
	<label for="cdiFile">
		<g:message code="job8.cdiFile.label" default="Cdi File" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cdiFile" required="" value="${job8Instance?.cdiFile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'externalJobId', 'error')} required">
	<label for="externalJobId">
		<g:message code="job8.externalJobId.label" default="External Job Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="externalJobId" type="number" value="${job8Instance.externalJobId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'hidden', 'error')} ">
	<label for="hidden">
		<g:message code="job8.hidden.label" default="Hidden" />
		
	</label>
	<g:checkBox name="hidden" value="${job8Instance?.hidden}" />

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'jobDir', 'error')} required">
	<label for="jobDir">
		<g:message code="job8.jobDir.label" default="Job Dir" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="jobDir" required="" value="${job8Instance?.jobDir}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="job8.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${job8Instance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'numTimeSteps', 'error')} required">
	<label for="numTimeSteps">
		<g:message code="job8.numTimeSteps.label" default="Num Time Steps" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numTimeSteps" type="number" value="${job8Instance.numTimeSteps}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'percentage', 'error')} required">
	<label for="percentage">
		<g:message code="job8.percentage.label" default="Percentage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentage" type="number" value="${job8Instance.percentage}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'powerflowVersion', 'error')} required">
	<label for="powerflowVersion">
		<g:message code="job8.powerflowVersion.label" default="Powerflow Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="powerflowVersion" required="" value="${job8Instance?.powerflowVersion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'rank', 'error')} required">
	<label for="rank">
		<g:message code="job8.rank.label" default="Rank" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rank" type="number" value="${job8Instance.rank}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'submissionTime', 'error')} required">
	<label for="submissionTime">
		<g:message code="job8.submissionTime.label" default="Submission Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="submissionTime" precision="day"  value="${job8Instance?.submissionTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'summaryFlag', 'error')} ">
	<label for="summaryFlag">
		<g:message code="job8.summaryFlag.label" default="Summary Flag" />
		
	</label>
	<g:checkBox name="summaryFlag" value="${job8Instance?.summaryFlag}" />

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'timeStep', 'error')} required">
	<label for="timeStep">
		<g:message code="job8.timeStep.label" default="Time Step" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeStep" type="number" value="${job8Instance.timeStep}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'timeToFinish', 'error')} required">
	<label for="timeToFinish">
		<g:message code="job8.timeToFinish.label" default="Time To Finish" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeToFinish" value="${fieldValue(bean: job8Instance, field: 'timeToFinish')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'timeToStart', 'error')} required">
	<label for="timeToStart">
		<g:message code="job8.timeToStart.label" default="Time To Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeToStart" value="${fieldValue(bean: job8Instance, field: 'timeToStart')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="job8.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="type" type="number" value="${job8Instance.type}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: job8Instance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="job8.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${job8Instance?.username}"/>

</div>

