
package knn;

import java.util.*;

public class fruits implements Comparable<fruits>{
    
    private int weight;
    private int color;
    private String label;
    private double distanceFromSample;
    
    public fruits(int weight, int color, String label){
        super();
        this.weight = weight;
        this.color = color;
        this.label = label;
    }
     
    public fruits(int weight, int color){
        super();
        this.color = color;
        this.weight = weight;
    }
    
    public fruits(){
        
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public double getDistanceFromSample() {
        return distanceFromSample;
    }

    public void setDistanceFromSample(double distanceFromSample) {
        this.distanceFromSample = distanceFromSample;
    }
    
    public static List calcDistance(List<fruits> f1, fruits ts){
        for(fruits f:f1){
            double c = Math.pow(f.weight-ts.weight,2);
            double d = Math.pow(f.color-ts.color, 2);
            double dist = Math.sqrt(c+d);
            f.setDistanceFromSample(dist);
        }
        return f1;
    }
    
    @Override
    public String toString(){
        return "Fruits [weight = "+weight+" , color = "+color+" , label = "+label+" and distanceFromSample = "+distanceFromSample+"]";
    }
    
    @Override
    public int compareTo(fruits o){
        return ((int)(this.distanceFromSample-o.distanceFromSample)*100);
    }
}
