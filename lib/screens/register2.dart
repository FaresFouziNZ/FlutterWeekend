import 'package:flutter/material.dart';
import 'package:flutter_application_1/cloud_functions/auth_service.dart';
import 'package:flutter_application_1/screens/drivers_list_view.dart';
import 'package:flutter_application_1/screens/login_view.dart';
//import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRegisterPage extends StatefulWidget {
  const SecondRegisterPage({Key key, this.name}) : super(key: key);
  final String name;
  @override
  State<SecondRegisterPage> createState() => _SecondRegisterPageState();
}

class _SecondRegisterPageState extends State<SecondRegisterPage> {
  final _auth = Auth();

  bool _isHiddenPassword = true;
  bool isEyeCrossed = false;
  Icon eyeIcon = const Icon(Icons.visibility_off);
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox.expand(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/wel5.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Text('كمل بياناتك',
                        style: GoogleFonts.readexPro(
                            textStyle: TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 35))),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Text(widget.name,
                            style: GoogleFonts.readexPro(
                                textStyle: TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 20))),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                        Image.asset(
                          'assets/male-a.png',
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Color(0x1CFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.39,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.email,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(width: 1, color: Colors.white),
                                    ),
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: 'ايميلك',
                                    hintStyle: GoogleFonts.readexPro(
                                        textStyle: TextStyle(color: Colors.white, letterSpacing: .5))),
                                onChanged: (value) {
                                  email = value;
                                  print(value);
                                },
                              ),
                              width: MediaQuery.of(context).size.width * 0.8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                obscureText: _isHiddenPassword,
                                decoration: InputDecoration(
                                    prefixIcon: InkWell(
                                      onTap: _viewPassword,
                                      child: eyeIcon,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(width: 1, color: Colors.white),
                                    ),
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: 'كلمة المرور',
                                    hintStyle: GoogleFonts.readexPro(
                                        textStyle: TextStyle(color: Colors.white, letterSpacing: .5))),
                                onChanged: (value) => password = value,
                              ),
                              width: MediaQuery.of(context).size.width * 0.8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                obscureText: _isHiddenPassword,
                                decoration: InputDecoration(
                                    prefixIcon: InkWell(
                                      onTap: _viewPassword,
                                      child: eyeIcon,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(width: 1, color: Colors.white),
                                    ),
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: 'التأكد من كلمة المرور',
                                    hintStyle: GoogleFonts.readexPro(
                                        textStyle: TextStyle(color: Colors.white, letterSpacing: .5))),
                                onChanged: (value) => password = value,
                              ),
                              width: MediaQuery.of(context).size.width * 0.8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Spacer(),
                                Text('الموافقة على الشروط والاحكام',
                                    style: GoogleFonts.readexPro(
                                        textStyle: TextStyle(color: Colors.white, letterSpacing: .5))),
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
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.075,
                      child: ElevatedButton(
                        onPressed: () async {
                          RegExp regExp = RegExp('.*@.*');
                          print('asd');
                          if (regExp.hasMatch(email) && (password.length > 6)) {
                            var result = await _auth.registerWithEmailAndPassword(email, password);
                            print('registering');
                            print('success');
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: const Text('شكرا لك'),
                                      content: const Text('تم تسجيلك بنجاح'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pushReplacement(context,
                                                  MaterialPageRoute(builder: (context) => const DriversListView()));
                                            },
                                            child: const Text('Ok'))
                                      ],
                                    ));
                          } else {
                            print('regrex');
                            print(email);
                          }
                        },
                        child: Text('التسجيل',
                            style: GoogleFonts.readexPro(textStyle: TextStyle(color: Colors.white, letterSpacing: .5))),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0x1CFFFFFF)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.white)))),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
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
                          child: Text('سجل دخولك ',
                              style:
                                  GoogleFonts.readexPro(textStyle: TextStyle(color: Colors.amber, letterSpacing: .5))),
                        ),
                        Text(
                          'عندك حساب؟',
                          style: GoogleFonts.readexPro(textStyle: TextStyle(color: Colors.white, letterSpacing: .5)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width,
            )),
      ),
    ));
  }

  void _viewPassword() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
      isEyeCrossed = !isEyeCrossed;
      eyeIcon = isEyeCrossed ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off);
    });
  }
}
