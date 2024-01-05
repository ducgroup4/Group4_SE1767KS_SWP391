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
                    <div class="container">
                    <jsp:include page="component/manager/navbar.jsp"></jsp:include>
                        <!-- Sale & Revenue Start -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="row">
                                        <c:if test="${requestScope.ERROR != null}">
                                            <p class="text-danger">${requestScope.ERROR}</p>
                                        </c:if>
                                    </div>

                                    <form id="filterForm" action="ManagementProduct" method="get">
                                        <input type="hidden" name="page" value="${requestScope.paging.page}">
                                        <div class="row">
                                            <div class="col-sm-10">
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label>Product Name</label>
                                                        <input class="form-control" type="text" name="search" value="${param.search}">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Product Brand</label>
                                                            <select name="brand" class="form-select" aria-label="Default select example">
                                                                <option value="">All brands</option>
                                                                <c:forEach items="${requestScope.brands}" var="b">
                                                                    <option ${requestScope.selectedBr==b.getBrand_id()?"selected":""} value="${b.getBrand_name()}">${b.getBrand_name()}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Product Types</label>
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
                                                <div class="row">
                                                    <div class="form-group">
                                                        <label for="minValue">Minimum Value:</label>
                                                        <input type="number"  value="${param.minValue}" class="form-control" id="minValue" name="minValue">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="maxValue">Maximum Value:</label>
                                                        <input type="number" value="${param.maxValue}" class="form-control" id="maxValue" name="maxValue">
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
                    </div>


                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <a class="btn btn-primary" href="AddProduct">Add Product</a>
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <td>#</td>
                                                        <td></td>
                                                        <td>Name</td>
                                                        <td>Price</td> 
                                                        <td>Color</td>
                                                        <td>Guarantee Time</td>
                                                        <td>Brand</td>  
                                                        <td>Type</td>
                                                        <td>Status</td>
                                                        <td>Number Guarantee</td>
                                                        <td>Action</td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:if test="${requestScope.products.size() > 0}">
                                                        <c:forEach items="${requestScope.products}" var="p" varStatus="counter">
                                                            <tr>
                                                                <td>${counter.count}</td>
                                                                <td><img width="100px" src="product_image/${p.getImg_list().get(0).getUrl()}"></td>
                                                                <td>${p.getProduct_name()}</td>
                                                                <td>${helper.convertToVietnameseDong(p.getPrice())}</td>
                                                                <td>${p.getColor()}</td>
                                                                <td>${p.getGuarantee_time()} month(a)</td>
                                                                <td>${p.getBrand().getBrand_name()}</td>
                                                                <td>${p.getType().getType_name()}</td>
                                                                <td>${p.isStatus()}</td>
                                                                <td>${p.getTotalGuarantee()}</td>
                                                                <td>
                                                                    <a href="UpdateProduct?id=${p.getProduct_id()}"><button style="margin: 1px" class="btn btn-primary">Update</button></a>
                                                                    <c:choose>
                                                                        <c:when test="${p.isStatus() == 'true'}">
                                                                            <a href="DeleteProduct?id=${p.getProduct_id()}&status=0"><button style="margin: 1px" class="btn btn-danger">Delete</button></a>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <a href="DeleteProduct?id=${p.getProduct_id()}&status=1"><button style="margin: 1px" class="btn btn-success">Active</button></a>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </c:if>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <c:set var="pagination_url" value="${pageContext.request.contextPath}/ManagementProduct?" scope="request"></c:set>
                                        <div class="text-center mt-5">
                                            <nav class="text-center" aria-label="Page navigation example">
                                            <c:choose>          
                                                <c:when test="${requestScope.paging.getTotalPage() < 2}">
                                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                        <ul class="pagination">
                                                            <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                                <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">${i}</a></li>
                                                                </c:forEach>
                                                        </ul>
                                                    </nav>
                                                </c:when>
                                                <c:when test="${requestScope.paging.page < 2}">
                                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                        <ul class="pagination">                               
                                                            <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                                <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">${i}</a></li>
                                                                </c:forEach>
                                                            <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page+1}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">Next</a></li>
                                                        </ul>
                                                    </nav>
                                                </c:when>
                                                <c:when test="${requestScope.paging.page+1 > requestScope.paging.getTotalPage()}">
                                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                        <ul class="pagination">
                                                            <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page-1}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">Previous</a></li>
                                                                <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                                <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">${i}</a></li>
                                                                </c:forEach>
                                                        </ul>
                                                    </nav>
                                                </c:when>
                                                <c:otherwise>
                                                    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                        <ul class="pagination">
                                                            <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page-1}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">Previous</a></li>
                                                                <c:forEach begin="1" end="${requestScope.paging.getTotalPage()}" var="i">
                                                                <li class="page-item ${i == requestScope.paging.page?"active":""}"><a class="page-link" href="${pagination_url}page=${i}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">${i}</a></li>
                                                                </c:forEach>
                                                            <li class="page-item"><a class="page-link" href="${pagination_url}page=${requestScope.paging.page+1}&search=${param.search}&brand=${param.brand}&type=${param.type}&minValue=${param.minValue}&maxValue=${param.maxValue}">Next</a></li>
                                                        </ul>
                                                    </nav>
                                                </c:otherwise>
                                            </c:choose>
                                        </nav>
                                    </div>
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



