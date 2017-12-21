/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.dao;

import com.webtemplate.connection.DBConnection;
import com.webtemplate.model.StudentCourseModel;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class StudentCourseDao {
    public static void insert(StudentCourseModel scm){
        Statement st=DBConnection.statementObject();
       String sql="INSERT INTO studentcourse(sid,cid,date,time)VALUES('"+scm.getSid()+"','"+scm.getCid()+"','"+scm.getDate()+"','"+scm.getTime()+"')";
        try{
        st.execute(sql);
            System.out.println("data is inseted  for studentcourse");
        }catch(Exception e){
            System.out.println("data is not inserted for studentcourse"+e);
        }
        
    
    
    }
    public static ArrayList<StudentCourseModel>display(int sid){
    ArrayList<StudentCourseModel> al=new ArrayList();
    Statement st=DBConnection.statementObject();
    String sql="SELECT sc.scid,s.fname,s.mname,s.lname,s.address,s.city,s.email,s.phone,c.title,sc.date,sc.time FROM studentcourse AS sc,addstudent s,addcourse c WHERE  sc.sid=s.sid AND sc.cid=c.cid AND sc.sid="+sid;
   try{
   ResultSet rs=st.executeQuery(sql);
       
               while(rs.next()){
            al.add(new StudentCourseModel(rs.getInt("scid"),rs.getString("fname"),rs.getString("mname"),rs.getString("lname"),rs.getString("address"),rs.getString("city"),rs.getString("email"),rs.getString("phone"),rs.getString("title"),rs.getString("date"),rs.getString("time")));
         
        }
               System.out.println("data is displayed");
            
           
           }catch(Exception e){
               System.out.println("data is not displayed");
           
           }
   return al;
    }
    
}

    
    

