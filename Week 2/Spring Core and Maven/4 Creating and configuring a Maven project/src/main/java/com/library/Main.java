package com.library;

import com.library.service.BookService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

    public static void main(String[] args) {

        // Load the Spring IoC container using the XML configuration
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

        // Retrieve the BookService bean from the container
        BookService bookService = context.getBean("bookService", BookService.class);

        // Test the configuration
        bookService.addBook("Effective Java");
        bookService.searchBook("Effective Java");
    }
}