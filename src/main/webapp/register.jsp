<%-- 
    Document   : register
    Created on : 10-May-2021, 2:43:22 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>

        <%@include file="compoents/common_css_js.jsp" %>
        
        <style >
            .divider{
                position: relative;
                text-align: center;
                margin: 15px 0px;
            }
            .divider span{
                padding: 8px;
                position: relative;
                font-size: 15px;
                z-index: 20 !important;
            }
            .divider:after{
                content: "";
                position: absolute;
                width: 100%;
                border-bottom: 2px solid #ddd;
                top: 50%;
                left: 0;
                z-index: 1 !important;
            }
        </style>
        
    </head>
    <body>

        <%@include file="compoents/navbar.jsp" %>
        <div class="container-fluid">

            <div class="row mt-3">
                <div class="col-md-4 offset-md-3">
                    <div class="card">

                        <%@include file="compoents/message.jsp" %>

                        <div class="card-body px-5">

                            <div class="container text-center mb-4">
                                <image src="img/add-friend.png" style="max-width: 100px" class="img-fluid" alt="#">
                            </div>

                            <!--google & facebook button-->
                            <div class="container text-center mb-4 ">
                                <a href="#!" class="btn btn-block btn-danger"><i class="fab fa-google-plus-g" ></i> Login via Google</a>
                                <a href="#!" class="btn btn-block btn-primary"><i class="fab fa-facebook-f" ></i> Login via Facebook</a>
                            </div>
                            
                            <p class="divider">
                                <span class="bg-light">OR</span>
                            </p>

                            <h3 class="text-center my-3">Sign up here !!</h3>

                            <!-- from started -->

                            <form action="RegisterServlet" method="post">

                                <!--name-field-->
                                <div class="form-group input-group">
                                    <span class="input-group-text">
                                        <i class="fa fa-user" ></i>
                                        <label for="Name"></label>
                                    </span>
                                    <input name="user_name" type="text" class="form-control" id="Name" placeholder="Enter User Name" aria-describedby="emailHelp" placeholder="Enter email">
                                </div> 

                                <!--email-field-->                    
                                <div class="form-group input-group">
                                    <span class="input-group-text" >
                                        <i class="fa fa-envelope" ></i>
                                        <label for="email"></label>
                                    </span>
                                    <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter User Email" aria-describedby="emailHelp" placeholder="Enter email">
                                </div> 

                                <!--password-field-->
                                <div class="form-group input-group">
                                    <span class="input-group-text">
                                        <i class="fa fa-unlock-alt" ></i>
                                        <label for="password"></label>
                                    </span>
                                    <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter User Password" aria-describedby="emailHelp" placeholder="Enter email">
                                </div> 

                                <!--phone number-field-->
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                    <span class="input-group-text" >
                                        <i class="fa fa-mobile-alt" ></i>
                                        <label for="phone"></label>
                                    </span>
                                    </div>
                                    <select class="custom-select" style="max-width: 80px;">
                                        <option>+91</option>
                                        <option>+92</option>
                                        <option>+95</option>
                                    </select>
                                    <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter User Phone" aria-describedby="emailHelp" placeholder="Enter email">
                                </div> 
                                
                                <!--address-field-->
                                <div class="form-group p">
                                    <span class="input-group-text" >
                                        <i class="fa fa-map-marked-alt" ></i>
                                        <label for="phone">User Address</label>
                                    </span>
                                    <textarea name="user_address" style="height: 200px;" class="form-control" placeholder="Enter your address"></textarea>
                                </div> 

                                <!--buttons-field-->
                                <div class="container text-center">
                                    <button class="btn btn-outline-success">Register</button>
                                    <button class="btn btn-outline-warning">Reset</button>

                                </div>
                                
                                <p class="text-center mt-3"> Have an account?
                                    <a href="login.jsp">Log in</a>
                                </p>

                            </form>

                            <!-- end of form -->

                        </div>

                    </div>

                </div>
            </div>

        </div>

    </body>
</html>
