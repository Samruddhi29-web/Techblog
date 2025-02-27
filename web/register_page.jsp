<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                /*clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 92%, 68% 100%, 35% 94%, 0 100%, 0 0);*/
                /*clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 94%, 69% 92%, 36% 97%, 0 91%, 0 0);*/
                /*clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 99%, 69% 93%, 36% 97%, 0 94%, 0 0);*/
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 99%, 76% 91%, 36% 98%, 0 92%, 0 0);
            }
        </style>


    </head>
    <body>
        <%@include file="normal_Navbar.jsp" %>

        <main class="primary-background p-4">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center primary-background">
                            <span class="fa fa-2x fa-user-circle"></span>
                            <br>
                            Register here 
                        </div>
                        <div class="card-body">
                            <form id ="reg-form" action="RegisterServlet" method="POST">
                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input name = "user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter your name">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name = "user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name = "user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <label for="gender1">Select Gender</label>
                                    <input type="radio"id="gender1" name="gender" value="male"> Male
                                    <input type="radio"id="gender2" name="gender" value="female"> Female
                                </div>
                                <div class="form-group">
                                    <textarea name="about" class="form-control" cols="30" rows="4" placeholder="Enter something about yourself"></textarea>
                                </div>
                                <div class="form-check">
                                    <input name = "check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">I agree terms and conditions</label>
                                </div>
                                <br>
                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin "></span>
                                    <h4>Please wait...</h4>
                                </div>
                                <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                        <!--                        <div class="card-footer">
                        
                                                </div>-->

                    </div>

                </div>
            </div>
        </main>



        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="Js/myjs.js" type="text/javascript"></script>
        <<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>



        <!--        <script>
                    $(document).ready(function)(){
                        console.log("loaded...")
                        $('#reg-form').on('submit',function(event){
                            event.preventDefault();
                            
                            let form= new FormData(this);
                            //send register servlet
                            $.ajax({
                               url:"RegisterServlet",
                               type: 'POST',
                               data: form,
                               success:function(data,textStatus,jqXHR){
                                   console.log(data)
                               },
                               error:function(data,textStatus,errorThrown){
                                   console.log(jqXHR)
                               },
                               processData:false,
                               contentType:false,
                            });
                        });
                    });
                </script>-->

        <script>
            $(document).ready(function () {
                console.log("loaded...");
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);
                    $("#submit-btn").hide();
                    $("#loader").show();

                    //send register servlet
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() == 'Done') {
                                swal("Registered successfully.. we are going to redirect to login page")
                                        .then((value) => {
                                            window.location="login_page.jsp";
                                        });
                            } else {
                                swal(data);
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            swal("Something went wrong...try again");
                            $("#submit-btn").show();
                            $("#loader").hide();

                        },
                        processData: false,
                        contentType: false,
                    });
                });
            });
        </script>


    </body>
</html>
