import 'package:flutter/material.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/main_drawer.dart';
import 'lesson_belady_screen.dart';
import '../vedio_screen.dart';

class BeladyMainScreen extends StatelessWidget {
  static const routeName = '/belady_main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[0].title),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * 0.15),
          children: [
//            CustomContainer(
//              function: () {
//                Navigator.of(context)
//                    .pushNamed(LessonBeladyScreen.routeName);
//              },
//              context: context,
//              description: '',
//              title: 'شرح الدرس',
//            ),
            CustomButton(
              color: KButtonColor1,
//            context: context,
              onPressed: () {
//                Navigator.of(context).pushNamed(SubjectMainScreen.routeName);
              },
              text: 'شرح الدرس',
//            description: '',
            ),
//            CustomButton(
//              onPressed: () {
//                Navigator.of(context).pushNamed(VideoScreen.routeName);
//              },
//              text: 'فيديو توضيحي',
//            ),
//            CustomButton(
//              onPressed: () {},
//              text: 'اﻹختبارات',
//            ),
          ],
//          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//            maxCrossAxisExtent: 200.0,
//            childAspectRatio: 3 / 2,
//            crossAxisSpacing: 20.0,
//            mainAxisSpacing: 20.0,
//          ),
        ),
      ),
    );
  }
}
