/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.model;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class GroupModel {

    
    
    int gid;
    int cid;
    
    String stime;
    String etime;
    int tid;
    String date; 
    String fname;
    String Mname;
    String Lname;
    String title;

    public GroupModel() {
    }

    public GroupModel(int gid, int cid, String stime, String etime, int tid, String date) {
        this.gid = gid;
        this.cid = cid;
        this.stime = stime;
        this.etime = etime;
        this.tid = tid;
        this.date = date;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

    public String getEtime() {
        return etime;
    }

    public void setEtime(String etime) {
        this.etime = etime;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public GroupModel(int gid, String stime, String etime, String date, String fname, String Mname, String Lname, String title) {
        this.gid = gid;
        this.stime = stime;
        this.etime = etime;
        this.date = date;
        this.fname = fname;
        this.Mname = Mname;
        this.Lname = Lname;
        this.title = title;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return Mname;
    }

    public void setMname(String Mname) {
        this.Mname = Mname;
    }

    public String getLname() {
        return Lname;
    }

    public void setLname(String Lname) {
        this.Lname = Lname;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

}