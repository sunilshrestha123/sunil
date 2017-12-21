/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.dao;

import com.webtemplate.connection.DBConnection;
import com.webtemplate.model.GroupModel;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



/**
 *
 * 
 * @author Admin
 */
public class GroupDao {
 
public static void  insert(GroupModel gm){
    Statement st=DBConnection.statementObject();
    String sql="INSERT INTO studentgroup(course,stime,etime,teacher,date)VALUES('"+gm.getCid()+"','"+gm.getStime()+"','"+gm.getEtime()+"','"+gm.getTid()+"','"+ gm.getDate()+"')";
try{
   st.execute(sql);
    System.out.println("data is insetted ");
}catch(Exception e){
    System.out.println("data is not inserted in database ");
}
}
public static ArrayList<GroupModel>display(){
    ArrayList<GroupModel>all=new ArrayList();
    Statement st=DBConnection.statementObject();
    String sql="SELECT gp.sgid,t.fname,t.mname,t.lname,c.title,gp.stime,gp.etime,gp.date FROM studentgroup AS gp,teacher AS t,addcourse AS c WHERE gp.course=c.cid AND gp.teacher=t.tid";
    try{
    ResultSet rs=st.executeQuery(sql);
    while(rs.next()){
    all.add(new GroupModel(rs.getInt("sgid"),rs.getString("stime"),rs.getString("etime"),rs.getString("date"),rs.getString("fname"),rs.getString("mname"),rs.getString("lname"),rs.getString("title")));
    }
        System.out.println("data is displayes ");
    }catch(Exception e){
        System.out.println("data is not displayed"+e);
    
    }

    return all;
}
    

}   

    
    
    
    
   






