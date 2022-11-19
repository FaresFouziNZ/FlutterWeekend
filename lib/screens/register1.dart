// import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/login_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class FirstRegisterPage extends StatefulWidget {
  const FirstRegisterPage({Key key}) : super(key: key);

  @override
  State<FirstRegisterPage> createState() => FirstRegisterStatePage();
}

int selected = null;
bool female;
bool male; //can be used for backend i guess

@override
class FirstRegisterStatePage extends State<FirstRegisterPage> {
  DateTime _selectedDate = DateTime.now();
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String _first_name = '';
    String _last_name = '';
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "عرفنا عليك",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 0;
                            female = true;
                            male = false;
                          });
                        },
                        child: (selected != null && selected == 0)
                            ? Image.asset('assets/female-c.png')
                            : Image.asset('assets/female-bw.png'),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 1;
                            female = false;
                            male = true;
                          });
                        },
                        child: (selected != null && selected == 1)
                            ? Image.asset('assets/male-c.png')
                            : Image.asset('assets/male-bw.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.white),
                                ),
                                hintTextDirection: TextDirection.rtl,
                                hintText: 'الاسم الاخير',
                                hintStyle: GoogleFonts.readexPro(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .5))),
                            onChanged: (value) => _last_name = value,
                          ),
                          width: 170,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.white),
                                ),
                                hintTextDirection: TextDirection.rtl,
                                hintText: 'الاسم الاول',
                                hintStyle: GoogleFonts.readexPro(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .5))),
                            onChanged: (value) => _first_name = value,
                          ),
                          width: 170,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 18, 0),
                        child: Text(
                          'تاريخ الميلاد',
                          textAlign: TextAlign.end,
                          style: GoogleFonts.readexPro(
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.white,
                      )),
                  Center(
                    child: SizedBox(
                      height: 100,
                      child: CupertinoTheme(
                        data: CupertinoThemeData(brightness: Brightness.dark),
                        child: CupertinoDatePicker(
                          backgroundColor: Colors.transparent,
                          initialDateTime: dateTime,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (dateTime) =>
                              setState(() => this.dateTime = dateTime),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.075,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const SecondRegisterPage(),
                          // ));
                        },
                        child: Text('التالي',
                            style: GoogleFonts.readexPro(
                                textStyle: TextStyle(
                                    color: Colors.white, letterSpacing: .5))),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0x1CFFFFFF)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(color: Colors.white)))),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ));
                        },
                        child: Text('سجل دخولك',
                            style: GoogleFonts.readexPro(
                                textStyle: TextStyle(
                                    color: Colors.amber, letterSpacing: .5))),
                      ),
                      Text(
                        'عندك حساب؟',
                        style: GoogleFonts.readexPro(
                            textStyle: TextStyle(
                                color: Colors.white, letterSpacing: .5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/wel5.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
