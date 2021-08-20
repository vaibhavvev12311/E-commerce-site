<%-- 
    Document   : checkout
    Created on : 21-May-2021, 7:21:16 PM
    Author     : Hp
--%>


<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to acces checkout page");
        response.sendRedirect("login.jsp");
        return;
    }

%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file="compoents/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="compoents/navbar.jsp" %>

        <div class="container">
            <div class="row mt-5">

                <div class="col-md-6">

                    <!--card-->
                    <div class="card">
                        <div class="card-body">

                            <h3 class="text-center mb-5" >Your selected items</h3> 

                            <div class="cart-body">

                            </div>

                            <div class="container text-center">
                                <button class="btn btn-outline-primary" >Continue Shopping</button>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <!--form details-->
                    <div class="card">
                        <div class="card-body">

                            <h3 class="text-center mb-5">Your details for order </h3>
                            <form action="#!">


                                <!--Name & lastName-->


                                <div class="form-group">
                                    <label for="name">Your name</label>
                                    <div class="row">
                                        <div class="col">
                                            <input  type="text" class="form-control" placeholder="First name">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" placeholder="Last name">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input value="<%= user.getUserEmail()%>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>


                                <!--phone number-field-->
                                <div class="form-group">
                                    <label for="phone"> Contact number</label>
                                    <div class="input-group">
                                        <select class="custom-select" style="max-width: 80px;">
                                            <option>+91</option>
                                            <option>+92</option>
                                            <option>+95</option>
                                        </select>
                                        <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter User Phone" aria-describedby="emailHelp" placeholder="Enter email">
                                    </div> 
                                </div>


                                <!--pin & locality-->

                                <div class="form-group">

                                    <div class="row ">
                                        <div class="col">
                                            <input  type="number" class="form-control"  placeholder="Enter your pincode">
                                        </div>
                                        <!--  <label for="locality">Locality</label>-->


                                        <div class="col">
                                            <input type="text" class="form-control" placeholder="locality">
                                        </div>


                                    </div>
                                </div>


                                <!--state & district-->


                                <div class="form-group">

                                    <div class="row">
                                        <div class="col">
                                            <input  type="text" class="form-control"  placeholder="City/District/Town">
                                        </div>
                                        <div class="col state input-group">
                                            <select class="custom-select" >
                                                <option>Andhra Pradesh</option>
                                                <option>Arunachal Pradesh</option>
                                                <option>Assam</option>
                                                <option>Bihar</option>
                                                <option>Chhattisgarh</option>
                                                <option>Goa</option>
                                                <option>Gujarat</option>
                                                <option>Haryana</option>
                                                <option>Himachal Pradesh</option>
                                                <option>jharkhand</option>
                                                <option>Karnataka</option>
                                                <option>kerala</option>
                                                <option>Madhya Pradesh</option>
                                                <option>Maharashtra</option>
                                                <option>Manipur</option>
                                                <option>Meghalaya</option>
                                                <option>Mizoram</option>
                                                <option>Nagaland</option>
                                                <option>Odisha</option>
                                                <option>Punjad</option>
                                                <option>Rajasthan</option>
                                                <option>Sikkim</option>
                                                <option>Tamil Nadu</option>
                                                <option>Telangana</option>
                                                <option>Tripura</option>
                                                <option>Uttar Pradesh</option>
                                                <option>Uttarakhand</option>
                                                <option>West Bengal</option>

                                            </select>
                                            <!--<input type="text" class="form-control" placeholder="State">-->
                                        </div>
                                    </div>
                                </div>



                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Your shipping address</label>
                                    <textarea  class="form-control" id="exampleFormControlTextarea1" placeholder="Enter tour address" rows="3"></textarea>
                                </div>

                                <div class="form-group ">
                                    <label  for="address">Address Type:  </label>

                                    <div class="custom-control custom-radio custom-control-inline mb-3 mt-3">
                                        <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
                                        <label class="custom-control-label"  for="customRadioInline1">Home</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadioInline2">Work</label>
                                    </div>


                                </div>

<!--                                <div class="form-group">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="gridCheck">
                                        <label class="form-check-label" for="gridCheck">
                                            
                                        </label>
                                    </div>
                                </div>-->


                                <div class="container text-center">
                                    <button class="btn btn-primary">Place Order</button>
                                    <button class="text-primary btn btn-light" style="" >Cancel</button>
                                </div>


                            </form>


                        </div>

                    </div>

                </div>

            </div>


            <%@include file="compoents/common_modals.jsp" %>
    </body>
</html>
