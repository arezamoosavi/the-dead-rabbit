package org.bigrabbit.com;

public class PingRabbit {
    public static void main(String args[]) throws Exception{
        for(int i = 0 ; i < 10; i++){
            System.out.println("Rabbit Ping " + i );
            Thread.sleep(1000);
        }
    }
}
