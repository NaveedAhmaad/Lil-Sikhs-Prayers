import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CombDescription extends StatefulWidget {
  @override
  State<CombDescription> createState() => _CombDescriptionState();
}

class _CombDescriptionState extends State<CombDescription> {
  late String language;
  String text =
      "Knowing how to brush your hair the right way can help prevent breakage and damage. It can also keep your hair healthy, shiny, and free of tangles. Hair care experts recommend brushing your hair twice a day — morning and night — to help distribute your scalp’s natural oils through your hair. It’s also important to use a different approach when brushing wet hair versus dry hair. If your hair is brittle, overly dry, or damaged, or you have excess hair loss even after you change your routine, consider seeing a doctor or a dermatologist to determine if there’s an underlying cause.";
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
          "Knowing how to brush your hair the right way can help prevent breakage and damage. It can also keep your hair healthy, shiny, and free of tangles. Hair care experts recommend brushing your hair twice a day — morning and night — to help distribute your scalp’s natural oils through your hair. It’s also important to use a different approach when brushing wet hair versus dry hair. If your hair is brittle, overly dry, or damaged, or you have excess hair loss even after you change your routine, consider seeing a doctor or a dermatologist to determine if there’s an underlying cause.";
    } else if (sharedPreferences.getString('language') == 'ur') {
      backButtonText = 'واپس';
      text =
          "اپنے بالوں کو صحیح طریقے سے برش کرنے کا طریقہ جاننا ٹوٹنے اور نقصان کو روکنے میں مدد کر سکتا ہے۔ یہ آپ کے بالوں کو صحت مند، چمکدار اور الجھنے سے پاک بھی رکھ سکتا ہے۔ بالوں کی دیکھ بھال کے ماہرین دن میں دو بار اپنے بالوں کو برش کرنے کا مشورہ دیتے ہیں — صبح اور رات — تاکہ آپ کی کھوپڑی کے قدرتی تیل کو آپ کے بالوں میں تقسیم کرنے میں مدد ملے۔ خشک بالوں کے مقابلے گیلے بالوں کو برش کرتے وقت ایک مختلف طریقہ استعمال کرنا بھی ضروری ہے۔ اگر آپ کے بال ٹوٹنے والے، ضرورت سے زیادہ خشک، یا خراب ہو گئے ہیں، یا آپ کے روٹین کو تبدیل کرنے کے بعد بھی آپ کے بال زیادہ گر رہے ہیں، تو ڈاکٹر یا ڈرمیٹولوجسٹ سے مل کر یہ معلوم کرنے پر غور کریں کہ آیا اس کی کوئی بنیادی وجہ ہے۔";
    } else if (sharedPreferences.getString('language') == 'hi') {
      backButtonText = 'पीछे';
      text =
          "अपने बालों को सही तरीके से ब्रश करने का तरीका जानने से टूटने और क्षति को रोकने में मदद मिल सकती है। यह आपके बालों को स्वस्थ, चमकदार और उलझनों से मुक्त भी रख सकता है। बालों की देखभाल करने वाले विशेषज्ञ आपके बालों को दिन में दो बार - सुबह और रात - ब्रश करने की सलाह देते हैं ताकि आपके स्कैल्प के प्राकृतिक तेलों को आपके बालों में वितरित करने में मदद मिल सके। गीले बालों बनाम सूखे बालों को ब्रश करते समय एक अलग दृष्टिकोण का उपयोग करना भी महत्वपूर्ण है। यदि आपके बाल भंगुर, अत्यधिक सूखे, या क्षतिग्रस्त हैं, या आपके रूटीन बदलने के बाद भी आपके बाल अधिक झड़ रहे हैं, तो यह निर्धारित करने के लिए कि क्या कोई अंतर्निहित कारण है, डॉक्टर या त्वचा विशेषज्ञ को देखने पर विचार करें।";
    } else if (sharedPreferences.getString('language') == 'fr') {
      backButtonText = 'Dos';
      text =
          "Savoir comment se brosser les cheveux de la bonne façon peut aider à prévenir les cassures et les dommages. Il peut également garder vos cheveux sains, brillants et sans enchevêtrements. Les experts en soins capillaires recommandent de se brosser les cheveux deux fois par jour - matin et soir - pour aider à répartir les huiles naturelles de votre cuir chevelu dans vos cheveux. Il est également important d'utiliser une approche différente lors du brossage des cheveux mouillés par rapport aux cheveux secs. Si vos cheveux sont cassants, trop secs ou abîmés, ou si vous avez une perte de cheveux excessive même après avoir changé votre routine, envisagez de consulter un médecin ou un dermatologue pour déterminer s'il existe une cause sous-jacente.";
    } else if (sharedPreferences.getString('language') == 'sp') {
      backButtonText = 'Atrás';
      text =
          "Saber cómo cepillarse el cabello de la manera correcta puede ayudar a prevenir roturas y daños. También puede mantener tu cabello saludable, brillante y libre de enredos. Los expertos en el cuidado del cabello recomiendan cepillarse el cabello dos veces al día, por la mañana y por la noche, para ayudar a distribuir los aceites naturales del cuero cabelludo en el cabello. También es importante utilizar un enfoque diferente al cepillar el cabello húmedo frente al cabello seco. Si su cabello es quebradizo, demasiado seco o dañado, o si tiene una pérdida excesiva de cabello incluso después de cambiar su rutina, considere consultar a un médico o dermatólogo para determinar si existe una causa subyacente.";
    } else if (sharedPreferences.getString('language') == 'gr') {
      backButtonText = 'Zurück';
      text =
          "Wenn Sie wissen, wie Sie Ihr Haar richtig bürsten, können Sie Brüchen und Schäden vorbeugen. Es kann auch Ihr Haar gesund, glänzend und frei von Verwicklungen halten. Haarpflegeexperten empfehlen, Ihr Haar zweimal täglich – morgens und abends – zu bürsten, um die natürlichen Öle Ihrer Kopfhaut im Haar zu verteilen. Es ist auch wichtig, beim Bürsten von nassem Haar einen anderen Ansatz zu verwenden als von trockenem Haar. Wenn Ihr Haar brüchig, übermäßig trocken oder geschädigt ist oder Sie übermäßigen Haarausfall haben, selbst nachdem Sie Ihre Routine geändert haben, sollten Sie einen Arzt oder Dermatologen aufsuchen, um festzustellen, ob es eine zugrunde liegende Ursache gibt.";
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
