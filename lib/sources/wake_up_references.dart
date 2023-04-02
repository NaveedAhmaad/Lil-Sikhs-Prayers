import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WakeupReferences extends StatefulWidget {
  @override
  State<WakeupReferences> createState() => _WakeupReferencesState();
}

class _WakeupReferencesState extends State<WakeupReferences> {
  late String language;
  String backButton = 'Back';
  String titlePage = 'References';
  String description = 'Comb hair article references';
  checkLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString('language');
  }

  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('language') == 'en') {
      backButton = 'Back';
      titlePage = 'References';
      description = 'Wake up article references';
    } else if (sharedPreferences.getString('language') == 'ur') {
      backButton = 'واپس';
      titlePage = 'حوالہ جات';
      description = 'جاگو مضمون کے حوالے';
    } else if (sharedPreferences.getString('language') == 'hi') {
      backButton = 'पीछे';
      titlePage = 'संदर्भ';
      description = 'जागो लेख संदर्भ';
    } else if (sharedPreferences.getString('language') == 'fr') {
      backButton = 'Dos';
      titlePage = 'Les références';
      description = "Réveiller les références des articles";
    } else if (sharedPreferences.getString('language') == 'sp') {
      backButton = 'Atrás';
      titlePage = 'Referencias';
      description = 'Despierta referencias de artículos';
    } else if (sharedPreferences.getString('language') == 'gr') {
      backButton = 'Zurück';
      titlePage = 'Verweise';
      description = 'Wecken Sie Artikelreferenzen auf';
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
          ),
          title: TextButton(
            child: Text(
              backButton,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {
              debugPrint("Back Button Pressed");
              Navigator.pop(context);
            },
          ),
          titleSpacing: 0,
        ),
        body: Material(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 30),
                  child: Center(
                    child: Text(
                      titlePage,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    color: Color(0xffF0F2F4),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
