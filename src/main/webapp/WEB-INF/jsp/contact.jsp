<%@ include file="init.jsp"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style type="text/css">
.data, .data td {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #aaa;
	margin: 2px;
	padding: 2px;
}

.data th {
	font-weight: bold;
	background-color: #5C82FF;
	color: white;
}

.error {
	color: #FF0000;
	font-weight: bold;
}
</style>
<h2>Contact Manager</h2>

<portlet:actionURL var="addContactURL">
	<portlet:param name="action" value="add"></portlet:param>
</portlet:actionURL>

<portlet:actionURL var="deleteContactURL">
	<portlet:param name="action" value="delete"></portlet:param>
</portlet:actionURL>

<form:form name="contact" modelAttribute="contact" method="post"
	action="${addContactURL}">
	<table>
		<tr>
			<td><form:label path="firstname">First Name</form:label></td>
			<td><form:input path="firstname" /></td>
			<td><form:errors cssClass="error" path="firstname" /></td>
		</tr>
		<tr>
			<td><form:label path="lastname">Last Name</form:label></td>
			<td><form:input path="lastname" /></td>
		</tr>
		<tr>
			<td><form:label path="email">Email</form:label></td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td><form:label path="telephone">Telephone</form:label></td>
			<td><form:input path="telephone" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Add Contact" /></td>
		</tr>
	</table>
</form:form>

<h3>Contacts</h3>

<c:if test="${!empty contactList}">
	<table class="data">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Telephone</th>
			<th>#</th>
		</tr>
		<c:forEach items="${contactList}" var="contact">
			<tr>
				<td>${contact.lastname},${contact.firstname}</td>
				<td>${contact.email}</td>
				<td>${contact.telephone}</td>
				<td><a href="${deleteContactURL}&contactId=${contact.id}">delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>

</body>
</html>
