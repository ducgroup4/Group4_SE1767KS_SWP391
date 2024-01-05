
<jsp:useBean id="helper" class="helper.helper"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Manager Page-DAPMLShop</title>
                <link rel="shortcut icon" type="image/png" href="assets/images/logo_2.png"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <jsp:include page="component/manager/head.jsp"></jsp:include>
        </head>
    <jsp:include page="component/manager/header.jsp"></jsp:include>
        <body>
            <div class="container-fluid position-relative bg-white d-flex p-0">
            <jsp:include page="component/manager/slidebar.jsp"></jsp:include>
                <!-- Content Start -->
                <div class="content">
                    <div class="container-xxl">
                    <jsp:include page="component/manager/navbar.jsp"></jsp:include>
                        <!-- Sale & Revenue Start -->
                        <div class="container pt-4 px-4">
                            <div class="row">
                                <div class="card">
                                    <div class="card-body">
                                        <form id="filterForm" action="ManagerNews" method="get">
                                        <input type="hidden" name="page" value="${requestScope.paging.page}">
                                        <div class="row">
                                            <div class="col-sm-10">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label>News Name</label>
                                                        <input class="form-control" type="text" name="search" value="${param.search}">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>News Types</label>
                                                            <select name="type" class="form-select" aria-label="Default select example">
                                                                <option value="${param.type}" selected="">${param.type}</option>
                                                                <option value="" selected="">All Types</option>
                                                                <c:forEach items="${requestScope.types}" var="b">
                                                                    <option value="${b.type_name}">${b.type_name}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="row justify-content-center">
                                                    <div class="form-group mt-4 text-center">
                                                        <button type="submit" class="btn btn-primary">Search</button>
                                                    </div>
                                                </div>
                                                <div class="row justify-content-center text-center">
                                                    <!--                                        <div class="form-group mt-4">
                                                                                                <button type="button" class="btn btn-secondary" onclick="resetForm()">Reset</button>
                                                                                            </div>-->
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <div class="row g-4 mt-10">
                                    <a href="AddNewsPage.jsp"><button class="btn btn-primary">Add News</button></a>
                                    <c:if test="${requestScope.News.size() > 0}">
                                        <table  class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <td>#</td>
                                                    <td>Title</td>
                                                    <td>Type</td>
                                                    <td>Is Delete</td>
                                                    <td>Image</td>
                                                    <td></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${requestScope.News}" var="p">
                                                    <tr>
                                                        <td>${p.getNews_id()}</td>
                                                        <td>${p.getTitle()}</td>
                                                        <td>${p.getNews_type().getType_name()}</td>
                                                        <td>${p.isDel}</td>
                                                        <td><img width="100px" src="news_img/${p.getImg_url()}" /></td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${p.isDel == 'false'}">
                                                                    <a href="DeleteNews?id=${p.getNews_id()}&status=1"><button style="margin: 1px" class="btn btn-danger">Delete</button></a>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <a href="DeleteNews?id=${p.getNews_id()}&status=0"><button style="margin: 1px" class="btn btn-success">Active</button></a>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <a href="UpdateNews?id=${p.getNews_id()}"><button style="margin: 1px" class="btn btn-primary">Update</button></a>
                                                        </td>
                                                    </c:forEach>
                                            </tbody>
                                        </table>
                                    </c:if>
                                </div>
                                <c:set var="pagination_url" value="${pageContext.request.contextPath}/ManagerNews?" scope="request"></c:set>
                                    <div class="text-center mt-5">
                                        <nav class="text-center" aria-label="Page navigation example">
                                        <c:choose>          
                                            <c:when test="${requestScope.paging.getTotalPage() < 2}">
                                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                    <ul class="pagination">
                                                        <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                            <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}">${i}</a></li>
                                                            </c:forEach>
                                                    </ul>
                                                </nav>
                                            </c:when>
                                            <c:when test="${requestScope.paging.page < 2}">
                                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                    <ul class="pagination">                               
                                                        <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                            <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}">${i}</a></li>
                                                            </c:forEach>
                                                        <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page+1}&search=${param.search}&brand=${param.brand}&type=${param.type}">Next</a></li>
                                                    </ul>
                                                </nav>
                                            </c:when>
                                            <c:when test="${requestScope.paging.page+1 > requestScope.paging.getTotalPage()}">
                                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                    <ul class="pagination">
                                                        <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page-1}&search=${param.search}&brand=${param.brand}&type=${param.type}">Previous</a></li>
                                                            <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                            <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}">${i}</a></li>
                                                            </c:forEach>
                                                    </ul>
                                                </nav>
                                            </c:when>
                                            <c:otherwise>
                                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                    <ul class="pagination">
                                                        <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page-1}&search=${param.search}&brand=${param.brand}&type=${param.type}">Previous</a></li>
                                                            <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                            <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}">${i}</a></li>
                                                            </c:forEach>
                                                        <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page+1}&search=${param.search}&brand=${param.brand}&type=${param.type}">Next</a></li>
                                                    </ul>
                                                </nav>
                                            </c:otherwise>
                                        </c:choose>
                                    </nav>
                                </div>

                            </div>

                        </div>
                    </div>
                    <!-- Sale & Revenue End -->
                </div>
                <!-- Footer Start -->
                <jsp:include page="component/manager/footer.jsp"></jsp:include>
                <!-- Footer End -->
            </div>
        </div>
    </body>

</html>