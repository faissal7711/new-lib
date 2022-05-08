import 'package:flutter/material.dart';

import '../conestants.dart';

//import '.../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.color,
     this.width=140,
  }) : super(key: key);
  final Function() onPressed;
  final String text;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120.0,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: FloatingActionButton.extended(
          backgroundColor: color,
//        icon: Icon(Icons.arrow_forward_ios,color: Colors.white,),
          onPressed: onPressed,
          label: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline3
                .copyWith(color: KTextColor,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
