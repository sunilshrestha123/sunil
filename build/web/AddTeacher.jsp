<%-- 
    Document   : Teacher
    Created on : Nov 21, 2017, 12:51:50 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin 2 - Bootstrap Admin Theme</title>

        <!   -- Bootstrap Core CSS -->
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
                        <h1 class="page-header">Teacher</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Add Teacher Information
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form role="form" method="POST" action="TeacherServlet?action=save">
                                            <div class="form-group">
                                                <label>First Name:</label>
                                                <input class="form-control" placeholder="Enter the first name" name="fname">
                                            </div>
                                            <div class="form-group">
                                                <label>Middle Name</label>
                                                <input class="form-control" placeholder="Enter middle name" name="mname">
                                            </div>
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input class="form-control" placeholder="Enter text last name" name="lname">
                                            </div>
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" id="optionsRadios1" value="Male" checked>Male
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" id="optionsRadios2" value="Female">Female
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" id="optionsRadios3" value="Other">Other
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>Birth Date:</label>
                                                <input class="form-control" type="date" name="birthdate">
                                            </div>



                                            <div class="form-group">
                                                <label>phone</label>
                                                <input class="form-control" placeholder="Enter phone no" name="phone">
                                            </div>
                                            <div class="form-group">
                                                <label>Email </label>
                                                <input class="form-control"  type="email" placeholder="Enter email" name="email">
                                            </div>
                                            <div class="form-group">
                                                <label>address</label>
                                                <input class="form-control" name="address" placeholder="Enter text" name="address">
                                            </div>
                                              <div class="form-group">
                                            <label>description</label>
                                            <textarea class="form-control" rows="3" name="description"></textarea>
                                        </div>
                                          <div class="form-group">
                                            <label>Photo Input</label>
                                            <input type="file" name="photo">
                                        </div>
                                        
                                                 <div class="form-group">
                                                     <label>Time</label>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="full-time" name="time">Full-Time
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="part-time" name="time">Part-Time
                                                </label>
                                            </div>
                            
                                            </div>
                                      

                                            <button type="submit" class="btn btn-sucess">Save Teacher</button>
                                            <button type="reset" class="btn btn-primary">Reset</button>
                                        </form>
                                    </div>

                                    <!-- /.col-lg-6 (nested) -->
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
        <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>
    </body>
</html>
