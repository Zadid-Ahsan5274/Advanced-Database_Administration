
package knn;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class KNN {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        BufferedReader br = new BufferedReader(new FileReader("kaju.csv"));
        String line = "";
        List<fruits> li = new ArrayList<>();
        while(((line=br.readLine())!=null)){
            String k[] = line.split(",");
            fruits fr = new fruits(Integer.parseInt(k[0]),Integer.parseInt(k[1]),k[2]);
            li.add(fr);
        }
        fruits f1 = new fruits(400,3);
        List<fruits> so = new ArrayList<>();
        so = fruits.calcDistance(li,f1);
        Collections.sort(so);
        for(int i = 0; i < 3; i++){
            System.out.println(so.get(i));
        }
    }
    
}
