package com.zz;

import java.io.IOException;

public class Node {
    public static void main(String[] args) throws InterruptedException, IOException {
        Thread.sleep(1000 * 60);
        System.out.println(0);
        int i = System.in.read();
        // that‘s ok exception will out to 2
        throw new IOException(String.valueOf(i));
    }


}
