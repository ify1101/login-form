import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup1/login.dart';
import 'package:login_signup1/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("BackSlash Flutter provides extraordinary flutter tutorials. Do Subscribe!",
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height /3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img1.png')
                    )
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    //defining the shape
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Login", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                    ),
                  ),
                  //creating the signup button
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                    color: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                  )
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}


