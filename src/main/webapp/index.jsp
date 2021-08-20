<%-- 
    Document   : index
    Created on : 09-May-2021, 6:17:29 PM
    Author     : Hp
--%>

<%@page import="com.learn.mycart.helper.Helper"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="com.learn.mycart.dao.CategoryDao"%>
<%@page import="com.learn.mycart.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.dao.ProductDao"%>
<%@page import="com.learn.mycart.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyCart - Home</title>
        <%@include file="compoents/common_css_js.jsp" %>

    </head>
    <body>

        <%@include file="compoents/navbar.jsp" %>



        <div class="container-fluid"> 
            <div class="row mt-3 mx-2">


                <%                String cat = request.getParameter("category");
                    //out.println(cat);

                    ProductDao dao = new ProductDao(FactoryProvider.getFactory());

                    List<Product> list = null;

                    if (cat == null || cat.equals("all")) {

                        list = dao.getAllProducts();

                    } else {

                        int cid = Integer.parseInt(cat.trim());
                        list = dao.getAllProductsById(cid);

                    }

                    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                    List<Category> clist = cdao.getCategories();


                %>


                <!--show categories-->
                <div class="col-md-2">


                    <div class="list-group mt-4">

                        <a href="index.jsp?category=all" class="list-group-item list-group-item-action active">
                            All Products
                        </a>


                        <% for (Category c : clist) {


                        %>

                        <a href="index.jsp?category=<%= c.getCategoryId()%>" class="list-group-item list-group-item-action"><%= c.getCategoryTitle()%> </a>

                        <%
                            }
                        %>

                    </div>

                </div>


                <!--show product-->
                <div class="col-md-10">

                    <!--row-->
                    <div class="row mt-4" >


                        <!--col.12-->
                        <div class="col-md-12">

                            <div class="card-columns">

                                <!--traversing products-->

                                <%
                                    for (Product p : list) {

                                %>




                                <!--product card-->
                                <div class="card product-card">

                                    <div class="container text-center">
                                        <img src="img/products/<%= p.getpPhoto()%>" style="max-height: 150px;max-width: 100%; width: auto;" class="card-img-top m-2" alt="...">
                                    </div>

                                    <div class="card-body">

                                        <h5 class="card-title">

                                            <%= p.getpName()%>

                                        </h5>

                                        <p class="card-text">

                                            <%= Helper.get10Words(p.getpDesc())%>

                                        </p>



                                    </div>

                                    <div class="card-footer">

                                        <!--Buttons-->

                                        <p class="text-secondary" style="font-size: 13px; text-decoration: line-through"><span  style="font-style: italic" >MRP-</span><%= p.getpPrice()%></p>

                                        <!--Price Button-->

                                        <button class="btn btn-outline-primary"> &#8377; <%= p.getPriceAfterApplyingDiscount()%>/- <span class="text-secondary discount-label"> &#8377; <%= p.getpDiscount()%>% off </span></button>

                                        <!--Add to cart Button-->

                                        <button class="btn custom-bg text-white" onclick="add_to_cart(<%= p.getpId()%>, '<%= p.getpName()%>', <%= p.getPriceAfterApplyingDiscount()%>)">Add to Cart</button>
                                        <!--<button class="btn btnn text-white" style="font-size: 10px; text-decoration: line-through"><span  style="font-style: italic" >MRP-</span><%= p.getpPrice()%></button>-->

                                    </div>



                                </div>






                                <%  }

                                    if (list.size() == 0) {

                                        out.println("<h3>No item in thid category</h3>");
                                    }

                                %>
                            </div>

                        </div>

                    </div> 

                </div>


            </div>
        </div>


        <%@include file="compoents/common_modals.jsp" %>
        
        
    </body>
    
    
</html>
