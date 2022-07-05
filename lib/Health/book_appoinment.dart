import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

import '../colors.dart';
import 'component/utilis.dart';
import 'doctor_profile.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  final ValueNotifier<List<Event>> _selectedEvents = ValueNotifier([]);

  // Using a `LinkedHashSet` is recommended due to equality comparison override
  final Set<DateTime> _selectedDays = LinkedHashSet<DateTime>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForDays(Set<DateTime> days) {
    // Implementation example
    // Note that days are in selection order (same applies to events)
    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;
      if (_selectedDays.contains(selectedDay)) {
        _selectedDays.remove(selectedDay);
      } else {
        _selectedDays.add(selectedDay);
      }
    });

    _selectedEvents.value = _getEventsForDays(_selectedDays);
  }

  bool showCalender = false;

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
              Text("Doctor's Profilee",style: TextStyle(fontSize: size.width * 0.05,color: white, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
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
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      showCalender = ! showCalender;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("HOSPITAL",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                              Text("Bahria International Hospital",style: TextStyle(fontSize: size.width * 0.045,fontWeight: FontWeight.w700),),
                              const SizedBox(height: 10,),
                              Text("City",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                              Text("Lahore",style: TextStyle(fontSize: size.width * 0.045,fontWeight: FontWeight.w600),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Appointments",style: TextStyle(fontSize: size.width * 0.03,letterSpacing: 1),),
                              Text("0300 8181981",style: TextStyle(fontSize: size.width * 0.045,fontWeight: FontWeight.w700),),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ),
                showCalender ?
                SizedBox(
                  height: 800,
                  child: Column(
                    children: [
                      TableCalendar<Event>(
                        firstDay: kFirstDay,
                        lastDay: kLastDay,
                        focusedDay: _focusedDay,
                        calendarFormat: _calendarFormat,
                        eventLoader: _getEventsForDay,
                        startingDayOfWeek: StartingDayOfWeek.monday,
                        selectedDayPredicate: (day) {
                          // Use values from Set to mark multiple days as selected
                          return _selectedDays.contains(day);
                        },
                        onDaySelected: _onDaySelected,
                        onFormatChanged: (format) {
                          if (_calendarFormat != format) {
                            setState(() {
                              _calendarFormat = format;
                            });
                          }
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },
                      ),
                      ElevatedButton(
                        child: const Text('Clear selection'),
                        onPressed: () {
                          setState(() {
                            _selectedDays.clear();
                            _selectedEvents.value = [];
                          });
                        },
                      ),
                      const SizedBox(height: 8.0),
                      Expanded(
                        child: ValueListenableBuilder<List<Event>>(
                          valueListenable: _selectedEvents,
                          builder: (context, value, _) {
                            return ListView.builder(
                              itemCount: value.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: ListTile(
                                    onTap: () => print('${value[index]}'),
                                    title: Text('${value[index]}'),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ) :
                const Center(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}