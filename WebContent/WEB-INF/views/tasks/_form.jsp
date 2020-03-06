<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <t:forEach var="error" items="${errors}">
            <t:out value="${error}" /><br />
        </t:forEach>

    </div>
</t:if>

<label for="content">タスク</label><br />
<input type="text" name="content" value="${task.content}" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>
