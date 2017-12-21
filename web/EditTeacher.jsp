<%-- 
    Document   : EditTeacher
    Created on : Nov 21, 2017, 12:52:15 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="${pageContext.request.contextPath}/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  
    </head>
    
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
                                        <form role="form" method="POST" action="TeacherServlet?action=update">
                                            <input name="tid" type="hidden" value="${teacher.tid}">
                                            <div class="form-group">
                                                
                                                <label>First Name:</label>
                                                <input class="form-control" placeholder="Enter the first name" name="fname" value="${teacher.fname}">
                                            </div>
                                            <div class="form-group">
                                                <label>Middle Name</label>
                                                <input class="form-control" placeholder="Enter middle name" name="mname" value="${teacher.mname}">
                                            </div>
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input class="form-control" placeholder="Enter text last name" name="lname" value="${teacher.lname}">
                                            </div>
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" id="optionsRadios1" value="Male"  <c:if test="${teacher.gender=='Male'}">checked</c:if>>Male
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" id="optionsRadios2" value="Female" <c:if test="${teacher.gender=='Female'}">checked</c:if>>Female
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="gender" id="optionsRadios3" value="Other"  <c:if test="${teacher.gender=='Other'}">checked</c:if>>Other
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>Birth Date:</label>
                                                <input class="form-control" type="date" name="birthdate" value="${teacher.bdate}">
                                            </div>



                                            <div class="form-group">
                                                <label>phone</label>
                                                <input class="form-control" placeholder="Enter phone no" name="phone" value="${teacher.phone}">
                                            </div> 
                                            <div class="form-group">
                                                <label>Email </label>
                                                <input class="form-control"  type="email" placeholder="Enter email" name="email" value="${teacher.email}">
                                            </div>
                                            <div class="form-group">
                                                <label>address</label>
                                                <input class="form-control" name="address" placeholder="Enter text" name="address" value="${teacher.address}">
                                            </div>
                                              <div class="form-group">
                                            <label>description</label>
                                            <textarea class="form-control" rows="3" name="description" value="${teacher.description}"></textarea>
                                        </div>
                                          <div class="form-group">
                                            <label>Photo Input</label>
                                            <input type="file" name="photo" value="${teacher.photo}">
                                        </div>

                                                 <div class="form-group">
                                                     <label>Time</label>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="full-time" name="time" <c:if test="${teacher.time}">checked="checked"</c:if>>Full-Time
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="part-time" name="time"<c:if test="${teacher.time}">checked="checked"</c:if>>Part-Time
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
