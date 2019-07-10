import java.util.*;

public class testIt {
    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> arr = new ArrayList<Integer>();
        int max,min,n;
        System.out.println("Enter the length");
        n = sc.nextInt();
        for(int i = 0 ; i < n ; i++){
            System.out.println("Enter the "+(i+1)+" element");
            int a = sc.nextInt();
            arr.add(a);
        }

        max = Collections.max(arr);
        // System.out.print(max);
        min = Collections.min(arr);
        // System.out.println(min);
        // System.out.println(max-min);
        System.out.println();
        int[][] ar = new int[(max-min)+1][n+1];
        int i = 0;
        while(max>min-1){
            // System.out.println("i :"+i);
            for(int j = 0 ; j <= n ; j++){
                if(j == n){
                    ar[i][j] = max;
                }
                else{
                // System.out.println("j :"+j);
                if(arr.get(j)>0 & max > 0 ){
                    if(arr.get(j)>=max){
                        ar[i][j] = 1;
                    }
                    else{
                        ar[i][j] = 0;
                    }
                }
                if(max == 0){
                    ar[i][j] = 1;
                }
                if(arr.get(j) < 0 & max < 0){
                    if(arr.get(j) <= max){
                        ar[i][j] = 1;
                    }
                    else{
                        ar[i][j] = 0;
                    }
                }
                }
            }
            i++;
            max = max-1;
        }
        i =0 ;
        max = Collections.max(arr);
        System.out.println(arr+"\n");
        while(max>min-1){
            for(int j = 0 ; j <= n ; j++){
                if(j == n){
                    System.out.print("\t");
                    System.out.print(ar[i][j]);
                }
                else{
                if(ar[i][j] == 1){
                    System.out.print("*");
                }
                if(ar[i][j] == 0){
                    System.out.print(" ");
                }
                }
            }
            i++;
            max = max-1;
            System.out.println();
        }
    }
}