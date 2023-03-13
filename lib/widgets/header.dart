import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Header extends StatefulWidget {
  late Function(int) callbackFunction;
  late int current_pix;
  Header({required this.current_pix, required this.callbackFunction, Key? key})
      : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int __pixProgress() {
    return 0;
    // if (cuuent_tab)
    //   return 0;
    // else if (widget.current_pix >= 600 && widget.current_pix < 1200)
    //   return 1;
    // else
    //   return 2;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 36,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: HexColor("#EE3C40"),
                      )),
                      Expanded(
                          child: Container(
                        color: HexColor("#FAD0D6"),
                      )),
                      Expanded(
                          child: Container(
                        color: HexColor("#F5E5D2"),
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: HexColor("#EE3C40"),
                      )),
                      Expanded(
                          child: Container(
                        color: HexColor("#FAD0D6"),
                      )),
                      Expanded(
                          child: Container(
                        color: HexColor("#F5E5D2"),
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: HexColor("#EE3C40"),
                      )),
                      Expanded(
                          child: Container(
                        color: HexColor("#FAD0D6"),
                      )),
                      Expanded(
                          child: Container(
                        color: HexColor("#F5E5D2"),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 210,
              height: 57,
              child: Image.asset(
                'assets/brand.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: size.width * 0.6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        if(widget.current_pix != 0)
                        Navigator.pushNamedAndRemoveUntil(context, '/home',(rout)=>false);
                      },
                      child: HeaderNavbar(
                          selected: widget.current_pix == 0 ? true : false,
                          text: 'Home')),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                        if(widget.current_pix != 1)
                      Navigator.pushNamedAndRemoveUntil(context, '/shop',(rout)=>false);
                    },
                    child: HeaderNavbar(
                        selected: widget.current_pix == 1 ? true : false,
                        text: 'Shop'),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                     GestureDetector(
                    onTap: () {
                        if(widget.current_pix != 2)
                      Navigator.pushNamedAndRemoveUntil(context, '/offers',(rout)=>false);
                    },
                    child: HeaderNavbar(
                        selected: widget.current_pix == 2 ? true : false,
                        text: 'Offers'),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                      GestureDetector(
                    onTap: () {
                        if(widget.current_pix != 3)
                      Navigator.pushNamedAndRemoveUntil(context, '/contact',(rout)=>false);
                    },
                    child: HeaderNavbar(
                        selected: widget.current_pix ==3 ? true : false,
                        text: 'Contact Us'),
                  ),
         
                ],
              ),
            ),
            Container(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 80,
                    width: 70,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/sign_in_2-removebg-preview.png',
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 2,
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 84,
                    width: 40,
                    child: Image.asset(
                      'assets/Basket_Icon-removebg-preview.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 56,
                    width: 40,
                    child: Image.asset(
                      'assets/language-removebg-preview.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}

class HeaderNavbar extends StatefulWidget {
  final String text;
  final bool selected;
  const HeaderNavbar({required this.selected, required this.text, Key? key})
      : super(key: key);

  @override
  State<HeaderNavbar> createState() => _HeaderNavbarState();
}

class _HeaderNavbarState extends State<HeaderNavbar> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1.3,
          color: widget.selected ? Colors.red : Colors.black),
    );
  }
}
