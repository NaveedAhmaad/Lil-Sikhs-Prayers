import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
import 'package:lil_sikh/sources/comb_description.dart';
import 'package:lil_sikh/sources/comb_references.dart';
import 'package:lil_sikh/sources/home.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Comb extends StatefulWidget {
  @override
  State<Comb> createState() => _CombState();
}

class _CombState extends State<Comb> {
  // TextEditingController controller = TextEditingController();
  // FlutterTts flutterTts = FlutterTts();
  // speak(String text) async{
  //   // if ('language' == 'en'){
  //     await flutterTts.setLanguage("en-US");
  //     await flutterTts.setPitch(1.0);
  //     await flutterTts.speak(text);
  //   // }
  //
  // }

  late String language;

  String titleBarText = 'WHEN WE COMB HAIR';
  String audioText =
      'To listen about the benefits of brushing your hair. Click here.';
  String descriptionText =
      'It can also keep your hair healthy, shiny, and free of tangles. Hair care experts recommend brushing your hair twice a day — morning and night.';
  String moreOptionText = 'Click to study More';
  checkLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString('language');
  }

  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('language') == 'en') {
      titleBarText = 'WHEN WE COMB HAIR';
      audioText =
          'To listen about the benefits of brushing your hair. Click here.';
      descriptionText =
          'It can also keep your hair healthy, shiny, and free of tangles. Hair care experts recommend brushing your hair twice a day — morning and night.';
      moreOptionText = 'Click to study More';
    } else if (sharedPreferences.getString('language') == 'ur') {
      titleBarText = 'جب ہم بالوں میں کنگھی کرتے ہیں۔';
      audioText =
          'اپنے بالوں کو برش کرنے کے فوائد کے بارے میں سننے کے لیے۔ یہاں کلک کریں.';
      descriptionText =
          "یہ آپ کے بالوں کو صحت مند، چمکدار اور الجھنے سے پاک بھی رکھ سکتا ہے۔ بالوں کی دیکھ بھال کے ماہرین دن میں دو بار اپنے بالوں کو برش کرنے کا مشورہ دیتے ہیں - صبح اور رات۔";
      moreOptionText = "مزید مطالعہ کرنے کے لیے کلک کریں۔";
    } else if (sharedPreferences.getString('language') == 'hi') {
      titleBarText = "जब हम बालों में कंघी करते हैं";
      audioText =
          "बालों में कंघी करने के फायदों के बारे में जानने के लिए। यहाँ क्लिक करें।";
      descriptionText =
          "यह आपके बालों को स्वस्थ, चमकदार और उलझनों से मुक्त भी रख सकता है। बालों की देखभाल विशेषज्ञ आपके बालों को दिन में दो बार - सुबह और रात को ब्रश करने की सलाह देते हैं।";
      moreOptionText = "अधिक अध्ययन के लिए क्लिक करें";
    } else if (sharedPreferences.getString('language') == 'fr') {
      titleBarText = "QUAND NOUS PEIGNONS LES CHEVEUX";
      audioText =
          "Pour écouter les avantages de se brosser les cheveux. Cliquez ici.";
      descriptionText =
          "Il peut également garder vos cheveux sains, brillants et sans enchevêtrements. Les experts en soins capillaires recommandent de se brosser les cheveux deux fois par jour, matin et soir.";
      moreOptionText = "Cliquez pour étudier Plus";
    } else if (sharedPreferences.getString('language') == 'sp') {
      titleBarText = "CUANDO PEINAMOS EL PELO";
      audioText =
          "Para escuchar sobre los beneficios de cepillarse el cabello. Haga clic aquí.";
      descriptionText =
          "También puede mantener tu cabello saludable, brillante y libre de enredos. Los expertos en cuidado del cabello recomiendan cepillarse el cabello dos veces al día, por la mañana y por la noche.";
      moreOptionText = "Click para estudiar Más";
    } else if (sharedPreferences.getString('language') == 'gr') {
      titleBarText = "WENN WIR HAARE KÄMMEN";
      audioText =
          "Um sich die Vorteile des Haarebürstens anzuhören. Klicken Sie hier.";
      descriptionText =
          "Es kann auch Ihr Haar gesund, glänzend und frei von Verwicklungen halten. Haarpflegeexperten empfehlen, die Haare zweimal täglich zu bürsten – morgens und abends.";
      moreOptionText = "Klicken Sie hier, um mehr zu lernen";
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
        //AppBar Code
        appBar: AppBar(
          leading: IconButton(
            onPressed: () async {
              debugPrint("back button pressed");
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) {
                    return Home();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 30,
            ),
          ),
          title: Text(
            titleBarText,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          titleSpacing: 1,
          actions: [
            IconButton(
              onPressed: () async {
                debugPrint("References button pressed");
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) {
                      return CombReferences();
                    },
                  ),
                );
              },
              icon: Image(
                image: AssetImage("assets/read_icon.png"),
                height: 30,
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                debugPrint("Shared button pressed");
                 sharedText();
              },
              //icon: Icon(Icons.share_rounded, size: 20,),
              icon: Image(
                image: AssetImage("assets/share_icon.png"),
                height: 20,
                width: 20,
             ),
            ),
          ],
        ),

        //Start body Code
        body: Material(
          color: Color(0xffffffff),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    color: Color(0xffF0F2F4),
                    width: double.maxFinite,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          audioText,
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        InkWell(
                          //statesController: text,
                          onTap: () {
                            //speak(descriptionText);
                            debugPrint("Play audio button clicked");
                          },
                          child: Image(
                            image: AssetImage("assets/play_icon.png"),
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Center(
                      child: Image(
                        image: AssetImage("assets/option_3_single.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: Container(
                      color: Color(0xffF0F2F4),
                      width: double.maxFinite,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(
                            descriptionText,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () async {
                              debugPrint("Click to study More");
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) {
                                    return CombDescription();
                                  },
                                ),
                              );
                            },
                            child: Center(
                              child: Text(
                                moreOptionText,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
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
  void sharedText() async{
    String message = descriptionText;
    await Share.share(message);

  }
}
