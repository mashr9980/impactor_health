import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:impactor_health/Health/doctor_profile.dart';

import '../colors.dart';
import 'confirmation.dart';

class FeePlan extends StatefulWidget {
  const FeePlan({Key? key}) : super(key: key);

  @override
  _FeePlanState createState() => _FeePlanState();
}

class FeeList {
  String name;
  int index;
  var bundleId;
  FeeList({required this.name, required this.index});
}

class _FeePlanState extends State<FeePlan> {
  List<FeeList> PList = [
    FeeList(
      index: 0,
      name: "Rs 2500",
    ),
    FeeList(
      index: 1,
      name: "Rs 3500",
    ),
    FeeList(
      index: 2,
      name: "Rs 4500",
    ),
  ];
  @override

  Widget build(BuildContext context) {

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
              Text("Fee Plan",style: TextStyle(fontSize: 20,color: white, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 10),
              child: Row(
                children: const [
                  Text("Please Select Fee Plans",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 5),
              child: Row(
                children: const [
                  Text("The following specialist charge according to \nthis fee structure. Which fee structure would \nyoulike to select",style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
            // LabeledRadio(
            //   label: 'Rs. 2500',
            //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
            //   value: true,
            //   groupValue: _type,
            //   onChanged: (bool type) {
            //     setState(() {
            //       // id = 3;
            //       _type = type;
            //     });
            //   },
            // ),
            // LabeledRadio(
            //   label: 'Rs. 3500',
            //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
            //   value: false,
            //   groupValue: _type,
            //   onChanged: (bool type) {
            //     setState(() {
            //       // id = 0;
            //       _type = type;
            //     });
            //   },
            // ),
            // LabeledRadio(
            //   label: 'Rs. 4500',
            //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
            //   value: false,
            //   groupValue: _type,
            //   onChanged: (bool type) {
            //     setState(() {
            //       // id = 0;
            //       _type = type;
            //     });
            //   },
            // ),
            Column(
              children: PList.map((data) => RadioListTile(
                title: Container(
                  width: 70,
                  child: Text(
                    "${data.name}",
                    style: TextStyle(
                      fontSize: size.width * 0.035,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                groupValue: true,
                value: data.index,
                activeColor: mainColor,
                onChanged: (val) async {
                  setState(() {
                    // id = data.index;
                    // print(id+1);
                  });
                },
              )).toList(),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 5,top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Confirmation()));
                  // AwesomeDialog(
                  //   context: context,
                  //   aligment: Alignment.center,
                  //   dismissOnTouchOutside:true,
                  //   dialogType: DialogType.NO_HEADER,
                  //   body: Container(
                  //     // color: Colors.red,
                  //     // width: size.width * 0.8,
                  //     padding: EdgeInsets.all(20),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         SizedBox(height: size.height * 0.02,),
                  //         SvgPicture.asset("assets/images/confirmation.svg"),
                  //         SizedBox(height: size.height * 0.02,),
                  //         Text("Confirmation",style: TextStyle(
                  //           fontSize: size.width * 0.05,
                  //           fontWeight: FontWeight.w500,
                  //         ),),
                  //         SizedBox(height: size.height * 0.04,),
                  //         Text("Are you really want to create this impact?",textAlign: TextAlign.center,style: TextStyle(
                  //           fontSize: size.width * 0.04,
                  //           fontWeight: FontWeight.w300,
                  //         ),),
                  //         SizedBox(height: size.height * 0.02,),
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             InkWell(
                  //               onTap: (){
                  //               },
                  //               child: Container(
                  //                 height: size.height * 0.07,
                  //                 width: size.width * 0.28,
                  //                 decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(5),
                  //                     color: white,
                  //                     border: Border.all(color: mainColor)),
                  //                 child: Center(
                  //                   child: Text(
                  //                     'Cancel',
                  //                     textAlign: TextAlign.start,
                  //                     style: TextStyle(
                  //                       color: mainColor,
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: size.width * 0.045,
                  //                       // color: txt_color,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             InkWell(
                  //               onTap: (){
                  //                 Navigator.pop(context);
                  //                 AwesomeDialog(
                  //                   context: context,
                  //                   aligment: Alignment.center,
                  //                   dismissOnTouchOutside:true,
                  //                   dialogType: DialogType.NO_HEADER,
                  //                   body: Container(
                  //                     // color: Colors.red,
                  //                     // width: size.width * 0.8,
                  //                     padding: EdgeInsets.all(20),
                  //                     child: Column(
                  //                       mainAxisAlignment: MainAxisAlignment.center,
                  //                       children: [
                  //                         SizedBox(height: size.height * 0.02,),
                  //                         SvgPicture.asset("assets/images/confirm.svg"),
                  //                         SizedBox(height: size.height * 0.02,),
                  //                         Text("Thanks for making an Impact",style: TextStyle(
                  //                           fontSize: size.width * 0.05,
                  //                           fontWeight: FontWeight.w500,
                  //                         ),),
                  //                         SizedBox(height: size.height * 0.04,),
                  //                         Text("Congratulations, you just created a impact against your Impactee.",textAlign: TextAlign.center,style: TextStyle(
                  //                           fontSize: size.width * 0.04,
                  //                           fontWeight: FontWeight.w300,
                  //                         ),),
                  //                         SizedBox(height: size.height * 0.02,),
                  //                         InkWell(
                  //                           onTap: (){
                  //                             Navigator.push(
                  //                                 context, MaterialPageRoute(
                  //                                 builder: (context) => MainScreen(null, null))
                  //                             );
                  //                           },
                  //                           child: Container(
                  //                             height: size.height * 0.07,
                  //                             width: size.width * 0.70,
                  //                             decoration: BoxDecoration(
                  //                                 borderRadius: BorderRadius.circular(5),
                  //                                 color: mainColor,
                  //                                 border: Border.all(color: mainColor)),
                  //                             child: Center(
                  //                               child: Text(
                  //                                 'Done',
                  //                                 textAlign: TextAlign.start,
                  //                                 style: TextStyle(
                  //                                   color: white,
                  //                                   fontWeight: FontWeight.w700,
                  //                                   fontSize: size.width * 0.045,
                  //                                   // color: txt_color,
                  //                                 ),
                  //                               ),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 )..show();
                  //
                  //               },
                  //               child: Container(
                  //                 height: size.height * 0.07,
                  //                 width: size.width * 0.40,
                  //                 decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(5),
                  //                     color: mainColor,
                  //                     border: Border.all(color: mainColor)),
                  //                 child: Center(
                  //                   child: Text(
                  //                     'Pay',
                  //                     textAlign: TextAlign.start,
                  //                     style: TextStyle(
                  //                       color: white,
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: size.width * 0.045,
                  //                       // color: txt_color,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // )..show();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  // height: size.height * 0.07,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: mainColor,
                      border: Border.all(color: mainColor)),
                  child: Center(
                    child: Text(
                      'Pay Now',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w500,
                        fontSize: size.width * 0.045,
                        // color: txt_color,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 10),
              child: Row(
                children: const [
                  Text("Suggested Doctors",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => const DoctorProfile())
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(size.width * 0.01),
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: size.width * 0.08,
                                ),
                                const SizedBox(height: 10,),
                                Text("Dr Omer Aziz Rana",style: TextStyle(fontSize: size.width * 0.04,fontWeight: FontWeight.w600),),
                                const SizedBox(height: 5,),
                                Text("Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                Text("Interventional Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                const SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Location: ",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w700),),
                                    Text("Lahore",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w500),),
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(size.width * 0.02),
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(9)
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => const DoctorProfile())
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(size.width * 0.01),
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: size.width * 0.08,
                                ),
                                const SizedBox(height: 10,),
                                Text("Dr Omer Aziz Rana",style: TextStyle(fontSize: size.width * 0.04,fontWeight: FontWeight.w600),),
                                const SizedBox(height: 5,),
                                Text("Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                Text("Interventional Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                const SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Location: ",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w700),),
                                    Text("Lahore",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w500),),
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(size.width * 0.02),
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(9)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => const DoctorProfile())
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(size.width * 0.01),
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: size.width * 0.08,
                                ),
                                const SizedBox(height: 10,),
                                Text("Dr Omer Aziz Rana",style: TextStyle(fontSize: size.width * 0.04,fontWeight: FontWeight.w600),),
                                const SizedBox(height: 5,),
                                Text("Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                Text("Interventional Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                const SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Location: ",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w700),),
                                    Text("Lahore",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w500),),
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(size.width * 0.02),
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(9)
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => const DoctorProfile())
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(size.width * 0.01),
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: size.width * 0.08,
                                ),
                                const SizedBox(height: 10,),
                                Text("Dr Omer Aziz Rana",style: TextStyle(fontSize: size.width * 0.04,fontWeight: FontWeight.w600),),
                                const SizedBox(height: 5,),
                                Text("Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                Text("Interventional Cardiologist",style: TextStyle(fontSize: size.width * 0.028),),
                                const SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Location: ",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w700),),
                                    Text("Lahore",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w500),),
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(size.width * 0.02),
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(9)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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

