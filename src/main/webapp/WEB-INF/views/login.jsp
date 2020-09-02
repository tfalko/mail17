<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="bootstrap_head.jsp"/>

<body>

<jsp:include page="navbar.jsp"/>

<div class="text-center">
<main role="main" class="container">
    <div class="">
        <div class="container pt-4 pb-4">
            <div class="border-dashed view-height">
                <div class="container w-25" style="text-align: center">

        <form:form method="post" modelAttribute="user">
            <form:hidden path="id" />
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <div><label> User Name:<input type="text" name="username"/> </label></div>
            <div><label> Password: <input type="password" name="password"/> </label></div>
            <button class="btn btn-lg btn-primary btn-block" style="align-self: center" type="submit">Sign in</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form:form>
    </div>
    </div>
        </div></div>

</main>

<jsp:include page="bootstrap_foot.jsp"/>

</body>
</html>
