// import 'package:ebook_app/constants/colors.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       body: Center(
//         child: Text('Home PAge'),
//       ),
//     );
//   }
// }
import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/pages/home/widgets/book_staggered-gridview.dart';
import 'package:ebook_app/pages/home/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  var bottomIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: kFont,
          ),
        ),
        title: Text(
          'All Books',
          style: TextStyle(color: kFont, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: kFont,
              ))
        ],
      ),
      body: Column(
        children: [
          CustomTab(tabIndex, (int index) {
            setState(() {
              tabIndex = index;
            });
            pageController.jumpToPage(index);
          }),
          Expanded(
            child: BookStaggeredGridView(
              tabIndex,
              pageController,
              (int index) => setState(() {
                tabIndex = index;
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    final bottoms = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border,
      Icons.person_outline,
    ];
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 56,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () => setState(() {
                    bottomIndex = index;
                  }),
              child: Container(
                width: (width - 40) / 5,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: bottomIndex == index
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 3,
                            color: Colors.deepOrange,
                          ),
                        ),
                      )
                    : null,
                child: Icon(
                  bottoms[index],
                  size: 30,
                  color: bottomIndex == index ? kFont : Colors.grey,
                ),
              )),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: bottoms.length),
    );
  }
}
