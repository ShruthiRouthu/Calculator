<%-- 
    Document   : result
    Created on : Sep 5, 2015, 10:32:30 AM
    Author     : Professional
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1>Area of Rectangle is :   
            <% 
                String area = "unknown";
                
                Object obj = request.getAttribute("area");
                if(obj != null)
                    area = obj+ "";
                     
                out.println(area);
                 
            %> 
        </h1>
    </body>
</html>
