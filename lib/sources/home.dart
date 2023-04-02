  import 'package:flutter/material.dart';
  import 'package:flutter_email_sender/flutter_email_sender.dart';
  import 'package:lil_sikh/sources/settings.dart';
  import 'package:lil_sikh/sources/take_bath.dart';
  import 'package:lil_sikh/sources/wake_up.dart';
  import 'package:shared_preferences/shared_preferences.dart';
  import 'comb_hair.dart';


  class Home extends StatefulWidget {
    @override
    State<Home> createState() => _HomeState();
  }

  class _HomeState extends State<Home> {

    sendEmail() async{
      final Email email= Email(
        body: 'Describe',
        subject: "Lil' Sikhs Daily Prayer",
        recipients: ['naveed.ahmaadr@gmail.com',],
        isHTML: false,
      );
      await FlutterEmailSender.send(email);
      setState(() {

      });

    }
    String appBarText = "LIL' SIKHS DAILY PRAYER";

    List<ImageProvider> items = [
      AssetImage("assets/option_1.png"),
      AssetImage("assets/option_2.png"),
      AssetImage("assets/option_3.png"),
      AssetImage("assets/option_4.png"),
      AssetImage("assets/option_5.png"),
      AssetImage("assets/option_6.png"),
      AssetImage("assets/option_7.png"),
      AssetImage("assets/option_8.png"),
      AssetImage("assets/option_9.png"),
      AssetImage("assets/option_10.png"),
      AssetImage("assets/option_11.png"),
      AssetImage("assets/option_12.png"),
      AssetImage("assets/option_13.png"),
      AssetImage("assets/option_14.png"),
    ];
    List<String>textList = [
      'When we wake up',
      'When we take a bath',
      'When we comb our hair',
      'Before we eat',
      'Feeling Scared',
      'When we are about to travel',
      'Sneezing',
      'Feeling Angry',
      'Praying',
      'Going to bed',
      'When we feel sad',
      'Feeling lonely',
      'When it rains',
      'when it snows',
    ];

    descriptivePage(context, Widget widget) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) {
            return widget;
          },
        ),
      );
    }

    late String language;
    checkLanguage() async {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.getString('language');
    }

    setData() async {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      if (sharedPreferences.getString('language') == 'en') {
        appBarText = "LIL' SIKHS DAILY PRAYER";
        textList = [
          'When we wake up',
          'When we take a bath',
          'When we comb our hair',
          'Before we eat',
          'Feeling Scared',
          'When we are about to travel',
          'Sneezing',
          'Feeling Angry',
          'Praying',
          'Going to bed',
          'When we feel sad',
          'Feeling lonely',
          'When it rains',
          'when it snows',
        ];
      } else if (sharedPreferences.getString('language') == 'ur') {
        appBarText = "لیل سکھ روزانہ کی دعا";
        textList = [
          'جب ہم جاگتے ہیں',
          'جب غسل کرتے ہیں',
          'بالوں میں کنگھی کرتے ہیں۔',
          'ہم کھانے سے پہلے',
          'خوف محسوس کرنا',
          'جب ہم سفر کرنے والے ہیں۔',
          'چھینک',
          'غصہ محسوس کرنا',
          'دعا',
          'سونے جا رہا ہوں',
          'جب ہم اداس محسوس کرتے ہیں',
          'اکیلا محسوس کر رہا ہوں',
          'جب بارش ہوتی ہے',
          'جب برف پڑتی ہے۔'
        ];
      } else if (sharedPreferences.getString('language') == 'hi') {
        appBarText = "लील सिख दैनिक प्रार्थना";
        textList = [
          'जब हम जागते हैं',
          'जब हम नहाते हैं',
          'जब हम अपने बालों में कंघी करते हैं',
          'हम खाने से पहले',
          'डरा हुआ महसूस हो रहा है',
          'जब हम यात्रा करने वाले होते हैं',
          'छींक आना',
          'गुस्सा होना',
          'प्रार्थना करना',
          'बिस्तर पर जाते हुए',
          'जब हम उदास महसूस करते हैं',
          'अकेला महसूस करना',
          'जब बरसात होती है',
          'जब बर्फ होती है',
        ];
      } else if (sharedPreferences.getString('language') == 'fr') {
        appBarText = "PRIÈRE QUOTIDIENNE DES PETITS SIKHS";
        textList = [
          'Quand on se réveille',
          'Quand on prend un bain',
          'Quand on se peigne les cheveux',
          'Avant de manger',
          'Avoir peur',
          'Quand nous sommes sur le point de voyager',
          'Éternuer',
          'Se sentir énervé',
          'Prier',
          'Aller au lit',
          'Quand nous nous sentons tristes',
          'Se sentir seul',
          'Quand il pleut',
          'Quand il neige',
        ];
      } else if (sharedPreferences.getString('language') == 'sp') {
        appBarText = "ORACIÓN DIARIA DE LIL' SIKHS";
        textList = [
          'cuando nos despertamos',
          'cuando nos bañamos',
          'cuando nos peinamos',
          'antes de comer',
          'Sintiéndose asustado',
          'Cuando estamos a punto de viajar',
          'estornudos',
          'Sentirse enfadado',
          'Orando',
          'Ir a la cama',
          'cuando nos sentimos tristes',
          'Sentirse sola',
          'cuando llueve',
          'cuando neva',
        ];
      } else if (sharedPreferences.getString('language') == 'gr') {
        appBarText = "LIL' SIKHS TÄGLICHES GEBET";
        textList = [
          'Wenn wir aufwachen',
          'Wenn wir ein Bad nehmen',
          'Wenn wir unsere Haare kämmen',
          'Bevor wir essen',
          'Ängstlich fühlen',
          'Wenn wir auf Reisen gehen',
          'Niesen',
          'Verärgert sein',
          'Beten',
          'Ins Bett gehen',
          'Einsam fühlen',
          'Einsam fühlen',
          'wenn es regnet',
          'wenn es schneit',
        ];
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
            title: Center(
              child: Text(appBarText,
              style: TextStyle(
                fontSize: 18,
                  fontFamily: 'DeliciousHandrawn'
              ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () async{
                  debugPrint("email button pressed");
                // await sendEmail();
                },
                icon: Icon(
                  Icons.email_rounded,
                ),
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () async {
                  debugPrint("Setting button pressed");
                  await descriptivePage(context, Settings());
                },
              ),
              SizedBox(
                width: 2,
              ),
            ],
          ),
          body: Material(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.fromLTRB(30, 20, 0, 10),
              mainAxisSpacing: 15,
              // crossAxisSpacing: 0,
              crossAxisCount: 2,
              children: List.generate(
                items.length,
                (index) => InkWell(
                  onTap: () async {
                    if (index == 0) {
                      await descriptivePage(context, Wakeup());
                    } else if (index == 1) {
                      await descriptivePage(context, TakeBath());
                    } else if (index == 2) {
                      await descriptivePage(context, Comb());
                    } else if (index == 3) {
                      await descriptivePage(context, Comb());
                    } else if (index == 4) {
                      await descriptivePage(context, Comb());
                    } else if (index == 5) {
                      await descriptivePage(context, Comb());
                    } else if (index == 6) {
                      await descriptivePage(context, Comb());
                    } else if (index == 7) {
                      await descriptivePage(context, Comb());
                    } else if (index == 8) {
                      await descriptivePage(context, Comb());
                    } else if (index == 9) {
                      await descriptivePage(context, Comb());
                    } else if (index == 10) {
                      await descriptivePage(context, Comb());
                    } else if (index == 11) {
                      await descriptivePage(context, Comb());
                    } else if (index == 12) {
                      await descriptivePage(context, Comb());
                    } else if (index == 13) {
                      await descriptivePage(context, Comb());
                    }
                  },
                  child: Stack(
                    children: [
                      Image(
                        image: items[index],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(left: 3, right: 36),
                         // padding: EdgeInsets.only(left: 20, right: 20),
                          color: Colors.white,
                         height: 43,
                         width: MediaQuery.of(context).size.width,
                          child: Center(child: Text(textList[index],
                          style: TextStyle(fontFamily: 'DeliciousHandrawn'),
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
