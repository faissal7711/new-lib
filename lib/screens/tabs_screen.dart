import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';
import '../conestants.dart';
import 'categories_screen.dart';
import 'favorites.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
//  var currentPage = DrawerSection.
  final List<Map<String, Object>> _page = [
    {
      'page': CategoriesScreen(),
      'title': 'المنهج',
    },
    {
      'page': Favorites(),
      'title': 'المراجعة',
    },
  ];
  int _selectPageIndex = 0;

  void _selectPage(int value) {
    setState(() {
      _selectPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Theme.of(context).primaryColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          _page[_selectPageIndex]['title'],
          style: StyleTitle,
        ),
//        leading: Icon(Icons.menu,),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColor.withOpacity(0),
        child: _page[_selectPageIndex]['page'],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: KTextColor,
        currentIndex: _selectPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'المنهج',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'المراجعة',
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0),
      ),
    );
  }
}
