
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
                            <c:if test="${requestScope.MSG != null}">
                                <h3 class="text-danger">${requestScope.MSG}</h3>
                            </c:if>
                            <c:if test="${requestScope.ERROR != null}">
                                <h3 class="text-danger">${requestScope.ERROR}</h3>
                            </c:if>
                        </div>
                        <div class="row g-4 mt-10">
                            <h3>Your guarantee</h3>
                            <!-- Button trigger modal -->
                            
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="check-guarantee" method="post" enctype="multipart/form-data">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Check product guarantee</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label>Customer Phone</label>
                                                    <input type="tel" name="phone" value="" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Product Name</label>
                                                    <input type="text" name="productName" value="" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Photo</label>
                                                    <input type="file" name="photo" value="" class="form-control">
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Product</th>
                                        <th>Customer</th>
                                        <th>Date</th>
                                        <th>Image</th>
                                        <th>Status</th>
                                        <th>Return</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.guarantee}" var="p" varStatus="counter">
                                        <tr>
                                            <td>${counter.count}</td>
                                            <td>${p.product.product_name}</td>
                                            <td>${p.customer.cus_name}</td>
                                            <td>${p.g_date}</td>
                                            <td>
                                                <img width="100px" height="100px" src="guarantee_image/${p.image}" alt="alt"/>
                                            </td>
                                            <td class="font-weight-bold" style="text-transform: capitalize">   
                                                <c:choose>
                                                    <c:when test="${p.status == 1}">
                                                        <p class="text-primary font-weight-bold">Cho xac nhan</p>
                                                    </c:when>
                                                    <c:when test="${p.status == 2}">
                                                        <p class="text-secondary font-weight-bold">Xac nhan</p>
                                                    </c:when>
                                                    <c:when test="${p.status == 3}">
                                                        <p class="text-success font-weight-bold">Hoan Thanh</p>
                                                    </c:when>
                                                    <c:when test="${p.status == 4}">
                                                        <p class="text-danger font-weight-bold">Huy</p>
                                                    </c:when>
                                                    <c:otherwise>

                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${p.return_date}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${p.status == 1}">
                                                        <a href="detail-guarantee?guaranteeId=${p.record_id}" class="btn btn-primary">View Detail</a>
                                                        <a href="update-guarantee?guaranteeId=${p.record_id}&status=4" class="btn btn-danger">Huy</a>
                                                    </c:when>
                                                    <c:when test="${p.status == 2}">
                                                        <a href="update-guarantee?guaranteeId=${p.record_id}&status=3" class="btn btn-success">Hoan Thanh</a>
                                                        
                                                    </c:when>
                                                    <c:when test="${p.status == 3}">
                                                        <a href="detail-guarantee?guaranteeId=${p.record_id}" class="btn btn-primary">View Detail</a>
                                                       
                                                    </c:when>
                                                    <c:when test="${p.status == 4}">
                                                        <a href="detail-guarantee?guaranteeId=${p.record_id}" class="btn btn-primary">View Detail</a>
                                                    </c:when>
                                                    <c:otherwise>

                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
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
