import 'dart:io';

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

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
                Text(
                  '! نورت التطبيق',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x1CFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'الايميل',
                              hintTextDirection: TextDirection.rtl,
                            ),
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
                              hintText: 'كلمة المرور',
                              hintStyle: TextStyle(
                                color: Color(0xFF888888),
                              ),
                              hintTextDirection: TextDirection.rtl,
                            ),
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
                              child: Text('نسيت كلمة المرور؟'),
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                              ),
                            ),
                            Spacer(),
                            Text('تذكرني'),
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
                SizedBox(height: 60),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.075,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'تسجيل الدخول',
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0x1CFFFFFF)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(200.0),
                                    side: BorderSide(color: Colors.white)))),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('سجل حساب'),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      ),
                    ),
                    Text(
                      'جديد عالتطبيق؟',
                      style: TextStyle(color: Colors.white),
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
                  Text(
                    "أو سجل عبر",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
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
