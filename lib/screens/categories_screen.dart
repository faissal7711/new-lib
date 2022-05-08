import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_item.dart';
import '../conestants.dart';
import '../dummy_data.dart';
import '../testing.dart';
import '../widgets/custom_button.dart';

import 'belady/belady_main_screen.dart';
import 'new_year/new_year_main_screen.dart';
import 'qanatir/qanatir_main_screen.dart';
import 'school_library/library_main_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05),
      child: ListView(
        children: [
          CustomButton(
            color: KButtonColor1,
//            context: context,
            onPressed: () {
              Navigator.of(context).pushNamed(NewYearMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[0].title,
//            description: '',
          ),
          CustomButton(
            color: KButtonColor2,
//            context: context,
            onPressed: () {
              Navigator.of(context).pushNamed(BeladyMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[1].title,
//            description: '',
          ),
          CustomButton(
            color: KButtonColor3,
//            context: context,
            onPressed: () {
              Navigator.of(context).pushNamed(LibraryMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[2].title,
//            description: '',
          ),
          CustomButton(
            color: KButtonColor4,
//            context: context,
            onPressed: () {
              Navigator.of(context).pushNamed(QanatirMainScreen.routeName);
            },
            text: DUMMY_CATEGORIES[3].title,
//            description: '',
          ),
//            CustomContainer(
//              context: context,
//              function: () {
////              Navigator.of(context).pushNamed(SubjectMainScreen.routeName);
//              },
//              title: DUMMY_CATEGORIES[1].title,
//              description: '',
//            ),
//            CustomContainer(
//              context: context,
//              function: () {
//                Navigator.of(context).pushNamed(LibraryMainScreen.routeName);
//              },
//              title: DUMMY_CATEGORIES[2].title,
//              description: '',
//            ),
//            CustomContainer(
//              context: context,
//              function: () {
////              Navigator.of(context).pushNamed(SubjectMainScreen.routeName);
//              },
//              title: DUMMY_CATEGORIES[3].title,
//              description: '',
//            ),
        ],
//              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
//              children: DUMMY_CATEGORIES
//                  .map(
//                    (categories) => CategoryItem(
//                      categories.id,
//                      categories.title,
//                      categories.color,
//                    ),
//                  )
//                  .toList(),
//        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//          maxCrossAxisExtent: 200.0,
//          childAspectRatio: 3 / 2,
//          crossAxisSpacing: 20.0,
//          mainAxisSpacing: 20.0,
//        ),
      ),
    );
  }
}
