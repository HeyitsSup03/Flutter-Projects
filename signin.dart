

import 'package:flutter/material.dart';

import '../main.dart';

void main(){
  runApp(MyApp());
}

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF7F30FE), Color.fromRGBO(0, 184, 234, 1)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(MediaQuery.of(context).size.width, 105.0)),
              ),
            ),
            Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 150),
                    Center(
                      child: Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Log Into Your Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                  color: const Color.fromARGB(179, 0, 0, 0),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(border: Border.all(width: 1.0, color: Colors.black38),
                                borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.mail_outline),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                "Password",
                                style: TextStyle(
                                  color: const Color.fromARGB(179, 0, 0, 0),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(border: Border.all(width: 1.0, color: Colors.black38),
                                borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.password_outlined),
                                  ),
                                  obscureText: true,
                                ),
                              ),
                              SizedBox(height: 10),
                               Container(
                                 child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    color: Color.fromARGB(179, 0, 0, 0),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500),
                                 ),
                               ),

                               SizedBox(height: 20),
                               Container(
                                padding: EdgeInsets.all(10),
                              
                                decoration: BoxDecoration(color:  Color.fromRGBO(30, 95, 170, 1),
                                borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.w500)),
                               )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
