<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:import url="../layout/app.jsp">
    <t:param name="content">
        <h2>タスク新規作成ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/create">
            <t:import url="_form.jsp" />
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>

    </t:param>
</t:import>