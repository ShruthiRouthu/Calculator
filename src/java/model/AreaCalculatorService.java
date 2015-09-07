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
    
    public static  final double getAreaOfRectangle(double length, double width) {
        return length*width;
    }
    
    public static final double getAreaOfCircle(double radious){
        return Math.PI*radious*radious;
    }
    
    public static final double getAreaOfTriangle(double side1,double side2,double side3){
        double p = (side1+side2+side3)/2.0;
        double areaSquare = p*(p-side1)*(p-side2)*(p-side3);
        return Math.sqrt(areaSquare);
    }
    
}
