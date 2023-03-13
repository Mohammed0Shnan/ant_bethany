import 'package:ant_web/screens/index_screen.dart';
import 'package:ant_web/screens/product_details.dart';
import 'package:ant_web/screens/products_screen.dart';
import 'package:ant_web/screens/shop_screen.dart';
import 'package:flutter/material.dart';

import 'screens/offers_screen.dart';
import 'screens/contact_us_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: <String, WidgetBuilder>{
          '/home': (context) => IndexScreen(),
          '/shop': (context) => ShopScreen(),
          '/products': (context) => ProductsScreen(),
          '/product_details': (context) => ProductDetailsScreen(),
          '/offers': (context) => OffersScreen(),
          '/contact': (context) => ContactUsScreen(),
        });
  }
}
