import 'package:ant_web/widgets/footer.dart';
import 'package:ant_web/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // String productId = ModalRoute.of(context)!.settings.arguments as String;
      // print('##############################');
      // print(productId);
    });
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
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/BG-removebg-preview.png'),
                      fit: BoxFit.cover)),
              child: Text('Product Name'),
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
                      crossAxisCount: 4,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 60,
                      mainAxisSpacing: 75),
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
                              child: Image.asset(
                                'assets/slide 1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              height: 84,
                              child: MaterialButton(
                                color: HexColor('#FAD0D6'),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/product_details',
                                      arguments: 1);
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
