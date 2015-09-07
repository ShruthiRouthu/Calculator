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
                <br><br>
                
                <label for="length">Length: </label>
                <input id="length" name="length" type="number" value="" placeholder="Enter length" min=0 required>
                <br><br><br>
                
                <label for="width">Width: </label>
                <input id="width" name="width" type="number" value="" placeholder="Enter width" min=0 required>
                <br><br><br>
                
                <input type="hidden" name="type" id="type" value="RECTANGLE" >
                
                <input id="button" name="button" type="submit" value="Get Area">
                                
                <p>
                 <% 
                    String rectangleArea = " ";

                    Object obj = request.getAttribute("rectangleArea");
                    if(obj != null){
                        rectangleArea = obj+ "";
                        out.println("<br>Area of Rectangle : " + rectangleArea);
                    } 
                %>        
                </p>
                <br>
                
            </fieldset>    
                
        </form>
        <br><br>
       
        
        <form id="circleForm" name="circleForm" method="POST" action="LabThreeController"> 
            <fieldset>
                <legend> CIRCLE </legend>
                <br><br>
                
                <label for="radious">Radious: </label>
                <input id="radious" name="radious" type="number" value="" placeholder="Enter radious" min=0 required>
                <br><br><br>
                 
                <input type="hidden" name="type" id="type" value="CIRCLE" >
                
                <input id="button" name="button" type="submit" value="Get Area">
                
                
                <p>
                <% 
                    obj = request.getAttribute("circleArea");
                    if(obj != null){
                        String circleArea = obj+ "";
                        out.println("<br>Area of Circle : " + circleArea);
                    }  
                %>        
                </p>
                
                <br>
                
            </fieldset>    
        
        </form>
        
        <form id="triangleForm" name="rectangleForm" method="POST" action="LabThreeController"> 
            <fieldset>
                <legend> TRIANGLE </legend>
                <br><br>
                
                <label for="side1">Side 1: </label>
                <input id="side1" name="side1" type="number" value="" placeholder="Enter side1" min=0 required>
                <br><br><br>
                
                <label for="side2">Side 2: </label>
                <input id="side2" name="side2" type="number" value="" placeholder="Enter side2" min=0 required>
                <br><br><br>
                
                <label for="side3">Side 2: </label>
                <input id="side3" name="side3" type="number" value="" placeholder="Enter side3" min=0 required>
                <br><br><br>
                
                <input type="hidden" name="type" id="type" value="TRIANGLE" >
                
                <input id="button" name="button" type="submit" value="Get Area">
                                
                <p>
                 <%                    
                    obj = request.getAttribute("triangleArea");
                    if(obj != null){
                        String triangleArea = obj+ "";
                        out.println("<br>Area of Triangle : " + triangleArea);
                    } 
                %>        
                </p>
                <br>
                
            </fieldset>    
                
        </form>        
        
    </body>
</html>
