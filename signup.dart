import 'package:flutter/material.dart';

import '../main.dart';

void main(){
  runApp(MyApp());
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 105.0),
                  ),
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 80),
                      Center(
                        child: Text(
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Create A New Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                    color: const Color.fromARGB(179, 0, 0, 0),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.0, color: Colors.black38),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
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
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.0, color: Colors.black38),
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
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.0, color: Colors.black38),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.password_outlined),
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                                 SizedBox(height: 20.0),
                                Text(
                                  "Confirm Your Password",
                                  style: TextStyle(
                                    color: const Color.fromARGB(179, 0, 0, 0),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.0, color: Colors.black38),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.password_outlined),
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                                

                                     ],
                                     
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: 5),   
                                Container(
                                  height: MediaQuery.of(context).size.width /8 ,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(30, 95, 170, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("Sign Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500)),
                                ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}