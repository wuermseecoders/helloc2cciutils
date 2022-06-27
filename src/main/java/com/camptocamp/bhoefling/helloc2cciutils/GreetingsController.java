package com.camptocamp.bhoefling.helloc2cciutils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingsController {
    private static final Logger LOG = LoggerFactory.getLogger(GreetingsController.class);

    @GetMapping("/greetings/{username}")
    public String getGreetings(@PathVariable("username") String userName) {
        LOG.info("GreetingsController.");
        return "Hello " + userName + ", Good day...!!!";
    }
}
