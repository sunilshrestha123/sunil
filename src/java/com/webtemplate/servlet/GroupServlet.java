/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.servlet;

import com.webtemplate.dao.CourseDao;
import com.webtemplate.dao.GroupDao;
import com.webtemplate.dao.StudentDao;
import com.webtemplate.dao.TeacherDao;
import com.webtemplate.model.CourseModel;
import com.webtemplate.model.GroupModel;
import com.webtemplate.model.StudentModel;
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
public class GroupServlet extends HttpServlet {

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
    ArrayList<GroupModel> all=GroupDao.display();
        request.setAttribute("group",all);
           RequestDispatcher rds=request.getRequestDispatcher("DisplayGroup.jsp");
        rds.forward(request, response);
       
       

    
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
     //   processRequest(request, response);

    if(request.getParameter("action").equalsIgnoreCase("add")){
                 ArrayList<TeacherModel> al=TeacherDao.display();
        request.setAttribute("teacherdata",al);
        ArrayList<CourseModel> dl= CourseDao.display();
        request.setAttribute("coursedata",dl);
          RequestDispatcher rd=request.getRequestDispatcher("AddGroup.jsp");
        rd.forward(request,response);
       
 
    } else if(request.getParameter("action").equalsIgnoreCase("display")){
               
        processRequest(request, response);
       
        
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
        //processRequest(request, response);
        int cid=Integer.parseInt(request.getParameter("cid"));
        String stime=request.getParameter("stime"); 
       String etime=request.getParameter("etime");
      int tid=Integer.parseInt(request.getParameter("tid"));
      String date=request.getParameter("date");
       if(request.getParameter("action").equalsIgnoreCase("save")){
       GroupModel gm=new GroupModel();
       gm.setCid(cid);
       gm.setStime(stime);
       gm.setEtime(etime);
       gm.setTid(tid);
       gm.setDate(date);
           System.out.println("cid"+cid);
           System.out.println("stime"+stime);
           System.out.println("tis"+tid);
           GroupDao.insert(gm);

       
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
