/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.model;

/**
 *
 * @author sunil shrestha
 */
public class StudentModel {
    private int sid;
    private String fname;
    private String mname;
    private  String lname;
    private String birthdate;
    private String gender;
    private String address;
    private String city;
     private String email;
    private String phone;
    private String level;
    private String programme;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public StudentModel(int sid, String fname, String mname, String lname, String birthdate, String gender, String address, String city, String email, String phone, String level, String programme) {
        this.sid = sid;
        this.fname = fname;
        this.mname = mname;
        this.lname = lname;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.city = city;
        this.email = email;
        this.phone = phone;
        this.level = level;
        this.programme = programme;
    }

    
    



    public StudentModel(String fname, String mname, String lname, String birthdate, String gender, String address, String city, String email, String phone, String level, String programme) {
        this.fname = fname;
        this.mname = mname;
        this.lname = lname;
        this.birthdate = birthdate;
        this.gender = gender;
        this.address = address;
        this.city = city;
        this.email = email;
        this.phone = phone;
        this.level = level;
        this.programme = programme;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getProgramme() {
        return programme;
    }

    public void setProgramme(String programme) {
        this.programme = programme;
    }

    public StudentModel() {
    }
   
    
}
