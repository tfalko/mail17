<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Falko
  Date: 21/04/2020
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: Falko
  Date: 15/04/2020
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/fc153b3c9d.js" crossorigin="anonymous"></script>
    <title>Hello, world!</title>
</head>


<body class="">
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#"><i class="fab fa-less" style="size: 20px"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/login"><i class="fas fa-user"></i> Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/register" tabindex="-1" aria-disabled="true"><i class="fas fa-user-plus"></i> Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/item/stats" tabindex="-1" aria-disabled="true"><i class="fas fa-percentage"></i> Stats</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle"  id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-folder-plus"></i> Add Stuff</a>
                <div class="dropdown-menu" aria-labelledby="dropdown01">
                    <a class="dropdown-item" href="/item/form">Add Item</a>
                    <a class="dropdown-item" href="/category/form">Add Category</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle"  id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-eye"></i> Display stuff</a>
                <div class="dropdown-menu" aria-labelledby="dropdown02">
                    <a class="dropdown-item" href="/item/all">All items</a>
                    <a class="dropdown-item" href="/category/all">All categories</a>
                    <a class="dropdown-item" href="/item/archiveList">Archived items</a>
                </div>
            </li>

        </ul>
        <li class="nav-item my-2 my-lg-0">
            <a class="nav-link" href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </li>


    </div>
</nav>

<main role="main" class="container">
    <div class="position-relative" style="top:50px">
        <table class="table table-striped table-dark">

            <th>
                <tr>
                    <td>#</td>
                    <td>Name</td>
                    <td>Category</td>
                    <td>Importance</td>
                    <td>Action</td>
                </tr>
            </th>
            <c:forEach items="${archiveList}" var="item" varStatus="loopCounter">

                <tr class="accordion-toggle">
                    <td data-toggle="collapse" data-target="#collapseTwo"><c:out value="${loopCounter.count}"/></td>
                    <td data-toggle="collapse" data-target="#collapseTwo"><c:out value="${item.name}"/></td>
                    <td data-toggle="collapse" data-target="#collapseTwo"><c:out value="${item.category.name}"/></td>
                    <td data-toggle="collapse" data-target="#collapseTwo"><c:out value="${item.importance}"/></td>
                    <td data-toggle="collapse" data-target="#collapseTwo">
                        <a class="btn btn-outline-warning" href="<c:url value="/item/unarchive?id=${item.id}"/>" role="button">unarchive</a>


                    </td>



                </tr>
                <tr>
                    <td></td>
                    <td colspan="4">
                        <div id="collapseTwo" class="collapse in">
                            <b> Description: </b> <c:out value="${item.description}"/>
                        </div>
                    </td>
                </tr>

            </c:forEach>
            </tr>
        </table>
    </div>

</main><!-- /.container -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
<script src="/docs/4.4/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>
</body>
</html>
