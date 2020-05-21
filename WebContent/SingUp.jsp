<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="IndexSingUp.css" />

<title>SingUp</title>
</head>
<body>



<div class="SingUp">
      <div class="SingUp-Demo">
          <h2>Sing Up</h2>
         <p>Create Your New Account HTMLRepublicTutorial</p>
            
           </div> 
                <div class="SingUp-Demo-con">
                     <form action="#" method="post">
                     <div class="first">  
                         <td>UserName:*</td>
                           <td><input type="text" id="UserName" placeholder="UserName" onblur="show(this)"></td><br>    
			         </div>
			         
			             <div class="Second">  
                         <td>Email:*</td>
                         <td><input type="text" id="Email" placeholder="Email" onblur="show(this)"></td><br>    
			         </div>  
                    
                         <div class="three">  
                         <td>Create Password:*</td>
                         <td><input type="Password" id="Create-Password" placeholder="Create Password" onblur="show(this)"></td><br>    
			         </div>  
                    
                          <div class="forth" >
                             <td>Conform Password:*<td>
                               <td><input type="Password" id="Conform-Password" placeholder="Conform Password" onblur="show(this)"></td>
                            </div>
                            
                             <div class="btn">
                             <input type="Submit" value="Sing Up" onclick="#">
		                      </div>
                    
                    
                    </form>
             </div>
	   </div>



</body>
</html>