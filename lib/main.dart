import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:impactor_health/Health/confirmation.dart';
import 'Health/health_option.dart';
import 'Localization/localization_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
    );
  }
}

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List dropDownLanguageList = [
    {'label': 'English', 'value': 'English',

      'selectedIcon': SizedBox(
        key: UniqueKey(),
        width: 20,
        height: 20,
        child: const Icon(Icons.arrow_drop_down),
      ),
    }, // label is required and unique
    {'label': 'Roman', 'value': 'Roman',
      'selectedIcon': SizedBox(
        key: UniqueKey(),
        width: 20,
        height: 20,
        child: const Icon(Icons.arrow_drop_down),
      ),
    },
  ];
  var lanslect="";
  var local = LocalizationService();
  var rem=GetStorage("logindata");
  bool check1=false;
  var lan=GetStorage();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 12,bottom: 12),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HealthOption()));
              },
              child: Text(
                "Let's Start",
                style: TextStyle(
                  letterSpacing: 0.2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                boxShadow: [
                  BoxShadow(color: Colors.grey)
                ],
                gradient: LinearGradient(colors: [
                  Color(0xFFdc625f),
                  Color(0xFFf1255e),
                ])),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("select".tr),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Directionality(
                  textDirection: textDirection,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffDDDDDD),
                          width: 2
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color:Colors.white,
                    ),
                    // color: Colors.red,
                    height: 80,
                    child: CoolDropdown(
                      dropdownHeight: 150,
                      dropdownWidth:200,
                      resultBD: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      isTriangle: false,
                      dropdownBD: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      isResultIconLabel: true,
                      resultWidth: 200,
                      dropdownList: dropDownLanguageList,
                      defaultValue: null,
                      isResultLabel: true,
                      gap: 10,
                      placeholder:"Select".tr,
                      dropdownItemPadding: const EdgeInsets.only(left: 20,right: 20),
                      selectedItemPadding: const EdgeInsets.only(left: 20,right: 20),
                      placeholderTS:const TextStyle(
                          fontSize:  14,
                          color:  Color(0xff8a8a8a),
                          fontWeight: FontWeight.bold,
                          // fontFamily: "Poppins"
                      ),
                      selectedItemBD: BoxDecoration(
                        // color: const Color(0xffE8F5FF),
                        borderRadius: BorderRadius.circular(5),

                      ),
                      selectedItemTS: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff0037da),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                      resultTS:const TextStyle(
                          fontSize:  14,
                          color:  Color(0xff8a8a8a),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                      unselectedItemTS:const TextStyle(
                          fontSize:  15,
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                      onChange: (a) {
                        // selected_hospital = a;
                        setState(() {
                          lanslect=a["value"];
                          rem.write('status', a["value"]);
                          check1=false;
                          local.changeLocale(a["value"]);
                        });
                      },
                      dropdownItemReverse: false,
                      dropdownItemMainAxis: MainAxisAlignment.spaceBetween,
                      resultMainAxis: MainAxisAlignment.start,
                      labelIconGap: 10,
                      resultIcon: const SizedBox(
                        width: 20,
                        height: 20,
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

