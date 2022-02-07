import 'package:dogicoin/Constant/color.dart';
import 'package:dogicoin/Page/home.dart';
import 'package:dogicoin/Page/sign_in.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {

  @override
Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("geri bas");

        return Navigator.canPop(context);
      },
      child: Scaffold(
          appBar: new AppBar(
   
      
    centerTitle: true ,
    title: new Text("Forget Password"),
  
    backgroundColor: NowUIColors.homeclr,
      
      leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => 
   SignIn()));},
      ),
          ),
        
        backgroundColor: NowUIColors.homeclr,
        
        body: SingleChildScrollView(
        
          child: Form(
        
            child: Column(
              
              children: <Widget>[
              SizedBox(height: 70,),
              
                 

                  Container(
                       margin: const EdgeInsets.only(bottom: 138.0),
                   
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
                       
                            
                              new Text(
                                "We will send a mail to ",
                                style: new TextStyle(color: NowUIColors.beyaz),
                              ),
                              new Text(
                                "the email address you registered ",
                                style: new TextStyle(color: NowUIColors.beyaz),
                              ),
                                 new Text(
                                "to regain your password",
                                style: new TextStyle(color: NowUIColors.beyaz),
                              ),
                              
                          SizedBox(height: 18,),
                                 Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    
                    controller: psd,
                 
                    onSaved: (value) {
                   
                    },
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value != null && value.trim().length < 5) {
                     
                      }
                    },
                     style: TextStyle(
                      fontWeight: FontWeight.w300,
                 
                      color: NowUIColors.ydkclr,
                    ),
                     decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      prefixIcon: Icon(Icons.email, color: NowUIColors.ydkclr,),
                     
                     
                      
                    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: NowUIColors.textField),
        borderRadius: BorderRadius.circular(25.7),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: NowUIColors.textField),
        borderRadius: BorderRadius.circular(25.7),
      ),
      filled: true,
      hintStyle: TextStyle(color: NowUIColors.ydkclr),
      hintText: "Email Address",
      fillColor: NowUIColors.textField),
                  ),
                  
                ),  

                  SizedBox(height: 18,),
                new Text(
                                "Email sent to ex*********@gmail.com",
                                style: new TextStyle(color: NowUIColors.trncu),
                              ),
                


                  SizedBox(height: 18,),
   Container(
                
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new GestureDetector(
                          child: new Row(
                            children: <Widget>[
                             
                           
                              SizedBox(width: 73,),
                               
                             
                            ],
                          ),
                         
                        ),
                      ],
                    ),

                
                 

                          ],
                        ),
                      ),
                     
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
                      "Send",
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

             
                
                   )),
                 
            
                   
                   
                    ],
            ),
          
          ),
        ),
      ),
    );
  }
}