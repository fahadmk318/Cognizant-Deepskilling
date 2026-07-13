package com.library.repository;

public class BookRepository {

    public void save(String bookTitle) {
        System.out.println("Book saved to repository: " + bookTitle);
    }

    public String findBook(String bookTitle) {
        System.out.println("Searching repository for: " + bookTitle);
        return bookTitle + " found in database.";
    }
}






