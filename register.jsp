<%-- 
    Document   : register
    Created on : May 20, 2021, 11:05:13 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
         <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
          rel="stylesheet"
        />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
        <title>Homepage</title>
    </head>
    <body>
        <div class="bg-image" style="background-image: url(images/register.jpg); background-size: cover; height: 100vh; width: 100%;">
            <div class="mask" style="background-color: rgba(0, 0, 0, 0.8 )">
                <section class="container-fluid">
                    <section class="row justify-content-center">
                        <% if(request.getAttribute("NOTIFICATION") != null){%>
                            <div class="alert alert-danger alert-dismissible" role="alert">
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                              <%=request.getAttribute("NOTIFICATION")%>
                            </div>
                        <% } %>
                        <section class="col-12 col-sm-6 col-md-3">
                            <h4 class="h4">
                                <div class="font-weight-bold text-white text-center pl-3" style="position: absolute;top: 15vh;padding: 0px;"><b class="text-warning">C</b>areer <b class="text-danger">P</b>ath <b class="text-success">A</b>dvisory <b class="text-info">S</b>ystem</b></div>
                            </h4>
                            <form class="pt-1" style="width: 100%;background: white;position: absolute;top: 20vh;padding: 30px;border-radius: 10px;" action="${pageContext.request.contextPath}/register" method="post">
                                <div class="font-weight-bold pb-1 text-center">Sign Up Form</div>
                                <div class="form-group">
                                  <label for="FirstName">First Name</label>
                                    <input type="text" class="form-control" name="firstname" id="firstname" placeholder="Enter Firstname" required>
                                </div>
                                <div class="form-group">
                                  <label for="Lastname">Last Name</label>
                                  <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Enter Lastname" required>
                                </div>
                                <div class="form-group">
                                  <label for="Username">Username</label>
                                    <input type="text" class="form-control" name="username" id="username" placeholder="Enter Username" required>
                                </div>
                                <div class="form-group">
                                  <label for="password">Password</label>
                                  <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                                </div>
                                <button type="submit" class="btn btn-primary w-100 pb-1">Sign up</button>
                                    <div class="text-center">Already have an account?<a href="${pageContext.request.contextPath}/home/index.jsp">Sign In</div>
                            </form>
                        </section>
                    </section>
                </section>
            </div>
        </div>
    </body>
</html>
