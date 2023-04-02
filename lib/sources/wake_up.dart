import 'package:flutter/material.dart';
import 'package:lil_sikh/sources/home.dart';
import 'package:lil_sikh/sources/wake_up_description.dart';
import 'package:lil_sikh/sources/wake_up_references.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Wakeup extends StatefulWidget {
  @override
  State<Wakeup> createState() => _WakeupState();
}

class _WakeupState extends State<Wakeup> {
  late String language;
  String titleBarText = 'WHEN WE WAKE UP';
  String audioText =
      'To listen about the benefits of early wake up. Click here.';
  String descriptionText =
      'The optic nerve in your eyes senses the morning light. Then the SCN triggers the release of cortisol and other hormones to help you wake up.';
  String moreOptionText = 'Click to study More';
  checkLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString('language');
  }

  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('language') == 'en') {
      titleBarText = 'WHEN WE WAKE UP';
      audioText = 'To listen about the benefits of early wake up. Click here.';
      descriptionText =
          'The optic nerve in your eyes senses the morning light. Then the SCN triggers the release of cortisol and other hormones to help you wake up.';
      moreOptionText = 'Click to study More';
    } else if (sharedPreferences.getString('language') == 'ur') {
      titleBarText = 'جب ہم جاگتے ہیں۔';
      audioText = 'جلدی جاگنے کے فوائد کے بارے میں سننے کے لیے۔ یہاں کلک کریں.';
      descriptionText =
          "آپ کی آنکھوں میں آپٹک اعصاب صبح کی روشنی کو محسوس کرتا ہے۔ پھر SCN آپ کو جاگنے میں مدد کرنے کے لیے کورٹیسول اور دیگر ہارمونز کے اخراج کو متحرک کرتا ہے۔";
      moreOptionText = "مزید مطالعہ کرنے کے لیے کلک کریں۔";
    } else if (sharedPreferences.getString('language') == 'hi') {
      titleBarText = "जब हम जागते हैं";
      audioText =
          "जल्दी उठने के फायदों के बारे में जानने के लिए। यहाँ क्लिक करें।";
      descriptionText =
          "आपकी आंखों में ऑप्टिक तंत्रिका सुबह की रोशनी महसूस करती है। फिर एससीएन आपको जगाने में मदद करने के लिए कोर्टिसोल और अन्य हार्मोन की रिहाई को ट्रिगर करता है।";
      moreOptionText = "अधिक अध्ययन के लिए क्लिक करें";
    } else if (sharedPreferences.getString('language') == 'fr') {
      titleBarText = "QUAND ON SE REVEILLE";
      audioText = "Pour écouter les bienfaits du réveil précoce. Cliquez ici.";
      descriptionText =
          "Le nerf optique de vos yeux détecte la lumière du matin. Ensuite, le SCN déclenche la libération de cortisol et d'autres hormones pour vous aider à vous réveiller.";
      moreOptionText = "Cliquez pour étudier Plus";
    } else if (sharedPreferences.getString('language') == 'sp') {
      titleBarText = "CUANDO NOS DESPERTEMOS";
      audioText =
          "Escuchar sobre los beneficios del despertar temprano. Haga clic aquí.";
      descriptionText =
          "El nervio óptico de tus ojos detecta la luz de la mañana. Luego, el SCN desencadena la liberación de cortisol y otras hormonas para ayudarlo a despertarse.";
      moreOptionText = "Click para estudiar Más";
    } else if (sharedPreferences.getString('language') == 'gr') {
      titleBarText = "WENN WIR AUFWACHEN";
      audioText =
          "Um über die Vorteile des frühen Aufwachens zu hören. Klicken Sie hier.";
      descriptionText =
          "Der Sehnerv in Ihren Augen nimmt das Morgenlicht wahr. Dann löst der SCN die Freisetzung von Cortisol und anderen Hormonen aus, um Ihnen beim Aufwachen zu helfen.";
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
                      return WakeupReferences();
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
                          onTap: () {
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
                        image: AssetImage("assets/option_1_single.png"),
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
                                    return WakeupDescription();
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

  void sharedText() async {
    String message = descriptionText;
    await Share.share(message);
  }
}
