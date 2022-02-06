import 'package:dogicoin/Constant/color.dart';
import 'package:dogicoin/Page/home.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
 
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
            
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 110.0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/imgs/wel.png',
                    fit: BoxFit.cover,
                  
                  ),
                ),
                

                  Container(
                       margin: const EdgeInsets.only(top: 75.0),
                        height: 375,
              width: 500,
                    decoration: BoxDecoration(
                      color: NowUIColors.yesilkoyu,
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
                           color: NowUIColors.beyaz,
                           fontSize: 20,

                           )
                            ),
                             SizedBox(height: 23,),
                            Text("Lorem Ipsum Dolor Sit Amet",
                           style: TextStyle(
color: NowUIColors.beyaz,
                           fontSize: 16,

                           )
                            ),
                                Text("Tüm Bitcoin ve Alt Coinlerin Anlık Fiyatlarını Görebilirsiniz.",
                           style: TextStyle(
                             
color: NowUIColors.beyaz,
                           fontSize: 16,

                           )
                            ),
                            SizedBox(height: 23,),

                 ButtonTheme(
                  minWidth: 335.0,
                  height: 50.0,
                  child: FlatButton(
                    textColor: NowUIColors.black,
                    color: NowUIColors.beyaz,
                    onPressed: () {
                   

                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => 
   Home()));

                      print("loginsin kardeşim raad");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Text(
                      "Started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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