import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            color: HexColor("#EE3C40"),
            height: 1,
          ),
         
          SizedBox(
            width: 131,
            height: 41,
            child: Image.asset('assets/brand.png',fit: BoxFit.cover,),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 16,
                  width: 16,
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    color: HexColor('#DE3131'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 16,
                  width: 16,
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    color: HexColor('#DE3131'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 16,
                  width: 16,
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    color: HexColor('#DE3131'),
                  ),
                ),
             
              ],
            ),
          ),
          Text('Return Policy  .  FAQ  .  Delivery  .  Terms of Service  .  Privacy & Security',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11,height:1.2 , ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                color: HexColor('#EE3C40'),
                height: 41,
              ),),

               Expanded(
                flex: 4,
                child: Container(
                color: HexColor('#FAD0D6'),
                height: 32,
              ),),

               Expanded(
                flex: 3,
                child: Container(
                color: HexColor('#F2D9D6'),
                height: 12,
              ),)
            ],
          )
        ],
      ),
    );
  }
}
