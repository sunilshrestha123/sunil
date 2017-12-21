/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.servlet;

import com.webtemplate.dao.TeacherDao;
import com.webtemplate.model.TeacherModel;
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
public class TeacherServlet extends HttpServlet {

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
        ArrayList<TeacherModel> al=TeacherDao.display();
        request.setAttribute("teacher",al);
     RequestDispatcher rd=request.getRequestDispatcher("DisplayTeacher.jsp");
     rd.forward(request, response);
        
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
        //processRequest(request, response);
        if(request.getParameter("action").equalsIgnoreCase("display")){
            processRequest(request, response);
        }else if(request.getParameter("action").equalsIgnoreCase("delete")){
        int tid=Integer.parseInt(request.getParameter("tid"));
        TeacherDao.delete(tid);
            processRequest(request, response);      
        }
        else if(request.getParameter("action").equalsIgnoreCase("edit")){
        int tid=Integer.parseInt(request.getParameter("tid"));
        TeacherModel tm=TeacherDao.edit(tid);
        request.setAttribute("teacher",tm);
        RequestDispatcher rd=request.getRequestDispatcher("EditTeacher.jsp");
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
    String gender=request.getParameter("gender");
    String bdate=request.getParameter("birthdate");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    String description=request.getParameter("description");
    String photo=request.getParameter("photo");
    String time=request.getParameter("time");
    if(request.getParameter("action").equalsIgnoreCase("save")){
    TeacherModel tm=new TeacherModel();
    tm.setFname(fname);
    tm.setMname(mname);
    tm.setLname(lname);
    tm.setGender(gender);
    tm.setBdate(bdate);
    tm.setPhone(phone);
    tm.setEmail(email);
    tm.setAddress(address);
    tm.setDescription(description);
    tm.setPhoto(photo);
    tm.setTime(time);
    TeacherDao.insert(tm);
       response.sendRedirect("TeacherServlet?action=display");
    
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
