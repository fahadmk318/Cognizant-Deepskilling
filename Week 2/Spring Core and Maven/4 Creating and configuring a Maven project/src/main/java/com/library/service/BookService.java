package com.library.service;

import com.library.repository.BookRepository;

public class BookService {

    private BookRepository bookRepository;

    // Setter for dependency injection via XML
    public void setBookRepository(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public void addBook(String title) {
        System.out.println("Service: Adding book - " + title);
        bookRepository.save(title);
    }

    public void searchBook(String title) {
        String result = bookRepository.findBook(title);
        System.out.println("Service: " + result);
    }
}