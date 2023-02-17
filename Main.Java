package zadanie1;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;

public class Main {
    public static void main(String[] args) throws CloneNotSupportedException {
        Vector<String> prop = new Vector<>();
        prop.add("test1");
        Vector<String> prop2 = new Vector<>();
        prop2.add("test2");
        Vector<String> prop3 = new Vector<>();
        prop3.add("test3");
        Vector<String> prop4 = new Vector<>();
        prop4.add("test4");
        Vector<String> prop5 = new Vector<>();
        prop5.add("test5");

        Java probka1 = new Java(true,prop);
        Java probka2 = new Java(true,prop2);
        Java probka3 = new Java(true,prop3);
        Java probka4 = new Java(true,prop4);

        probka2.setDateOfStart(LocalDate.of(1998,5,23));
        probka3.setDateOfStart(LocalDate.of(1987,5,23));
        probka4.setDateOfStart(LocalDate.of(2000,5,23));

        Java probka5 = probka1.clone();
        System.out.println("Probka5");
        System.out.println(probka5);
        System.out.println("##############");

        ArrayList<Java> tab = new ArrayList<>();
        tab.add(probka1);
        tab.add(probka2);
        tab.add(probka3);
        tab.add(probka4);

        tab.sort(new NewComparator());

        for(Java element: tab)
        {
            System.out.println(element);
        }

        tab.sort(Java::compareTo);
        System.out.println("#######################################");

        for(Java element: tab)
        {
            System.out.println(element);
        }
    }
}
