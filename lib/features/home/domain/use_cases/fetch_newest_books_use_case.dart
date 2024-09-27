import 'package:booksapp/core/errors/failure.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:booksapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase({required this.homeRepo});

  Future<Either<Failure,List<BookEntity>>> call(){
    return homeRepo.fetchNewestBooks();
  }
}