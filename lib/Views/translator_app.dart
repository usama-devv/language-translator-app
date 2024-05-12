import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatorApp extends StatefulWidget {
  const TranslatorApp({super.key});

  @override
  State<TranslatorApp> createState() => _TranslatorAppState();
}

class _TranslatorAppState extends State<TranslatorApp> {
  List<String> languages = [
    'Afrikaans',
    'Albanian',
    'Amharic',
    'Arabic',
    'Armenian',
    'Assamese',
    'Aymara',
    'Azerbaijani',
    'Bambara',
    'Basque',
    'Belarusian',
    'Bengali',
    'Bhojpuri',
    'Bosnian',
    'Bulgarian',
    'Catalan',
    'Cebuano',
    'Chinese (Simplified)',
    'Chinese (Traditional)',
    'Corsican',
    'Croatian',
    'Czech',
    'Danish',
    'Dhivehi',
    'Dogri',
    'Dutch',
    'English',
    'Esperanto',
    'Estonian',
    'Ewe',
    'Filipino (Tagalog)',
    'Finnish',
    'French',
    'Frisian',
    'Galician',
    'Georgian',
    'German',
    'Greek',
    'Guarani',
    'Gujarati',
    'Haitian Creole',
    'Hausa',
    'Hawaiian',
    'Hebrew',
    'Hindi',
    'Hmong',
    'Hungarian',
    'Icelandic',
    'Igbo',
    'Ilocano',
    'Indonesian',
    'Irish',
    'Italian',
    'Japanese',
    'Javanese',
    'Kannada',
    'Kazakh',
    'Khmer',
    'Kinyarwanda',
    'Konkani',
    'Korean',
    'Krio',
    'Kurdish',
    'Kurdish (Sorani)',
    'Kyrgyz',
    'Lao',
    'Latin',
    'Latvian',
    'Lingala',
    'Lithuanian',
    'Luganda',
    'Luxembourgish',
    'Macedonian',
    'Maithili',
    'Malagasy',
    'Malay',
    'Malayalam',
    'Maltese',
    'Maori',
    'Marathi',
    'Meiteilon (Manipuri)',
    'Mizo',
    'Mongolian',
    'Myanmar (Burmese)',
    'Nepali',
    'Norwegian',
    'Nyanja (Chichewa)',
    'Odia (Oriya)',
    'Oromo',
    'Pashto',
    'Persian',
    'Polish',
    'Portuguese (Portugal, Brazil)',
    'Punjabi',
    'Quechua',
    'Romanian',
    'Russian',
    'Samoan',
    'Sanskrit',
    'Scots Gaelic',
    'Sepedi',
    'Serbian',
    'Sesotho',
    'Shona',
    'Sindhi',
    'Sinhala (Sinhalese)',
    'Slovak',
    'Slovenian',
    'Somali',
    'Spanish',
    'Sundanese',
    'Swahili',
    'Swedish',
    'Tagalog (Filipino)',
    'Tajik',
    'Tamil',
    'Tatar',
    'Telugu',
    'Thai',
    'Tigrinya',
    'Tsonga',
    'Turkish',
    'Turkmen',
    'Twi(Akan)',
    'Ukrainian',
    'Urdu',
    'Uyghur',
    'Uzbek',
    'Vietnamese',
    'Welsh',
    'Xhosa',
    'Yiddish',
    'Yoruba',
    'Zulu'
  ];
  List<String> languagesCode = [
    'af',
    'sq',
    'am',
    'ar',
    'hy',
    'as',
    'ay',
    'az',
    'bm',
    'eu',
    'be',
    'bn',
    'bho',
    'bs',
    'bg',
    'ca',
    'ceb',
    'zh-CN or zh (BCP-47)',
    'zh-TW (BCP-47)',
    'co',
    'hr',
    'cs',
    'da',
    'dv',
    'doi',
    'nl',
    'en',
    'eo',
    'et',
    'ee',
    'fil',
    'fi',
    'fr',
    'fy',
    'gl',
    'ka',
    'de',
    'el',
    'gn',
    'gu',
    'ht',
    'ha',
    'haw',
    'he or iw',
    'hi',
    'hmn',
    'hu',
    'is',
    'ig',
    'ilo',
    'id',
    'ga',
    'it',
    'ja',
    'jv or jw',
    'kn',
    'kk',
    'km',
    'rw',
    'gom',
    'ko',
    'kri',
    'ku',
    'ckb',
    'ky',
    'lo',
    'la',
    'lv',
    'ln',
    'lt',
    'lg',
    'lb',
    'mk',
    'mai',
    'mg',
    'ms',
    'ml',
    'mt',
    'mi',
    'mr',
    'mni-Mtei',
    'lus',
    'mn',
    'my',
    'ne',
    'no',
    'ny',
    'or',
    'om',
    'ps',
    'fa',
    'pl',
    'pt',
    'pa',
    'qu',
    'ro',
    'ru',
    'sm',
    'sa',
    'gd',
    'nso',
    'sr',
    'st',
    'sn',
    'sd',
    'si',
    'sk',
    'sl',
    'so',
    'es',
    'su',
    'sw',
    'sv',
    'tl',
    'tg',
    'ta',
    'tt',
    'te',
    'th',
    'ti',
    'ts',
    'tr',
    'tk',
    'ak',
    'uk',
    'ur',
    'ug',
    'uz',
    'vi',
    'cy',
    'xh',
    'yi',
    'yo',
    'zu'
  ];
  final translator = GoogleTranslator();
  String from = 'en';
  String to = 'ur';
  String data = 'I am Usama';
  String selectedValue = 'English';
  String selectedValue1 = 'Urdu';
  TextEditingController textController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  translate() async {
    if (formkey.currentState!.validate()) {
      await translator
          .translate('I am Usama', from: from, to: to)
          .then((value) {
        data = value.text;
        setState(() {});
        // print(value);
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textController.dispose();
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   translate();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Translator',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 87, 104, 254),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('From'),
                  const SizedBox(
                    width: 60,
                  ),
                  DropdownButton(
                    value: selectedValue,
                    focusColor: Colors.transparent,
                    items: languages.map((lang) {
                      return DropdownMenuItem(
                        value: lang,
                        child: Text(lang),
                        onTap: () {
                          if (lang == languages[0]) {
                            from = languagesCode[0];
                          } else if (lang == languages[1]) {
                            from = languagesCode[1];
                          } else if (lang == languages[2]) {
                            from = languagesCode[2];
                          } else if (lang == languages[3]) {
                            from = languagesCode[3];
                          } else if (lang == languages[4]) {
                            from = languagesCode[4];
                          } else if (lang == languages[5]) {
                            from = languagesCode[5];
                          } else if (lang == languages[6]) {
                            from = languagesCode[6];
                          } else if (lang == languages[7]) {
                            from = languagesCode[7];
                          } else if (lang == languages[8]) {
                            from = languagesCode[8];
                          } else if (lang == languages[9]) {
                            from = languagesCode[9];
                          } else if (lang == languages[10]) {
                            from = languagesCode[10];
                          } else if (lang == languages[11]) {
                            from = languagesCode[11];
                          } else if (lang == languages[12]) {
                            from = languagesCode[12];
                          } else if (lang == languages[13]) {
                            from = languagesCode[13];
                          } else if (lang == languages[14]) {
                            from = languagesCode[14];
                          } else if (lang == languages[15]) {
                            from = languagesCode[15];
                          } else if (lang == languages[16]) {
                            from = languagesCode[16];
                          } else if (lang == languages[17]) {
                            from = languagesCode[17];
                          } else if (lang == languages[18]) {
                            from = languagesCode[18];
                          } else if (lang == languages[19]) {
                            from = languagesCode[19];
                          } else if (lang == languages[20]) {
                            from = languagesCode[20];
                          } else if (lang == languages[21]) {
                            from = languagesCode[21];
                          } else if (lang == languages[22]) {
                            from = languagesCode[22];
                          } else if (lang == languages[23]) {
                            from = languagesCode[23];
                          } else if (lang == languages[24]) {
                            from = languagesCode[24];
                          } else if (lang == languages[25]) {
                            from = languagesCode[25];
                          } else if (lang == languages[26]) {
                            from = languagesCode[26];
                          } else if (lang == languages[27]) {
                            from = languagesCode[27];
                          } else if (lang == languages[28]) {
                            from = languagesCode[28];
                          } else if (lang == languages[29]) {
                            from = languagesCode[29];
                          } else if (lang == languages[30]) {
                            from = languagesCode[30];
                          } else if (lang == languages[31]) {
                            from = languagesCode[31];
                          } else if (lang == languages[32]) {
                            from = languagesCode[32];
                          } else if (lang == languages[33]) {
                            from = languagesCode[33];
                          } else if (lang == languages[34]) {
                            from = languagesCode[34];
                          } else if (lang == languages[35]) {
                            from = languagesCode[35];
                          } else if (lang == languages[36]) {
                            from = languagesCode[36];
                          } else if (lang == languages[37]) {
                            from = languagesCode[37];
                          } else if (lang == languages[38]) {
                            from = languagesCode[38];
                          } else if (lang == languages[39]) {
                            from = languagesCode[39];
                          } else if (lang == languages[40]) {
                            from = languagesCode[40];
                          } else if (lang == languages[41]) {
                            from = languagesCode[41];
                          } else if (lang == languages[42]) {
                            from = languagesCode[42];
                          } else if (lang == languages[43]) {
                            from = languagesCode[43];
                          } else if (lang == languages[44]) {
                            from = languagesCode[44];
                          } else if (lang == languages[45]) {
                            from = languagesCode[45];
                          } else if (lang == languages[46]) {
                            from = languagesCode[46];
                          } else if (lang == languages[47]) {
                            from = languagesCode[47];
                          } else if (lang == languages[48]) {
                            from = languagesCode[48];
                          } else if (lang == languages[49]) {
                            from = languagesCode[49];
                          } else if (lang == languages[50]) {
                            from = languagesCode[50];
                          } else if (lang == languages[51]) {
                            from = languagesCode[51];
                          } else if (lang == languages[52]) {
                            from = languagesCode[52];
                          } else if (lang == languages[53]) {
                            from = languagesCode[53];
                          } else if (lang == languages[54]) {
                            from = languagesCode[54];
                          } else if (lang == languages[55]) {
                            from = languagesCode[55];
                          } else if (lang == languages[56]) {
                            from = languagesCode[56];
                          } else if (lang == languages[57]) {
                            from = languagesCode[57];
                          } else if (lang == languages[58]) {
                            from = languagesCode[58];
                          } else if (lang == languages[59]) {
                            from = languagesCode[59];
                          } else if (lang == languages[60]) {
                            from = languagesCode[60];
                          } else if (lang == languages[61]) {
                            from = languagesCode[61];
                          } else if (lang == languages[62]) {
                            from = languagesCode[62];
                          } else if (lang == languages[63]) {
                            from = languagesCode[63];
                          } else if (lang == languages[64]) {
                            from = languagesCode[64];
                          } else if (lang == languages[65]) {
                            from = languagesCode[65];
                          } else if (lang == languages[66]) {
                            from = languagesCode[66];
                          } else if (lang == languages[67]) {
                            from = languagesCode[67];
                          } else if (lang == languages[68]) {
                            from = languagesCode[68];
                          } else if (lang == languages[69]) {
                            from = languagesCode[69];
                          } else if (lang == languages[70]) {
                            from = languagesCode[70];
                          } else if (lang == languages[71]) {
                            from = languagesCode[71];
                          } else if (lang == languages[72]) {
                            from = languagesCode[72];
                          } else if (lang == languages[73]) {
                            from = languagesCode[73];
                          } else if (lang == languages[74]) {
                            from = languagesCode[74];
                          } else if (lang == languages[75]) {
                            from = languagesCode[75];
                          } else if (lang == languages[76]) {
                            from = languagesCode[76];
                          } else if (lang == languages[77]) {
                            from = languagesCode[77];
                          } else if (lang == languages[78]) {
                            from = languagesCode[78];
                          } else if (lang == languages[79]) {
                            from = languagesCode[79];
                          } else if (lang == languages[80]) {
                            from = languagesCode[80];
                          } else if (lang == languages[81]) {
                            from = languagesCode[81];
                          } else if (lang == languages[82]) {
                            from = languagesCode[82];
                          } else if (lang == languages[83]) {
                            from = languagesCode[83];
                          } else if (lang == languages[84]) {
                            from = languagesCode[84];
                          } else if (lang == languages[85]) {
                            from = languagesCode[85];
                          } else if (lang == languages[86]) {
                            from = languagesCode[86];
                          } else if (lang == languages[87]) {
                            from = languagesCode[87];
                          } else if (lang == languages[88]) {
                            from = languagesCode[88];
                          } else if (lang == languages[89]) {
                            from = languagesCode[89];
                          } else if (lang == languages[90]) {
                            from = languagesCode[90];
                          } else if (lang == languages[91]) {
                            from = languagesCode[91];
                          } else if (lang == languages[92]) {
                            from = languagesCode[92];
                          } else if (lang == languages[93]) {
                            from = languagesCode[93];
                          } else if (lang == languages[94]) {
                            from = languagesCode[94];
                          } else if (lang == languages[95]) {
                            from = languagesCode[95];
                          } else if (lang == languages[96]) {
                            from = languagesCode[96];
                          } else if (lang == languages[97]) {
                            from = languagesCode[97];
                          } else if (lang == languages[98]) {
                            from = languagesCode[98];
                          } else if (lang == languages[99]) {
                            from = languagesCode[99];
                          } else if (lang == languages[100]) {
                            from = languagesCode[100];
                          } else if (lang == languages[101]) {
                            from = languagesCode[101];
                          } else if (lang == languages[102]) {
                            from = languagesCode[102];
                          } else if (lang == languages[103]) {
                            from = languagesCode[103];
                          } else if (lang == languages[104]) {
                            from = languagesCode[104];
                          } else if (lang == languages[105]) {
                            from = languagesCode[105];
                          } else if (lang == languages[106]) {
                            from = languagesCode[106];
                          } else if (lang == languages[107]) {
                            from = languagesCode[107];
                          } else if (lang == languages[108]) {
                            from = languagesCode[108];
                          } else if (lang == languages[109]) {
                            from = languagesCode[109];
                          } else if (lang == languages[110]) {
                            from = languagesCode[110];
                          } else if (lang == languages[111]) {
                            from = languagesCode[111];
                          } else if (lang == languages[112]) {
                            from = languagesCode[112];
                          } else if (lang == languages[113]) {
                            from = languagesCode[113];
                          } else if (lang == languages[114]) {
                            from = languagesCode[114];
                          } else if (lang == languages[115]) {
                            from = languagesCode[115];
                          } else if (lang == languages[116]) {
                            from = languagesCode[116];
                          } else if (lang == languages[117]) {
                            from = languagesCode[117];
                          } else if (lang == languages[118]) {
                            from = languagesCode[118];
                          } else if (lang == languages[119]) {
                            from = languagesCode[119];
                          } else if (lang == languages[120]) {
                            from = languagesCode[120];
                          } else if (lang == languages[121]) {
                            from = languagesCode[121];
                          } else if (lang == languages[122]) {
                            from = languagesCode[122];
                          } else if (lang == languages[123]) {
                            from = languagesCode[123];
                          } else if (lang == languages[124]) {
                            from = languagesCode[124];
                          } else if (lang == languages[125]) {
                            from = languagesCode[125];
                          } else if (lang == languages[126]) {
                            from = languagesCode[126];
                          } else if (lang == languages[127]) {
                            from = languagesCode[127];
                          } else if (lang == languages[128]) {
                            from = languagesCode[128];
                          } else if (lang == languages[129]) {
                            from = languagesCode[129];
                          } else if (lang == languages[130]) {
                            from = languagesCode[130];
                          } else if (lang == languages[131]) {
                            from = languagesCode[131];
                          } else if (lang == languages[132]) {
                            from = languagesCode[132];
                          } else if (lang == languages[133]) {
                            from = languagesCode[133];
                          }
                        },
                      );
                    }).toList(),
                    onChanged: (value) {
                      selectedValue = value!;
                    },
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Form(
                key: formkey,
                child: TextFormField(
                  controller: textController,
                  maxLines: null,
                  minLines: null,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('To'),
                  const SizedBox(
                    width: 60,
                  ),
                  DropdownButton(
                    value: selectedValue1,
                    focusColor: Colors.transparent,
                    items: languages.map((lang) {
                      return DropdownMenuItem(
                          value: lang,
                          child: Text(lang),
                          onTap: () {
                            if (lang == languages[0]) {
                              to = languagesCode[0];
                            } else if (lang == languages[1]) {
                              to = languagesCode[1];
                            } else if (lang == languages[2]) {
                              to = languagesCode[2];
                            } else if (lang == languages[3]) {
                              to = languagesCode[3];
                            } else if (lang == languages[4]) {
                              to = languagesCode[4];
                            } else if (lang == languages[5]) {
                              to = languagesCode[5];
                            } else if (lang == languages[6]) {
                              to = languagesCode[6];
                            } else if (lang == languages[7]) {
                              to = languagesCode[7];
                            } else if (lang == languages[8]) {
                              to = languagesCode[8];
                            } else if (lang == languages[9]) {
                              to = languagesCode[9];
                            } else if (lang == languages[10]) {
                              to = languagesCode[10];
                            } else if (lang == languages[11]) {
                              to = languagesCode[11];
                            } else if (lang == languages[12]) {
                              to = languagesCode[12];
                            } else if (lang == languages[13]) {
                              to = languagesCode[13];
                            } else if (lang == languages[14]) {
                              to = languagesCode[14];
                            } else if (lang == languages[15]) {
                              to = languagesCode[15];
                            } else if (lang == languages[16]) {
                              to = languagesCode[16];
                            } else if (lang == languages[17]) {
                              to = languagesCode[17];
                            } else if (lang == languages[18]) {
                              to = languagesCode[18];
                            } else if (lang == languages[19]) {
                              to = languagesCode[19];
                            } else if (lang == languages[20]) {
                              to = languagesCode[20];
                            } else if (lang == languages[21]) {
                              to = languagesCode[21];
                            } else if (lang == languages[22]) {
                              to = languagesCode[22];
                            } else if (lang == languages[23]) {
                              to = languagesCode[23];
                            } else if (lang == languages[24]) {
                              to = languagesCode[24];
                            } else if (lang == languages[25]) {
                              to = languagesCode[25];
                            } else if (lang == languages[26]) {
                              to = languagesCode[26];
                            } else if (lang == languages[27]) {
                              to = languagesCode[27];
                            } else if (lang == languages[28]) {
                              to = languagesCode[28];
                            } else if (lang == languages[29]) {
                              to = languagesCode[29];
                            } else if (lang == languages[30]) {
                              to = languagesCode[30];
                            } else if (lang == languages[31]) {
                              to = languagesCode[31];
                            } else if (lang == languages[32]) {
                              to = languagesCode[32];
                            } else if (lang == languages[33]) {
                              to = languagesCode[33];
                            } else if (lang == languages[34]) {
                              to = languagesCode[34];
                            } else if (lang == languages[35]) {
                              to = languagesCode[35];
                            } else if (lang == languages[36]) {
                              to = languagesCode[36];
                            } else if (lang == languages[37]) {
                              to = languagesCode[37];
                            } else if (lang == languages[38]) {
                              to = languagesCode[38];
                            } else if (lang == languages[39]) {
                              to = languagesCode[39];
                            } else if (lang == languages[40]) {
                              to = languagesCode[40];
                            } else if (lang == languages[41]) {
                              to = languagesCode[41];
                            } else if (lang == languages[42]) {
                              to = languagesCode[42];
                            } else if (lang == languages[43]) {
                              to = languagesCode[43];
                            } else if (lang == languages[44]) {
                              to = languagesCode[44];
                            } else if (lang == languages[45]) {
                              to = languagesCode[45];
                            } else if (lang == languages[46]) {
                              to = languagesCode[46];
                            } else if (lang == languages[47]) {
                              to = languagesCode[47];
                            } else if (lang == languages[48]) {
                              to = languagesCode[48];
                            } else if (lang == languages[49]) {
                              to = languagesCode[49];
                            } else if (lang == languages[50]) {
                              to = languagesCode[50];
                            } else if (lang == languages[51]) {
                              to = languagesCode[51];
                            } else if (lang == languages[52]) {
                              to = languagesCode[52];
                            } else if (lang == languages[53]) {
                              to = languagesCode[53];
                            } else if (lang == languages[54]) {
                              to = languagesCode[54];
                            } else if (lang == languages[55]) {
                              to = languagesCode[55];
                            } else if (lang == languages[56]) {
                              to = languagesCode[56];
                            } else if (lang == languages[57]) {
                              to = languagesCode[57];
                            } else if (lang == languages[58]) {
                              to = languagesCode[58];
                            } else if (lang == languages[59]) {
                              to = languagesCode[59];
                            } else if (lang == languages[60]) {
                              to = languagesCode[60];
                            } else if (lang == languages[61]) {
                              to = languagesCode[61];
                            } else if (lang == languages[62]) {
                              to = languagesCode[62];
                            } else if (lang == languages[63]) {
                              to = languagesCode[63];
                            } else if (lang == languages[64]) {
                              to = languagesCode[64];
                            } else if (lang == languages[65]) {
                              to = languagesCode[65];
                            } else if (lang == languages[66]) {
                              to = languagesCode[66];
                            } else if (lang == languages[67]) {
                              to = languagesCode[67];
                            } else if (lang == languages[68]) {
                              to = languagesCode[68];
                            } else if (lang == languages[69]) {
                              to = languagesCode[69];
                            } else if (lang == languages[70]) {
                              to = languagesCode[70];
                            } else if (lang == languages[71]) {
                              to = languagesCode[71];
                            } else if (lang == languages[72]) {
                              to = languagesCode[72];
                            } else if (lang == languages[73]) {
                              to = languagesCode[73];
                            } else if (lang == languages[74]) {
                              to = languagesCode[74];
                            } else if (lang == languages[75]) {
                              to = languagesCode[75];
                            } else if (lang == languages[76]) {
                              to = languagesCode[76];
                            } else if (lang == languages[77]) {
                              to = languagesCode[77];
                            } else if (lang == languages[78]) {
                              to = languagesCode[78];
                            } else if (lang == languages[79]) {
                              to = languagesCode[79];
                            } else if (lang == languages[80]) {
                              to = languagesCode[80];
                            } else if (lang == languages[81]) {
                              to = languagesCode[81];
                            } else if (lang == languages[82]) {
                              to = languagesCode[82];
                            } else if (lang == languages[83]) {
                              to = languagesCode[83];
                            } else if (lang == languages[84]) {
                              to = languagesCode[84];
                            } else if (lang == languages[85]) {
                              to = languagesCode[85];
                            } else if (lang == languages[86]) {
                              to = languagesCode[86];
                            } else if (lang == languages[87]) {
                              to = languagesCode[87];
                            } else if (lang == languages[88]) {
                              to = languagesCode[88];
                            } else if (lang == languages[89]) {
                              to = languagesCode[89];
                            } else if (lang == languages[90]) {
                              to = languagesCode[90];
                            } else if (lang == languages[91]) {
                              to = languagesCode[91];
                            } else if (lang == languages[92]) {
                              to = languagesCode[92];
                            } else if (lang == languages[93]) {
                              to = languagesCode[93];
                            } else if (lang == languages[94]) {
                              to = languagesCode[94];
                            } else if (lang == languages[95]) {
                              to = languagesCode[95];
                            } else if (lang == languages[96]) {
                              to = languagesCode[96];
                            } else if (lang == languages[97]) {
                              to = languagesCode[97];
                            } else if (lang == languages[98]) {
                              to = languagesCode[98];
                            } else if (lang == languages[99]) {
                              to = languagesCode[99];
                            } else if (lang == languages[100]) {
                              to = languagesCode[100];
                            } else if (lang == languages[101]) {
                              to = languagesCode[101];
                            } else if (lang == languages[102]) {
                              to = languagesCode[102];
                            } else if (lang == languages[103]) {
                              to = languagesCode[103];
                            } else if (lang == languages[104]) {
                              to = languagesCode[104];
                            } else if (lang == languages[105]) {
                              to = languagesCode[105];
                            } else if (lang == languages[106]) {
                              to = languagesCode[106];
                            } else if (lang == languages[107]) {
                              to = languagesCode[107];
                            } else if (lang == languages[108]) {
                              to = languagesCode[108];
                            } else if (lang == languages[109]) {
                              to = languagesCode[109];
                            } else if (lang == languages[110]) {
                              to = languagesCode[110];
                            } else if (lang == languages[111]) {
                              to = languagesCode[111];
                            } else if (lang == languages[112]) {
                              to = languagesCode[112];
                            } else if (lang == languages[113]) {
                              to = languagesCode[113];
                            } else if (lang == languages[114]) {
                              to = languagesCode[114];
                            } else if (lang == languages[115]) {
                              to = languagesCode[115];
                            } else if (lang == languages[116]) {
                              to = languagesCode[116];
                            } else if (lang == languages[117]) {
                              to = languagesCode[117];
                            } else if (lang == languages[118]) {
                              to = languagesCode[118];
                            } else if (lang == languages[119]) {
                              to = languagesCode[119];
                            } else if (lang == languages[120]) {
                              to = languagesCode[120];
                            } else if (lang == languages[121]) {
                              to = languagesCode[121];
                            } else if (lang == languages[122]) {
                              to = languagesCode[122];
                            } else if (lang == languages[123]) {
                              to = languagesCode[123];
                            } else if (lang == languages[124]) {
                              to = languagesCode[124];
                            } else if (lang == languages[125]) {
                              to = languagesCode[125];
                            } else if (lang == languages[126]) {
                              to = languagesCode[126];
                            } else if (lang == languages[127]) {
                              to = languagesCode[127];
                            } else if (lang == languages[128]) {
                              to = languagesCode[128];
                            } else if (lang == languages[129]) {
                              to = languagesCode[129];
                            } else if (lang == languages[130]) {
                              to = languagesCode[130];
                            } else if (lang == languages[131]) {
                              to = languagesCode[131];
                            } else if (lang == languages[132]) {
                              to = languagesCode[132];
                            } else if (lang == languages[133]) {
                              to = languagesCode[133];
                            }
                          });
                    }).toList(),
                    onChanged: (value) {
                      selectedValue1 = value!;
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: SelectableText(
                  data,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: translate,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.indigo.shade900,
                ),
                fixedSize: const MaterialStatePropertyAll(Size(300, 45)),
              ),
              child: const Text('Translate'),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
