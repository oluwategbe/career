<%-- 
    Document   : index
    Created on : Jun 19, 2021, 11:49:43 AM
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
        <div class="d-flex justify-content-center align-items-center bg-image" style="background-image: url('images/index.jpg');height: 100vh;">
            <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                <nav class="navbar navbar-expand navbar-light p-2">
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
              <div class="p-5 text-center bg-secondary">
                <h1 class="mb-3 h1 text-white">Hey <%= request.getSession().getAttribute("username")%>!</h1>
              </div>
              <div class="text-center text-white">
                  <h3 class="h2">What field are you in?</h3>
              </div>
              <div class="container mt-0">
            <div class="row">
              <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                <a href="${pageContext.request.contextPath}/home/art/index.jsp" class="">
                    <div class="bg-image card " style="height: 300px; background-image: url('images/art.jpg'); border-radius: 20px;">
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                      <div class="d-flex justify-content-center align-items-center h-100">
                        <p class="text-white mb-0 h1">ART</p>
                      </div>
                    </div>
                     </div>
                </a>
              </div>
                   <div class="col-lg-3 mb-4 mb-lg-0">
                     <a href="${pageContext.request.contextPath}/home/science/index.jsp" class="">
                      <div class="bg-image card" style="height: 300px; background-image: url('images/science.jpg'); border-radius: 20px;">
                        <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                           <div class="d-flex justify-content-center align-items-center h-100">
                             <p class="text-white mb-0 h1">SCIENCE</p>
                           </div>
                         </div>
                      </div>
                     </a>
                   </div>
                   <div class="col-lg-3 mb-4 mb-lg-0">
                     <a href="${pageContext.request.contextPath}/home/technical/index.jsp" class="">
                      <div class="bg-image card" style="height: 300px; background-image: url('images/commercial.jpg'); border-radius: 20px;">
                        <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                           <div class="d-flex justify-content-center align-items-center h-100">
                             <p class="text-white mb-0 h1">TECHNICAL</p>
                           </div>
                         </div>
                      </div>
                     </a>
                   </div>
                   <div class="col-lg-3 mb-4 mb-lg-0">
                     <a href="${pageContext.request.contextPath}/home/commercial/index.jsp" class="">
                      <div class="bg-image card" style="height: 300px; background-image: url('images/technical.jpg'); border-radius: 20px;">
                        <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                           <div class="d-flex justify-content-center align-items-center h-100">
                             <p class="text-white mb-0 h1">COMMERCIAL</p>
                           </div>
                         </div>
                      </div>
                     </a>
                   </div>
                 </div>
               </div>
          </div>
        </div>
    </body>
</html>
