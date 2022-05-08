import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LessonBeladyScreen extends StatelessWidget {
  static const routeName = 'lesson_belady_screen';

  Widget buildContainerImage(BuildContext context,String imagePath) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(6.0),
      child: Image.asset(imagePath,fit: BoxFit.fill),
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(8.0),
//        image: DecorationImage(
//          image: Image.asset(imagePath).image,
//          fit: BoxFit.cover,
//        ),
//      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text("GFG Slider"),
          ),
      body: Stack(
        children: [
          // Background image of SideMenu (Drawer)
          Image(
            width: double.infinity,
            height: double.infinity,
            image: AssetImage('assets/images/bg_for _app.jpg'),
            fit: BoxFit.fill,
          ),
          CarouselSlider(
            items: [
//              Image.asset('assets/images/bg_for _app.jpg'),
              buildContainerImage(context,'assets/images/belady0.jpg'),
              buildContainerImage(context,'assets/images/belady1.jpg'),
              buildContainerImage(context,'assets/images/belady2.jpg'),
              buildContainerImage(context,'assets/images/belady3.jpg'),
              buildContainerImage(context,'assets/images/belady4.jpg'),
              buildContainerImage(context,'assets/images/belady5.jpg'),
              buildContainerImage(context,'assets/images/belady6.jpg'),

              //1st Image of Slider
//              Container(
//                margin: EdgeInsets.all(6.0),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(8.0),
//                  image: DecorationImage(
//                    image: Image.asset("assets/images/belady0.jpg").image,
//                    fit: BoxFit.cover,
//                  ),
//                ),
//                child: Image.asset("assets/images/belady0.jpg"),
//              ),
//
//              //2nd Image of Slider
//              Container(
//                margin: EdgeInsets.all(6.0),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(8.0),
//                  image: DecorationImage(
//                    image: NetworkImage("ADD IMAGE URL HERE"),
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
//
//              //3rd Image of Slider
//              Container(
//                margin: EdgeInsets.all(6.0),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(8.0),
//                  image: DecorationImage(
//                    image: NetworkImage("ADD IMAGE URL HERE"),
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
//
//              //4th Image of Slider
//              Container(
//                margin: EdgeInsets.all(6.0),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(8.0),
//                  image: DecorationImage(
//                    image: NetworkImage("ADD IMAGE URL HERE"),
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
//
//              //5th Image of Slider
//              Container(
//                margin: EdgeInsets.all(6.0),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(8.0),
//                  image: DecorationImage(
//                    image: NetworkImage("ADD IMAGE URL HERE"),
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,initialPage: 0,
            ),
          ),
        ],
      ),
    );
  }
}
