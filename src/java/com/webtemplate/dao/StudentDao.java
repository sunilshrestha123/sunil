

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.dao;

import com.webtemplate.connection.DBConnection;
import com.webtemplate.model.StudentModel;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author sunil shrestha
 */
public class StudentDao {
    public static void insert(StudentModel sm){
    Statement st=DBConnection.statementObject();
    
    String sql="INSERT INTO addstudent(fname,mname,lname,birthdate,gender,address,city,phone,email,level,programme)VALUES('"+sm.getFname()+"','"+sm.getMname()+"','"+sm.getLname()+"','"+sm.getBirthdate()+"','"+sm.getGender()+"','"+sm.getAddress()+"','"+sm.getCity()+"','"+sm.getPhone()+"','"+sm.getEmail()+"','"+sm.getLevel()+"','"+sm.getProgramme()+"')";    
   try{
   st.execute(sql);
       System.out.println("data is inseted");
   }catch(Exception e){
   
       System.out.println("data is not inserted");
   }
    }
      public static ArrayList<StudentModel>display(){
      ArrayList<StudentModel>al=new ArrayList();
      Statement st=DBConnection.statementObject();
      String sql="SELECT*FROM addstudent";
      try{
      ResultSet rs=st.executeQuery(sql);
      while(rs.next()){
        al.add(new StudentModel(rs.getInt("sid"),rs.getString("fname"),rs.getString("mname"),rs.getString("lname"),rs.getString("birthdate"),rs.getString("gender"),rs.getString("address"),rs.getString("city"),rs.getString("email"),rs.getString("phone"),rs.getString("level"),rs.getString("programme")));
      }
          System.out.println("data displayed");
      }catch(Exception e){
          System.out.println("data is not displayed"+e);
      }

      
      
      return al;
}
       public static void delete(int sid){
  Statement st=DBConnection.statementObject();
  String sql="DELETE FROM addstudent WHERE sid="+sid;
  try{
  st.execute(sql);
  }catch(Exception e){
      System.out.println("data is not deleted");
  }
  }
  public static StudentModel edit(int sid){
      StudentModel sm=null;
              Statement st=DBConnection.statementObject();
         String sql="SELECT*FROM addstudent WHERE sid="+sid;
  
  try{
  ResultSet rs=st.executeQuery(sql);
 rs.next();
  sm=new StudentModel(rs.getInt("sid"),rs.getString("fname"),rs.getString("mname"),
          rs.getString("lname"),rs.getString("birthdate"),rs.getString("gender"),
          rs.getString("address"),rs.getString("city"),rs.getString("email"),
          rs.getString("phone"),rs.getString("level"),rs.getString("programme"));
  
  System.out.println("data is set");
  }catch(Exception e){
      System.out.println("data is not set"+e);
 
 }
 return sm;
  }

    public static void update(StudentModel sm) {
     Statement st=DBConnection.statementObject();
      String sql="UPDATE addstudent SET fname='"+sm.getFname()+"',mname='"+sm.getMname()+"',lname='"+sm.getLname()+"',birthdate='"+sm.getBirthdate()+"',gender='"+sm.getGender()+"',address='"+sm.getAddress()+"',city='"+sm.getCity()+"',email='"+sm.getEmail()+"',phone='"+sm.getPhone()+"',level='"+sm.getLevel()+"',programme='"+sm.getProgramme()+"' WHERE sid="+sm.getSid();
      try{st.execute(sql);
      System.out.println("data updated");
  }catch(Exception e){
      System.out.println("data is not updated"+e);
  
  }
    }

}