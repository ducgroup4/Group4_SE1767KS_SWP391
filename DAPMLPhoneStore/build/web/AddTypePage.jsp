

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
                                <div class="card">
                                    <div class="card-body">
                                        <h1>Add Type</h1>
                                        <div class="row">
                                        <c:if test="${requestScope.ERROR != null}">
                                            <p class="text-danger">${requestScope.ERROR}</p>
                                        </c:if>
                                        </div>
                                        <form method="post" action="AddType">
                                            <div class="form-group">
                                                <label class="form-label" for="formControlLg">Type Name</label>
                                                <input required name="name" type="text" id="formControlLg" class="form-control" />
                                            </div>
                                            <div class="form-group mt-3">
                                                <button type="submit" class="btn btn-primary">Upload</button>
                                            </div>
                                        </form>
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
