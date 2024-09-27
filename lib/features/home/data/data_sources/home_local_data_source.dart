import 'package:booksapp/core/constants.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImplementaion extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchBooks() {
    // TODO: implement fetchBooks
    var box = Hive.box<BookEntity>(kBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    var box = Hive.box<BookEntity>(kNewestBooks);
    return box.values.toList();
  }
}
