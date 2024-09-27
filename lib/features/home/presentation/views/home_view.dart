import 'package:booksapp/core/setup_service_locator.dart';
import 'package:booksapp/features/home/data/repos/home_repo_implementaion.dart';
import 'package:booksapp/features/home/domain/use_cases/fetch_books_use_case.dart';
import 'package:booksapp/features/home/presentation/view_model/books_cubit/books_cubit.dart';
import 'package:booksapp/features/home/presentation/views/widgets/homeview_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BooksCubit(
        FetchBooksUseCase(homeRepo: getIt.get<HomeRepoImplementaion>())
      )..fetchBooks(),
      child: Scaffold(
        body: SafeArea(child: HomeviewBody()),
      ),
    );
  }
}
