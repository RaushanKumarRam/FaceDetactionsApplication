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
    String title = (String) session.getAttribute("session_title");
    if(title==null || title.equals(""))
    {
        title="";
    }
    String skills = (String) session.getAttribute("session_skills");
    if(skills==null || skills.equals(""))
    {
        skills="";
    }
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
                        <form action="EditProfileAbout" method="POST">
                            <b> <jsp:expression> session.getAttribute("session_email") </jsp:expression> </b> <br> <br>
                            <input type="text" value="<jsp:expression> name </jsp:expression>" name="name1" class="textfield_design"/> <br> <br>
                            <input type="text" value="<jsp:expression> gender </jsp:expression>" name="gender1" class="textfield_design" /> <br> <br>
                            <input type="text" value="<jsp:expression> city </jsp:expression>" name="city1" class="textfield_design" /> <br> <br>
                            <input type="text" value="<jsp:expression> title </jsp:expression>" name="title1" class="textfield_design" placeholder="Profile Title" /> <br> <br>
                            <textarea placeholder="Skills" name="skills1" style="padding: 5px 10px; width: 300px; height: 100px; border-radius: 10px; border: 1px solid gray;"> <jsp:expression>skills</jsp:expression> </textarea> <br> <br>
                            <input type="submit" value="Update" class="btn btn-danger" />
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-2"> </div>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
