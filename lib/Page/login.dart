import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'dart:async';
import 'package:dogicoin/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async';

import 'package:flutter/services.dart';



TextEditingController usr = TextEditingController();
TextEditingController psd = TextEditingController();

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? username;
  String? password;

  bool _goster = true;
  var code;

  void _toggle() {
    setState(() {
      _goster = !_goster;
    });
  }

 

  @override
  void initState() {
    super.initState();
  }

  String emailValidator() {
    return 'test';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("geri bas");

        return Navigator.canPop(context);
      },
      child: Scaffold(
        backgroundColor: NowUIColors.homeclr,
        body: SingleChildScrollView(
        
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 110.0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/imgs/lgn.png',
                    fit: BoxFit.cover,
                    height: 247,
                    width: 240,
                  ),
                ),
                

                  Container(
                       margin: const EdgeInsets.only(top: 75.0),
                        height: 375,
              width: 500,
                    decoration: BoxDecoration(
                      color: NowUIColors.card,
                      borderRadius: BorderRadius.circular(30),
                      
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                        
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                   
                          children: <Widget>[
                           
                            Text("Welcome to DogiCoin",
                            
                            
                           style: TextStyle(

                            fontWeight: FontWeight.bold,
                           color: NowUIColors.ydkclr,
                           fontSize: 20,

                           )
                            ),
                             SizedBox(height: 23,),
                            Text("Deliver your package around the world",
                           style: TextStyle(
color: NowUIColors.textColor,
                           fontSize: 16,

                           )
                            ),
                                Text("without hesitation",
                           style: TextStyle(
color: NowUIColors.textColor,
                           fontSize: 16,

                           )
                            ),
                            SizedBox(height: 23,),
                                  ButtonTheme(
                  minWidth: 335.0,
                  height: 50.0,
                  child: FlatButton(
                    textColor: NowUIColors.beyaz,
                    color: NowUIColors.ydkclr,
                    onPressed: () {
                   

                      print("loginsin kardeşim raad");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        
                        fontSize: 15,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
SizedBox(height: 20,),
                 ButtonTheme(
                  minWidth: 335.0,
                  height: 50.0,
                  child: FlatButton(
                    textColor: NowUIColors.ydkclr,
                    color: NowUIColors.beyaz,
                    onPressed: () {
                   

                      print("loginsin kardeşim raad");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        
                        fontSize: 15,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),

                          ],
                        ),
                      ),
                    ),
                  ),

             
                
              ],
            ),
          ),
        ),
      ),
    );
  }


}