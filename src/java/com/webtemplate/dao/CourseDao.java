/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.dao;

import com.webtemplate.connection.DBConnection;
import com.webtemplate.model.CourseModel;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author sunil shrestha
 */
public class CourseDao {
    
    
    
    
    public static void insert(CourseModel cm){
    Statement st=DBConnection.statementObject();
    String sql="INSERT INTO addcourse(title,type,courseid,price,duration)VALUES('"+cm.getTitle()+"','"+cm.getType()+"','"+cm.getCourseid()+"','"+cm.getPrice()+"','"+cm.getDuration()+"')";
    try{
    st.execute(sql);
        System.out.println("data inserted");
    }catch(Exception e){
        System.out.println("data not inserted"+e);
    }    

    }

    public static ArrayList<CourseModel> display() {
        ArrayList<CourseModel>al=new ArrayList();
        Statement st=DBConnection.statementObject();
        String sql="SELECT*FROM addcourse";
        try{
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
        al.add(new CourseModel(rs.getInt("cid"),rs.getString("title"),rs.getString("type"),rs.getString("courseid"),rs.getString("price"),rs.getString("duration")));
    }
        System.out.println("data dispalyed");
    }catch(Exception e){
        System.out.println("data not displayed"+e);
    }
    
    
    
    
    return al;
    }
    public static void delete(int cid){

Statement st=DBConnection.statementObject();
String sql="DELETE FROM addcourse WHERE cid="+cid;
try{
    st.execute(sql);
    System.out.println("data is deleted");
}catch(Exception e){
    System.out.println("data is not deleted");
}
        }
    public static CourseModel edit(int cid) {
       CourseModel cm=null;
        Statement st=DBConnection.statementObject();
       String sql="SELECT*FROM addcourse WHERE cid="+cid;
    
       try{
ResultSet rs=st.executeQuery(sql);
 rs.next();
  cm=new CourseModel(rs.getInt("cid"),rs.getString("title"),rs.getString("type"),rs.getString("courseid"),rs.getString("price"),rs.getString("duration"));
           System.out.println("data is set");
       }catch(Exception e){
           System.out.println("data not set"+e);
       }
    
    
    return cm;
    
    }

    public static void update(CourseModel cm) {
       Statement st=DBConnection.statementObject();
       String sql="UPDATE addcourse SET title='"+cm.getTitle()+"',type='"+cm.getType()+"',courseid='"+cm.getCourseid()+"',price='"+cm.getPrice()+"',duration='"+cm.getDuration()+"' WHERE cid="+cm.getCid();
       try{st.execute(sql);
           System.out.println("data updated");
       }catch(Exception e){
           System.out.println("data is not updated"+e);
       
       } 
    }    
}
