<%-- 
    Document   : AddGroup
    Created on : Nov 23, 2017, 11:33:30 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                    <form role="form" method="POST" action="GroupServlet?action=save">
                                      
                          <div class="form-group">
                                        <label>Course</label>
                                           <select class="form-control" name="cid">
                                               <c:forEach var="course" items="${coursedata}">
                                                   <option value="${course.cid}">${course.title}</option>
                                               </c:forEach>


                                            </select>
                                                        
                                        </div> 
                                        <div class="form-group">
                                            <label>Starting Time</label>
                                            <input class="form-control" type="time" name="stime">
                                        </div>
                                                <div class="form-group">
                                            <label>Ending Time</label>
                                            <input class="form-control" type="time" name="etime">
                                        </div>
                              <div class="form-group">
                                        <label>Teacher</label>
                                         <select class="form-control" name="tid">
                                               <c:forEach var="teacher" items="${teacherdata}">
                                                   <option value="${teacher.tid}">${teacher.fname}</option>
                                               </c:forEach>


                                            </select>
                                                        
                                        </div>
                                        
                                           <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control" type="date" name="date">
                                        </div>
                                        
                                            
                                            
                                    
                                    
                                        <button type="submit" class="btn btn-success">Add Group
                                        </button>
                                        <button type="reset" class="btn btn-primary">Reset Button</button>
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
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

        
    </body>
</html>
