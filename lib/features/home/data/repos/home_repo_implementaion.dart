import 'package:booksapp/core/errors/failure.dart';
import 'package:booksapp/features/home/data/data_sources/home_local_data_source.dart';
import 'package:booksapp/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:booksapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementaion extends HomeRepo {
  final HomeRemoteDataSource homeRemote;
  final HomeLocalDataSource homeLocal;

  HomeRepoImplementaion(this.homeRemote, this.homeLocal);
  @override
  Future<Either<Failure, List<BookEntity>>> fetchBooks(
      {int pageNumber = 0}) async {
    try {
      List<BookEntity> books;

      books = homeLocal.fetchBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemote.fetchBooks(pageNumber: pageNumber);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ApiServerEror.fromDioException(e));
      } else {
        return left(
          ApiServerEror(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;

      books = homeLocal.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemote.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ApiServerEror.fromDioException(e));
      } else {
        return left(
          ApiServerEror(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }
}
