
import 'package:dogicoin/Constant/color.dart';
import 'package:dogicoin/Page/forget_pass.dart';
import 'package:dogicoin/Page/home.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}
  bool _rememberMeFlag = true;
  bool newValue = false;
class _SignInState extends State<SignIn> {



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
    title: new Text("Sign in"),
  
    backgroundColor: NowUIColors.homeclr,
      
      leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => 
   Home()));},
      ),
          ),
        
        backgroundColor: NowUIColors.homeclr,
        
        body: SingleChildScrollView(
        
          child: Form(
        
            child: Column(
              
              children: <Widget>[
              SizedBox(height: 128,),
              
                    Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    
                  alignment: Alignment.centerLeft,
              child: Text("Welcome back!",
                            
                            
                           style: TextStyle(

                            fontWeight: FontWeight.bold,
                           color: NowUIColors.ydkclr,
                           fontSize: 20,

                           )
                            ),
                ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                  alignment: Alignment.centerLeft,
              child: Text("Sign in to continue",
                            
                            
                           style: TextStyle(

                           color: NowUIColors.textColor,
                           fontSize: 18,

                           )
                            ),
                ),
SizedBox(height: 25,),
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
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
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
      hintText: "info@doganoguz.com",
      fillColor: NowUIColors.textField),
                  ),
                  
                ),  
                
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
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins-Regular',
                      color: NowUIColors.ydkclr,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      prefixIcon: Icon(Icons.lock, color: NowUIColors.ydkclr,),
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
      hintText: "*******************",
      fillColor: NowUIColors.textField),
                  ),
                  
                ),


   Container(
                
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new GestureDetector(
                          child: new Row(
                            children: <Widget>[
                              new Checkbox(
                                value: _rememberMeFlag,
                                onChanged: (value) => setState(() {
                                      _rememberMeFlag = !_rememberMeFlag;
                                    }),
                              ),
                              new Text(
                                "Remember me",
                                style: new TextStyle(color: NowUIColors.ydkclr),
                              ),
                              SizedBox(width: 73,),
                               
                              new GestureDetector(
  onTap: () {
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => 
   ForgetPass()));

  },
  child: new Text("Forget Password ?",
  
  style: new TextStyle(color: NowUIColors.ydkclr),
  
  ),
),
                            ],
                          ),
                          onTap: () => setState(() {
                                _rememberMeFlag = !_rememberMeFlag;
                              }),
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
                      "Sign in",
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
                   Container(
                    
                
                  alignment: Alignment.center,
              child: Text("Already have not an account?",
                            
                            
                           style: TextStyle(

                           
                           color: NowUIColors.beyaz,
                           fontSize: 16,

                           )
                            ),
                ),
                SizedBox(height: 10,),
                    Container(
          
                  alignment: Alignment.center,
              child: Text("Sign up",
                            
                            
                           style: TextStyle(

                           
                           color: NowUIColors.ydkclr,
                           fontSize: 16,

                           )
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

