import 'package:booksapp/core/errors/failure.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchBooks({int pageNumber=0});
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
