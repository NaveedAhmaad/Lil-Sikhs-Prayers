import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BathDescription extends StatefulWidget {
  @override
  State<BathDescription> createState() => _BathDescriptionState();
}

class _BathDescriptionState extends State<BathDescription> {
  late String language;
  String backButtonText = 'Back';
  String text =
      "Because normal skin needs a layer of oils and normal bacteria to maintain its barrier, bathing too frequently can lead to dry and itchy skin, especially if the water you’re bathing in is too hot. Sometimes the dry skin can even lead to irritated and cracked skin, which breaks down the skin barrier and predisposes you to possible infections from bacteria entering these skin cracks. Hair can lose its luster because you’re also removing the natural oils by over washing and, at times, can lead to hair loss from a condition called seborrheic dermatitis. Seborrheic dermatitis can often be triggered by hot showers and removal of healthy oils from the hair.";
  checkLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString('language');
  }

  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('language') == 'en') {
      backButtonText = 'Back';
      text =
          "Because normal skin needs a layer of oils and normal bacteria to maintain its barrier, bathing too frequently can lead to dry and itchy skin, especially if the water you’re bathing in is too hot. Sometimes the dry skin can even lead to irritated and cracked skin, which breaks down the skin barrier and predisposes you to possible infections from bacteria entering these skin cracks. Hair can lose its luster because you’re also removing the natural oils by over washing and, at times, can lead to hair loss from a condition called seborrheic dermatitis. Seborrheic dermatitis can often be triggered by hot showers and removal of healthy oils from the hair.";
    } else if (sharedPreferences.getString('language') == 'ur') {
      backButtonText = 'واپس';
      text =
          "چونکہ عام جلد کو اپنی رکاوٹ کو برقرار رکھنے کے لیے تیل اور نارمل بیکٹیریا کی ایک تہہ کی ضرورت ہوتی ہے، اس لیے بہت زیادہ نہانے سے جلد خشک اور خارش ہو سکتی ہے، خاص طور پر اگر آپ جس پانی میں نہا رہے ہیں وہ بہت گرم ہے۔ بعض اوقات خشک جلد بھی جلن اور پھٹی ہوئی جلد کا باعث بن سکتی ہے، جو جلد کی رکاوٹ کو توڑ دیتی ہے اور آپ کو جلد کے ان دراڑوں میں داخل ہونے والے بیکٹیریا سے ممکنہ انفیکشن کا شکار کر دیتی ہے۔ بال اپنی چمک کھو سکتے ہیں کیونکہ آپ قدرتی تیل کو زیادہ دھونے سے بھی نکال رہے ہیں اور بعض اوقات سیبورریک ڈرمیٹائٹس نامی حالت سے بالوں کے جھڑنے کا باعث بن سکتے ہیں۔ Seborrheic dermatitis اکثر گرم بارشوں اور بالوں سے صحت مند تیل کے اخراج سے پیدا ہو سکتا ہے۔";
    } else if (sharedPreferences.getString('language') == 'hi') {
      backButtonText = 'पीछे';
      text =
          "क्योंकि सामान्य त्वचा को अपने अवरोध को बनाए रखने के लिए तेल और सामान्य बैक्टीरिया की एक परत की आवश्यकता होती है, इसलिए बार-बार नहाने से त्वचा रूखी और खुजलीदार हो सकती है, खासकर यदि आप जिस पानी में नहा रहे हैं वह बहुत गर्म है। कभी-कभी सूखी त्वचा से त्वचा में जलन और दरार भी पड़ सकती है, जो त्वचा की बाधा को तोड़ देती है और इन त्वचा की दरारों में प्रवेश करने वाले बैक्टीरिया से संभावित संक्रमण का शिकार हो जाती है। बाल अपनी चमक खो सकते हैं क्योंकि आप अधिक धोने से प्राकृतिक तेलों को भी हटा रहे हैं और कभी-कभी सेबरेरिक डार्माटाइटिस नामक स्थिति से बालों के झड़ने का कारण बन सकता है। सेबरेरिक डार्माटाइटिस अक्सर गर्म स्नान और बालों से स्वस्थ तेलों को हटाने से ट्रिगर किया जा सकता है।";
    } else if (sharedPreferences.getString('language') == 'fr') {
      backButtonText = 'Dos';
      text =
          "Parce qu'une peau normale a besoin d'une couche d'huiles et de bactéries normales pour maintenir sa barrière, un bain trop fréquent peut entraîner une peau sèche et des démangeaisons, surtout si l'eau dans laquelle vous vous baignez est trop chaude. Parfois, la peau sèche peut même conduire à une peau irritée et craquelée, ce qui décompose la barrière cutanée et vous prédispose à d'éventuelles infections par des bactéries pénétrant dans ces fissures cutanées. Les cheveux peuvent perdre de leur éclat parce que vous enlevez également les huiles naturelles en les lavant trop et, parfois, cela peut entraîner une perte de cheveux due à une affection appelée dermatite séborrhéique. La dermatite séborrhéique peut souvent être déclenchée par des douches chaudes et l'élimination des huiles saines des cheveux.";
    } else if (sharedPreferences.getString('language') == 'sp') {
      backButtonText = 'Atrás';
      text =
          "Debido a que la piel normal necesita una capa de aceites y bacterias normales para mantener su barrera, bañarse con demasiada frecuencia puede provocar sequedad y picazón en la piel, especialmente si el agua en la que se baña está demasiado caliente. A veces, la piel seca puede incluso conducir a una piel irritada y agrietada, lo que rompe la barrera cutánea y lo predispone a posibles infecciones por bacterias que ingresan a estas grietas de la piel. El cabello puede perder su brillo porque también está eliminando los aceites naturales al lavarlo demasiado y, en ocasiones, puede provocar la pérdida del cabello debido a una afección llamada dermatitis seborreica. La dermatitis seborreica a menudo puede desencadenarse con duchas de agua caliente y la eliminación de aceites saludables del cabello.";
    } else if (sharedPreferences.getString('language') == 'gr') {
      backButtonText = 'Zurück';
      text =
          "Da normale Haut eine Schicht aus Ölen und normalen Bakterien benötigt, um ihre Barriere aufrechtzuerhalten, kann zu häufiges Baden zu trockener und juckender Haut führen, insbesondere wenn das Wasser, in dem Sie baden, zu heiß ist. Manchmal kann die trockene Haut sogar zu gereizter und rissiger Haut führen, was die Hautbarriere zerstört und Sie für mögliche Infektionen durch Bakterien prädisponiert, die in diese Hautrisse eindringen. Das Haar kann seinen Glanz verlieren, weil Sie auch die natürlichen Öle durch übermäßiges Waschen entfernen, und manchmal kann es zu Haarausfall durch eine Erkrankung namens seborrhoische Dermatitis kommen. Seborrhoische Dermatitis kann oft durch heiße Duschen und das Entfernen gesunder Öle aus dem Haar ausgelöst werden.";
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
    );
  }

  void sharedText() async {
    String message = text;
    await Share.share(message);
  }
}
