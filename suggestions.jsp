<%-- 
    Document   : suggestions
    Created on : Jun 30, 2021, 8:54:09 PM
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
        <title>Career Suggestions Page</title>
    </head>
    <body>
         <div class="d-flex justify-content-center align-items-center bg-image" style="background-image: url(home/images/suggestions.jpg); background-size: cover; height: 100vh; width: 100%;">
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
              <div class="p-5 text-center bg-transparent mb-2">
                  <% if(request.getAttribute("NOTIFICATION") != null){%>
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <%=request.getAttribute("NOTIFICATION")%>
                    </div>
                  <% } %>
                  <b><h1 class="mb-3 h1 text-white">Congratulations <%= request.getSession().getAttribute("username")%>!</h1></b>
              </div>
              <div class="p-3 text-center bg-transparent w-75 m-auto" style="margin-top: 30px; border-left: 20px blue solid;">
                  <h4 class="h4 text-white">The system suggests <b class="bg-white" style="color: blue"> <%= request.getAttribute("career")%></b> as potential courses for you to major in</h4>
              </div>
              <div class="m-auto bg-transparent text-white text-center w-75 p-4">
                  <div class="text-center">
                      <h3 class="h3 bg-primary text-white">Personality</h3>
                  </div>
                <div class="text-center">
                  <div>
                      <h4 class="mb-2 h4"><%= request.getAttribute("personality")%>: <%= request.getAttribute("type")%></h4>
                  </div>
                </div>
                <div class="text-center">
                  <div>
                    <h5 class="mb-0 h5"><%= request.getAttribute("description")%></h5>
                  </div>
                </div>
              </div>
              <div>
                  <section class="container-fluid mt-0">
                    <section class="row justify-content-center">
                        <section class="col-12 col-sm-6 col-md-3">
                            <form class="pt-1" style="width: 100%;background: white;position: absolute;padding: 20px;border-radius: 10px;" action="${pageContext.request.contextPath}/feedback" method="post">
                                <div class="font-weight-bold pb-1 text-center">Your feedback would be greatly appreciated</div>
                                <div class="row">
                                    <div class="col-5">
                                        <label for="like">Was this helpful?</label>
                                    </div>
                                    <div class="col-2">
                                        <label for="yes">Yes</label>
                                        <input type="radio" name="like" value="Yes">
                                    </div>
                                    <div class="col-2">
                                        <label for="no">No</label>
                                        <input type="radio" name="like" value="No">
                                    </div>
                                    <div class="col-3">
                                        <label for="notreally">Neutral</label>
                                        <input type="radio" name="like" value="Neutral">
                                    </div>
                                </div>
                                <div class="">
                                    <div class="">
                                        <label for="feedback">Additional feedback? (Optional)</label>
                                    </div>
                                </div>
                                <div class="row pb-1">
                                    <textarea type="text" name="feedback"></textarea>
                                </div>
                                <div hidden>
                                    <input type="text" name="username" value="<%= request.getSession().getAttribute("username")%>"></input>
                                </div>
                                <div hidden>
                                    <input type="text" name="career" value="<%= request.getAttribute("career")%>"></input>
                                    <input type="text" name="personality" value="<%= request.getAttribute("personality")%>"></input>
                                    <input type="text" name="type" value="<%= request.getAttribute("type")%>"></input>
                                    <input type="text" name="description" value="<%= request.getAttribute("description")%>"></input>
                                </div>
                                
                                <button class="w-100 btn btn-primary" type="submit">Submit</button>
                            </form>
                        </section>
                    </section>
                </section>
              </div>
            </div>
         </div>
    </body>
</html>
