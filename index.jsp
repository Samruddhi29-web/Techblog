
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                 /*clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 94%, 69% 92%, 36% 97%, 0 91%, 0 0);*/
                 /*clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 99%, 69% 93%, 36% 97%, 0 94%, 0 0);*/
                 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 99%, 76% 91%, 36% 98%, 0 92%, 0 0);
            }
        </style>


    </head>
    <body>
        <!--navbar-->
        <%@include file="normal_Navbar.jsp" %>

        <!--banner-->
        <div class="container-fluid p-0 m-0 banner-background">
            <div class="jumbotron primary-background">
                <div class="container">
                    <h3 class="display-3">Welcome to TechBlog</h3>
                    <!--<h3>Tech Blog</h3>-->
                    <p>A programming language is a system of notation for writing computer programs. A programming language is described by its syntax (form) and semantics (meaning). It gets its basis from formal languages.</p>
                    <p>Programming languages differ from most other forms of human expression in that they require a greater degree of precision and completeness. When using a natural language to communicate with other people, human authors and speakers can be ambiguous and make small errors, and still expect their intent to be understood.</p>
                    <button class="btn btn-outline-dark"><span class="fa fa-user-plus"></span> Start, its Free!</button>
                    <a href="login_page.jsp" class="btn btn-outline-dark"><span class="fa fa-user-circle-o fa-spin"></span> Login</a>
                </div>
            </div>
        </div>
        <!--cards-->
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-outline-dark primary-background">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-outline-dark primary-background">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-outline-dark primary-background">Read more</a>
                        </div>
                    </div>
                </div>

            </div>
            <br>
            <div class="row">
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-outline-dark primary-background">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-outline-dark primary-background">Read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-outline-dark primary-background">Read more</a>
                        </div>
                    </div>
                </div>

            </div>
            
        </div>



        <!--Javascript-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="Js/myjs.js" type="text/javascript"></script>

        <script>

        </script>
    </body>
</html>
