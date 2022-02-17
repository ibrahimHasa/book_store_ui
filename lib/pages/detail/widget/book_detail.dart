import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

class BookDetail extends StatelessWidget {
  final Book book;
  const BookDetail(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.type.toUpperCase(),
            style: TextStyle(color: Colors.orange, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            book.name,
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Published from ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: book.publisher,
                    style: const TextStyle(
                        color: kFont, fontWeight: FontWeight.w500),
                  )
                ]),
              ),
              Text(
                DateFormat.yMMMd().format(book.date),
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
