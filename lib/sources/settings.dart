import 'package:flutter/material.dart';
import 'package:lil_sikh/sources/custom_widget.dart';
import 'package:lil_sikh/sources/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  late String language;
  String backButtonText = 'Back';
  String saveButtonText = 'Save';
  String languageTitleText = 'Languages';
  String english = 'English';
  String urdu = 'Urdu';
  String hindi = "Hindi";
  String french = "French";
  String spanish = "Spanish";
  String german = "German";
  Color buttonNewColor = Color(0xffBFC1C4);
  bool isSelected = false;

  setEnglish() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', 'en');
    sharedPreferences.setString('backButtonText', 'Back ');
    sharedPreferences.setString('saveButtonText', 'Save');
    sharedPreferences.setString('languageTitleText', 'Languages ');
    sharedPreferences.setString('english', 'English ');
    sharedPreferences.setString('urdu', 'Urdu ');
    sharedPreferences.setString('hindi', 'Hindi ');
    sharedPreferences.setString('french', 'French ');
    sharedPreferences.setString('spanish', 'Spanish ');
    sharedPreferences.setString('german', 'German ');

    sharedPreferences.getString('language');
    sharedPreferences.getString('backButtonText');
    sharedPreferences.getString('saveButtonText');
    sharedPreferences.getString('languageTitleText');
    sharedPreferences.getString('english');
    sharedPreferences.getString('urdu');
    sharedPreferences.getString('hindi');
    sharedPreferences.getString('french');
    sharedPreferences.getString('spanish');
    sharedPreferences.getString('german');

    setState(() {});
  }

  setUrdu() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', 'ur');
    sharedPreferences.setString('backButtonText', 'واپس ');
    sharedPreferences.setString('saveButtonText', 'محفوظ کریں۔');
    sharedPreferences.setString('languageTitleText', 'زبانیں ');
    sharedPreferences.setString('english', 'انگریزی ');
    sharedPreferences.setString('urdu', 'اردو ');
    sharedPreferences.setString('hindi', 'ہندی ');
    sharedPreferences.setString('french', 'فرانسیسی ');
    sharedPreferences.setString('spanish', 'ہسپانوی ');
    sharedPreferences.setString('german', 'جرمن ');

    sharedPreferences.getString('language');
    sharedPreferences.getString('backButtonText');
    sharedPreferences.getString('saveButtonText');
    sharedPreferences.getString('languageTitleText');
    sharedPreferences.getString('english');
    sharedPreferences.getString('urdu');
    sharedPreferences.getString('hindi');
    sharedPreferences.getString('french');
    sharedPreferences.getString('spanish');
    sharedPreferences.getString('german');

    setState(() {});
  }

  setHindi() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', 'hi');
    sharedPreferences.setString('backButtonText', 'पीछे ');
    sharedPreferences.setString('saveButtonText', 'बचाना');
    sharedPreferences.setString('languageTitleText', 'बोली ');
    sharedPreferences.setString('english', 'अंग्रेज़ी ');
    sharedPreferences.setString('urdu', 'उर्दू ');
    sharedPreferences.setString('hindi', 'हिंदी ');
    sharedPreferences.setString('french', 'फ्रेंच ');
    sharedPreferences.setString('spanish', 'स्पैनिश ');
    sharedPreferences.setString('german', 'जर्मन ');

    sharedPreferences.getString('language');
    sharedPreferences.getString('backButtonText');
    sharedPreferences.getString('saveButtonText');
    sharedPreferences.getString('languageTitleText');
    sharedPreferences.getString('english');
    sharedPreferences.getString('urdu');
    sharedPreferences.getString('hindi');
    sharedPreferences.getString('french');
    sharedPreferences.getString('spanish');
    sharedPreferences.getString('german');

    setState(() {});
  }

  setFrench() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', 'fr');
    sharedPreferences.setString('backButtonText', 'Dos ');
    sharedPreferences.setString('saveButtonText', 'Sauvegarder');
    sharedPreferences.setString('languageTitleText', 'Langues ');
    sharedPreferences.setString('english', 'Anglaise ');
    sharedPreferences.setString('urdu', 'ourdou ');
    sharedPreferences.setString('hindi', 'hindi ');
    sharedPreferences.setString('french', 'Français ');
    sharedPreferences.setString('spanish', 'Espagnole ');
    sharedPreferences.setString('german', 'Allemande ');

    sharedPreferences.getString('language');
    sharedPreferences.getString('backButtonText');
    sharedPreferences.getString('saveButtonText');
    sharedPreferences.getString('languageTitleText');
    sharedPreferences.getString('english');
    sharedPreferences.getString('urdu');
    sharedPreferences.getString('hindi');
    sharedPreferences.getString('french');
    sharedPreferences.getString('spanish');
    sharedPreferences.getString('german');

    setState(() {});
  }

  setSpanish() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', 'sp');
    sharedPreferences.setString('backButtonText', 'Atrás ');
    sharedPreferences.setString('saveButtonText', 'Ahorrar');
    sharedPreferences.setString('languageTitleText', 'Idiomas ');
    sharedPreferences.setString('english', 'Inglesa ');
    sharedPreferences.setString('urdu', 'urdu ');
    sharedPreferences.setString('hindi', 'hindi ');
    sharedPreferences.setString('french', 'Francesa ');
    sharedPreferences.setString('spanish', 'Española ');
    sharedPreferences.setString('german', 'Alemana ');

    sharedPreferences.getString('language');
    sharedPreferences.getString('backButtonText');
    sharedPreferences.getString('saveButtonText');
    sharedPreferences.getString('languageTitleText');
    sharedPreferences.getString('english');
    sharedPreferences.getString('urdu');
    sharedPreferences.getString('hindi');
    sharedPreferences.getString('french');
    sharedPreferences.getString('spanish');
    sharedPreferences.getString('german');

    setState(() {});
  }

  setGerman() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', 'gr');
    sharedPreferences.setString('backButtonText', 'Zurück ');
    sharedPreferences.setString('saveButtonText', 'Speichern');
    sharedPreferences.setString('languageTitleText', 'Sprachen ');
    sharedPreferences.setString('english', 'Englisch ');
    sharedPreferences.setString('urdu', 'Urdu ');
    sharedPreferences.setString('hindi', 'Hindi ');
    sharedPreferences.setString('french', 'Französisch ');
    sharedPreferences.setString('spanish', 'Spanisch ');
    sharedPreferences.setString('german', 'Deutsch ');

    sharedPreferences.getString('language');
    sharedPreferences.getString('backButtonText');
    sharedPreferences.getString('saveButtonText');
    sharedPreferences.getString('languageTitleText');
    sharedPreferences.getString('english');
    sharedPreferences.getString('urdu');
    sharedPreferences.getString('hindi');
    sharedPreferences.getString('french');
    sharedPreferences.getString('spanish');
    sharedPreferences.getString('german');

    setState(() {});
  }

  // setFrench() async {
  saveData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    language = sharedPreferences.getString('language')!;
    backButtonText = sharedPreferences.getString('backButtonText')!;
    saveButtonText = sharedPreferences.getString('saveButtonText')!;
    languageTitleText = sharedPreferences.getString('languageTitleText')!;
    english = sharedPreferences.getString('english')!;
    urdu = sharedPreferences.getString('urdu')!;
    hindi = sharedPreferences.getString('hindi')!;
    french = sharedPreferences.getString('french')!;
    spanish = sharedPreferences.getString('spanish')!;
    german = sharedPreferences.getString('german')!;

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    saveData();
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
              Navigator.pop(context, 'language');
              setState(() {
              });
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
          ),
          title: TextButton(
            child: Text(
              backButtonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {
              debugPrint("back Button pressed");
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (builder){
                return Home();
              }),
                    (route) => false,
              );
            },
          ),
          titleSpacing: 0,
          actions: [
            TextButton(
              onPressed: () async {
                await saveData();
                debugPrint("Saved button pressed");
              },
              child: Text(
                saveButtonText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        body: Material(
          child: Container(
            color: Color(0xffffffff),
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 70,
                    width: double.maxFinite,
                    color: Color(0xffBFC1C4),
                    child: Center(
                      child: Text(
                        languageTitleText,
                        style: TextStyle(
                          fontSize: 34,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  child: CustomTextWidget(
                    myText: english,
                    buttonColor: buttonNewColor,
                  ),
                  onTap: () async {
                    await setEnglish();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: CustomTextWidget(
                    myText: urdu,
                    buttonColor: buttonNewColor,
                  ),
                  onTap: () async {
                    await setUrdu();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: CustomTextWidget(
                    myText: hindi,
                    buttonColor: buttonNewColor,
                  ),
                  onTap: () async {
                    await setHindi();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: CustomTextWidget(
                    myText: french,
                    buttonColor: buttonNewColor,
                  ),
                  onTap: () async {
                    await setFrench();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: CustomTextWidget(
                    myText: spanish,
                    buttonColor: buttonNewColor,
                  ),
                  onTap: () async {
                    await setSpanish();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: CustomTextWidget(
                    myText: german,
                    buttonColor: buttonNewColor,
                  ),
                  onTap: () async {
                    await setGerman();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
