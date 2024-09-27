import 'package:booksapp/core/errors/failure.dart';
import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:booksapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchBooksUseCase {
  final HomeRepo homeRepo;

  FetchBooksUseCase({required this.homeRepo});
  Future<Either<Failure, List<BookEntity>>> call({int pageNumber=0}){
    return homeRepo.fetchBooks(pageNumber: pageNumber);
  }

  
}