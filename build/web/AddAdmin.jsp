<%-- 
    Document   : Addadmin
    Created on : Nov 24, 2017, 11:13:44 PM
    Author     : Admin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>IT tranning nepal</title>
    <script src="assest/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Bootstrap Core CSS -->
    <script src="assest/jquery-ui.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



    </head>
    <body>
        <div id="wrapper">
   <%@include file="Sidebar.jsp"%>
       <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Forms</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                      <form role="form" method="POST" action="AdminServlet?action=save">
                                    
                                        <div class="form-group">
                                           
                                            <label>NAME</label>
                                            <input class="form-control" placeholder="Enter Full Name" name="name">
                                        </div>
                                         <div class="form-group">
                                           
                                            <label>Email</label>
                                            <input class="form-control" placeholder="Enter Email" name="email">
                                        </div>
                                         <div class="form-group">
                                           
                                            <label>phone</label>
                                            <input class="form-control" placeholder="Enter phone" name="phone">
                                        </div>
                                         <div class="form-group">
                                           
                                            <label>Password</label>
                                            <input class="form-control" id="txtpassword" placeholder="Enter password" type="password" name="repassword">
                                        </div>
                                              <div class="from-group">
                                            <label>Re-Enter Password</label>
                                            <input  class="form-control"  id="txtconfirmpassword" type="password" placeholder="Re-Enter the password" name="password">
                                            </div>
                                     <div class="form-group">
                                           
                                            <label>Birthdate</label>
                                            <input class="form-control"  type="date" name="bdate">
                                        </div>
                                         <div class="form-group">
                                           
                                            <label>Address</label>
                                            <input class="form-control" placeholder="Enter the address" name="address">
                                        </div>
                              <div class="form-group">
                                            <label>Gender</label>
                                            <label class="radio-inline">
                                                <input type="radio" name="gender" id="optionsRadiosInline1" value="Male" >Male
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="gender" id="optionsRadiosInline2" value="Female">Female
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="gender" id="optionsRadiosInline3" value="Other">Other
                                            </label>
                                        </div>
                                            <div class="form-group">
                                            <label>Photo</label>
                                            <input type="file" name="photo">
                                        </div>
                     
                                        <button type="submit"  id="btnSubmit" class="btn btn-success">Submit</button>
                                        <button type="reset" class="btn btn-primary">Reset Form</button>
                                       <c:set var="msg" value='<%=request.getAttribute("msg")%>'></c:set>
                            <c:if test="${!msg.equals(null)}">
                                <label for="terms" style="padding-top: 20px;color: red">${msg}</label>
                            </c:if>
                                      </form>
                                </div>
                          
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#txtpassword").val();
            var confirmPassword = $("#txtconfirmpassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

    </body>
</html>
