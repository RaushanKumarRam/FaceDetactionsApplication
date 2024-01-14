<%-- 
    Document   : Profile
    Created on : 21 Nov, 2020, 4:08:36 PM
    Author     : Deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:scriptlet>
    String name = (String) session.getAttribute("session_name");
    String gender = (String) session.getAttribute("session_gender");
    String city = (String) session.getAttribute("session_city");
    String fields = (String) session.getAttribute("session_fields");
    if(fields==null || fields.equals(""))
    {
        fields="--- Not Available ---";
    }
    String title = (String) session.getAttribute("session_title");
    String skills = (String) session.getAttribute("session_skills");
</jsp:scriptlet>

<jsp:scriptlet>
    if (name == null || name.equals("")) {
        response.sendRedirect("login.jsp");
    }
</jsp:scriptlet>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Raushansoft - Profile </title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <jsp:include page="profileheader.jsp" />
        <jsp:include page="menubar.jsp" />

        <div class="row">
            <div class="col-md-2"> </div>
            <div class="col-md-8">
                <div class="row" style="border: 1px solid gray; box-shadow: 0px 0px 2px gray; border-radius: 3px">
                    <div class="col-md-2">
                        <img src="img/kanti.jpeg" height="100"/>
                    </div>
                    <div class="col-md-10">
                        <h3 style="color: blue"> <jsp:expression> name.toUpperCase()</jsp:expression> <span style="font-size: 12px"> (<a href="edit-profile-about.jsp"> edit details </a>)</span> </h3>
                        <jsp:expression>title</jsp:expression> <br> <br>
                        <span style="color: #acaaaa"> Skills : </span> <jsp:expression>skills</jsp:expression> <br> <br>
                        <span style="color: #acaaaa"> Gender : </span> <jsp:expression> gender</jsp:expression> <br>
                        <span style="color: #acaaaa"> City : </span> <jsp:expression> city</jsp:expression> <br>
                        <span style="color: #acaaaa"> Fields : </span> <jsp:expression> fields</jsp:expression> <br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"> </div>
                        <div class="col-md-10">
                            <h5> Education Details <span style="font-size: 12px"> (<a href="edit-details.jsp"> edit details </a>)</span> </h5>
                            School : <br>
                            Year : <br>
                            College : <br>
                            Passing Year : <br>
                            Experience : <br>
                        </div>
                    </div>
                    <div class="row" style="background-color: #ececec">
                        <div class="col-md-2"> </div>
                        <div class="col-md-8"> <input type="submit" value="Follow" /> </div>
                        <div class="col-md-2"> </div>
                    </div>
                </div>
                <div class="col-md-2"> </div>
            </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
