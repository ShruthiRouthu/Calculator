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
    
}
