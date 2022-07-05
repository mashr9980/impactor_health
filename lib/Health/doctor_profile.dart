import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:expandable/expandable.dart';

import '../colors.dart';
import 'book_appoinment.dart';
import 'confirmation.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }
  bool impact = true;

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _tabIndex = _tabController.index;
      });
    }
  }

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
              Text("Doctor's Profile",style: TextStyle(fontSize: size.width * 0.05,color: white, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap:() {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => const Confirmation())
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            height: size.height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: mainColor,
                border: Border.all(color: mainColor)),
            child: Center(
              child: Text(
                'Finish & Pay',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: size.width * 0.045,
                  // color: txt_color,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 12,bottom: 12),
            child: InkWell(
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
                                            children: const [
                                              Icon(Icons.chevron_right),
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
              child: Text(
                "Book Appointment",
                style: TextStyle(
                  letterSpacing: 0.2,
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                            const Icon(Icons.done,color: Colors.green,),
                            const SizedBox(width: 10,),
                            Text("PMC Verified",style: TextStyle(color: black,fontWeight: FontWeight.w700,fontSize: size.width * 0.035),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: size.width * 0.07,
                          backgroundColor: Colors.blue,
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
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
                      ],
                    ),
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        Text("Book Appointment",style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        Text("Chughtai Mediacal Center (DHA)",style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        Text("Fee: ",style: TextStyle(
                            fontSize: size.width * 0.035,
                            // fontWeight: FontWeight.w700
                        ),),
                        Text("PKR 2,000",style: TextStyle(
                            fontSize: size.width * 0.04,
                            // fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.watch_later,color: Colors.green,),
                        Text("Available Tomorrow",style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: Colors.green
                          // fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        Text("Hameed Latif Hospital",style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        Text("Fee: ",style: TextStyle(
                          fontSize: size.width * 0.035,
                          // fontWeight: FontWeight.w700
                        ),),
                        Text("PKR 2,000",style: TextStyle(
                          fontSize: size.width * 0.04,
                          // fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.watch_later,color: Colors.green,),
                        Text("Available Tomorrow",style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: Colors.green
                          // fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      controller: _tabController,
                      indicatorColor: pink,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: Colors.grey,
                      labelColor: pink,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.04
                      ),
                      tabs: const [
                        Tab(
                          text: 'Services',
                        ),
                        Tab(
                          text: 'Education',
                        ),
                        Tab(
                          text: 'Specialization',
                        )
                      ],
                    ),
                    [
                      Column(
                        children: [
                          const SizedBox(height: 20,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 3,),
                              Text("Coronary angiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 5,),
                              Text("Echocardiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 3,),
                              Text("Coronary angiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 5,),
                              Text("Echocardiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 20,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 3,),
                              Text("Coronary angiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 5,),
                              Text("Echocardiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 3,),
                              Text("Coronary angiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 5,),
                              Text("Echocardiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 20,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 3,),
                              Text("Coronary angiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 5,),
                              Text("Echocardiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 3,),
                              Text("Coronary angiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Icon(Icons.album_outlined,size: 15,),
                              SizedBox(width: 5,),
                              Text("Echocardiography",style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ][_tabIndex]
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70,),
          ],
        ),
      ),
    );
  }
}