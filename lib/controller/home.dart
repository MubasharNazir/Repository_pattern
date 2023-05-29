//import 'package:repo_bookstore/models/book.dart';

//import 'package:flutter/material.dart';
import 'package:flutter_application_1/Database/virtual_database.dart';

import '../models/book_model.dart';
import '../repositries/book.dart';

class HomeController {
  final BookRepository _bookRepo = BookRepository(VirtualDB());

  Future<List<Book>> getAllBooks() {
    return _bookRepo.getAll();
  }

  Future<void> addBook(Book book) {
    return _bookRepo.insert(book);
  }

  Future<void> removeBook(int id) {
    return _bookRepo.delete(id);
  }
}
