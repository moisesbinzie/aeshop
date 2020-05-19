import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widgets/cart.dart';
import 'categories/apparel.dart';
import 'categories/shoes.dart';
import 'categories/watches.dart';
import 'homePage.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      theme: ThemeData(
        // iconTheme: Theme.of(context).primaryColor,

        primaryColor: Colors.white,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),

        primarySwatch: Colors.red,
        //  accentColor: Colors.white,
        fontFamily: 'Lato',
      ),
      home: HomePage(),
      title: 'aeShop ',
      routes: {
        Shoes.routeName: (ctx) => Shoes(),
        Watches.routeName: (ctx) => Watches(),
        Apparel.routeName: (ctx) => Apparel(),
        Cart.routeName: (ctx) => Cart(),
// NetworkingPage.routeName: (ctx) => NetworkingPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
