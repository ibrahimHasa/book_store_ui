import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class BookReviewDescreption extends StatelessWidget {
  final Book book;
  const BookReviewDescreption(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // padding: EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
        book.review,
        trimLines: 2,
        colorClickableText: Colors.grey,
        trimMode: TrimMode.Line,
        style: TextStyle(color: kFont, height: 1.8, fontSize: 18),
        trimCollapsedText: 'Read More',
        trimExpandedText: 'less',
      ),
    );
  }
}
