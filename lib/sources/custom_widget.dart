import 'package:flutter/material.dart';

class CustomTextWidget extends StatefulWidget {
  late String myText;
  late Color buttonColor;
CustomTextWidget({required this.myText, required this.buttonColor});

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      child: Container(
        color: Color(0xffF0F2F4),
        height: 60,
        width: double.maxFinite,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(this.widget.myText,
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff000000),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        padding: EdgeInsets.only(left: 30),
      ),
    );
  }
}
