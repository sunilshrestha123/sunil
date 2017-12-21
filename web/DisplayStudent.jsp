<%-- 
    Document   : DisplayStudent
    Created on : Jun 10, 2017, 1:17:46 PM
    Author     : sunil shrestha
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
                    <h1 class="page-header">Student</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
             <div class="panel-body">
            <button type="button" class="btn btn-outline btn-success">file save in excel</button>
             </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        Display Student
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
               <th>Firstname</th>
               <th>Middlename</th>
               <th>Lastname</th>
               <th>Birthdate</th>
               <th>Gender</th>
               <th>Address</th>
               <th>City</th>
               <th>Phone</th>
               <th>Email</th>
               <th>Level</th>
               <th>Programme</th>
               <th>Delete</th>
               <th>Edit</th>
               <th>Add Student's Course </th>  
             <th>view</th>
           </tr>
                                </thead>
                             <tbody>
               <c:forEach var="student" items="${student}">
                   <tr>
                       <td>${student.fname}</td>
                       <td>${student.mname}</td>
                       <td>${student.lname}</td>
                       <td>${student.birthdate}</td>
                       <td>${student.gender}</td>
                       <td>${student.address}</td>
                       <td>${student.city}</td>
                      
                       <td>${student.phone}</td>
                       <td>${student.email}</td>
                       <td>${student.level}</td>
                       <td>${student.programme}</td>
                       
                       <td><a href="StudentServlet?action=delete&sid=${student.sid}">Delete</a></td>
                       <td><a href="StudentServlet?action=edit&sid=${student.sid}">Edit</a></td>
                       <td><a href="StudentCourseServlet?action=add&sid=${student.sid}">Add</a></td>
                       <td><a href="StudentCourseServlet?action=view&sid=${student.sid}">View Course</a></td>
           </tr>
            </c:forEach>
           </tbody>
                            </table>
                    
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        
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

    <!-- DataTables JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

  
    </body>
</html>
