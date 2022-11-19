import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register1.dart';
import 'package:google_fonts/google_fonts.dart';
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
                    height: 200,
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
                    height: 200,
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
                    height: 300,
                  ),
                  Text(
                    "ايش فيه احسن من ولد الديرة يخاويك؟",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.readexPro(textStyle: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.075,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FirstRegisterPage(),
                          ));
                        },
                        child: Text('يلا نبدأ',
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
