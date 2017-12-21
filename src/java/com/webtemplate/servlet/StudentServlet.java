/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.servlet;

import com.webtemplate.dao.StudentDao;
import com.webtemplate.model.StudentModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class StudentServlet extends HttpServlet {

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
        ArrayList<StudentModel> al=StudentDao.display();
        request.setAttribute("student",al);
        RequestDispatcher rd=request.getRequestDispatcher("DisplayStudent.jsp");
        rd.forward(request,response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //  processRequest(request, response);
   
      if(request.getParameter("action").equalsIgnoreCase("Display")){
        processRequest(request, response);
        }else if(request.getParameter("action").equalsIgnoreCase("delete")){
    int sid=Integer.parseInt(request.getParameter("sid"));
    StudentDao.delete(sid);
    processRequest(request,response);
    }
    else if(request.getParameter("action").equalsIgnoreCase("edit")){
        int sid=Integer.parseInt(request.getParameter("sid"));
        StudentModel sm=StudentDao.edit(sid);
    request.setAttribute("student",sm);
    RequestDispatcher rd =request.getRequestDispatcher("EditStudent.jsp");
    rd.forward(request, response);
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
       
    String fname=request.getParameter("fname");
       String mname=request.getParameter("mname");
       String lname=request.getParameter("lname");
       String birthdate=request.getParameter("birthdate");
       String gender=request.getParameter("gender");
       String address=request.getParameter("address");
      String city=request.getParameter("city");
      String phone=request.getParameter("phone");
      String email=request.getParameter("email");
    String level=request.getParameter("level");
    String programme=request.getParameter("programme");
    if(request.getParameter("action").equalsIgnoreCase("save")){
    StudentModel sm=new StudentModel();
    sm.setFname(fname);
    sm.setMname(mname);
    sm.setLname(lname);
    sm.setBirthdate(birthdate);
    sm.setGender(gender);
    sm.setAddress(address);
    sm.setCity(city);
    sm.setPhone(phone);
    sm.setEmail(email);
    sm.setLevel(level);
    sm.setProgramme(programme);
    StudentDao.insert(sm);
       
    }
    else if(request.getParameter("action").equalsIgnoreCase("update")){
    int sid=Integer.parseInt(request.getParameter("sid"));
    StudentModel sm=new StudentModel(sid,fname,mname,lname,birthdate,gender,address,city,email,phone,level,programme);
    StudentDao.update(sm);
       
    }
    response.sendRedirect("StudentServlet?action=display");
   
     
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
