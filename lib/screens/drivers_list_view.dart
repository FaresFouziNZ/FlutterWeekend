import 'package:flutter/material.dart';
import 'package:flutter_application_1/cloud_functions/database.dart';
import 'package:flutter_application_1/widgets/bottomNavigation.dart';
import 'package:flutter_application_1/widgets/driver_card.dart';

class DriversListView extends StatelessWidget {
  const DriversListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var b = DriverUser(
    //   name: 'احمد',
    //   age: 20,
    //   city: 'الرياض',
    //   languages: ['الانقليزية', 'العربية'],
    //   rating: 4.5,
    //   description: 'الحمدلله انا كويس',
    //   expertise: ['عائلي', 'شبابي', 'محمدي', 'الووو', 'شسي'],
    //   gender: true,
    //   uid: 'aaasdasdad',
    //   price: 50,
    //   hobbies: ['السباحة', 'العاب لوحية'],
    // );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF00A6A6),
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 24, 8),
                              child: CircleAvatar(),
                            ),
                            Text(
                              'اهلا احمد !',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'جاهز تخوض تجربة جديدة في السفر؟',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(18, 18, 24, 8),
                                    child: Container(
                                        width: 80,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: Text('التاريخ'),
                                                ),
                                                Spacer(),
                                                Icon(Icons.keyboard_arrow_down_rounded)
                                              ],
                                            ),
                                            Text('Nov 23')
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(16, 18, 8, 8),
                                    child: Container(
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: Text('المدينة'),
                                                ),
                                                Spacer(),
                                                Icon(Icons.keyboard_arrow_down_rounded)
                                              ],
                                            ),
                                            Text('جدة')
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 18, 8, 8),
                                    child: Container(
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: Text('اللغة'),
                                                ),
                                                Spacer(),
                                                Icon(Icons.keyboard_arrow_down_rounded)
                                              ],
                                            ),
                                            Text('الفرنسية')
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 18, 24, 8),
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.filter_list),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FutureBuilder(
                            future: DatabaseService().getAllDrivers(),
                            builder: ((context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.done) {
                                return Column(
                                  children: snapshot.data
                                      .map<Widget>((e) => Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: DriverCard(
                                              driverUser: e,
                                            ),
                                          ))
                                      .toList(),
                                );
                              } else {
                                return CircularProgressIndicator();
                              }
                            }))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SalomonNavBar(),
    );
  }
}
