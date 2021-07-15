<%-- 
    Document   : index
    Created on : Jun 26, 2021, 9:46:01 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!--        <link rel="stylesheet" href="${pageContext.request.contextPath}/home/css/bootstrap.css">-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/home/css/mycss.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>Homepage</title>
    </head>
    <body>
        <section class="container-fluid bg">
            <section class="row justify-content-center">
                <!--"justify-content-center" centers it horizontally-->
                <% if(request.getAttribute("NOTIFICATION") != null){%>
                    <div class="alert alert-danger alert-dismissible" role="alert">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <%=request.getAttribute("NOTIFICATION")%>
                    </div>
                <% } %>
                <section class="col-12 col-sm-6 col-md-3">
                    <div class="text1 font-weight-bold"><b class="text-warning">C</b>areer <b class="text-danger">P</b>ath <b class="text-success">A</b>dvisory <b class="text-info">S</b>ystem</b></div>
                    <form class="form-container pt-1" action="${pageContext.request.contextPath}/adminlogin" method="post">
                        <div class="font-weight-bold pb-1 text-center">Sign in to take the test</div>
                        <div class="form-group">
                          <label for="Username">Username</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username">
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary w-100 pb-1">Sign in</button>
                    </form>
                </section>
            </section>
        </section>
    </body>
</html>

