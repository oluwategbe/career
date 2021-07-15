<%-- 
    Document   : index
    Created on : May 15, 2021, 2:02:09 PM
    Author     : Pelumi Tegbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>Dashboard</title>
    </head>
    <body>
        <nav class="navbar navbar-expand navbar-dark fixed-top p-2 bg-dark">
            <a class="navbar-brand" href="home/index.jsp"><div class="text2 text-white">Career Path Advisory System</b></div></a>
            <a class="nav-link" href="home/about.jsp"><div class="h4 mb-0 text-white">About</b></div></a>
                    <a class="nav-link" href="home/contact.jsp"><div class="h4 mb-0 text-white">Contact</b></div></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">l
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
        <div class="align-items-center bg-image" style="background-image: url('home/images/personality.jpg'); height: 1300px; margin-top: 0px;">
            <div class="mask" style="background-color: rgba(0, 0, 0, 0.8)">
                <div class="jumbotron bg-transparent text-center text-white mb-0" style='margin-top: 90px;'>
                    <u><h1>Personality test</h1></u>
                </div>
                <div class="card-deck p-4 w-50 mx-auto">
                    <div class="card bg-primary">
                        <div class="card-body text-center text-white">
                           <p class="card-text h3">Input Exam scores</p>
                        </div>
                    </div>
                    <div class="card bg-success">
                        <div class="card-body text-center text-white">
                            <p class="card-text h4">Take the personality test</p>
                        </div>
                    </div>
                    <div class="card bg-danger">
                        <div class="card-body text-center text-white">
                            <p class="card-text h3">View career suggestions</p>
                        </div>
                    </div>
                </div>
                
                <div style="width: 60%; height: auto; margin: auto; background: white; margin-bottom: 40px; border: 5px solid green; border-radius: 20px; padding: 10px;">
                    <div class="container bg-white mx-auto w-100 p-0 mb-1">
                        <div class="progress bg-dark">
                            <div id= "progress" class="progress-bar bg-success" style="width:0%"></div>
                        </div>
                    </div>
                    <div class="text-center bg-success text-white" style="font-size: 25px; font-weight: 600; border-radius: 20px;">
                        Take the personality test
                    </div>
                    <div class="row text-center w-100 mx-auto mt-3">
                        <div class="col-7 text-center p-0">
                        </div>
                        <div class="col-1 p-0">
                            <h7 style="font-size: 17px">Yes</h7>
                        </div>
                        <div class="col-1 p-0">
                            <h7 style="font-size: 15px">Sometimes</h7>
                        </div>
                        <div class="col-1 p-0">
                            <h7 style="font-size: 15px">Neutral</h7>
                        </div>
                        <div class="col-1 p-0">
                            <h7 style="font-size: 15px">Not really</h7>
                        </div>
                        <div class="col-1 p-0">
                            <h7 style="font-size: 17px">No</h7>
                        </div>
                    </div>
                    <form method="post" action="${pageContext.request.contextPath}/careerSuggestion">
                        <div id="section1" style="display: block">
                            <div class="row mx-auto w-100 text-center p-0 mt-3 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am the life of the party</h5>
                                </div>
                                <input type="hidden" name="username" value="<%=request.getSession().getAttribute("username")%>">
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio1" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio1" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio1" value="50" checked onclick="newFunc1()" checked>
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio1" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio1" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I feel comfortable around people</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio2" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio2" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio2" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio2" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio2" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I keep in the background</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio3" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio3" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio3" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio3" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio3" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I don't talk a lot</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio4" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio4" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio4" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio4" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio4" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I have a lot of friends</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio5" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio5" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio5" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio5" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio5" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I talk to a lot of different people at parties</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio6" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio6" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio6" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio6" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio6" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I don't like to draw attention to myself</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio7" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio7" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio7" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio7" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio7" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>Many group activities tend to be dull without me</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio8" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio8" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio8" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio8" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio8" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am quiet around strangers</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio9" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio9" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio9" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio9" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio9" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I don't mind being the center of attention</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio10" value="100" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio10" value="75" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio10" value="50" checked onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio10" value="25" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio10" value="0" onclick="newFunc1()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div hidden class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-11 text-center pt-2">
                                    <input id="eivalue" type="text" name="eivalue" value="0">
                                </div>    
                            </div>
                            <div hidden class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-11 text-center pt-2">
                                    <input id="examscores" type="text" name="examscores" value="<%=request.getAttribute("total")%>">
                                </div>    
                            </div>
                            <div hidden class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-11 text-center pt-2">
                                    <input id="field" type="text" name="field" value="<%=request.getAttribute("field")%>">
                                </div>    
                            </div>
                            <div class="text-center">
                                <button type="button" class="btn btn-success" style="border-radius: 20px; width:300px;" onclick="myFunction1()"></><h4>Next</h4></button>
                            </div>
                        </div>
                        <div id="section2" style="display: none">
                            <div class="row mx-auto w-100 text-center p-0 m-2 mt-3">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I have difficulty understanding abstract ideas</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio11" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio11" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio11" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio11" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio11" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I pay attention to details</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio12" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio12" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio12" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio12" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio12" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I have a vivid imagination</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio13" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio13" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio13" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio13" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio13" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am not interested in abstract ideas</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio14" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio14" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio14" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio14" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio14" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I spend time reflecting on things</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio15" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio15" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio15" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio15" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio15" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am full of ideas</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio16" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio16" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio16" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio16" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio16" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I have a good imagination</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio17" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio17" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio17" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio17" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio17" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I often daydream about what's possible</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio18" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio18" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio18" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio18" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio18" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I have excellent ideas</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio19" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio19" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio19" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio19" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio19" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I like seeing the big picture of things</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio20" value="100" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio20" value="75" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio20" value="50" checked onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio20" value="25" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio20" value="0" onclick="newFunc2()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div hidden class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-11 text-center pt-2">
                                    <input id="nsvalue" type="text" name="nsvalue" value="0">
                                </div>    
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="text-center">
                                        <button type="button" class="btn btn-warning text-white" style="border-radius: 20px; width:50%;" onclick="myFunction2i()"></><h4>Previous</h4></button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-center">
                                        <button type="button" class="btn btn-success" style="border-radius: 20px; width:50%;" onclick="myFunction2()"></><h4>Next</h4></button>
                                    </div>
                                </div>
                            </div>
                                  
                        </div>
                        <div id="section3" style="display: none">
                            <div class="row mx-auto w-100 text-center p-0 m-2 mt-3">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I feel little concern for others</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio21" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio21" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio21" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio21" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio21" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I sympathize with others' feelings</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio22" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio22" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio22" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio22" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio22" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am not interested in other people's problems</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio23" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio23" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio23" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio23" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio23" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I have a soft heart</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio24" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio24" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio24" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio24" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio24" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am not really interested in other people</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio25" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio25" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio25" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio25" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio25" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I feel other people's emotions</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio26" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio26" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio26" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio26" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio26" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I can be mean to others</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio27" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio27" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio27" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio27" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio27" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I take time out for others</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio28" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio28" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio28" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio28" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio28" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I go more by facts than principles</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio29" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio29" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio29" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio29" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio29" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I rather trust my hunch than my past experiences</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio30" value="100" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio30" value="75" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio30" value="50" checked onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio30" value="25" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio30" value="0" onclick="newFunc3()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div hidden class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-11 text-center pt-2">
                                    <input id="tfvalue" type="text" name="tfvalue" value="0">
                                </div>    
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="text-center">
                                        <button type="button" class="btn btn-warning text-white" style="border-radius: 20px; width:50%;" onclick="myFunction3i()"></><h4>Previous</h4></button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-center">
                                        <button type="button" class="btn btn-success" style="border-radius: 20px; width:50%;" onclick="myFunction3()"></><h4>Next</h4></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="section4" style="display: none">
                            <div class="row mx-auto w-100 text-center p-0 m-2 mt-3">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am always prepared</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio31" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio31" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio31" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio31" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio31" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I do my chores as soon as I am given</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio32" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio32" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio32" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio32" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio32" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I like order</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio33" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio33" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio33" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio33" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio33" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h6 class='h6'>I often forget to put things back in their proper places</h6>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio34" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio34" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio34" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio34" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio34" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I follow a schedule</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio35" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio35" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio35" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio35" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio35" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I like to plan my day ahead</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio36" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio36" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio36" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio36" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio36" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I like to do work whenever I feel like</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio37" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio37" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio37" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio37" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio37" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I like to leave my options open and undecided</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio38" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio38" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio38" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio38" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio38" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I am relaxed most of the time</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio39" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio39" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio39" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio39" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio39" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-7 text-center pt-2">
                                    <h5 class='h5'>I like doing things that are new and different</h5>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio40" value="100" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio40" value="75" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio40" value="50" checked onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio40" value="25" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                                <div class="col-1 pt-2">
                                    <input type="radio" name="radio40" value="0" onclick="newFunc4()">
                                    <span class="checkmark"></span>
                                </div>
                            </div>
                            <div hidden class="row mx-auto w-100 text-center p-0 m-2">
                                <div class="col-11 text-center pt-2">
                                    <input id="pjvalue" type="text" name="pjvalue" value="0">
                                </div>    
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="text-center">
                                        <button type="button" class="btn btn-warning text-white" style="border-radius: 20px; width:50%;" onclick="myFunction4i()"></><h4>Previous</h4></button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-success" style="border-radius: 20px; width:50%;"></><h4>Submit</h4></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>        
                </div> 
            </div>            
        </div>
        
        
    </body>
