
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <link rel="shortcut icon" href="assets/images/logo_2.png"/>
        <title>DAPMLPhone - AdminPage</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <jsp:include page="component/admin/head.jsp"></jsp:include>
        </head>
    <jsp:include page="component/admin/header.jsp"></jsp:include>
        <body>
            <div class="container-fluid position-relative bg-white d-flex p-0">
            <jsp:include page="component/admin/slidebar.jsp"></jsp:include>
                <!-- Content Start -->
                <div class="content">
                    <div class="container-xxl">
                    <jsp:include page="component/admin/navbar.jsp"></jsp:include>
                        <!-- Sale & Revenue Start -->
                        <div class="container pt-4 px-4">
                            <div class="row g-4 mt-10">
                                <table  class="table table-striped">
                                    <thead>
                                        <tr>
                                            <td>#</td>
                                            <td>Name</td>
                                            <td>Role</td>
                                            <td>Activate</td>
                                            <td></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>${a.getAccount_id()}</td>
                                        <td>${a.getAcc_name()}</td>
                                        <td>${a.getRole().getRole_name()}</td>
                                        <td>${a.activate?"Yes":"No"}</td>
                                        <td>
                                            <button style="margin: 1px" class="btn btn-danger" disabled>De-active</button>
                                            <a href="ManagementAccount?id=${a.getAccount_id()}&ban=1"><button style="margin: 1px" class="btn btn-danger">De-activate</button></a>
                                            <a href="ManagementAccount?id=${a.getAccount_id()}&unban=1"><button style="margin: 1px" class="btn btn-primary">Active</button></a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>

                        </div>
                    </div>
                    <!-- Sale & Revenue End -->
                </div>
                <!-- Footer Start -->
                <jsp:include page="component/admin/footer.jsp"></jsp:include>
                <!-- Footer End -->
            </div>
        </div>
    </body>
</html>