<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<t:import url="../layout/app.jsp">
    <t:param name="content">
        <h2>id : ${task.id} のタスク編集ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/update">
            <t:import url="_form.jsp" />
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="#" onclick="confirmDestroy();">このタスクを削除する</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/destroy">
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
        function confirmDestroy() {
            if(confirm("本当に削除してよろしいですか？")) {
                document.form[1].submit();
            }
        }
        </script>

    </t:param>
</t:import>