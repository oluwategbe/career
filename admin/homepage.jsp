<%-- 
    Document   : homepage
    Created on : Jun 26, 2021, 9:59:58 PM
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
        <div class="d-flex justify-content-center align-items-center bg-image dashboard">
            <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                <nav class="navbar navbar-expand navbar-light p-2">
                <a class="navbar-brand" href="#"><div class="text2 text-white">Career Path Advisory System</b></div></a>
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
                          <a class="dropdown-item" href="#">Profile</a>
                          <a class="dropdown-item" href="#">Logout</a>
                        </div>
                      </li>
                  </ul>
                </div>
              </nav>
              <div class="p-5 text-center bg-light">
                <h1 class=" h1 text-dark">Hey <%= request.getSession().getAttribute("username")%>!</h1>
              </div>
              <section class="container-fluid">
                    <section class="row justify-content-center">
                        <section class="col-12 col-sm-6 col-md-3">
                     
                            <form class="pt-1" style="width: 100%;background: white;position: absolute;top: 4vh;padding: 30px;border-radius: 10px;" action="${pageContext.request.contextPath}/saveCareer" method="post">
                                <% if(request.getAttribute("NOTIFICATION") != null){%>
                                  <div class="alert alert-danger alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <%=request.getAttribute("NOTIFICATION")%>
                                  </div>
                              <% } %>
                                <h4 class="h4 text-center">Enter the careers, personalities, minimum scores and fields</h4> 
                                  <div class="row">
                                      <div class="col-6">
                                          <div class="form-group">
                                                <label for="Personality">Personality</label>
                                                <input type="text" class="form-control" id="personality" name="personality" placeholder="Personality">
                                          </div>
                                      </div>
                                      <div class="col-6">
                                          <div class="form-group">
                                              <label for="Field">Field</label>
                                              <select class="form-control" id="field" name="field">
                                                  <option>art</option>                                        
                                                  <option>science</option>
                                                  <option>commercial</option>
                                                  <option>technical</option>                                        
                                              </select>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="row">
                                      <div class="col-6">
                                          <div class="form-group">
                                                <label for="Careers">Careers</label>
                                                <input type="text" class="form-control" id="careers" name="careers" placeholder="Careers">
                                          </div>
                                      </div>
                                      <div class="col-6">
                                          <div class="form-group">
                                                <label for="Type">Type</label>
                                                <input type="text" class="form-control" id="type" name="type" placeholder="Type">
                                          </div>
                                      </div>
                                  </div>
                                  <div class="row">
                                      <div class="col-12">
                                          <div class="form-group">
                                                <label for="Description">Description</label>
                                                <input type="text" class="form-control" id="description" name="description" placeholder="Description">
                                          </div>
                                      </div>
                                  </div>
                                  <button type="submit" class="btn btn-primary w-100 pb-1">Submit</button>
                            </form>
                           
                        </section>
                    </section>
                </section>

          </div>
        </div>
    </body>
</html>

