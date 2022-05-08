import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';

import '../conestants.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(BuildContext context,String text, Function function) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: Container(
        height: 70,
//      height: MediaQuery.of(context).size.height * 0.1,
        child: Card(
          shadowColor: Colors.tealAccent,
          child: ListTile(
            onTap: function,
//          leading: Icon(
//            iconData,
//            size: 30.0,
//          ),
            title: Text(
              text,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: KTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Theme.of(context).accentColor.withOpacity(0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20.0),
              color: Theme.of(context).backgroundColor,
              child: Center(
                child: Text(
                  'طفلي يتعلم',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: KTextColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            buildListTile(
              context,
              'عام جديد',

              () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/');
              },
            ),
            buildListTile(
              context,
              'بلادي',

                  () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/');
              },
            ),
            buildListTile(
              context,
              'المكتبة المدرسية',

                  () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/');
              },
            ),
            buildListTile(
              context,
              'القناطر الخيرية',

                  () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/');
              },
            ),
            buildListTile(
              context,
              'اﻹختبارات',

                  () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/');
              },
            ),
            SizedBox(height: 35.0),
            buildListTile(
              context,
              'عن الطلاب',

                  () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/');
              },
            ),
            buildListTile(
              context,
              'Devloped by',
//            Icons.settings,
                  () {
                    Navigator.pop(context);
                Navigator.of(context).pushNamed(FiltersScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
