<%--
 * edit.jsp
 *
 * Copyright (C) 2019 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<%-- Stored message variables --%>

<spring:message code="member.create" var="create" />
<spring:message code="member.userAccount.username" var="username" />
<spring:message code="member.userAccount.password" var="password" />
<spring:message code="member.name" var="name" />
<spring:message code="member.middleName" var="middleName" />
<spring:message code="member.surname" var="surname" />
<spring:message code="member.photo" var="photo" />
<spring:message code="member.email" var="email" />
<spring:message code="member.phone" var="phone" />
<spring:message code="member.confirm" var="confirm" />
<spring:message code="member.delete" var="delete" />
<spring:message code="member.delete.confirm" var="msgConf" />

<spring:message code="member.address" var="address" />
<spring:message code="member.save" var="save" />
<spring:message code="member.cancel" var="cancel" />
<spring:message code="member.phone.pattern1" var="phonePattern1" />
<spring:message code="member.phone.pattern2" var="phonePattern2" />
<spring:message code="member.phone.note" var="phoneNote" />

<security:authorize access="isAnonymous() or hasRole('MEMBER')">

	<form:form id="form" action="${requestURI}" modelAttribute="member">

	<%-- Forms --%>

	<form:hidden path="id" />
	
	<acme:textbox code="member.name" path="name" />
	<acme:textbox code="member.middleName" path="middleName" />
	<acme:textbox code="member.surname" path="surname" />
	<acme:textbox code="member.photo" path="photo" />
	<acme:textbox code="member.email" path="email" placeholder="member.phMail" />
	<acme:textbox code="member.phone" path="phone" placeholder="member.phPhone" />
	<acme:textbox code="member.address" path="address" />
	
	<jstl:out value="${phonePattern1}" />
	<br />
	<jstl:out value="${phonePattern2}" />
	<br />
	
	<%-- Buttons --%>

	<input type="submit" name="save" value="${save}"
		onclick="return confirm('${confirm}')">&nbsp;
		
	<acme:cancel url="welcome/index.do" code="member.cancel" />

	</form:form>
</security:authorize>