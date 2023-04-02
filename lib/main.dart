import 'package:flutter/material.dart';
import 'package:lil_sikh/sources/splash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LilSikh(),
    ),
  );
}

class LilSikh extends StatefulWidget {
  @override
  State<LilSikh> createState() => _LilSikhState();
}

class _LilSikhState extends State<LilSikh> {
  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}
