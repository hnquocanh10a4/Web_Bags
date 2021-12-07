<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag import="org.springframework.util.StringUtils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="pagedListHolder" required="true"
	type="org.springframework.beans.support.PagedListHolder"%>
<%@ attribute name="pagedLink" required="true" type="java.lang.String"%>
<!-- <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
<c:if test="${pagedListHolder.pageCount > 1}">
	<ul>
		<c:if test="${!pagedListHolder.firstPage}">
			<li class="current-page"><a 
				href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage() - 1))%>">Pre</a></li>
		</c:if>
		<c:if test="${pagedListHolder.firstLinkedPage > 0}">
			<li class="current-page"><a  href="<%=StringUtils.replace(pagedLink, "~", "0")%>">1</a></li>
		</c:if>
		<c:if test="${pagedListHolder.firstLinkedPage > 1}">
			<li class="current-page"><span class="pagingDots">...</span>
			<li>
		</c:if>
		<c:forEach begin="${pagedListHolder.firstLinkedPage}"
			end="${pagedListHolder.lastLinkedPage}" var="i">
			<c:choose>
				<c:when test="${pagedListHolder.page == i}">
					<li class="current-page active"><a  
					href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(jspContext.getAttribute("i")))%>">${i+1}</a></li>
				</c:when>
				<c:otherwise>
					<li><a 
						href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(jspContext.getAttribute("i")))%>">${i+1}</a>
					</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if
			test="${pagedListHolder.lastLinkedPage < pagedListHolder.pageCount - 2}">
			<li class="current-page"><span class="pagingDots">...</span></li>
		</c:if>
		<c:if
			test="${pagedListHolder.lastLinkedPage < pagedListHolder.pageCount - 1}">
			<li class="current-page"><a 
				href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPageCount() - 1))%>">${pagedListHolder.pageCount}</a></li>
		</c:if>
		<c:if test="${!pagedListHolder.lastPage}">
			<li class="current-page"><a 
				href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage() + 1))%>">Next</a></li>
		</c:if>
	</ul>
</c:if>