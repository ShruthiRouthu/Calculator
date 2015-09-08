/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static controller.LabTwoController.URL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AreaCalculatorService;

/**
 *
 * @author Professional
 */
@WebServlet(name = "LabThreeController", urlPatterns = {"/LabThreeController"})
public class LabThreeController extends HttpServlet {

     public static final String URL = "lab3.jsp";
     public static final String RECTANGLE = "RECTANGLE";
     public static final String CIRCLE = "CIRCLE";
     public static final String TRIANGLE = "TRIANGLE";
     public static final String LENGTH = "length";
     public static final String WIDTH = "width";
     public static final String RADIOUS = "radious";
     public static final String SIDE1 = "side1";
     public static final String SIDE2 = "side2";
     public static final String SIDE3 = "side3";  
     public static final String RECTANGLE_AREA = "rectangleArea";
     public static final String CIRCLE_AREA = "circleArea";
     public static final String TRIANGLE_AREA = "triangleArea";
     
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        double area=0;
        String formType = request.getParameter("type");
        
        // if logic to check for type of form
        if(formType != null)
        {
           if(formType.equals(RECTANGLE))  
           {
               String length,width; 
        
               length = request.getParameter(LENGTH); 
               width = request.getParameter(WIDTH);
                
               if(length != null && width != null)
                    area = AreaCalculatorService.getAreaOfRectangle(length, width);

               request.setAttribute(RECTANGLE_AREA,area); 
            }
            else if(formType.equals(CIRCLE))  
            {
                String radious; 
        
                radious = request.getParameter(RADIOUS);
                if(radious != null)
                    area = AreaCalculatorService.getAreaOfCircle(radious);

                request.setAttribute("circleArea",area); 
            }
           
           else if(formType.equals(TRIANGLE))  
           {
               String side1,side2,side3; 
        
                side1 = request.getParameter(SIDE1);             
                side2= request.getParameter(SIDE2);                
                side3 = request.getParameter(SIDE3);
                 
                if((side1 != null) && (side2 != null) && (side3 != null))
                    area = AreaCalculatorService.getAreaOfTriangle(side1,side2,side3);

                request.setAttribute("triangleArea",area); 
           }
        }
         
        
        RequestDispatcher view = request.getRequestDispatcher(URL);
        view.forward(request, response);
     
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
