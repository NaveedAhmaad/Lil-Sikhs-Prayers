import 'package:flutter/material.dart';
import 'package:lil_sikh/sources/bath_description.dart';
import 'package:lil_sikh/sources/bath_references.dart';
import 'package:lil_sikh/sources/home.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TakeBath extends StatefulWidget {
  @override
  State<TakeBath> createState() => _TakeBath();
}

class _TakeBath extends State<TakeBath> {
  late String language;
  String titleBarText = 'WHEN WE TAKE A BATH';
  String audioText = 'To listen about the benefits of taking bath. Click here.';
  String descriptionText =
      'If you stick with daily showers, limit them to five minutes with warm water, not hot. This is likely fine for most people. However, bathing 2-3 times per week is also likely just as healthy and good for the environment too.';
  String moreOptionText = 'Click to study More';
  checkLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString('language');
  }

  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('language') == 'en') {
      titleBarText = 'WHEN WE TAKE A BATH';
      audioText = 'To listen about the benefits of taking bath. Click here.';
      descriptionText =
          'If you stick with daily showers, limit them to five minutes with warm water, not hot. This is likely fine for most people. However, bathing 2-3 times per week is also likely just as healthy and good for the environment too.';
      moreOptionText = 'Click to study More';
    } else if (sharedPreferences.getString('language') == 'ur') {
      titleBarText = 'جب ہم غسل کرتے ہیں۔';
      audioText = 'نہانے کے فوائد کے بارے میں سنیں۔ یہاں کلک کریں.';
      descriptionText =
          "اگر آپ روزانہ نہانے کے ساتھ رہتے ہیں، تو انہیں گرم پانی کے ساتھ پانچ منٹ تک محدود رکھیں، گرم نہیں۔ یہ ممکنہ طور پر زیادہ تر لوگوں کے لئے ٹھیک ہے۔ تاہم، ہفتے میں 2-3 بار نہانا بھی اتنا ہی صحت مند اور ماحول کے لیے اچھا ہے۔";
      moreOptionText = "مزید مطالعہ کرنے کے لیے کلک کریں۔";
    } else if (sharedPreferences.getString('language') == 'hi') {
      titleBarText = "जब हम नहाते हैं";
      audioText =
          "जानिए नहाने से होने वाले फायदों के बारे में। यहाँ क्लिक करें।";
      descriptionText =
          "यदि आप रोजाना शावर लेते हैं, तो उन्हें गर्म पानी के साथ पांच मिनट तक सीमित करें, गर्म नहीं। यह ज्यादातर लोगों के लिए ठीक होने की संभावना है। हालाँकि, प्रति सप्ताह 2-3 बार स्नान करना भी उतना ही स्वस्थ और पर्यावरण के लिए अच्छा है।";
      moreOptionText = "अधिक अध्ययन के लिए क्लिक करें";
    } else if (sharedPreferences.getString('language') == 'fr') {
      titleBarText = "QUAND ON PREND UN BAIN";
      audioText =
          "Pour écouter sur les avantages de prendre un bain. Cliquez ici.";
      descriptionText =
          "Si vous vous en tenez aux douches quotidiennes, limitez-les à cinq minutes avec de l'eau tiède, pas chaude. C'est probablement bien pour la plupart des gens. Cependant, se baigner 2 à 3 fois par semaine est probablement tout aussi sain et bon pour l'environnement.";
      moreOptionText = "Cliquez pour étudier Plus";
    } else if (sharedPreferences.getString('language') == 'sp') {
      titleBarText = "CUANDO NOS BAÑO";
      audioText =
          "Para escuchar sobre los beneficios de tomar un baño. Haga clic aquí.";
      descriptionText =
          "Si te quedas con las duchas diarias, limítalas a cinco minutos con agua tibia, no caliente. Es probable que esto esté bien para la mayoría de las personas. Sin embargo, bañarse 2 o 3 veces por semana también es probablemente igual de saludable y bueno para el medio ambiente.";
      moreOptionText = "Click para estudiar Más";
    } else if (sharedPreferences.getString('language') == 'gr') {
      titleBarText = "WENN WIR EIN BAD NEHMEN";
      audioText = "Über die Vorteile des Badens zu hören. Klicken Sie hier.";
      descriptionText =
          "Wenn Sie bei täglichen Duschen bleiben, beschränken Sie sie auf fünf Minuten mit warmem Wasser, nicht heiß. Dies ist wahrscheinlich für die meisten Menschen in Ordnung. Aber auch 2-3 Baden pro Woche ist wahrscheinlich genauso gesund und gut für die Umwelt.";
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
                      return BathReferences();
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
                        image: AssetImage("assets/option_2_single.png"),
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
                                    return BathDescription();
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
