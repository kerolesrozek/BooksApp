part of 'newestbooks_cubit.dart';


sealed class NewestbooksState {}

final class NewestbooksInitialState extends NewestbooksState {}
final class NewestbooksLoadingState extends NewestbooksState {}
final class NewestbooksSuccessState extends NewestbooksState {
  final List<BookEntity>books;

  NewestbooksSuccessState({required this.books});
}
final class NewestbooksFailureState extends NewestbooksState {
  final String errorMessage;

  NewestbooksFailureState({required this.errorMessage});
}
