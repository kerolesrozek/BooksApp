import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 1)
class BookEntity {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String? titile;
  @HiveField(2)
  final String? author;
  @HiveField(3)
  final num? price;
  @HiveField(4)
  final num? pages;

  BookEntity(
      {required this.image,
      required this.titile,
      required this.author,
      required this.price,
      required this.pages});
}
