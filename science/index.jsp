<%-- 
    Document   : index
    Created on : Jun 20, 2021, 2:08:06 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/home/css/mycss.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/home/css/all.min.css">
        <!-- Font Awesome -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
          rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
          rel="stylesheet"
        />
        <!-- MDB -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
          rel="stylesheet"
        />
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>Homepage</title>
    </head>
    <body>
        <nav class="navbar navbar-expand navbar-dark fixed-top p-2 bg-dark">
            <a class="navbar-brand" href="home/dashboard.jsp"><div class="text2 text-white">Career Path Advisory System</b></div></a>
            <a class="nav-link" href="home/about.jsp"><div class="h4 mb-0 text-white">About</b></div></a>
                    <a class="nav-link" href="home/contact.jsp"><div class="h4 mb-0 text-white">Contact</b></div></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user fa-2x"></i> <%= request.getSession().getAttribute("username")%>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="home/index.jsp">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="align-items-center bg-image" style="background-image: url('../images/dashboardbackground.jpg'); height: 100vh; margin-top: 0px;">
            <div class="mask" style="background-color: rgba(0, 0, 0, 0.8)">
                <div class="card-deck p-4 w-50 mx-auto" style='margin-top: 100px;'>
                    <div class="card bg-success">
                        <div class="card-body text-center text-white">
                           <p class="card-text h6">Input Exam scores</p>
                        </div>
                    </div>
                    <div class="card bg-primary">
                        <div class="card-body text-center text-white">
                            <p class="card-text h6">Take the personality test</p>
                        </div>
                    </div>
                    <div class="card bg-danger">
                        <div class="card-body text-center text-white">
                            <p class="card-text h6">View career suggestions</p>
                        </div>
                    </div>
                </div>
                <section class="container-fluid mt-0">
                    <section class="row justify-content-center mt-0">
                        <section class="col-12 col-sm-6 col-md-3 mt-0">
                            <form id="scienceForm" class="pt-1 bg-dark" style="width: 100%;position: absolute;top: 3vh;padding: 20px;border-radius: 10px;" action="${pageContext.request.contextPath}/science" method="post">
                                <h5 class="h5 text-center text-white bg-danger">Rate your proficiency in these subjects:</h5> 
                                <div class="row text-center w-100 mx-auto text-white">
                                    <div class="col-4 text-center p-0">
                                    </div>
                                    <div class="col-3 p-0">
                                        <h6 class="h6">Above Average</h6>
                                    </div>
                                    <div class="col-2 p-0 mt-2">
                                        <h6 class="h6">Average</h6>
                                    </div>
                                    <div class="col-3 p-0">
                                        <h6 class="h6">Below Average</h6>
                                    </div>
                                </div>
                                <div class="row mx-auto w-100 text-center text-white">
                                    <div class="col-4 text-center">
                                        <h5 class='h5'>Maths</h5>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="maths" value="75">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-2">
                                        <input type="radio" name="maths" value="50" checked>
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="maths" value="25">
                                        <span class="checkmark"></span>
                                    </div>
                                </div>
                                <div class="row mx-auto w-100 text-center text-white">
                                    <div class="col-4 text-center">
                                        <h5 class='h5'>English</h5>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="english" value="75">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-2">
                                        <input type="radio" name="english" value="50" checked>
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="english" value="25">
                                        <span class="checkmark"></span>
                                    </div>
                                </div>
                                <div class="row mx-auto w-100 text-center text-white">
                                    <div class="col-4 text-center">
                                        <h5 class='h5'>Physics</h5>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="physics" value="75">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-2">
                                        <input type="radio" name="physics" value="50" checked>
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="physics" value="25">
                                        <span class="checkmark"></span>
                                    </div>
                                </div>
                                <div class="row mx-auto w-100 text-center text-white">
                                    <div class="col-4 text-center">
                                        <h5 class='h5'>Chemistry</h5>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="chemistry" value="75">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-2">
                                        <input type="radio" name="chemistry" value="50" checked>
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="chemistry" value="25">
                                        <span class="checkmark"></span>
                                    </div>
                                </div>
                                <div class="row mx-auto w-100 text-center text-white">
                                    <div class="col-4 text-center">
                                        <h5 class='h5'>Biology</h5>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="biology" value="75">
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-2">
                                        <input type="radio" name="biology" value="50" checked>
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="col-3">
                                        <input type="radio" name="biology" value="25">
                                        <span class="checkmark"></span>
                                    </div>
                                </div>
                                <div class="row mb-0">
                                    <div class='col-6'>
                                        <div class="form-group">
                                            <a href="home/field.jsp" class="btn btn-primary w-100">Back</a>
                                        </div>
                                    </div>
                                    <div class='col-6'>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary w-100">Next</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </section>
                    </section>
                </section>
            </div>
        </div>
    </body>
</html>
<!--<script>
    function validateForm(){
            var a = document.getElementsById("scienceForm").elements.length;
//            for(var b=0;b<a-1;b++){
                var x = document.getElementsById("scienceForm").elements[0].value;
                if(Number.isInteger(x)){
                    alert("Enter a valid input.");
                    return false;
                }
                else{
                    alert("Enter a valid input.");
                    return false;
                }
//            }

        }
        
//    }
</script>-->

