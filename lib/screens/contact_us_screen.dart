import 'package:ant_web/widgets/footer.dart';
import 'package:ant_web/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
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
            Header(current_pix: 3, callbackFunction: (w) {}),

            SizedBox(
              height: 50,
            ),

            ///Body

            SizedBox(
              height: 30,
            ),

            ///ContactUs
            Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                child: Text(
                  'If you have any questions or comments, please don\'t hesitate to contact us. We would love to hear from you!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      fontSize: 36,
                      color: HexColor('#777777')),
                )),
            SizedBox(
              height: 40,
            ),
            Container(
              height: size.height * 0.5,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              decoration: BoxDecoration(
                color: HexColor('#D9D9D9'),
                borderRadius: BorderRadius.circular(75),
                border: Border.all(
                  color: HexColor('#EE3C40'),
                  
                ),
                boxShadow: [BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0,4)
                )]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// Email , Phone  , Insta
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            decoration:
                                BoxDecoration(color: HexColor('#FAD0D6'),
                                borderRadius: BorderRadius.circular(20)
                                ),
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.pink,
                              size: 28,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Auntbethanycakes@gmail.Com',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 28,
                                height: 1.3),
                          )
                        ],
                      ),

                      ///Phone
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                              height: 50,
                            width: 50,
                            decoration:
                                BoxDecoration(color: HexColor('#FAD0D6'),
                                
                                 borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.phone_outlined,
                              color: Colors.pink,
                             size: 28,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '(02) 443 3662',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 28,
                                height: 1.3),
                          ),
                        ],
                      ),

                      ///Insta
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                              height: 50,
                            width: 50,
                            decoration:
                                BoxDecoration(color: HexColor('#FAD0D6'), borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.pink,
                            size: 28,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Aunt.Bethany',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 28,
                                height: 1.3),
                          ),
                        ],
                      ),
                    ],
                  ),

                    /// Location , Whats  , Tic Tok
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                      height: 50,
                            width: 50,
                            decoration:
                                BoxDecoration(color: HexColor('#FAD0D6'), borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.pink,
                            size: 28,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Abu Dhabi',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 28,
                                height: 1.3),
                          )
                        ],
                      ),

                      ///Phone
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                          height: 50,
                            width: 50,
                            decoration:
                                BoxDecoration(color: HexColor('#FAD0D6'), borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.pink,
                             size: 28,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            ' +971 58 586 7743',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 28,
                                height: 1.3),
                          ),
                        ],
                      ),

                      ///Insta
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            decoration:
                                BoxDecoration(color: HexColor('#FAD0D6'), borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              FontAwesomeIcons.tiktok,
                              color: Colors.pink,
                           size: 28,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Aunt.Bethany',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 28,
                                height: 1.3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 700,
                width: 800,
                child: Image.asset('assets/WhatsApp_Image_2023-02-19_at_18.44.56-removebg-preview.png',fit: BoxFit.cover,),
              )),
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
