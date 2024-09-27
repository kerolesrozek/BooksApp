part of 'books_cubit.dart';


sealed class BooksState {}

final class BooksInitialState extends BooksState {}
final class BooksLoadingState extends BooksState {}
final class BooksSuccessState extends BooksState {
  final List<BookEntity>books;

  BooksSuccessState({required this.books});
}
final class BooksFailureState extends BooksState {
final String errorMessage;

  BooksFailureState({required this.errorMessage});
}
