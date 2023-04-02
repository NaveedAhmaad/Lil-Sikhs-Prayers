import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WakeupDescription extends StatefulWidget {
  @override
  State<WakeupDescription> createState() => _WakeupDescriptionState();
}

class _WakeupDescriptionState extends State<WakeupDescription> {
  late String language;
  String text =
      "Two body processes control sleeping and waking periods. These are called sleep/wake homeostasis and the circadian biological clock. With sleep/wake homeostasis, the longer you are awake, the greater your body senses the need to sleep. If this process alone was in control of your sleep/wake cycles, in theory you would have the most energy when you woke up in the morning. And you would be tired and ready for sleep at the end of the day. But your circadian biological clock causes highs and lows of sleepiness and wakefulness throughout the day. Typically, most adults feel the sleepiest between 2 a.m. and 4 a.m., and also between 1 p.m. and 3 p.m. Getting plenty of regular sleep each night can help to balance out these sleepy lows. Your body’s internal clock is controlled by an area of the brain called the SCN (suprachiasmatic nucleus). The SCN is located in the hypothalamus. The SCN is sensitive to signals of dark and light. The optic nerve in your eyes senses the morning light. Then the SCN triggers the release of cortisol and other hormones to help you wake up. But when darkness comes at night, the SCN sends messages to the pineal gland. This gland triggers the release of the chemical melatonin. Melatonin makes you feel sleepy and ready for bed.";
  String backButtonText = 'Back';
  checkLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString('language');
  }

  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('language') == 'en') {
      backButtonText = 'Back';
      text =
          "Two body processes control sleeping and waking periods. These are called sleep/wake homeostasis and the circadian biological clock. With sleep/wake homeostasis, the longer you are awake, the greater your body senses the need to sleep. If this process alone was in control of your sleep/wake cycles, in theory you would have the most energy when you woke up in the morning. And you would be tired and ready for sleep at the end of the day. But your circadian biological clock causes highs and lows of sleepiness and wakefulness throughout the day. Typically, most adults feel the sleepiest between 2 a.m. and 4 a.m., and also between 1 p.m. and 3 p.m. Getting plenty of regular sleep each night can help to balance out these sleepy lows. Your body’s internal clock is controlled by an area of the brain called the SCN (suprachiasmatic nucleus). The SCN is located in the hypothalamus. The SCN is sensitive to signals of dark and light. The optic nerve in your eyes senses the morning light. Then the SCN triggers the release of cortisol and other hormones to help you wake up. But when darkness comes at night, the SCN sends messages to the pineal gland. This gland triggers the release of the chemical melatonin. Melatonin makes you feel sleepy and ready for bed.";
    } else if (sharedPreferences.getString('language') == 'ur') {
      backButtonText = 'واپس';
      text =
          "دو جسمانی عمل سونے اور جاگنے کے ادوار کو کنٹرول کرتے ہیں۔ ان کو نیند/بیدار ہومیوسٹاسس اور سرکیڈین بائیولوجیکل کلاک کہا جاتا ہے۔ نیند/جاگنے والے ہومیوسٹاسس کے ساتھ، آپ جتنی دیر تک جاگتے ہیں، آپ کا جسم اتنا ہی زیادہ سونے کی ضرورت محسوس کرتا ہے۔ اگر یہ عمل تنہا آپ کی نیند/جاگنے کے چکروں پر قابو پاتا تو نظریہ طور پر جب آپ صبح بیدار ہوتے تو آپ کو سب سے زیادہ توانائی حاصل ہوتی۔ اور آپ تھکے ہوئے ہوں گے اور دن کے اختتام پر سونے کے لیے تیار ہوں گے۔ لیکن آپ کی سرکیڈین حیاتیاتی گھڑی دن بھر نیند اور جاگنے کی اونچ نیچ کا سبب بنتی ہے۔ عام طور پر، زیادہ تر بالغ افراد صبح 2 بجے سے 4 بجے کے درمیان، اور دوپہر 1 بجے کے درمیان بھی سب سے زیادہ نیند محسوس کرتے ہیں۔ اور 3 p.m. ہر رات کافی مقدار میں باقاعدگی سے نیند لینے سے ان نیند کی کمی کو متوازن کرنے میں مدد مل سکتی ہے۔ آپ کے جسم کی اندرونی گھڑی دماغ کے ایک حصے سے کنٹرول ہوتی ہے جسے SCN (suprachiasmatic nucleus) کہتے ہیں۔ SCN ہائپوتھیلمس میں واقع ہے۔ SCN اندھیرے اور روشنی کے سگنلز کے لیے حساس ہے۔ آپ کی آنکھوں میں آپٹک اعصاب صبح کی روشنی کو محسوس کرتا ہے۔ پھر SCN آپ کو جاگنے میں مدد کرنے کے لیے کورٹیسول اور دیگر ہارمونز کے اخراج کو متحرک کرتا ہے۔ لیکن جب رات کو اندھیرا آتا ہے، تو SCN پائنل غدود کو پیغام بھیجتا ہے۔ یہ غدود کیمیکل میلاٹونن کے اخراج کو متحرک کرتا ہے۔ Melatonin آپ کو نیند آنے اور سونے کے لیے تیار محسوس کرتا ہے۔۔";
    } else if (sharedPreferences.getString('language') == 'hi') {
      backButtonText = 'पीछे';
      text =
          "दो शरीर प्रक्रियाएं सोने और जागने की अवधि को नियंत्रित करती हैं। इन्हें स्लीप/वेक होमियोस्टेसिस और सर्केडियन बायोलॉजिकल क्लॉक कहा जाता है। स्लीप/वेक होमियोस्टैसिस के साथ, आप जितनी देर तक जागते हैं, आपके शरीर को सोने की आवश्यकता उतनी ही अधिक महसूस होती है। यदि यह प्रक्रिया अकेले आपके सोने/जागने के चक्रों के नियंत्रण में होती, तो सैद्धांतिक रूप से सुबह उठने पर आपके पास सबसे अधिक ऊर्जा होती। और आप थके हुए होंगे और दिन के अंत में सोने के लिए तैयार होंगे। लेकिन आपकी सर्कैडियन जैविक घड़ी पूरे दिन नींद और जागरुकता के उतार-चढ़ाव का कारण बनती है। आमतौर पर, अधिकांश वयस्कों को 2 बजे से 4 बजे के बीच, और दोपहर 1 बजे के बीच भी सबसे ज्यादा नींद आती है। और दोपहर 3 बजे हर रात भरपूर नियमित नींद लेने से इन कम नींद को संतुलित करने में मदद मिल सकती है। आपके शरीर की आंतरिक घड़ी को मस्तिष्क के एक क्षेत्र द्वारा नियंत्रित किया जाता है जिसे SCN (सुप्राकिस्मैटिक न्यूक्लियस) कहा जाता है। SCN हाइपोथैलेमस में स्थित है। SCN अंधेरे और प्रकाश के संकेतों के प्रति संवेदनशील है। आपकी आंखों में ऑप्टिक तंत्रिका सुबह की रोशनी महसूस करती है। फिर एससीएन आपको जगाने में मदद करने के लिए कोर्टिसोल और अन्य हार्मोन की रिहाई को ट्रिगर करता है। लेकिन जब रात में अंधेरा आता है तो एससीएन पीनियल ग्रंथि को संदेश भेजता है। यह ग्रंथि रासायनिक मेलाटोनिन की रिहाई को ट्रिगर करती है। मेलाटोनिन आपको नींद का एहसास कराता है और सोने के लिए तैयार करता है।";
    } else if (sharedPreferences.getString('language') == 'fr') {
      backButtonText = 'Dos';
      text =
          "Deux processus corporels contrôlent les périodes de sommeil et d'éveil. C'est ce qu'on appelle l'homéostasie veille/sommeil et l'horloge biologique circadienne. Avec l'homéostasie veille/sommeil, plus vous restez éveillé longtemps, plus votre corps ressent le besoin de dormir. Si ce processus contrôlait à lui seul vos cycles veille/sommeil, en théorie, vous auriez le plus d'énergie lorsque vous vous réveillez le matin. Et vous seriez fatigué et prêt à dormir à la fin de la journée. Mais votre horloge biologique circadienne provoque des hauts et des bas de somnolence et d'éveil tout au long de la journée. En règle générale, la plupart des adultes se sentent le plus endormis entre 2 h et 4 h, ainsi qu'entre 13 h et 17 h. et 15h Dormir suffisamment et régulièrement chaque nuit peut aider à équilibrer ces dépressions somnolentes. L'horloge interne de votre corps est contrôlée par une zone du cerveau appelée SCN (noyau suprachiasmatique). Le SCN est situé dans l'hypothalamus. Le SCN est sensible aux signaux d'obscurité et de lumière. Le nerf optique de vos yeux détecte la lumière du matin. Ensuite, le SCN déclenche la libération de cortisol et d'autres hormones pour vous aider à vous réveiller. Mais lorsque l'obscurité vient la nuit, le SCN envoie des messages à la glande pinéale. Cette glande déclenche la libération de la mélatonine chimique. La mélatonine vous rend somnolent et prêt à aller au lit.";
    } else if (sharedPreferences.getString('language') == 'sp') {
      backButtonText = 'Atrás';
      text =
          "Dos procesos corporales controlan los períodos de sueño y vigilia. Estos se denominan homeostasis del sueño/vigilia y el reloj biológico circadiano. Con la homeostasis del sueño/vigilia, cuanto más tiempo esté despierto, mayor será la sensación de su cuerpo de la necesidad de dormir. Si este proceso por sí solo controlara sus ciclos de sueño/vigilia, en teoría tendría la mayor cantidad de energía cuando se despertara por la mañana. Y estarías cansado y listo para dormir al final del día. Pero su reloj biológico circadiano provoca altibajos de somnolencia y vigilia a lo largo del día. Por lo general, la mayoría de los adultos sienten más sueño entre las 2 a. m. y las 4 a. m., y también entre la 1 p. y 3 p. m. Dormir lo suficiente cada noche puede ayudar a equilibrar estos bajos de sueño. El reloj interno de su cuerpo está controlado por un área del cerebro llamada SCN (núcleo supraquiasmático). El SCN se encuentra en el hipotálamo. El SCN es sensible a las señales de luz y oscuridad. El nervio óptico de tus ojos detecta la luz de la mañana. Luego, el SCN desencadena la liberación de cortisol y otras hormonas para ayudarlo a despertarse. Pero cuando llega la oscuridad de la noche, el SCN envía mensajes a la glándula pineal. Esta glándula desencadena la liberación de la melatonina química. La melatonina te hace sentir somnoliento y listo para ir a la cama.";
    } else if (sharedPreferences.getString('language') == 'gr') {
      backButtonText = 'Zurück';
      text =
          "Zwei Körperprozesse steuern die Schlaf- und Wachphasen. Diese werden als Schlaf-Wach-Homöostase und zirkadiane biologische Uhr bezeichnet. Bei der Schlaf-Wach-Homöostase spürt Ihr Körper, je länger Sie wach sind, umso stärker das Bedürfnis zu schlafen. Wenn dieser Prozess allein deinen Schlaf-Wach-Zyklus kontrollieren würde, hättest du theoretisch die meiste Energie, wenn du morgens aufwachst. Und Sie wären am Ende des Tages müde und bereit für den Schlaf. Aber Ihre zirkadiane biologische Uhr verursacht den ganzen Tag über Höhen und Tiefen von Schläfrigkeit und Wachheit. Typischerweise fühlen sich die meisten Erwachsenen zwischen 2 und 4 Uhr morgens sowie zwischen 13 und 18 Uhr am schläfrigsten. und 15 Uhr Viel regelmäßiger Schlaf jede Nacht kann helfen, diese schläfrigen Tiefs auszugleichen. Die innere Uhr Ihres Körpers wird von einem Bereich des Gehirns gesteuert, der als SCN (suprachiasmatischer Nucleus) bezeichnet wird. Der SCN befindet sich im Hypothalamus. Der SCN ist empfindlich gegenüber Signalen von Dunkelheit und Licht. Der Sehnerv in Ihren Augen nimmt das Morgenlicht wahr. Dann löst der SCN die Freisetzung von Cortisol und anderen Hormonen aus, um Ihnen beim Aufwachen zu helfen. Aber wenn es nachts dunkel wird, sendet der SCN Nachrichten an die Zirbeldrüse. Diese Drüse löst die Freisetzung des chemischen Melatonins aus. Melatonin macht Sie schläfrig und bereit fürs Bett.";
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
              backButtonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
              debugPrint("back button pressed");
            },
          ),
          titleSpacing: 0,
          actions: [
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
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Material(
          child: Container(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                color: Color(0xffF0F2F4),
                child: SingleChildScrollView(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void sharedText() async {
    String message = text;
    await Share.share(message);
  }
}
