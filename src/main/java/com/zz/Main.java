package com.zz;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws InterruptedException, IOException {
//        System.out.println("Hello world!");
        int in = System.in.read();
        System.out.println(in);
        System.out.write(48);
        System.out.write(49);
        System.out.write(48);
        System.out.write(10);
        in = System.in.read();
        System.out.println(in);
        in = System.in.read();
        System.out.println(in);
        Thread.sleep(1000);
        System.out.write(48);
        System.out.write(49);
        System.out.write(48);
        System.out.write(10);
    }
}