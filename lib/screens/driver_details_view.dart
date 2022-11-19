import 'package:flutter/material.dart';
import 'package:flutter_application_1/cloud_functions/database.dart';
import 'package:flutter_application_1/models/booking.dart';
import 'package:flutter_application_1/models/driver_user.dart';
import 'package:flutter_application_1/widgets/bottomNavigation.dart';
import 'package:provider/provider.dart';

import '../models/local_user.dart';
import '../widgets/smallColordContainer.dart';

class DriverDetailsView extends StatelessWidget {
  const DriverDetailsView({Key key, this.driver, this.selectedDate}) : super(key: key);
  final DriverUser driver;
  final DateTime selectedDate;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LocalUser>(context);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Color(0xFF00A6A6),
            elevation: 0,
          )
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xFF00A6A6),
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.23),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.77,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 180,
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                                              child: Directionality(
                                                textDirection: TextDirection.rtl,
                                                child: SmallColoredContainer(
                                                  color: Color(0xFFB3E0F1),
                                                  text: driver.age.toString() + ' سنة',
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                                              child: SmallColoredContainer(
                                                color: driver.gender ? Color(0xFFB3E0F1) : Color(0xFFFFB8C7),
                                                text: driver.gender ? 'ذكر' : 'انثى',
                                                textColor: Colors.black,
                                              ),
                                            )
                                          ],
                                        ),
                                        Text(
                                          driver.name,
                                          style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Text(
                                            driver.description,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'اللغات',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        width: MediaQuery.of(context).size.width * 0.9,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: driver.languages
                                              .map((e) => Padding(
                                                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                                    child: SmallColoredContainer(
                                                      text: e,
                                                      color: Color(0x88FFBE00),
                                                    ),
                                                  ))
                                              .toList(),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الاختصاص',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        width: MediaQuery.of(context).size.width * 0.9,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: driver.expertise
                                              .map((e) => Padding(
                                                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                                    child: SmallColoredContainer(
                                                      text: e,
                                                      color: Color(0xFFFFB8C7),
                                                    ),
                                                  ))
                                              .toList(),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الاهتمامات',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        width: MediaQuery.of(context).size.width * 0.9,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: driver.hobbies
                                              .map((e) => Padding(
                                                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                                    child: SmallColoredContainer(
                                                      text: e,
                                                      color: Color(0x8834A853),
                                                    ),
                                                  ))
                                              .toList(),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        showDialog(
                                            context: context,
                                            builder: (context2) => Directionality(
                                                  textDirection: TextDirection.rtl,
                                                  child: AlertDialog(
                                                    title: Text('تأكيد الحجز'),
                                                    content: Text(
                                                        'هل انت متأكد من حجز هذا السائق؟\nتاريخ الحجز: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
                                                    actions: [
                                                      TextButton(
                                                          style: ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all(Colors.red)),
                                                          onPressed: () {
                                                            Navigator.pop(context);
                                                          },
                                                          child: Text('لا', style: TextStyle(color: Colors.white))),
                                                      TextButton(
                                                          onPressed: () async {
                                                            Navigator.pop(context);
                                                            Booking booking = Booking(
                                                                date: selectedDate.day.toString() +
                                                                    '/' +
                                                                    selectedDate.month.toString() +
                                                                    '/' +
                                                                    selectedDate.year.toString(),
                                                                driverUid: driver.uid,
                                                                uid: 'asd');
                                                            await DatabaseService().bookDriver(booking);
                                                            showDialog(
                                                                context: context,
                                                                builder: (context) => AlertDialog(
                                                                      title: Text('تم الحجز بنجاح'),
                                                                      content: Text('تم حجز السائق بنجاح'),
                                                                      actions: [
                                                                        TextButton(
                                                                            onPressed: () {
                                                                              Navigator.pop(context);
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child: Text('حسنا'))
                                                                      ],
                                                                    ));
                                                          },
                                                          child: Text(
                                                            'نعم',
                                                            style: TextStyle(fontWeight: FontWeight.bold),
                                                          )),
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: SizedBox(
                                        width: 75,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.arrow_back_ios_new,
                                              size: 12,
                                            ),
                                            Text(
                                              'أحجز الان',
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Color(0xFF00A6A6),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Center(
                          child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xFFB3E0F1),
                            radius: 110,
                            backgroundImage: NetworkImage(driver.imageUrl),
                            // child: Image.asset(''),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              // ElevatedButton(onPressed: () {}, child: Text(''))
            ],
          ),
        ),
      ),
      bottomNavigationBar: SalomonNavBar(),
    );
  }
}
