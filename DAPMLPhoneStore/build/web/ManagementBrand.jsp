
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
                            <div class="row g-4 mt-10">
                                <a class="btn btn-primary" href="AddBrandPage.jsp">Add Brand</a>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Status</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${requestScope.brands}" var="p" varStatus="counter">
                                        <tr>
                                            <td>${counter.count}</td>
                                            <td>${p.getBrand_name()}</td>
                                            <td>${p.isStatus()}</td>
                                            <td class="text-end">
                                                <c:choose>
                                                    <c:when test="${p.isStatus() == 'true'}">
                                                        <a href="DeleteBrand?id=${p.getBrand_id()}&status=0"><button style="margin: 1px" class="btn btn-danger">Delete</button></a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="DeleteBrand?id=${p.getBrand_id()}&status=1"><button style="margin: 1px" class="btn btn-success">Active</button></a>
                                                    </c:otherwise>
                                                </c:choose>
                                                <a href="UpdateBrand?id=${p.getBrand_id()}"><button style="margin: 1px" class="btn btn-primary">Update</button></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <c:set var="pagination_url" value="${pageContext.request.contextPath}/ManagementBrand?" scope="request"></c:set>
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
                    <!-- Sale & Revenue End -->
                </div>
                <!-- Footer Start -->
                <jsp:include page="component/manager/footer.jsp"></jsp:include>
                <!-- Footer End -->
            </div>
        </div>
    </body>

</html>
