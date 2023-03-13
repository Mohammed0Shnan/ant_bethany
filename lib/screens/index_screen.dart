import 'dart:async';

import 'package:ant_web/widgets/footer.dart';
import 'package:ant_web/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  late PageController controller;
  @override
  void initState() {
    controller = PageController();
    super.initState();
    _autoMove();
  }

  Timer? _timer;
  double currentPage = 0;
  int item_count = 3;
  _autoMove() async {
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (currentPage < item_count - 1) {
        currentPage++;
      } else
        currentPage = 0;
      controller.animateToPage(currentPage.round(),
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ///Header
            Header(current_pix: 0, callbackFunction: (w) {}),

            SizedBox(
              height: 40,
            ),

            ///Body

            ///Paner
            Container(
                width: size.width,
                height: 359,
                child: PageIndicatorContainer(
                  indicatorSelectorColor: Colors.red,
                  child: PageView(
                    children: <Widget>[
                      Image.asset('assets/slide 1.png'),
                      Image.asset('assets/slide 2.png'),
                      Image.asset('assets/slide 3.png')
                    ],
                    controller: controller,
                  ),
                  align: IndicatorAlign.bottom,
                  length: item_count,
                  indicatorSpace: 10.0,
                )),
            SizedBox(
              height: 30,
            ),

            /// Who
            Container(
              height: 600,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(36.0),
                      child: Text(
                        'The story of the Abu Dhabi’s famous aunt begins in 2020, where Aunt Bethany’s Bakery opens its doors for cake lovers. Her delicious creations are enjoyed by people from all walks of life. Aunt Bethany is a testament to the power of hard work and dedication.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 36,
                            height: 1.9,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Image.asset(
                          'assets/WhatsApp_Image_2023-02-19_at_18.44.52-removebg-preview.png'))
                ],
              ),
            ),

            ///
            Footer()
          ],
        ),
      ),
    );
  }
}
