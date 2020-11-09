<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${values}" var="requestItem">
	<tr>
				<td><c:out value="${requestItem.name}"></c:out></td>
						<td><c:out value="${requestItem.email}"></c:out></td>
								<td><c:out value="${requestItem.phone}"></c:out></td>
										<td><c:out value="${requestItem.message}"></c:out></td>
											</tr>
</c:forEach>
