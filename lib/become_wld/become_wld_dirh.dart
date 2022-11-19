import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/become_wld/sent.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../screens/profile.dart';

class EnterInformationView extends StatefulWidget {
  const EnterInformationView({Key key}) : super(key: key);

  @override
  State<EnterInformationView> createState() => _EnterInformationViewState();
}

class _EnterInformationViewState extends State<EnterInformationView> {
  TextEditingController textarea = TextEditingController();
  TextEditingController textarea2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " نبذة عن نفسك",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 22)),
                  ),
                ),
              ],
            ),
            TextField(
              controller: textarea,
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "كحد اقصى 250 كلمة",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "اختصاصاتك؟",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 22)),
                  ),
                ),
              ],
            ),
            TextField(
              controller: textarea2,
              keyboardType: TextInputType.multiline,
              maxLines: 1,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "حط فاصلة ، بين كل اختصاص والآخر",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "اهتماماتك؟",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 22)),
                  ),
                ),
              ],
            ),
            TextField(
              controller: textarea2,
              keyboardType: TextInputType.multiline,
              maxLines: 1,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "حط فاصلة ، بين كل اهتمام والآخر",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.075,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RequestSent(),
                    ));
                  },
                  child: Text('قدم طلبك',
                      style: GoogleFonts.readexPro(
                          textStyle: TextStyle(
                              color: Colors.white, letterSpacing: .5))),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 36, 117, 223)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(color: Colors.black)))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
