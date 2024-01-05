
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-dark bg-dark navbar-expand-lg mb-3">
    <div class="container-fluid">
        <a class="navbar-brand" href="cilentPage">CompStore</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" >Home</a>
                </li>
            
                <li class="nav-item">
                    <a href="NewsList" class="nav-link">News</a>
                </li>
                <li class="nav-item">
                    <a href="AboutUsPage.jsp" class="nav-link">About Us</a>
                </li>
                <li class="nav-item">
                   
                </li>
            </ul>
            <c:choose>
                <c:when test="${sessionScope.cus!=null}">
                    <a >
                        <span id="avatar" style="color: white; margin-left: 20px;"><i class="fas fa-user-alt fa-lg"></i>
                            ${sessionScope.acc.getAcc_name()}</span>
                    </a>
                </c:when>
                <c:otherwise>
                    <span id="avatar" style="color: white; margin-left: 20px;"><i class="fas fa-user-alt fa-lg"></i>
                        ${sessionScope.acc.getAcc_name()}</span>
                    </c:otherwise>
                </c:choose>

            <c:if test="${sessionScope.acc.getRole().getRole_id()==3}">
                <a style="color: white; margin-left: 20px;">Card</a>
                 <a  style="color: white; margin-left: 20px;" class="">View Guarantee</a>
            </c:if>


            <c:if test="${sessionScope.acc!=null}">
                <a href="logOutServlet" style="margin-left: 12px">
                    <button type="button" id="btnSignIn" onmouseout="hoverOutSignIn()" onmouseover="hoverSignIn()" class="btn btn-danger">LogOut</button>
                </a>
            </c:if>    

            <c:if test="${sessionScope.acc==null}">
                <a href="LoginPage2.jsp" style="margin-left: 12px">
                    <button type="button" id="btnSignIn" onmouseout="hoverOutSignIn()" onmouseover="hoverSignIn()" class="btn btn-primary">SignIn</button>
                </a>  
            </c:if>   





        </div>
    </div>
</nav>

