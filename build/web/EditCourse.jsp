<%-- 
    Document   : EditCourse
    Created on : Jun 10, 2017, 2:10:11 PM
    Author     : sunil shrestha
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
     

        <!-- Navigation -->
     

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Course</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Edit Course
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                    <form role="form" method="POST" action="CourseServlet?action=update">
                                         <div class="form-group">
                                            <label>cid</label>
                                            <input class="form-control"  name="cid" value="${course.cid}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label>Title</label>
                                            <input class="form-control" placeholder="Enter title" name="title" value="${course.title}">
                                        </div>
                                           <div class="form-group">
                                        <label>Type</label>
                                           <select class="form-control" name="type">
                                                <c:forEach items="Programming,WebDegining,Networking,Database,MobileAPPS,SoftWare Developing,Certification,Cms,Corporate,Other" var="coursevalue">
                                                    <c:choose>
                                                        <c:when test="${course.type==coursevalue}">
                                                            <option selected="selected">${coursevalue}</option>

                                                        </c:when>
                                                        <c:otherwise>
                                                            <option>${coursevalue}</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>


                                            </select>
                                                        
                                        </div>
                                             <div class="form-group">
                                            <label>Course ID</label>
                                            <input class="form-control" placeholder="Enter Duration" name="courseid" value="${course.courseid}">
                                        </div>
                                      
                                        <div class="form-group">
                                            <label>Price</label>
                      
                                            <input class="form-control" placeholder="Enter Price" name="price" value="${course.price}">
                                        </div>
                                        <div class="form-group">
                                            <label>Duration</label>
                                            <input class="form-control" placeholder="Enter Duration" name="duration" value="${course.duration}">
                                        </div>
                                     
                                        <button type="submit" class="btn btn-success">Update</button>
                                        <button type="reset" class="btn btn-primary">Reset </button>
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
