/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Professional
 */
public class AreaCalculatorService {
    
    public static  final double getAreaOfRectangle(String length, String width) {
       double dLength = Double.parseDouble(length);
       double dWidth = Double.parseDouble(width);
        return dLength*dWidth;
    }
    
    public static final double getAreaOfCircle(String radious){
        double dRadious = Double.parseDouble(radious);
        return Math.PI*dRadious*dRadious;
    }
    
    public static final double getAreaOfTriangle(String side1,String side2,String side3){
        double dside1 = Double.parseDouble(side1);
        double dside2 = Double.parseDouble(side2);
        double dside3 = Double.parseDouble(side3);
        double p = (dside1+dside2+dside3)/2.0;
        double areaSquare = p*(p-dside1)*(p-dside2)*(p-dside3);
        return Math.sqrt(areaSquare);
    }
    
}
