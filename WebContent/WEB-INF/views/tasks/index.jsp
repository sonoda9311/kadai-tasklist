<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:import url="../layout/app.jsp">
    <t:param name="content">
        <t:if test="${flush != null}">
            <div id="flush_success">
                <t:out value="${flush}"></t:out>
            </div>
        </t:if>
        <h2>タスク一覧</h2>
        <ul>
            <t:forEach var="task" items="${tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <t:out value="${task.id}" />
                    </a>
                    :&gt; <t:out value="${task.content}" />
                </li>
            </t:forEach>
        </ul>

        <div id="pagination">
            (全 ${tasks_count} 件)<br />
            <t:forEach var="i" begin="1" end="${((tasks_count - 1) / 15) + 1}" step="1">
                <t:choose>
                    <t:when test="${i == page}">
                        <t:out value="${i}" />&nbsp;
                    </t:when>
                    <t:otherwise>
                        <a href="${pageContext.reauest.contextPath}/index?page=${i}"><t:out value="${i}" /></a>&nbsp;
                    </t:otherwise>
                </t:choose>
            </t:forEach>
        </div>
        <p><a href="${pageContext.request.contextPath}/new">新規タスクの投稿</a></p>

    </t:param>
</t:import>
