<%-- 
    Document   : lab3
    Created on : Sep 5, 2015, 10:32:19 AM
    Author     : Professional
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LAB 3</title>
    </head>
    <body>
         <form id="rectangleForm" name="rectangleForm" method="POST" action="LabThreeController"> 
            <fieldset>
                <legend> RECTANGLE </legend>
                <br><br><br>
                
                <label for="length">Length: </label>
                <input id="length" name="length" type="number" value="" placeholder="Enter length" min=0 required>
                <br><br><br>
                
                <label for="width">Width: </label>
                <input id="width" name="width" type="number" value="" placeholder="Enter width" min=0 required>
                <br><br><br>
                
                <input type="hidden" name="type" id="type" value="RECTANGLE" >
                
                <input id="button" name="button" type="submit" value="Get Area">
                <br><br><br>
                
                
            </fieldset>    
        
        </form>
        
        <h3>
             <% 
                String rectangleArea = " ";
                
                Object obj = request.getAttribute("rectangleArea");
                if(obj != null){
                    rectangleArea = obj+ "";
                    out.println("Area of Rectangle : " + rectangleArea);
                } 
            %>        
        </h3>
        
          <form id="circleForm" name="circleForm" method="POST" action="LabThreeController"> 
            <fieldset>
                <legend> CIRCLE </legend>
                <br><br><br>
                
                <label for="radious">Radious: </label>
                <input id="radious" name="radious" type="number" value="" placeholder="Enter radious" min=0 required>
                <br><br><br>
                 
                <input type="hidden" name="type" id="type" value="CIRCLE" >
                
                <input id="button" name="button" type="submit" value="Get Area">
                <br><br><br>
                
            </fieldset>    
        
        </form>
        
        <h3>
             <% 
                String circleArea = " ";
                
                obj = request.getAttribute("circleArea");
                if(obj != null){
                    circleArea = obj+ "";
                    out.println("Area of Circle : " + circleArea);
                }  
            %>        
        </h3>
    </body>
</html>
