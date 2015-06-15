package RegistrationSystem;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBOperations {
    
    String url = "jdbc:mysql://localhost:3306/employee";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs;
    
    boolean addEmployee(EmployeeDetails em){
        try {
            con = (Connection)DriverManager.getConnection(url, username, password);
            String query = "INSERT INTO employeedetails VALUES (?,?,?,?,?,?,?,?)";
            
            pst = (PreparedStatement) con.prepareStatement(query);
            
            pst.setInt(1, em.getRegID());
            pst.setString(2, em.getFirstName());
            pst.setString(3, em.getLastName());
            pst.setInt(4, em.getAge());
            pst.setString(5, em.getCountry());
            pst.setString(6, em.getEmail());
            pst.setString(7, em.getUsername());
            pst.setString(8, em.getPassword());
            
            pst.executeUpdate();
            
            return true;
            
        } catch (Exception ex) {
            Logger.getLogger(DBOperations.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } finally{
            try {
                if(pst != null){
                    pst.close();
                }
                if(con != null){
                    con.close();
                }
            } catch (Exception ex) {
                    Logger.getLogger(DBOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    int checkUsername(String user){
        try{
            con = (Connection)DriverManager.getConnection(url, username, password);
            String query = "SELECT username FROM employeedetails";
            pst = (PreparedStatement) con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while(rs.next()){
                if(user.equals(rs.getString(1))){
                    return 0;
                }
            }
            return 1;
            
        }catch(Exception e){
            return 2;
        }finally{
            try {
                if(pst != null){
                    pst.close();
                }
                if(con != null){
                    con.close();
                }
            } catch (Exception ex) {
                    Logger.getLogger(DBOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    int checkLogin(String user, String pswd){
        try{
            con = (Connection)DriverManager.getConnection(url, username, password);
            String query = "SELECT username, password FROM employeedetails";
            pst = (PreparedStatement) con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while(rs.next()){
                if(user.equals(rs.getString(1)) && pswd.equals(rs.getString(2))){
                    return 1;
                }
            }
            return 0;
        }catch(Exception e){
            return 2;
        }finally{
            try {
                if(pst != null){
                    pst.close();
                }
                if(con != null){
                    con.close();
                }
            } catch (Exception ex) {
                    Logger.getLogger(DBOperations.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
