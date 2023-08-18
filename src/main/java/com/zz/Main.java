package com.zz;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws InterruptedException, IOException {
//        System.out.println("Hello world!");
        int in = System.in.read();
        System.out.println("hello");
        in = System.in.read();
//        in = System.in.read();
        Thread.sleep(1000 * 60);
        System.out.println("hello");
    }
}