import 'package:ant_web/widgets/footer.dart';
import 'package:ant_web/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
              height: size.height * 1.2,
              width: size.width,
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/WhatsApp Image 2023-03-13 at 3.15.33 AM.jpeg'),
                                    fit: BoxFit.cover)),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: HexColor('#EE3C40'), width: 4)),
                              child: SizedBox(
                                child: Image.asset(
                                  'assets/slide 1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          margin: EdgeInsets.all(32),
                          color: HexColor('#FAD0D6'),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Optionally',
                        style: TextStyle(
                            fontSize: 40.0,
                            height: 2.1,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.19),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle),
                            child: Container(
                              height: 30,
                              width: 30,
                              color: Colors.transparent,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Weight ',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                height: 1.5,
                                fontSize: 48,
                                letterSpacing: 0.09,
                                color: Colors.black),
                          ),
                          Spacer()
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w200,
                                        height: 2,
                                        letterSpacing: 0.195),
                                  ),
                                  Text('Kg',
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w200,
                                          height: 2,
                                          letterSpacing: 0.195))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                    )),
                                IconButton(
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_drop_up,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle),
                            child: Container(
                              height: 30,
                              width: 30,
                              color: Colors.transparent,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Flavor ',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                height: 1.5,
                                fontSize: 48,
                                letterSpacing: 0.09,
                                color: Colors.black),
                          ),
                          Spacer()
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Text('vanillia',
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w200,
                                      height: 2,
                                      letterSpacing: 0.05)),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                    )),
                                IconButton(
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_drop_up,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Qty ',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                height: 1.5,
                                fontSize: 48,
                                letterSpacing: 0.09,
                                color: Colors.black),
                          ),
                          Spacer()
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Text('1',
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w200,
                                      height: 2,
                                      letterSpacing: 0.05)),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                    )),
                                IconButton(
                                    color: Colors.black,
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_drop_up,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Special Cake Message :',
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 32,
                            height: 1.5,
                            letterSpacing: 0.09,
                            color: Colors.black),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          ),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextFormField(
                          style: TextStyle(
                            height:  2
                          ),
                          decoration: InputDecoration(
                            
                            border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        minWidth: 130,
                        height: 70,
                        color: HexColor('#FAD0D6'),
                        onPressed: () {},
                      child: Text('Add',style: TextStyle(
                        color: Colors.black,
                        height: 2.1,
                        fontSize: 48,
                        fontWeight: FontWeight.w200
                      ),),
                      )
                    ],
                  ))
                ],
              ),
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
