import 'package:ebook_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final int selected;
  final Function callback;

  CustomTab(this.selected, this.callback, {Key? key}) : super(key: key);

  final tabs = ['EBook', 'AudioBooks'];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
      width: width,
      height: 56,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
      child: ListView.separated(
          // controller: PageController(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  decoration: BoxDecoration(
                    color: selected == index ? Colors.white : Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    tabs[index],
                    style: const TextStyle(
                        color: kFont, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  width: (width - 40) / 2 - 10,
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: tabs.length),
    );
  }
}
