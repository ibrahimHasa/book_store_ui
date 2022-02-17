import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/pages/detail/widget/book_review_descreption.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BookReview extends StatelessWidget {
  final Book book;

  const BookReview(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '${book.score}',
                style: TextStyle(
                    color: kFont, fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              buildStar(),
            ],
          ),
          SizedBox(height: 12),
          Text(
            '${book.ratings}, Ratings on Google Play',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 15),
          BookReviewDescreption(book),
          // Text.rich(
          //   TextSpan(children: [
          //     TextSpan(
          //       text: book.review,
          //       style: TextStyle(color: kFont, fontSize: 18, height: 1.7),
          //     ),
          //     TextSpan(
          //         text: '...Read More',
          //         style: TextStyle(
          //           color: kFont,
          //           fontSize: 16,
          //         ))
          //   ]),
          // ),
        ],
      ),
    );
  }

  Widget buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3)
    ];
    return Row(
        children: color
            .map((e) => Icon(
                  Icons.star,
                  size: 25,
                  color: e,
                ))
            .toList());
  }
}
