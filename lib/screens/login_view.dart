import 'dart:io';

import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);
//Test 123
  @override
  Widget build(BuildContext context) {
    String _email = '';
    String _password = '';
    return Scaffold(
        body: Center(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text('! نورت التطبيق',
                    style: GoogleFonts.readexPro(
                        textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontSize: 35))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.156,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Color(0x1CFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.white),
                                ),
                                hintTextDirection: TextDirection.rtl,
                                hintText: 'ايميلك',
                                hintStyle: GoogleFonts.readexPro(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .5))),
                            onChanged: (value) => _email = value,
                          ),
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.white),
                                ),
                                hintTextDirection: TextDirection.rtl,
                                hintText: 'كلمة المرور',
                                hintStyle: GoogleFonts.readexPro(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .5))),
                            onChanged: (value) => _password = value,
                          ),
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                              },

                              child: Text('نسيت كلمة المرور؟',
                                  style: GoogleFonts.readexPro(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: .5))),
                              //style: ButtonStyle(
                              // foregroundColor:
                              //     MaterialStateProperty.all(Colors.white),
                              // ),

                            ),
                            Spacer(),
                            Text('تذكرني',
                                style: GoogleFonts.readexPro(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: .5))),
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.075,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('تسجيل الدخول',
                        style: GoogleFonts.readexPro(
                            textStyle: TextStyle(
                                color: Colors.white, letterSpacing: .5))),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0x1CFFFFFF)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(

                                    borderRadius: BorderRadius.circular(12),

                                    side: BorderSide(color: Colors.white)))),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('سجل حساب',
                          style: GoogleFonts.readexPro(
                              textStyle: TextStyle(
                                  color: Colors.white, letterSpacing: .5))),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      ),
                    ),
                    Text(
                      'جديد عالتطبيق؟',
                      style: GoogleFonts.readexPro(
                          textStyle: TextStyle(
                              color: Colors.white, letterSpacing: .5)),
                    ),
                  ],
                ),
                Row(children: [
                  Expanded(
                      child: Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 25,
                    endIndent: 35,
                  )),
                  Text("أو سجل عبر",
                      style: GoogleFonts.readexPro(
                          textStyle: TextStyle(
                              color: Colors.white, letterSpacing: .5))),
                  Expanded(
                      child: Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 25,
                    endIndent: 35,
                  )),
                ]),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'googleLogo.png',
                          width: 25,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Visibility(
                      visible: Platform.isIOS,
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            'appleLogo.png',
                            width: 25,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            backgroundColor: Color(0xFFD9D9D9),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
          )),
    ));
  }
}
