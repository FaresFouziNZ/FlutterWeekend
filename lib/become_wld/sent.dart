import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/driver_details_view.dart';
import 'package:flutter_application_1/screens/drivers_list_view.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestSent extends StatefulWidget {
  const RequestSent({Key key}) : super(key: key);

  @override
  State<RequestSent> createState() => _RequestSentState();
}

class _RequestSentState extends State<RequestSent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "وصلنا طلبك بنجاح",
                textAlign: TextAlign.center,
                style: GoogleFonts.readexPro(
                    textStyle: TextStyle(color: Colors.black, fontSize: 30)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Image.asset('assets/check.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "راح يتم التواصل معك عن طريق الفريق المختص خلال يومين",
                textAlign: TextAlign.center,
                style: GoogleFonts.readexPro(
                    textStyle: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 8),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.075,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DriversListView(),
                    ));
                  },
                  child: Text('العودة للصفحة الرئيسية',
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
