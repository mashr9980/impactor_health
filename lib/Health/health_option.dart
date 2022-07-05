import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:impactor_health/Health/specialities.dart';
import '../../colors.dart';
import 'doctor_profile.dart';

class HealthOption extends StatefulWidget {
  const HealthOption({Key? key}) : super(key: key);

  @override
  _HealthOptionState createState() => _HealthOptionState();
}

class _HealthOptionState extends State<HealthOption> {
  List names = ["dr1","dr2","dr3","dr4","dr5","dr6","dr7","dr8","dr9","dr10","dr11","dr12","dr13"];
  var isSelected = List.generate(6, (index) => false);

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
                    MaterialPageRoute(builder: (context) => const Speciality()));
              },
              child: Text(
                "Find Other Speciality",
                style: TextStyle(
                  letterSpacing: 0.2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                ),
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
        ],
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: mainColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                height: 300,
                width: size.width,
                // child: SvgPicture.asset("assets/images/Group 17130.svg", fit: BoxFit.cover,),

              ),
              Column(
                children: [
                  const SizedBox(height: 90,),
                  CircleAvatar(
                    radius: size.width * 0.18,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      'assets/images/Layer 2.svg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      // height: 200,
                      width: size.width,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          elevation: 2,
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                'health'.tr,
                                style: TextStyle(
                                    fontSize: size.width * 0.045,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.5),
                              ),
                              // SizedBox(height: 20),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: size.width * 0.02, right: size.width * 0.02, bottom: size.width * 0.01, top: size.width * 0.03),
                                    child: Text(
                                      'Pakistan is one of the worst ranked countries in terms of quality & accessibility of health care (Lancet Study)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: size.width * 0.03,
                                        fontWeight: FontWeight.w400,
                                        // letterSpacing: 0.5
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left : size.width * 0.09,right: size.width * 0.09,bottom: size.width * 0.03),
                                    child: Text(
                                      'Simple & treatable diseases become fatal due to misdiagnosis. Be the agent of change by gifting people basic health services and proper diagnosis. ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: size.width * 0.03,
                                        fontWeight: FontWeight.w400,
                                        // letterSpacing: 0.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 20),
                        child: Row(
                          children: [
                            Text("Find A Doctor ",style: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
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
                                hintText: "Doctor Name, Specialization, Disease "),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 20),
                        child: Row(
                          children: [
                            Text("Top Rated Doctors",style: TextStyle(
                                fontSize: size.width * 0.04,
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
                      const SizedBox(height: 50,),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}