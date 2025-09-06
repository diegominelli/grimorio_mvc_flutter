import 'package:grimorio_mvc_flutter/dao/book_database.dart';
import 'package:grimorio_mvc_flutter/models/google_book.dart';
import 'package:grimorio_mvc_flutter/models/personal_book.dart';

class BookController {
  PersonalBookDatabase personalBookDatabase = PersonalBookDatabase();

  void addBook(
    GoogleBook googleBook,
    String dayStarted,
    String dayFinished,
    String comments,
  ) {
    PersonalBook newBook = PersonalBook(
      dayStarted: dayStarted,
      dayFinished: dayFinished,
      comments: comments,
      googleBook: googleBook,
    );
    personalBookDatabase.save(newBook);
  }
}
