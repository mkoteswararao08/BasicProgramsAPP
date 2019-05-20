<%@page import="com.regnant.db.EmployeePersonal"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
          .header{position:fixed;width:100%;height:70px;background:#073935;top:0;left:0;color:white;}
      #profilearea{top:29px;margin-left:1100px;height:15px;font-size:20px;} 
      #profilearea1{top:29px;margin-left:1200px;height:15px;font-size:20px;}
      #pf{color:pink;margin-left: 550px;}
       body{background:linear-gradient(to bottom right,white,#bcbdc4);margin:0px;
       padding:0px;opacity:0.9;height:1300px;text-decoration:none;}
       
       .tableclass{border:1px solid black;border-collapse: collapse; width:740px;margin-left: 350px; margin-top: 100px}                             
       th,td{border:1px solid black;}
    </style>

</head>
<body>
   <div class ="img"><p align="center">profile</p></div>
    <div class ="header">
        <div id = "pf" class = "header"><h1>List Of Employee Details</h1></div>
        <div id = "profilearea" class = "header"><a href ="HRHomePage.html"><font color="white">Home</font></a></div>
    <div id = "profilearea1" class = "header"><a href ="HRLogOut"><font color="white">Logout</font></a></div>
    </div>
      
    <table class="tableclass">
    
    <tr>
         <th>EmployeeID</th>
         <th>First_Name</th>
         <th>Last_Name</th>
         <th>EMail</th>
         <th>View Profile</th> 
    </tr>
    <% List<EmployeePersonal> employeelist=(List<EmployeePersonal>) request.getAttribute("List"); 
       for(EmployeePersonal ep:employeelist)
       {
    %>
        <tr>
             <td><%=ep.employeeId %></td>    
             <td><%=ep.firstname %></td>    
             <td><%=ep.lastname %></td>    
             <td><%=ep.email %></td> 
             <td><a href="SearchEmployee?employeeid=<%=ep.employeeId %>">View Profile</a></td>   
        </tr> 
    <%} %>
    
    
    
    </table>
</body>
</html>