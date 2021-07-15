<%-- 
    Document   : index
    Created on : May 15, 2021, 1:40:41 PM
    Author     : Pelumi Tegbe
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
        
         <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
          rel="stylesheet"
        />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
        <title>Homepage</title>
    </head>
    <body>
        <div class="bg-image" style="background-image: url(home/images/login.jpg); background-size: cover; height: 100vh; width: 100%;">
            <div class="mask" style="background-color: rgba(0, 0, 0, 0.8)">
               
                <section class="container-fluid">
                    <section class="row justify-content-center">
                        <section class="col-12 col-sm-6 col-md-3">
                            
                            <h4 class="h4">
                               <div class="font-weight-bold text-white pl-3" style="position: absolute;top: 25vh;text-align: center;padding: 0px;"><b class="text-warning">C</b>areer <b class="text-danger">P</b>ath <b class="text-success">A</b>dvisory <b class="text-info">S</b>ystem</b></div>
                            </h4>
                            <form class="pt-1" style="width: 100%;background: white;position: absolute;top: 30vh;padding: 30px;border-radius: 10px;" action="${pageContext.request.contextPath}/login" method="post">
                                <div class="font-weight-bold pb-1 text-center">Sign in to take the test</div>
                                <% if(request.getAttribute("NOTIFICATION1") != null){%>
                                <div class="alert alert-success alert-dismissible" role="alert">
                                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                      <%=request.getAttribute("NOTIFICATION1")%>
                                    </div>
                                <% } %>
                                <% if(request.getAttribute("NOTIFICATION") != null){%>
                                <div class="alert alert-danger alert-dismissible" role="alert">
                                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                      <%=request.getAttribute("NOTIFICATION")%>
                                    </div>
                                <% } %>
                                <div class="form-group">
                                  <label for="Username">Username</label>
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
                                </div>
                                <div class="form-group">
                                  <label for="password">Password</label>
                                  <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                                </div>
                                <button type="submit" class="btn btn-primary w-100 pb-1">Sign in</button>
                                <div class="text-center">Don't have an account?<a href="${pageContext.request.contextPath}/home/register.jsp">Register</div>
                                
                            </form>
                        </section>
                    </section>
                </section>
                <div class="text-right"><a style="color: black;" href="${pageContext.request.contextPath}/home/admin/index.jsp">Admin</a></div>
            </div>
        </div>
    </body>
</html>
