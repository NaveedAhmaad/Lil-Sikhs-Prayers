import 'package:flutter/material.dart';
import 'package:lil_sikh/sources/home.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  late String titleText;
  late Function reference;
  late Function shared;
  CustomAppBar(
      {required this.titleText, required this.reference, required this.shared});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar Code
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (builder) {
              return Home();
            }));
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 30,
          ),
        ),
        title: Text(
          this.titleText,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        titleSpacing: 1,
        actions: [
          IconButton(
            onPressed: this.reference(),
            icon: Image(
              image: AssetImage("assets/read_icon.png"),
              height: 30,
              width: 30,
            ),
          ),
          IconButton(
            onPressed: this.shared(),
            icon: Image(
              image: AssetImage("assets/share_icon.png"),
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 50);
}
