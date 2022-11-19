import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/local_user.dart';
import 'package:flutter_application_1/screens/drivers_list_view.dart';
import 'package:flutter_application_1/screens/register1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LocalUser>(context);
    if (user?.uid != null) {
      return DriversListView();
    }
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Text(
                    "مسافر للرياض وماتعرف احد؟",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(textStyle: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/wel2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Text(
                    "ودك في شخص يعلمك الأماكن السرية؟",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(textStyle: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/wel3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Text(
                    "ايش فيه احسن من ولد الديرة يخاويك؟",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(textStyle: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/wel4.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(style: BorderStyle.solid, color: Colors.black),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 60,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  activeDotColor: Colors.white,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FirstRegisterPage(),
                  ));
                },
                child: Text(
                  'تخطي',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
