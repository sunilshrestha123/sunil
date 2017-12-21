/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.servlet;

import com.webtemplate.connection.PasswordEncryption;
import com.webtemplate.dao.AdminDao;
import com.webtemplate.model.AdminModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class AdminServlet extends HttpServlet {

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
    if(request.getParameter("action").equalsIgnoreCase("login")){
        
    
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
      String name=request.getParameter("name");
      String email=request.getParameter("email");
      String phone=request.getParameter("phone");
      
      String password=request.getParameter("password");
      String confpassword=request.getParameter("repassword");
      
      String gender=request.getParameter("gender");
      String bdate=request.getParameter("bdate");
      String location=request.getParameter("address");
      String photo=request.getParameter("photo");
      if(request.getParameter("action").equalsIgnoreCase("save")){
          String pass =PasswordEncryption.encryptPassword(password); 
          System.out.println("password"+password);
      AdminModel am=new AdminModel();
      am.setName(name);
      am.setEmail(email);
      am.setPhone(phone);
      am.setPassword(pass);
      am.setGender(gender);
      am.setBdate(bdate);
      am.setLocation(location);
      am.setPhoto(photo);
     boolean success = AdminDao.insert(am);
     if(success ==true){
         String message="new admin is registerd success";
         request.setAttribute("msg",message);
         RequestDispatcher rd=request.getRequestDispatcher("AddAdmin.jsp");
         rd.forward(request,response);
         
     
     }else{
     String message="Email is already used ****************";
     request.setAttribute("msg",message);
         RequestDispatcher rd=request.getRequestDispatcher("AddAdmin.jsp");
         rd.forward(request,response);
         
     }
      
      
      }else if(request.getParameter("action").equalsIgnoreCase("login")){
          String username=request.getParameter("Email");
          String pass=request.getParameter("Password");
          System.out.println(username);
          System.out.println(pass);
          AdminModel am=new AdminModel();
          System.out.println(am.getEmail());
        //join two tables in psql

          
      
          
          
         
      
      
      }
      
      
      
    }

  

}
