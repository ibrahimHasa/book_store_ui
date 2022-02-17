import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/pages/home/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  BookStaggeredGridView(this.selected, this.pageController, this.callback,
      {Key? key})
      : super(key: key);
  final booklist = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisCount: 4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemCount: booklist.length,
            staggeredTileBuilder: (index) => StaggeredTile.fit(2),
            itemBuilder: (context, index) => BookItem(booklist[index]),
          )
        ],
      ),
    );
  }
}
