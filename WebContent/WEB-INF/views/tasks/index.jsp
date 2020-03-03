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

        <p><a href="${pageContext.request.contextPath}/new">新規タスクの投稿</a></p>

    </t:param>
</t:import>
