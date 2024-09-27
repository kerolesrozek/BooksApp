import 'package:booksapp/core/api_service/api_services.dart';
import 'package:booksapp/core/constants.dart';
import 'package:booksapp/features/home/data/models/book_model/book_model.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImplementation extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImplementation(this.apiServices);
  @override
  Future<List<BookEntity>> fetchBooks({int pageNumber = 0}) async {
    // TODO: implement fetchBooks
    var data = await apiServices.get(
        endpoin:
            'volumes?q=programming&Filtering=free-ebooks&startIndex=${pageNumber * 10}');
    List<BookEntity> books = [];
    for (var element in data["items"]) {
      books.add(BookModel.fromJson(element));
    }
    saveToLocalData(books, kBooks);
    return books;
  }
// save data in local with hive package

  void saveToLocalData(List<BookEntity> books, String boxNme) {
    var box = Hive.box<BookEntity>(boxNme);
    box.addAll(books);
  }

  //end

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    // TODO: implement fetchNewestBooks
    Map<String, dynamic> data = await apiServices.get(
        endpoin: 'volumes?q=programming&Filtering=free-ebooks&Sorting=newest');
    List<BookEntity> books = [];
    for (var element in data["items"]) {
      books.add(BookModel.fromJson(element));
    }
    saveToLocalData(books, kNewestBooks);

    return books;
  }
}
