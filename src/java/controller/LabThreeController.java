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
        
        String temp;
        String formType = request.getParameter("type");
        
        if(formType != null)
        {
           if(formType.equals("RECTANGLE"))  
           {
               double length=0,width=0,area=0; 
        
                temp = request.getParameter("length");
                if(temp != null)
                    length = Double.parseDouble(temp);

                temp = request.getParameter("width");
                if(temp != null)
                    width = Double.parseDouble(temp);

                area = AreaCalculatorService.getAreaOfRectangle(length, width);

                request.setAttribute("rectangleArea",area); 
           
           }
           
           if(formType.equals("CIRCLE"))  
           {
               double radious=0,area=0; 
        
                temp = request.getParameter("radious");
                if(temp != null)
                    radious = Double.parseDouble(temp);

                area = AreaCalculatorService.getAreaOfCircle(radious);

                request.setAttribute("circleArea",area); 
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
