
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
    <%@include file="component/manager/header.jsp" %>
    <body>
        <c:set var = "total" value = "${0.00}"/>
        <c:set var = "totalOd" value = "${0}"/>
        <c:set var = "totalToday" value = "${0.00}"/>
        <c:set var = "totalOdToday" value = "${0}"/>
        
       <c:forEach items="${sessionScope.orders}" var="o">
    <c:set var="total" value="${total + o.getTotalPrice()}" />
    <c:set var="totalOd" value="${totalOd + 1}" />
    
    <c:if test="${helper.convertDateToString(o.getOrder_date()).equals(helper.getCurrentDateAsString())}">
        <c:set var="totalToday" value="${totalToday + o.getTotalPrice()}" />
        <c:set var="totalOdToday" value="${totalOdToday + 1}" />
    </c:if>
</c:forEach>
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <jsp:include page="component/manager/slidebar.jsp"></jsp:include>
                <!-- Content Start -->
                <div class="content">
                <jsp:include page="component/manager/navbar.jsp"></jsp:include>
                    <!-- Sale & Revenue Start -->
                    <div class="container-fluid pt-4 px-4">
                        <div class="row g-4">
                            <div class="col-sm-6 col-xl-3">
                                <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                    <i class="fa fa-chart-line fa-3x text-primary"></i>
                                    <div class="ms-3">
                                        <p class="mb-2">Today Order</p>
                                        <h6 class="mb-0">${totalOdToday}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-bar fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">Total Order</p>
                                    <h6 class="mb-0">${totalOd}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-area fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">Today Revenue</p>
                                    <h6 class="mb-0">${helper.convertToVietnameseDong(totalToday)}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-pie fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">Total Revenue</p>
                                    <h6 class="mb-0">${helper.convertToVietnameseDong(total)}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Sale & Revenue End -->


                <!-- Sales Chart Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Worldwide Sales</h6>
                                    <a href="">Show All</a>
                                </div>
                                <canvas id="worldwide-sales"></canvas>
                            </div>
                        </div>
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Sales & Revenue</h6>
                                    <a href="">Show All</a>
                                </div>
                                <canvas id="salse-revenue"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Sales Chart End -->


                <!-- Recent Sales Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="bg-light text-center rounded p-4">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <h6 class="mb-0">Recent Sales</h6>
                            <a href="">Show All</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-start align-middle table-bordered table-hover mb-0">
                                <thead>
                                    <tr class="text-dark">
                                        <th scope="col">Date</th>
                                        <th scope="col">Payment</th>
                                        <th scope="col">Customer</th>
                                        <th scope="col">Amount</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${sessionScope.orders}" var="o">
                                        <tr>
                                            <td>${o.getOrder_date()}</td>
                                            <td>${o.getPayment()}</td>
                                            <td>${o.getCustomer().getCus_name()}</td>
                                            <td>${helper.convertToVietnameseDong(o.getTotalPrice())}</td>
                                            <td>Paid</td>
                                            <td><a class="btn btn-sm btn-primary" href="orderdetail?orderId=${o.order_id}">Detail</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- Recent Sales End -->
            </div>
        </div>
    </body>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="component/manager/lib/chart/chart.min.js"></script>
    <script src="component/manager/lib/easing/easing.min.js"></script>
    <script src="component/manager/lib/waypoints/waypoints.min.js"></script>
    <script src="component/manager/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="component/manager/lib/tempusdominus/js/moment.min.js"></script>
    <script src="component/manager/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="component/manager/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="component/manager/js/main.js"></script>
</html>
