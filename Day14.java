import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;


class Difference {
  	private int[] elements;
  	public int maximumDifference;

    public Difference(int[] a){
        elements = a;
    }

    public void computeDifference(){
        
        int max = findMax();
        int min = findMin();
        
        maximumDifference = max - min;  
    }

    public int findMax(){
        int result = 0;
        for(int i=0; i<elements.length; i++){
            if(elements[i]>result || i==0){
                result = elements[i];
            }
        }
        return result;
    }

    public int findMin(){
        int result = 0;
        for(int i=0; i<elements.length; i++){
            if(elements[i]<result || i==0){
                result = elements[i];
            }
        }
        return result;
    }
}
public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] a = new int[n];
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }
        sc.close();

        Difference difference = new Difference(a);

        difference.computeDifference();

        System.out.print(difference.maximumDifference);
    }
}
