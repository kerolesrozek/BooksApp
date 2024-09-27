import 'package:booksapp/features/home/presentation/views/widgets/book_details_items.dart';
import 'package:booksapp/features/home/presentation/views/widgets/custom_bookdetail_appbar.dart';
import 'package:booksapp/features/home/presentation/views/widgets/custom_button_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          CustomBookDetailAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .30,
            child: AspectRatio(
              aspectRatio: 3.4 / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  imageUrl:
                      'https://biblebookprofiler.com/images/James_Structure.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Harry poter and the goblet of fire ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sectra Fine'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Author keroles rozek',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '500 Pages',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                borderradus: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                title: 'Free',
                colorbuttn: Colors.white,
                colortext: Colors.black,
              ),
              CustomButton(
                borderradus: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                title: 'Preview',
                colorbuttn: Colors.amberAccent.shade700,
                colortext: Colors.white,
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can Also Like',
              style: TextStyle(fontSize: 22, fontFamily: 'Sectra Fine'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          BookDetailItems()
        ],
      ),
    );
  }
}
