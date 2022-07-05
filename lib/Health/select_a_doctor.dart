import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../colors.dart';
import 'book_appoinment.dart';
import 'confirmation.dart';
import 'doctor_profile.dart';

class SelectDoctor extends StatefulWidget {
  const SelectDoctor({Key? key}) : super(key: key);

  @override
  _SelectDoctorState createState() => _SelectDoctorState();
}

class _SelectDoctorState extends State<SelectDoctor> {

  var isSelected = List.generate(2, (index) => false);
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
              Text("Select a Doctor",style: TextStyle(fontSize: size.width * 0.05,color: white, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 5,right: 15),
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
                      hintText: "Find a Doctor"),
                ),
              ),
            ),
            Column(children: List.generate(
                5, (index) =>
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 15,left: 5,right: 5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: grey.withOpacity(0.5),
                          ),
                        ],
                        color: white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(0xffF8F8F8),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.done,color: green,),
                                  // SvgPicture.asset("assets/images/Icon material-done.svg",width: 15,),
                                  const SizedBox(width: 10,),
                                  Text("PMC Verified",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700, fontSize: size.width * 0.03),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: size.width * 0.07,
                              backgroundColor: Colors.blue,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dr. Omer Aziz Rana",style: TextStyle(fontSize: size.width * 0.045,fontWeight: FontWeight.w700),),
                                Text("Cardiologist, Interventional Cardiologist",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w300),),
                                Text("FCPR ( Glasgow), FRCP(Edinburgh),\nFRCP (London), FESC, FAPSC, FSCAI,\nFAPSIC",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w300),),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Location: ",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w700),),
                                        Text("Lahore",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w300),)
                                      ],
                                    ),
                                    const SizedBox(width: 10,),
                                    Row(
                                      children: [
                                        Text("Fee: ",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w700),),
                                        Text("PKR 2000",style: TextStyle(fontSize: size.width * 0.03,fontWeight: FontWeight.w300),)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const DoctorProfile()),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: mainColor,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Text("View Profile",style: TextStyle(
                                        color: white,
                                        fontSize: size.width * 0.03
                                    ),),
                                  ),
                                ),
                                Container(),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("19 Years",style: TextStyle(fontSize: size.width * 0.05,fontWeight: FontWeight.w400),),
                                  Text("Experience",style: TextStyle(fontSize: size.width * 0.04,fontWeight: FontWeight.w300),),
                                ],
                              ),
                              Text("|",style: TextStyle(fontSize: size.width * 0.2,fontWeight: FontWeight.w100,color: grey),),
                              Column(
                                children: [
                                  Text("97%",style: TextStyle(fontSize: size.width * 0.05,fontWeight: FontWeight.w400),),
                                  Text(" Satisfied",style: TextStyle(fontSize: size.width * 0.04,fontWeight: FontWeight.w300),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              InkWell(
                                onTap:() {
                                  Navigator.push(
                                      context, MaterialPageRoute(
                                      builder: (context) => const Confirmation())
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: mainColor,
                                      border: Border.all(color: mainColor)),
                                  child: Center(
                                    child: Text(
                                      'Finish & Pay',
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
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('OR',style: TextStyle(color: mainColor,fontSize: size.width * 0.05,fontWeight: FontWeight.w700),),
                              ),
                              InkWell(
                                onTap: () {
                                  showMaterialModalBottomSheet(
                                      context: context,
                                      builder: (context) => Container(
                                        color: const Color(0xffF8F8F8),
                                        height: 330,
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Text("Please pick appointment location",style: TextStyle(fontSize: size.width * 0.05,fontWeight: FontWeight.w700),),
                                            const SizedBox(height: 10,),
                                            Column(children: List.generate(
                                              2, (index) =>
                                                InkWell(
                                                  onTap: (){
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => const BookAppointment()),
                                                    );
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(top: 15.0,left: 2,right: 2),
                                                    child: Container(
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: grey.withOpacity(0.5),
                                                              // spreadRadius: 1,
                                                              // blurRadius: 5,
                                                              // offset: Offset(0, 3), // changes position of shadow
                                                            ),
                                                          ],
                                                          color: white,
                                                          borderRadius: BorderRadius.circular(5)
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(10),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                                Text("HOSPITAL",style: TextStyle(fontWeight: FontWeight.w300,fontSize: size.width * 0.03),),
                                                                const SizedBox(height: 5,),
                                                                Text("Bahria International Hospital",style: TextStyle(fontWeight: FontWeight.w400,fontSize: size.width * 0.04),),
                                                                const SizedBox(height: 3,),
                                                                Row(
                                                                  children: [
                                                                    Text("Fee:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: size.width * 0.04),),
                                                                    Text("Rs.2000",style: TextStyle(fontWeight: FontWeight.w500,fontSize: size.width * 0.04),),
                                                                  ],
                                                                ),
                                                                const SizedBox(height: 3,),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons.access_time,color: green,),
                                                                        const SizedBox(width: 5,),
                                                                        Text("Available Tomorrow ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: size.width * 0.04,color: green),),
                                                                      ],
                                                                    ),
                                                                    // SizedBox(width: 20,),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(10.0),
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    const Icon(Icons.chevron_right),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text("Location:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: size.width * 0.04,),),
                                                                    const SizedBox(width: 5,),
                                                                    Text("Lahore",style: TextStyle(fontWeight: FontWeight.w400,fontSize: size.width * 0.04),),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          // Padding(
                                                          //   padding: const EdgeInsets.all(1.0),
                                                          //   child: Row(
                                                          //     children: [
                                                          //       Text("Location:",style: TextStyle(fontWeight: FontWeight.w700,fontSize: size.width * 0.04,),),
                                                          //       SizedBox(width: 5,),
                                                          //       Text("Lahore",style: TextStyle(fontWeight: FontWeight.w600,fontSize: size.width * 0.04),),
                                                          //     ],
                                                          //   ),
                                                          // ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),).toList(),),
                                          ],
                                        ),
                                      ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: white,
                                      border: Border.all(color: pink)),
                                  child: Center(
                                    child: Text(
                                      'Book Appointment',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: pink,
                                        fontWeight: FontWeight.w700,
                                        fontSize: size.width * 0.045,
                                        // color: txt_color,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )).toList(),),
          ],
        ),
      ),
    );
  }
}