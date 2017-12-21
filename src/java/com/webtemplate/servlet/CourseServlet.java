/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.servlet;

import com.webtemplate.dao.CourseDao;
import com.webtemplate.model.CourseModel;
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
 * @author sunil shrestha
 * 
 */
@WebServlet(name = "CourseServlet", urlPatterns = {"/CourseServlet"})
public class CourseServlet extends HttpServlet {

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
        ArrayList<CourseModel> al=CourseDao.display();
        request.setAttribute("course",al);
        RequestDispatcher rd=request.getRequestDispatcher("DisplayCourse.jsp");
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
        if(request.getParameter("action").equalsIgnoreCase("Display")){
        processRequest(request, response);
    }else if(request.getParameter("action").equalsIgnoreCase("delete")){
        int cid=Integer.parseInt(request.getParameter("cid"));
        CourseDao.delete(cid);
        processRequest(request,response);
    }
        else if(request.getParameter("action").equalsIgnoreCase("edit")){
        int cid=Integer.parseInt(request.getParameter("cid"));
        CourseModel cm=CourseDao.edit(cid);
        request.setAttribute("course",cm);
        RequestDispatcher rd=request.getRequestDispatcher("EditCourse.jsp");
        rd.forward(request,response);
                
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
    
       String title=request.getParameter("title");
       String type=request.getParameter("type");
       String courseid=request.getParameter("courseid");
    String price=request.getParameter("price");
    String duration=request.getParameter("duration");
    if(request.getParameter("action").equalsIgnoreCase("save")){
    CourseModel cm= new CourseModel();
    cm.setTitle(title);
    cm.setType(type);
    cm.setCourseid(courseid);
    cm.setPrice(price);
    cm.setDuration(duration);
    CourseDao.insert(cm);
    response.sendRedirect("CourseServlet?action=display");
    
    }else if(request.getParameter("action").equalsIgnoreCase("update")){
    int cid=Integer.parseInt(request.getParameter("cid"));
    CourseModel cm=new CourseModel(cid,title,type,courseid,price,duration);
   CourseDao.update(cm);
 processRequest(request, response);
   
   
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
