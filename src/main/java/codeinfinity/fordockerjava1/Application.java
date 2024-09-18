package codeinfinity.fordockerjava1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		System.out.println("its java has run on: where am i? its docker?");
		SpringApplication.run(Application.class, args);
		System.out.println("its java has run on: where am i? its docker?");

	}

}
