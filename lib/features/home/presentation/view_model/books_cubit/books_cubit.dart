import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:booksapp/features/home/domain/use_cases/fetch_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.fetchBooksUseCase) : super(BooksInitialState());
  final FetchBooksUseCase fetchBooksUseCase;

  fetchBooks({int pageNumber=0}) async {
    emit(BooksLoadingState());
    var result = await fetchBooksUseCase.call(pageNumber: pageNumber);
    result.fold(
      (failure) {
        emit(
          BooksFailureState(errorMessage: failure.errorMessage),
        );
      },
      (success) {
        emit(
          BooksSuccessState(books: success),
        );
      },
    );
  }
}
