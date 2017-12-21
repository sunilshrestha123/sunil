/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author sunil shrestha
 */
public class DBConnection {
    public static Statement statementObject() {
    try{
        Class.forName("com.mysql.jdbc.Driver");
       System.out.println("Driver loaded sucessfully");

   }catch(Exception e){
       System.out.println("Driver is not loaded");
       
   
   }
   Connection con=null;
   try{
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webtemplate","root","");
       System.out.println("Database is connected");
   }catch(Exception e){
       System.out.println("databade is connected");
       }
  Statement st=null;
  try{
  st=con.createStatement();
      System.out.println("Statement of object is created");
  }catch(Exception e){
      System.out.println("not created");
  
  }
  return st;
        }

    
}
