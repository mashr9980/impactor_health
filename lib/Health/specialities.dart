import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:impactor_health/Health/select_a_doctor.dart';
import 'package:localstorage/localstorage.dart';

import '../colors.dart';
import 'fee_plan.dart';


class Speciality extends StatefulWidget {
  const Speciality({Key? key}) : super(key: key);

  @override
  _SpecialityState createState() => _SpecialityState();
}

class _SpecialityState extends State<Speciality> {

  @override

  var isSelected = List.generate(15, (index) => false);
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final scaffold = ScaffoldMessenger.of(context);
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => const SelectDoctor())
          );
        },
        child: Container(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 12,bottom: 12),
          child: Text(
            "Select Doctor",
            style: TextStyle(
              letterSpacing: 0.2,
              color: white,
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.04,
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              boxShadow: [
                BoxShadow(color: grey)
              ],
              gradient: const LinearGradient(colors: [
                Color(0xFFdc625f),
                Color(0xFFf1255e),
              ])),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 5,top: 5),
        child: InkWell(
          onTap: isSelected[0] ? () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FeePlan()));
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
          } : null,
          child: Container(
            height: size.height * 0.07,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: isSelected[0] ? mainColor : grey,
                border: Border.all(color: isSelected[0] ? mainColor : grey,)),
            child: Center(
              child: Text(
                'Finish & Pay',
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
              Text("Doctor's Specialty",style: TextStyle(fontSize: 20,color: white, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 20,right: 15),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: grey,
                      ),
                    ]
                ),
                // width: size.width * 0.92,
                child: TextFormField(
                  onFieldSubmitted: (e) async{
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: grey.withOpacity(0.5),size: 30,),
                      fillColor: white,
                      // border: InputBorder.,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintStyle: TextStyle(color: grey.withOpacity(0.5)),
                      // contentPadding: EdgeInsets.only(left: 10),
                      hintText: "Find doctor's specialty"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 10,bottom: 10),
              child: Row(
                children: [
                  Text("Search by Specialty",style: TextStyle(
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
            GridView.count(
              primary: true,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: List.generate(isSelected.length,(index){
                return InkWell(
                  onTap: () {
                    setState(() {
                      for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected[buttonIndex] = true;
                        } else {
                          isSelected[buttonIndex] = false;
                        }
                      }
                      print(index+1);
                      // isSelected[index] = !isSelected[index];
                      // print(isSelected);
                    });
                  },
                  child: Container(
                    width: size.width * 0.3,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 25,),
                                isSelected[index] ? SvgPicture.asset("assets/images/Group 17517.svg") : const SizedBox(height: 15,)
                              ],
                            ),
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: mainColor,
                              child: SvgPicture.asset('assets/images/eye.svg',color: white),
                            )
                            // Container(
                            //   padding: EdgeInsets.all(13),
                            //   height: 55,
                            //   width: 55,
                            //   decoration: BoxDecoration(
                            //     color: mainColor,
                            //     borderRadius: BorderRadius.circular(30),
                            //   ),
                            //   child: SvgPicture.asset('assets/images/Group 2091.svg',color: white),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Text('Eye Surgen',style: TextStyle(fontSize: size.width * 0.04,fontWeight: FontWeight.w400),),
                        const SizedBox(height: 5,),
                        Text('40 Doctors Available',style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w300,decoration: TextDecoration.underline),)
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

