import 'package:ant_web/widgets/footer.dart';
import 'package:ant_web/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///Header
            Header(current_pix: 2, callbackFunction: (w) {}),

            SizedBox(
              height: 50,
            ),

            ///Body

            SizedBox(
              height: 30,
            ),

            ///Offers
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: GridView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 75,
                      mainAxisSpacing: 120),
                  itemBuilder: (conext, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/WhatsApp Image 2023-03-13 at 3.15.33 AM.jpeg'))),
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: HexColor('#EE3C40'), width: 4)),
                        child: Stack(
                          children: [
                            SizedBox.expand(
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: double.infinity,
                                    color: HexColor('#FAD0D6'),
                                    child: Center(
                                      child: Text(
                                        'special Offer',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 32,
                                            height: 1.1,
                                            fontStyle: FontStyle.italic,
                                            color: HexColor('#EE3C40')),
                                      ),
                                    ),
                                  ),
                                  MaterialButton(
                                    padding: EdgeInsets.all(8),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Add To Cart',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w200,
                                              height: 2,
                                              letterSpacing: 0.09,
                                              color: Colors.black),
                                        ),
                                        Container(
                                          height: 25,
                                          width: 35,
                                          margin: EdgeInsets.only(top: 3),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 50,
            ),

            ///
            Footer()
          ],
        ),
      ),
    );
  }
}
