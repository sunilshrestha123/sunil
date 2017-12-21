<%-- 
    Document   : AddStudent
    Created on : Jun 3, 2017, 7:20:16 AM
    Author     : sunil shrestha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin 2 - Bootstrap Admin Theme</title>

        <!-- Bootstrap Core CSS -->
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
            <%@include file="Sidebar.jsp" %>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Student</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Add Student
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form role="form" method="POST" action="StudentServlet?action=save">
                                            <div class="form-group">
                                                <label>First Name:</label>
                                                <input class="form-control" placeholder="Eneter first name" name="fname">

                                            </div>
                                            <div class="form-group">
                                                <label>Middle Name:</label>
                                                <input class="form-control" placeholder="Enter middle name" name="mname">

                                            </div>
                                            <div class="form-group">
                                                <label>Last Name:</label>
                                                <input class="form-control" placeholder="Enter last name" name="lname">


                                            </div>
                                            <div class="form-group">
                                                <label>Date of birth:</label>
                                                <input class="form-control" placeholder="Enter date of birth" name="birthdate">
                                            </div>
                                            <div class="form-group">
                                                <label>Gender:</label>
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

                                            </div>
                                            <div class="form-group">
                                                <label>Address:</label>
                                                <input class="form-control" placeholder="Enter middle address" name="address">

                                            </div>
                                            <div class="form-group">
                                                <label>City:</label>
                                                <input class="form-control" placeholder="Enter middle city" name="city">

                                            </div>
                                            <div class="form-group">
                                                <label>Phone:</label>
                                                <input class="form-control" placeholder="Enter middle name" name="phone">

                                            </div>
                                            <div class="form-group">
                                                <label>E-mail</label>
                                                <input class="form-control" placeholder="Enter middle name" name="email">

                                            </div>
                                            <div class="form-group" >
                                                <label>level</label>
                                                <select class="form-control" name="level">
                                                    <option>PH.d</option>
                                                    <option>MASTERS</option>
                                                    <option>BACHELOR</option>
                                                    <option>+2</option>
                                                    <option>SEE</option>


                                                </select>
                                            </div>
                                            <div class="form-group" >
                                                <label>Programme</label>
                                                <select class="form-control" name="programme">
                                                    <option>SCIENCE</option>
                                                    <option>COMMERCE</option>
                                                    <option>ARTS</option>
                                                    <option>EDUCATION</option>
                                                    <option>AGRICULTURE</option>
                                                    <option>IT</option>

                                                </select>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            ADD COURSE ENROLLED FOR
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <form role="form" >
                                                                        <div class="form-group" >
                                                                            <label>Course</label>
                                                                            <select class="form-control" name="course">
                                                                                <option>PH.d</option>
                                                                                <option>MASTERS</option>
                                                                                <option>BACHELOR</option>
                                                                                <option>+2</option>
                                                                                <option>SEE</option>


                                                                            </select>
                                                                            <div class="form-group">
                                                                                <label>Course Price</label>
                                                                                <input class="form-control" placeholder="" name="cprice" readonly>

                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Registration Price(if other)</label>
                                                                                <input class="form-control" placeholder="" name="reprice">

                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Installment</label>
                                                                                <input class="form-control" placeholder="" name="installment">

                                                                            </div>



                                                                    </form>
                                                                </div>
                                                                <!-- /.col-lg-6 (nested) -->

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
                                            <button type="submit" class="btn btn-success">Submit Button</button>
                                            <button type="reset" class="btn btn-danger">Reset Button</button>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->

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
</body>
</html>
