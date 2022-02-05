import 'package:dogicoin/Constant/color.dart';
import 'package:dogicoin/Page/login.dart';
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
        initialRoute: '/login',
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => new Login(),
       
          // '/web': (BuildContext context) => new Web()
        });
  }
}
