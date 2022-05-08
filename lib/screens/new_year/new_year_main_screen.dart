import 'package:flutter/material.dart';
import '../../conestants.dart';
import '../../dummy_data.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/main_drawer.dart';
import 'new_year_screen.dart';
import '../vedio_screen.dart';
import 'new_year_vedio_screen.dart';

class NewYearMainScreen extends StatelessWidget {
  static const routeName = '/subject_main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: KMainColor,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[0].title,style: StyleTitle),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02),
          children: [
            CustomButton(
              heroTag: 'new_year1',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
                Navigator.of(context).pushNamed(LessonNewYearScreen.routeName);
              },
              text: 'شرح الدرس',
//            description: '',
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomButton(
              heroTag: 'new_year2',
              color: KButtonColor1,
//            context: context,
              onPressed: () {
                VideoScreen.url ='https://youtu.be/uSeCmFyRn4Y';
                Navigator.of(context).pushNamed(VideoScreen.routeName);
              },
              text: 'فيديو توضيحي',
//            description: '',
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomButton(
              heroTag: 'new_year3',
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
