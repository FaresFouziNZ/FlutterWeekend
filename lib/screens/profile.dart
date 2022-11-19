import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../become_wld/become_wld_dirh.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "الحساب",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                )),
            Row(
              // mainAxisAlignment: ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "حجوزاتي",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.note_add_outlined),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(0.0),
                child: Divider(
                  color: Colors.black,
                )),
            Row(
              // mainAxisAlignment: ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "الرصيد",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.credit_score_outlined),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              // mainAxisAlignment: ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "المعلومات الشخصية",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              // mainAxisAlignment: ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.security_outlined),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ولد الديرة",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              // mainAxisAlignment: ,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EnterInformationView()));
                    },
                    icon: Icon(Icons.arrow_back)),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "قدم طلبك لتصبح ولد الديرة",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Icon(Icons.forum)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