</html>

<script>

    function newFunc1(){
        var total = 0;
        for(var i=1;i<11;i++){
            var x = document.getElementsByName("radio"+i);
            for(var j=0;j<5;j++){
                if (x[j].checked){
                    total += Number(x[j].value);
                }
            }
        }
        
        document.getElementById("eivalue").value = Number(total);
    }
    
    function newFunc2(){
        var total = 0;
        for(var i=11;i<21;i++){
            var x = document.getElementsByName("radio"+i);
            for(var j=0;j<5;j++){
                if (x[j].checked){
                    total += Number(x[j].value);
                }
            }
        }
        
        document.getElementById("nsvalue").value = Number(total);
    }
    
    function newFunc3(){
        var total = 0;
        for(var i=21;i<31;i++){
            var x = document.getElementsByName("radio"+i);
            for(var j=0;j<5;j++){
                if (x[j].checked){
                    total += Number(x[j].value);
                }
            }
        }
        document.getElementById("tfvalue").value = Number(total);
    }
    
    function newFunc4(){
        var total = 0;
        for(var i=31;i<41;i++){
            var x = document.getElementsByName("radio"+i);
            for(var j=0;j<5;j++){
                if (x[j].checked){
                    total += Number(x[j].value);
                }
            }
        }
        document.getElementById("pjvalue").value = Number(total);
    }
    
    function myFunction1(){
        document.getElementById("section1").style.display = "none";
        document.getElementById("section2").style.display = "block";
        document.getElementById("section3").style.display = "none";
        document.getElementById("section4").style.display = "none";
        document.getElementById("progress").style.width = '25%';
    }
   
    function myFunction2(){
        document.getElementById("section1").style.display = "none";
        document.getElementById("section2").style.display = "none";
        document.getElementById("section3").style.display = "block";
        document.getElementById("section4").style.display = "none";
        document.getElementById("progress").style.width = '50%';
    }
    
    function myFunction2i(){
        document.getElementById("section1").style.display = "block";
        document.getElementById("section2").style.display = "none";
        document.getElementById("section3").style.display = "none";
        document.getElementById("section4").style.display = "none";
        document.getElementById("progress").style.width = '25%';
    }
    
    function myFunction3(){
        document.getElementById("section1").style.display = "none";
        document.getElementById("section2").style.display = "none";
        document.getElementById("section3").style.display = "none";
        document.getElementById("section4").style.display = "block";
        document.getElementById("progress").style.width = '75%';
    }
    
    function myFunction3i(){
        document.getElementById("section1").style.display = "none";
        document.getElementById("section2").style.display = "block";
        document.getElementById("section3").style.display = "none";
        document.getElementById("section4").style.display = "none";
        document.getElementById("progress").style.width = '50%';
    }
    
    function myFunction4i(){
        document.getElementById("section1").style.display = "none";
        document.getElementById("section2").style.display = "none";
        document.getElementById("section3").style.display = "block";
        document.getElementById("section4").style.display = "none";
        document.getElementById("progress").style.width = '75%';
    }
</script>