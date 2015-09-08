<%-- 
    Document   : lab3
    Created on : Sep 5, 2015, 10:32:19 AM
    Author     : Professional
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LAB 3</title>
        <style>
            label {
                color : #999999;
                font-family: serif;
                font-weight: 200;
            }
            
            legend {
                color: #cc6600; 
                font-weight: bold;
            }
            form{
                margin-bottom: 20px;
            }
            #button{
                font-weight: 300;
                padding: 4px;
                color: #cc6600;
                margin-left: 10px;             
            }
            
            
            
        </style>
    </head>
    <body>
        
        <!--  Form for Rectangle -->
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
                
                <input id="button" name="button" type="submit" value="Get Area" >
                <br><br>                
                <!-- 
                <p>
                 <% /*
                    String rectangleArea = " ";

                    Object obj = request.getAttribute("rectangleArea");
                    if(obj != null){
                        rectangleArea = obj.toString();
                        out.println("<br>Area of Rectangle : " + rectangleArea);
                    }  */
                %>        
                </p> 
                -->
                
                <c:if  test = "${rectangleArea >= 0}">
                    <p> Area of Rectangle : <fmt:formatNumber type="number" 
                     maxFractionDigits="2" value="${rectangleArea} "/> <br> </p>
                </c:if>
                
                
                
            </fieldset>    
                
        </form>
        
       
        
        <form id="circleForm" name="circleForm" method="POST" action="LabThreeController"> 
            <fieldset>
                <legend> CIRCLE </legend>
                <br><br>
                
                <label for="radious">Radious: </label>
                <input id="radious" name="radious" type="number" value="" placeholder="Enter radious" min=0 required>
                <br><br><br>
                 
                <input type="hidden" name="type" id="type" value="CIRCLE" >
                
                <input id="button" name="button" type="submit" value="Get Area">
                <br><br>
                
                <!-- 
                <p>
                <% /*
                    obj = request.getAttribute("circleArea");
                    if(obj != null){
                        String circleArea = obj.toString();
                        out.println("<br>Area of Circle : " + circleArea);
                    }   */
                %>        
                </p> 
                -->                             
                <c:if  test = "${circleArea >= 0}">
                    <p> Area of Circle : <fmt:formatNumber type="number" 
                     maxFractionDigits="2" value="${circleArea} "/> <br> </p>
                </c:if>
                    
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
                
                <label for="side3">Side 3: </label>
                <input id="side3" name="side3" type="number" value="" placeholder="Enter side3" min=0 required>
                <br><br><br>
                
                <input type="hidden" name="type" id="type" value="TRIANGLE" >
                
                <input id="button" name="button" type="submit" value="Get Area">
                <br><br>                
                <!--
                <p>
                 <% /*                    
                    obj = request.getAttribute("triangleArea");
                    if(obj != null){
                        String triangleArea = obj.toString();
                        out.println("<br>Area of Triangle : " + triangleArea);
                    }  */
                %>        
                </p> 
                -->
                              
                <c:if  test = "${triangleArea >= 0}">
                    <p> Area of Triangle : <fmt:formatNumber type="number" 
                     maxFractionDigits="2" value="${triangleArea} "/> <br> </p>
                </c:if>
                
                
            </fieldset>    
                
        </form>        
        
    </body>
</html>
