<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	
		<link rel="stylesheet"  type="text/css" href="css/jquery-ui.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
		
        <meta charset="UTF-8">
        <title>Adding contacts</title>
    </head>

    <body>
    
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>
		<c:import url="header.jsp" />
        <h1>Add contacts</h1>

        <form action="addContact" method="POST">
        	<div>
        		<label for="name">Name: </label>
            	<input type="text" name="name" id="name">
            </div>
            
        	<div>
        		<label for="email">E-mail: </label>
            	<input type="text" name="email" id="email">
            </div>
            
        	<div>
        		<label for="address">Address: </label>
            	<input type="text" name="address" id="address">
            </div>
            
       <!-- 	<div>
        		<label for="date-of-birth">Date of birth: </label>
            	<input type="text" name="date_of_birth" id="date-of-birth">
            		<script>
            			$("#date-of-birth").datepicker({dateFormat:'dd/MM/yy'});
            		</script>         		
            </div>  --> 
            
            <vnuk:myDateField name="date_of_birth" id="date-of-birth" label="Date of birth"/>
                        
            <input type="submit" value="Save" />
        </form>
		
		<c:import url="footer.jsp" />
    </body>
</html>