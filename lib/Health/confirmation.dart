import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:impactor_health/Health/payment_method.dart';

import '../colors.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  bool groupValue = false;

  @override
  bool value = false;
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
              Text("Confirmation",style: TextStyle(fontSize: size.width * 0.05,color: white, fontWeight: FontWeight.w600),),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentMethod()),
                  );
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
                Text(" - - - - - ",style: TextStyle(fontSize: 30,color: grey),),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: grey,
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
                  Text("Your Order Confirmation",style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.w700
                  ),),
                ],
              ),
            ),
            Divider(color: black,),
            Padding(
              padding: const EdgeInsets.only(left: 50.0,right: 50,bottom: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TID",style: TextStyle(
                        fontSize: size.width * 0.03,
                        letterSpacing: 1,
                      ),),
                      Text("996912",style: TextStyle(
                        fontSize: size.width * 0.045,
                          fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Order Date",style: TextStyle(
                        letterSpacing: 1,
                        fontSize: size.width * 0.03,
                      ),),
                      Text("18 Dec, 2021",style: TextStyle(
                        fontSize: size.width * 0.045,
                          fontWeight: FontWeight.w600
                      ),),
                    ],
                  )
                ],
              ),
            ),
            Divider(color: black,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: size.width,
                // height: 80,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: pink,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/Layer 1.svg',color: white,height: 16),
                          const SizedBox(width: 5,),
                          Text("Health",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: white),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("IMPACTEE",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                              Text("Ghulam Ali",style: TextStyle(fontSize: size.width * 0.045,fontWeight: FontWeight.w600),),
                              const SizedBox(height: 10,),
                              Text("Specialty",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                              Text("Cardiologist",style: TextStyle(fontSize: size.width * 0.045,letterSpacing: 1,fontWeight: FontWeight.w600),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Appointment No.",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                              Text("xxxxxxxxx",style: TextStyle(fontSize: size.width * 0.045,fontWeight: FontWeight.w600),),
                              const SizedBox(height: 10,),
                              Text("Dr. Name",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                              Text("Dr. Omer Aziz Rana",style: TextStyle(fontSize: size.width * 0.045,letterSpacing: 1,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
                    borderRadius: BorderRadius.circular(9)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: size.width,
                // height: 80,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date & Time",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                      Text("4 Jan | 5:00 AM",style: TextStyle(fontSize: size.width * 0.045,fontWeight: FontWeight.w600),),
                      const SizedBox(height: 10,),
                      Text("Location",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                      Text("Akhtar Saeed Memorial Hospital",style: TextStyle(fontSize: size.width * 0.045,letterSpacing: 1,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
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
                    borderRadius: BorderRadius.circular(9)
                ),
              ),
            ),
            Divider(color: black,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30,bottom: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub Total',style: TextStyle(fontWeight: FontWeight.w500,fontSize: size.width * 0.045),),
                  Text('PKR 3,360',style: TextStyle(fontWeight: FontWeight.w500,fontSize: size.width * 0.045),),
                ],
              ),
            ),
            Divider(color: black,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',style: TextStyle(fontWeight: FontWeight.w500,fontSize: size.width * 0.045),),
                  Text('PKR 3,560',style: TextStyle(fontWeight: FontWeight.w500,fontSize: size.width * 0.045),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

