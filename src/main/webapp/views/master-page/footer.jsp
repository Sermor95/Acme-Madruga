<%--
 * footer.jsp
 *
 * Copyright (C) 2019 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:useBean id="date" class="java.util.Date" />

<hr />

	<a href="welcome/privacy.do"> <spring:message code="master.page.legislation.privacy" /></a> -
	<a href="welcome/terms.do"> <spring:message code="master.page.legislation.terms" /></a> - 
	<a href="welcome/about.do"> <spring:message code="master.page.legislation.about" /></a> - 

<b>Copyright &copy; <fmt:formatDate value="${date}" pattern="yyyy" /> Acme-Madruga Co., Inc.</b>