import 'package:flutter/material.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/main_drawer.dart';
import 'lesson_qanatir_screen.dart';
import 'qanatir_vedio_screen.dart';

class QanatirMainScreen extends StatelessWidget {
  static const routeName = '/qanatir_main_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[3].title),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02),
          children: [
            CustomButton(
              color: KButtonColor1,
//            context: context,
              onPressed: () {
                Navigator.of(context).pushNamed(LessonQanatirScreen.routeName);
              },
              text: 'شرح الدرس',
//            description: '',
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomButton(
              color: KButtonColor1,
//            context: context,
              onPressed: () {
                Navigator.of(context).pushNamed(QanatirVideoScreen.routeName);
              },
              text: 'فيديو توضيحي',
//            description: '',
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomButton(
              color: KButtonColor1,
//            context: context,
              onPressed: () {
//                Navigator.of(context).pushNamed(NewYearMainScreen.routeName);
              },
              text: 'اﻹختبارات',
//            description: '',
            ),

//            CustomContainer(
//              function: () {
//                Navigator.of(context)
//                    .pushNamed(LessonNewYearScreen.routeName);
//              },
//              context: context,
//              description: '',
//              title: 'شرح الدرس',
//            ),
//            CustomContainer(
//              function: () {
//                Navigator.of(context)
//                    .pushNamed(LessonNewYearScreen.routeName);
//              },
//              context: context,
//              description: '',
//              title: 'فيديو توضيحي',
//            ),
//            CustomContainer(
//              function: () {
//                Navigator.of(context)
//                    .pushNamed(LessonNewYearScreen.routeName);
//              },
//              context: context,
//              description: '',
//              title: 'اﻹختبارات',
//            ),
//            CustomButton(onPressed: (){
//              Navigator.of(context).pushNamed(VideoScreen.routeName);
//            }, text: 'فيديو توضيحي'),
//            CustomButton(onPressed: (){}, text: 'اﻹختبارات'),
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
