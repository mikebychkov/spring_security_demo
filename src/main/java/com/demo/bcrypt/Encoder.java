package com.demo.bcrypt;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Encoder {

    public static void main(String[] args) {
        BCryptPasswordEncoder enc = new BCryptPasswordEncoder();
        String pass = "1234";
        System.out.println(enc.encode(pass));
    }
}
