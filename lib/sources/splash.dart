import 'package:flutter/material.dart';
import 'package:lil_sikh/sources/home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          InkWell(
            child: Image(
              image: AssetImage("assets/1.jpg"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) {
                    return Home();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
