import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Scanner;


/*
* Challenge can be found at: https://www.hackerrank.com/challenges/knightl-on-chessboard/problem
*/



public class Solution {
	
	static class Point{
        private int x;
        private int y;
        private int path;
        public Point(int x,  int y,  int path){
            this.x = x;
            this.y = y;
            this.path = path;
        }
    }

    // Complete the knightlOnAChessboard function below.
    public static int[][] knightlOnAChessboard(int n) {
        
        int[][] result = new int[n-1][n-1];

        for(int i=1; i<n; i++){
            for(int j=i; j<n; j++){
                result[i-1][j-1] = recursiveKnight(i, j, n);
            }
        }

        for(int i=0; i<result.length; i++) {
        	for(int j=0; j<i; j++) {
        		
        		result[i][j] = result[j][i];
        		
        	}
        	
        }
        
        return result;
    }
    
    public static int recursiveKnight(int i,  int j,  int n){

		ArrayList<Point> curr_list = new ArrayList<Point>();
        curr_list.add(new Point(0, 0, 0));
        
        if(curr_list.size() == 0) {
        	return 0;
        }
        
        int[][] marked = new int[n][n];
        
        while(curr_list.size() != 0){
            Point p = curr_list.remove(0);
            int x = p.x;
            int y = p.y;
            int t = p.path;
            if(x-i>=0){
                if(y-j>=0){
                    addPoint(x-i, y-j, t+1, curr_list, marked);
                }
                if(y+j < n){
                    addPoint(x-i, y+j, t+1, curr_list, marked);
                }
            }
            if(x+i <n){
                if(y-j>=0){
                    addPoint(x+i, y-j, t+1, curr_list, marked);
                }
                if(y+j < n){
                    if(x+i == n-1 && y+j == n-1) return t+1;
                    addPoint(x+i, y+j, t+1, curr_list, marked);
                }
            }
            if(x-j >= 0){
                if(y-i >= 0){
                    addPoint(x-j, y-i, t+1, curr_list, marked);
                }
                if(y+i < n){
                    addPoint(x-j, y+i, t+1, curr_list, marked);
                }
            }
            if(x+j < n){
                if(y-i >= 0){
                    addPoint(x+j, y-i, t+1, curr_list, marked);
                }
                if(y+i < n){
                    if(x+j == n-1 && y+i == n-1) return t+1;
                    addPoint(x+j, y+i, t+1, curr_list, marked);
                }
            }
            
        }
        return -1;
    }
    
    public static void addPoint(int x,  int y,  int p,  ArrayList<Point> curr_list,  int[][] marked){
        if(marked[x][y] == 1) {
        	return;
        }else {
        	curr_list.add(new Point(x, y, p));
            marked[x][y] = 1;
        }
        
    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
    	
    	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    	BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(System.out));
    	
        System.out.println("What is the size of the board?");
        Scanner s1 = new Scanner(System.in);
        
        int n = s1.nextInt();

        int[][] result = knightlOnAChessboard(n);

        for (int i = 0; i < result.length; i++) {
            for (int j = 0; j < result[i].length; j++) {
                bufferedWriter.write(String.valueOf(result[i][j]));

                if (j != result[i].length - 1) {
                    bufferedWriter.write(" ");
                }
            }

            if (i != result.length - 1) {
                bufferedWriter.write("\n");
            }
        }

        bufferedWriter.newLine();

        bufferedWriter.close();

        scanner.close();
    }
}
