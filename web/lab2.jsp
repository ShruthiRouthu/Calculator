<%-- 
    Document   : lab2
    Created on : Sep 5, 2015, 10:32:06 AM
    Author     : Professional
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LAB 2</title>
    </head>
    <body>
          
        <form id="rectangleForm" name="rectangleForm" method="POST" action="LabTwoController"> 
            <fieldset>
                <legend> RECTANGLE </legend>
                <br><br><br>
                
                <label for="length">Length: </label>
                <input id="length" name="length" type="number" value="" placeholder="Enter length" min=0 required>
                <br><br><br>
                
                <label for="width">Width: </label>
                <input id="width" name="width" type="number" value="" placeholder="Enter width" min=0 required>
                <br><br><br>
                
                <input id="button" name="button" type="submit" value="Get Area">
                <br><br><br>
            </fieldset>    
        
        </form>
        
        <h3>
             <% 
                String area = " ";
                
                Object obj = request.getAttribute("area");
                if(obj != null)
                {
                    area = obj.toString();
                    out.println("Area of Rectangle : " + area);
                }
            %>        
        </h3>
        
    </body>
</html>
