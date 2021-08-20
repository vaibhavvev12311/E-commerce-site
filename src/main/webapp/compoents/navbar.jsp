<%@page import="com.learn.mycart.entities.User"%>
<%
    User user1 = (User) session.getAttribute("current-user");


%>



<nav class="navbar navbar-expand-lg navbar-dark custom-bg">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Mycart</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Categories
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">




                        <a class="dropdown-item" href="login.jsp"><i class="fa fa-sign-in-alt" ></i>  Login</a>
                        <a class="dropdown-item" href="#"><i class="fa fa-bell" ></i>  Notification Preferences</a>
                        <a class="dropdown-item" href="coustomercare.jsp"><i class="fa fa-question" ></i>  24*7 Customer care</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">About</a>
                    </div>
                </li>

            </ul>

            <ul class="navbar-nav ml-auto">


                <li class="nav-item active">

                    <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart">
                        <i class="fa fa-cart-plus" style="font-size: 20px;">
                            <span class="ml-0 cart-items" >( 0 )</span>
                        </i>
                    </a>

                </li>





                <%                if (user1 == null) {
                %>

                <li class="nav-item active">
                    <a class="nav-link" href="login.jsp">login</a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>


                <%
                } else {

                %>

                <li class="nav-item active">
                    <a class="nav-link" href="<%= user1.getUserType().equals("admin") ? "admin.jsp" : "normal.jsp"%>"><%= user1.getUserName()%></a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="LogoutServlet">Logout</a>
                </li>


                <%                    }


                %>








            </ul>

            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-light my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>

    </div>
</nav>