<%-- 
    Document   : contact
    Created on : Jul 8, 2021, 1:40:01 PM
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
              <div class="p-5 text-center bg-warning">
                <h1 class="mb-3 h1 text-dark">Contact</h1>
              </div>
              <div class="m-5 p-5 text-center bg-secondary">
                <h4 class="h4 text-white text-left">Name: Oluwategbe Pelumi Ayomikun</h4>
                <h4 class="h4 text-white text-left">Phone No: 08030521920</h4>
                <h4 class="h4 text-white text-left">Address: Ibadan, Oyo State</h4>
                <h4 class="h4 text-white text-left">Email: pelumitegbe@gmail.com</h4>
                <h4 class="h4 text-white text-left">Ig: pe.lumi_</h4>
              </div>
          </div>
        </div>
    </body>
</html>


