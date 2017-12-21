<%-- 
    Document   : DisplayTeacher
    Created on : Nov 21, 2017, 12:52:38 PM
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

    <title>Display teacher</title>
    <link href="assest/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap Core CSS -->
    <link href="assest/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="assest/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assest/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
    <script src="assest/jquery-ui.js" type="text/javascript"></script>
    <script src="assest/jquery-ui.min.js" type="text/javascript"></script>
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
    
      <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
        
    </head>

    <body>
        <div id="wrapper">
            <%@include file="Sidebar.jsp" %>
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
                                Displat teacher
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Tid</th>
                                            <th>First Name</th>
                                            <th>Middle Name</th>
                                            <th>Last Name </th>
                                            <th>GENDER</th>
                                            <th>Birthdate</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Description</th>
                                            <th>Time</th>
                                            <th>Edit</th>
                                            <th>Add Salary</th>
                                            <th>Delete</th>
                                            <th>Add Course</th>
                                         
                                    </tr>
                                </thead>
                                <tbody>
                                     <c:forEach var="teacher1" items="${teacher}">
                                         <tr>
                                            
                                        <td>${teacher1.tid}</td>
                                         <td>${teacher1.fname}</td>
                                        <td>${teacher1.mname}</td>
                                        <td>${teacher1.lname}</td>
                                        <td>${teacher1.gender}</td>
                                        <td>${teacher1.bdate}</td>
                                        <td>${teacher1.phone}</td>
                                        <td>${teacher1.email}</td>
                                        <td>${teacher1.address}</td>
                                        <td>${teacher1.description}</td>
                                        <td>${teacher1.time}</td>
                                        <td><a href="TeacherServlet?action=edit&tid=${teacher1.tid}"><button type="button" class="btn btn-primary">Edit Teacher</button></a></td>

                                        <td><button type="button" class="btn btn-success btn-lg" id="myBtn">Add Salary </button></td>
                                      
                                        <td><a href="TeacherServlet?action=delete&id=${teacher1.tid}"><button type="button" class="btn btn-danger">Delete</button></a></td>
                                     <td><a href="TeacherCourseServlet?action=display&tid=${teacher1.tid}"><button type="button" class="btn btn-info">view Course</button></a></td>

                                         </tr>
                                   
                                        
                                             </c:forEach>
                                </tbody>
                               
                            </table>
                            <!-- /.table-responsive -->
               
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <!-- /.row -->
         
          
         
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

    <!-- DataTables JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
</script>
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
        
    </body>
</html>
