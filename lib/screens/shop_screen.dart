import 'package:ant_web/widgets/footer.dart';
import 'package:ant_web/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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
            Header(current_pix: 1, callbackFunction: (w) {}),

            SizedBox(
              height: 50,
            ),

            ///Body
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 290,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/BG-removebg-preview.png'),
                      fit: BoxFit.cover)),
              child: Text('Category'),
            ),

            ///Paner

            SizedBox(
              height: 30,
            ),

            ///Category
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: GridView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 100,
                      mainAxisSpacing: 75),
                  itemBuilder: (conext, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/WhatsApp Image 2023-03-13 at 3.15.33 AM.jpeg'))),
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: HexColor('#EE3C40'), width: 4)),
                        child: Stack(
                          children: [
                            SizedBox.expand(
                              child: Image.asset(
                                'assets/slide 1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              right: 30,
                              left: 30,
                              height: 84,
                              child: MaterialButton(
                                color: HexColor('#FAD0D6'),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/products',arguments:'1');
                                },
                                child: Center(
                                  child: Text(
                                    'Cakes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 48,
                                      height: 1.16,
                                    ),
                                  ),
                                ),
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
