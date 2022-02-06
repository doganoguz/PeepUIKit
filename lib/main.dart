import 'package:dogicoin/Constant/color.dart';
import 'package:dogicoin/Page/home.dart';
import 'package:dogicoin/Page/sign_in.dart';
import 'package:dogicoin/Page/welcome.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DogiCoin',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: NowUIColors.homeclr,
          fontFamily: 'Roboto'),
        initialRoute: '/welcome',
        routes: <String, WidgetBuilder>{
'/welcome': (BuildContext context) => new Welcome(),
          '/home': (BuildContext context) => new Home(),

           '/sign': (BuildContext context) => new SignIn(),
       
          // '/web': (BuildContext context) => new Web()
        });
  }
}
