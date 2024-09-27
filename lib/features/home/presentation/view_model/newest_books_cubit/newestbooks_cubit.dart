import 'package:booksapp/features/home/domain/entities/book_entity.dart';
import 'package:booksapp/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.fetchNewestBooksUseCase)
      : super(NewestbooksInitialState());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  fetchNewestBooks() async {
    emit(NewestbooksLoadingState());
    var result = await fetchNewestBooksUseCase.call();
    result.fold(
      (failure) {
        emit(
          NewestbooksFailureState(errorMessage: failure.errorMessage),
        );
      },
      (success) {
        emit(
          NewestbooksSuccessState(books: success),
        );
      },
    );
  }
}
