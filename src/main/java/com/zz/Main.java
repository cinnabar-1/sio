package com.zz;

import java.io.IOException;

public class Main {
    /*
     * shell start
     * shell start java
     * java get lock
     * java -> shell
     * shell deploy
     * deploy done
     * shell -> java
     * java release lock
     * done
     * */
    public static void main(String[] args) throws InterruptedException, IOException {
        System.out.println("Hello world!");
        int in = System.in.read();
        System.err.write(in);
        System.out.println("hello");
        in = System.in.read();
        System.err.write(in);
        System.err.write(10);
        Thread.sleep(1000 * 60);
        System.out.println("hello");
    }


}