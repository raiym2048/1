package codeinfinity.fordockerjava1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/api")
public class Controller {
    @GetMapping("/say-hello")
    public String hello(){
        return "hello";
    }
}
