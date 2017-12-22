/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.dao;

import com.webtemplate.connection.DBConnection;
import static com.webtemplate.dao.CourseDao.insert;
import com.webtemplate.model.AdminModel;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class AdminDao {
    public static boolean insert(AdminModel am){
        Statement st=DBConnection.statementObject();
        String salTest="SELECT*FROM admin WHERE email='"+am.getEmail()+"'";
        try{
        ResultSet rs=st.executeQuery(salTest);
        if(rs.next()){
        return false;
        }
        }catch(Exception e){
            System.out.println(".....");
        }
        
        String sql="INSERT INTO admin(name,email,phone,password,gender,birthdate,location,photo)VALUES('"+am.getName()+"','"+am.getEmail()+"','"+am.getPhone()+"','"+am.getPassword()+"','"+am.getGender()+"','"+am.getBdate()+"','"+am.getLocation()+"','"+am.getPhoto()+"')";
    try{
    st.execute(sql);
         System.out.println("data is inserted");   
         return true;  
    }catch(Exception e){
            System.out.println(" data is not inserted");
            }
    return false;
    
    }
  public static AdminModel login(String username, String pass) {
        Statement st = DBConnection.statementObject();
        String sql = "SELECT * FROM admin WHERE email='" + username + "' AND password='" + pass + "'";
        try {
            ResultSet rs = st.executeQuery(sql);
            if(rs.next()) {
             AdminModel  am = new AdminModel(rs.getInt("id"),rs.getString("name"),rs.getString("email"), rs.getString("password"),rs.getString("phone"),rs.getString("gender"),rs.getString("birthdate"),rs.getString("location"),rs.getString("photo"));
                System.out.println("Admin is found");
            return am;
            } else{
                return null;
            }
        
        }catch(Exception e){
    System.out.println("data is not get from database");
}
        return null;
}
}
