<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="Indexlogin.css" />

<title>login</title>
</head>
<body>

<div class="login">
        <div class="login-Demo">
          <h2>Login</h2>
        </div>
          
           <div class="login-Demo-con">
               <form action="#" method="post">
               <div class="first">
                 <td>Username or email address:*</td>
                 <td><input type="text" id="UserName" placeholder="UserName" onblur="show(this)"></td></br>
                </div>
                 
                       <div class="second">
                       <td>Password:*</td>
                       <td><input type="Password" id="Password" placeholder="Password" onblur="show(this)"></td></br>
                       </div>
                       
                            <div class="three">
                            <td>keep me logged in(for up to 365 days)</td>
                              <td><input type="checkbox" id="checkbox"></td>
                             </div>
                             
                             <div class="btn">
                             <input type="button" value="login" onclick="#">
		                      </div>
                
       
               </form>
           </div>
</div>


</body>
</html>