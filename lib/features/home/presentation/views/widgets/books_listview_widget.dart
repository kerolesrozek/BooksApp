import 'package:booksapp/features/home/presentation/view_model/books_cubit/books_cubit.dart';
import 'package:booksapp/features/home/presentation/view_model/newest_books_cubit/newestbooks_cubit.dart';
import 'package:booksapp/features/home/presentation/views/widgets/book_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatefulWidget {
  const BooksListView({
    super.key,
  });

  @override
  State<BooksListView> createState() => _BooksListViewState();
}

class _BooksListViewState extends State<BooksListView> {
  int nextPage=1;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(paginationMethod);
    
  }

  void paginationMethod() {
    var currentPossition= _controller.position.pixels;
    var maxPossition=_controller.position.maxScrollExtent;
    if (currentPossition >= maxPossition * 0.7) {
      BlocProvider.of<BooksCubit>(context).fetchBooks(
        pageNumber: nextPage++
      );
      
    }
  }

@override
  void dispose() {
    
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubit, BooksState>(
      builder: (context, state) {
        if (state is BooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => BookItem(
                      bookEntity: state.books[index],
                    )),
          );
        } else if (state is BooksFailureState) {
          return Text(state.errorMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
