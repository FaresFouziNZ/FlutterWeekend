import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/driver_user.dart';
import 'package:flutter_application_1/widgets/smallColordContainer.dart';

class DriverDetailsView extends StatelessWidget {
  const DriverDetailsView({Key key, this.driver}) : super(key: key);
  final DriverUser driver;
  @override
  Widget build(BuildContext context) {
    List<String> s = ['الانقليزية', 'الفرنسية'];
    return Scaffold(
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
                                                color: Color(0xFFB3E0F1), text: '26 سنة', width: 50),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                                          child: SmallColoredContainer(
                                              color: Color(0xFFB3E0F1),
                                              text: 'ذكر',
                                              textColor: Colors.black,
                                              width: 40),
                                        )
                                      ],
                                    ),
                                    Text(
                                      'عمر دبيازة',
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        'مهندس برمجيات أعمل منذ عام 2016 في تطوير المواقع، تخرجت من أكاديمية حاسب ألي ولدي العديد من الشهادات من مواقع معتمدة، عملت في الشركات المحلية لأكثر من 4 سنوات قمت فيهم بتطوير الكثير من المشاريع لأحصل علي خبرة كبيرة برمجياً وإدارياً، يمكنك الإطلاع علي تاريخ عملي في تلك الشركات من خلال موقعي الرسمي',
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
                                                  width: 60,
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
                                                  width: 60,
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
                                                  width: 60,
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
                                    'السيارة',
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
                                      children: [
                                        Text(''),
                                        Text(
                                          'عدد الراكبين الاقصى',
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Text(''),
                                        Text('الموديل'),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text('كامري'),
                                        ),
                                        Text('النوع')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(onPressed: () {}, child: Text('أحجز')),
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
    ));
  }
}
