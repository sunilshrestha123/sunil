



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.dao;

import com.webtemplate.connection.DBConnection;
import com.webtemplate.model.TeacherModel;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class TeacherDao {
    public static void insert(TeacherModel tm){
Statement st=DBConnection.statementObject();
String sqlTest="SELECT*FROM teacher WHERE email='"+tm.getEmail()+"'";
try {
ResultSet rs=st.executeQuery(sqlTest);
if(rs.next()){

}

}catch(Exception e){

}
String sql="INSERT INTO teacher(fname,mname,lname,gender,bdate,phone,email,address,description,photo,time) VALUES('"+tm.getFname()+"','"+tm.getMname()+"','"+tm.getLname()+"','"+tm.getGender()+"','"+tm.getBdate()+"','"+tm.getPhone()+"','"+tm.getEmail()+"','"+tm.getAddress()+"','"+tm.getDescription()+"','"+tm.getPhoto()+"','"+tm.getTime()+"')";
try{

st.execute(sql);
    System.out.println("data is insert into techer tabale");
}catch(Exception e){

  
    
    System.out.println("data is not inserted oin database table"+e);

}
    }
    public static ArrayList<TeacherModel>display(){
      ArrayList<TeacherModel>al=new ArrayList();
      Statement st=DBConnection.statementObject();
      String sql="SELECT*FROM teacher";
      try{
      ResultSet rs=st.executeQuery(sql);
      while(rs.next()){
        al.add(new TeacherModel(rs.getInt("tid"),rs.getString("fname"),rs.getString("mname"),rs.getString("lname"),rs.getString("gender"),rs.getString("bdate"),rs.getString("phone"),rs.getString("email"),rs.getString("address"),rs.getString("description"),rs.getString("Photo"),rs.getString("time")));
      }
          System.out.println("data displayed");
      }catch(Exception e){
          System.out.println("data is not displayed"+e);
      }

    
  return al;  
}
    public static void delete(int tid){
    Statement st=DBConnection.statementObject();
    String sql="DELETE FROM teacher WHERE tid="+tid;
    try{
    st.executeQuery(sql);
        System.out.println("data is deleted");
    }catch(Exception e){
        System.out.println("data is not deletd ");
    }
            }
    public static TeacherModel edit(int tid){
    TeacherModel tm=null;
    Statement st=DBConnection.statementObject();
    String sql="SELECT*FROM teacher WHERE tid="+tid;
    try{
        ResultSet rs=st.executeQuery(sql);
        rs.next();
        tm=new TeacherModel(rs.getInt("tid"),rs.getString("fname"),rs.getString("mname"),rs.getString("lname"),rs.getString("gender"),rs.getString("bdate"),rs.getString("phone"),rs.getString("email"),rs.getString("address"),rs.getString("description"),rs.getString("photo"),rs.getString("time"));
        System.out.println("data is set");
    }catch(Exception e){
        System.out.println("data is not set"+e);
        
        
    }
    return tm;
    }

    public static void update(TeacherModel tm){
    Statement st=DBConnection.statementObject();
    String sql="UPDATE teacher SET fname='"+tm.getFname()+"',mname='"+tm.getMname()+"',lname='"+tm.getLname()+"',gender='"+tm.getGender()+"',bdate='"+tm.getBdate()+"',phone='"+tm.getPhone()+"',Email='"+tm.getEmail()+"',address='"+tm.getAddress()+"',description='"+tm.getDescription()+"',photo='"+tm.getPhoto()+"',time='"+tm.getTime()+"',";
    
    try {
st.execute(sql);
    System.out.println("data is not updatedt");
}catch(Exception e){
    
    System.out.println("data is update");
}
    
    }
            
}

