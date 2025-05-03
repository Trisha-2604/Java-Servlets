<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form JSP</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/Form" method="get">
        <fieldset>
            <legend>Personal Details</legend>
            <table>
        <tr>
            <td><label for="name"> Name</label></td>
            <td><input type="text" name="name" id="" placeholder="" required></td> 
        </tr> 
        <tr>
            <td><label for="address">Address</label></td>
            <td><textarea id="address" name="address"></textarea>
            </td>
        </tr>
            <tr>
                  <td><label>Languages</label></td>
                   <td> <input type="checkbox" id="english" name="Languages[]" value="English" >
                    <label for="english">English</label>
                     <input type="checkbox" name="Languages[]" id="telugu" value="Telugu">
                     <label for="telugu">Telugu</label>
                   <input type="checkbox" name="Languages[]" id="hindi" value="Hindi" > 
                      <label for="hindi">Hindi</label>
                  <input type="checkbox" name="Languages[]" id="kannada" value="Kannada"> 
                      <label for="kannada">Kannada</label>
                      </td>  
                </tr>           
           <tr>
             <td><label for="gender">Gender</label></td>    
          <td> <input type="radio" id="male" name="gender" value="Male" >
               <label for="male">Male</label>
              <input type="radio" id="female" name="gender" value="Female" >  
               <label for="female">Female</label>        
               <input type="radio" id="other" name="gender" value="Other">
               <label for="other">Other</label></td>
           </tr>
           <tr>
            <td><label for="">Country</label></td>
            <td><select name="country" id="" value="country"required>
                <option value="UK">UK</option>
                <option value="India">India</option>
                <option value="Usa">USA</option>
                <option value="China">China</option>             
            </select></td>
           </tr>
           </table></fieldset>     
       <br>
       <button type="submit">Submit</button>
       <button type="button">Cancel</button>
    </form>
</body>
</html>