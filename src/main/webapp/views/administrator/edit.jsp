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

<spring:message code="administrator.edit" var="edit" />
<spring:message code="administrator.userAccount.username" var="username" />
<spring:message code="administrator.userAccount.password" var="password" />
<spring:message code="administrator.name" var="name" />
<spring:message code="administrator.middleName" var="middleName" />
<spring:message code="administrator.surname" var="surname" />
<spring:message code="administrator.photo" var="photo" />
<spring:message code="administrator.email" var="email" />
<spring:message code="administrator.phone" var="phone" />
<spring:message code="administrator.address" var="address" />
<spring:message code="administrator.save" var="save" />
<spring:message code="administrator.cancel" var="cancel" />
<spring:message code="administrator.confirm" var="confirm" />
<spring:message code="administrator.phone.pattern1" var="phonePattern1" />
<spring:message code="administrator.phone.pattern2" var="phonePattern2" />
<spring:message code="administrator.phone.note" var="phoneNote" />

<security:authorize access="hasRole('ADMIN')">

	<form:form id="form" action="${requestURI}"
		modelAttribute="administrator">

		<%-- Forms --%>

		<form:hidden path="id" />
		
		<acme:textbox code="administrator.name" path="name"/>
		<acme:textbox code="administrator.middleName" path="middleName"/>
		<acme:textbox code="administrator.surname" path="surname"/>
		<acme:textbox code="administrator.photo" path="photo"/>
		<acme:textbox code="administrator.email" path="email" placeholder="mail.ph"/>
		<acme:textbox code="administrator.phone" path="phone" placeholder="phone.ph"/>
		<acme:textbox code="administrator.address" path="address"/>
		<jstl:out value="${phonePattern1}" />
		<br />
		<jstl:out value="${phonePattern2}" />
		<br />

		<%-- Buttons --%>

		<input type="submit" name="save" value="${save}"
			onclick="return confirm('${confirm}')" />&nbsp;
		
		<acme:cancel url="welcome/index.do" code="administrator.cancel" />
	</form:form>
</security:authorize>

<script type="text/javascript">
	function phoneCheck() {
		var form = document.getElementById("form");
		var phone = form["phone"].value;
		var regx1 = "^$|^\\+([1-9][0-9]{0,2}) (\\([1-9][0-9]{0,2}\\)) ([a-zA-Z0-9 -]{4,})$";
		var regx2 = "^$|^\\+([1-9][0-9]{0,2}) ([a-zA-Z0-9 -]{4,})$";
		var regx3 = "^$|^\\([a-zA-Z0-9 -]{4,})$";
		if (!phone.match(regx1) && !phone.match(regx2) && !phone.match(regx3))
			confirm('${check}');
	}
</script>