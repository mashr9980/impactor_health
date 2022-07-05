import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}
class FeeList {
  String name;
  int index;
  var bundleId;
  FeeList({required this.name, required this.index});
}

class _PaymentMethodState extends State<PaymentMethod> {
  List<FeeList> PList = [
    FeeList(
      index: 0,
      name: "Wallet",
    ),
    FeeList(
      index: 1,
      name: "Debit Card / Credit Card",
    ),
    FeeList(
      index: 2,
      name: "Bank (IBFT)",
    ),
    FeeList(
      index: 3,
      name: "Jazz Cash",
    ),
    FeeList(
      index: 4,
      name: "EasyPaisa",
    ),
    FeeList(
      index: 5,
      name: "Upaisa",
    ),
  ];
  bool _type = false;

  @override
  // bool value = false;
  Widget build(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: AppBar(
          toolbarHeight: 120.0,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: mainColor,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_sharp,color: white,)
          ),
          title: Column(
            children: [
              Text("Payment Method",style: TextStyle(fontSize: 20,color: white, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 5,top: 5),
        child: Container(
          color: Colors.transparent,
          height: size.height * 0.075,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.34,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: white,
                      border: Border.all(color: mainColor)),
                  child: Center(
                    child: Text(
                      'Cancel',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                        fontSize: size.width * 0.045,
                        // color: txt_color,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap:() {
                  AwesomeDialog(
                    context: context,
                    aligment: Alignment.center,
                    dismissOnTouchOutside:true,
                    dialogType: DialogType.NO_HEADER,
                    body: Container(
                      // color: Colors.red,
                      // width: size.width * 0.8,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: size.height * 0.02,),
                          SvgPicture.asset("assets/images/confirmation.svg"),
                          SizedBox(height: size.height * 0.02,),
                          Text("Confirmation",style: TextStyle(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: size.height * 0.04,),
                          Text("Are you really want to create this impact?",textAlign: TextAlign.center,style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w300,
                          ),),
                          SizedBox(height: size.height * 0.02,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: size.height * 0.07,
                                width: size.width * 0.28,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: white,
                                    border: Border.all(color: mainColor)),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: mainColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width * 0.045,
                                      // color: txt_color,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                  scaffold.showSnackBar(
                                    SnackBar(
                                      // backgroundColor: grey,
                                      content: Text('Thanks for making an Impact',style: TextStyle(color: white),),
                                    ),
                                  );
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: size.height * 0.07,
                                  width: size.width * 0.40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: mainColor,
                                      border: Border.all(color: mainColor)),
                                  child: Center(
                                    child: Text(
                                      'Pay',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: size.width * 0.045,
                                        // color: txt_color,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ).show();
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: mainColor,
                      border: Border.all(color: mainColor)),
                  child: Center(
                    child: Text(
                      'Continue To Payment',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w700,
                        fontSize: size.width * 0.045,
                        // color: txt_color,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundColor: pink,
                    child: SvgPicture.asset('assets/images/Icon 1122.svg',color: white,)
                ),
                Text(" - - - - - ",style: TextStyle(fontSize: 30,color: pink),),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: pink,
                    child: SvgPicture.asset('assets/images/Icon metro-credit-card.svg',color: white,)
                ),
                Text(" - - - - - ",style: TextStyle(fontSize: 30,color: grey),),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: grey,
                    child: SvgPicture.asset('assets/images/Icon material-done.svg',color: white,)
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20,bottom: 10),
              child: Row(
                children: [
                  Text("How would you like to pay?",style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
            Column(
              children: PList.map((data) => RadioListTile(
                title: Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    // height: 100,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                          color: grey.withOpacity(0.3)),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.3),
                          // spreadRadius: 1,
                          // blurRadius: 2,
                          // offset: Offset(
                          //     0, 0), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      data.name,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: size.width * 0.045,
                        // fontWeight: ,
                      ),
                    )),
                // title: Container(
                //   width: 70,
                //   child: Text(
                //     "${data.name}",
                //     style: TextStyle(
                //       fontSize: size.width * 0.035,
                //       // fontWeight: FontWeight.w600,
                //     ),
                //   ),
                // ),
                groupValue: true,
                value: data.index,
                activeColor: pink,
                onChanged: (val) async {
                  setState(() {
                    // id = data.index;
                    // print(data.index);
                    // if (data.index == id){
                    //   _type = true;
                    //   print(data);
                    // }
                  });
                },
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    Key? key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
          print(value);
        }
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Radio<bool>(
              activeColor: mainColor,
              groupValue: groupValue,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue);
              },
            ),
            Text(
              label,
              style: TextStyle(fontSize: size.width * 0.04),
            ),
          ],
        ),
      ),
    );
  }
}

