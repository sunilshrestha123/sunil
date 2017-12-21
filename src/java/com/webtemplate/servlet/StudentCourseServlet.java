/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.servlet;

import com.webtemplate.dao.CourseDao;
import com.webtemplate.dao.StudentCourseDao;
import com.webtemplate.model.CourseModel;
import com.webtemplate.model.StudentCourseModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */

public class StudentCourseServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            int sid=Integer.parseInt(request.getParameter("sid"));
        ArrayList<StudentCourseModel> al=StudentCourseDao.display(sid);
        request.setAttribute("sunil",al);

        RequestDispatcher rd=request.getRequestDispatcher("DisplayStudentCourse.jsp");
        rd.forward(request,response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet requests
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
          int sid=Integer.parseInt(request.getParameter("sid"));
        if(request.getParameter("action").equalsIgnoreCase("add")){
         request.setAttribute("sid",sid);
          ArrayList<CourseModel>al=CourseDao.display();
      request.setAttribute("course",al);
         RequestDispatcher rd=request.getRequestDispatcher("AddStudentCourse.jsp");
        rd.forward(request,response);
        }else if(request.getParameter("action").equalsIgnoreCase("view")){
        processRequest(request,response);
        
        
        
    }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
      int sid=Integer.parseInt(request.getParameter("sid"));
      int cid=Integer.parseInt(request.getParameter("cid"));
      String date =request.getParameter("date");
       String time=request.getParameter("time");
       if(request.getParameter("action").equalsIgnoreCase("save")){
          StudentCourseModel scm=new StudentCourseModel();
          scm.setSid(sid);
          scm.setCid(cid);
          scm.setDate(date);
          scm.setTime(time);
          System.out.println("sid"+sid);
          System.out.println("cid"+cid);
          System.out.println("date"+date);
          System.out.println("time"+time);
          StudentCourseDao.insert(scm);
          processRequest(request,response);
         
               
       }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
