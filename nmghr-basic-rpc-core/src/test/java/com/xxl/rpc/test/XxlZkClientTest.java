package com.xxl.rpc.test;

import java.util.concurrent.TimeUnit;

import com.nmghr.rpc.util.XxlZkClient;

public class XxlZkClientTest {

    public static void main(String[] args) throws InterruptedException {

        XxlZkClient client = null;
        try {
            client = new XxlZkClient("127.0.0.1:2181", "/xxl-rpc/test", null, null);
        } catch (Exception e) {
            e.printStackTrace();
        }


        for (int i = 0; i < 100; i++) {
            System.out.println("------------- " + i);
            try {
                System.out.println(client.getClient());
            } catch (Exception e) {
                e.printStackTrace();
            }
            TimeUnit.SECONDS.sleep(5);
        }

    }

}