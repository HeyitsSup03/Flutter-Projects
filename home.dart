import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class home extends StatefulWidget {
  const home();

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 101, 244),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ChitChat",
                    style: TextStyle(
                      color: Color.fromARGB(254, 255, 255, 255),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 75, 129, 196),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.search, color: Color.fromARGB(255, 247, 238, 249)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.14,
              decoration: BoxDecoration(
                color: Color.fromARGB(254, 255, 255, 255),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                   children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/andrewtatte.jpg",
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15),
                      // Add some spacing between the image and text
                      Column( 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Andrew Tate",
                            style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Breathe Air!",
                            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w400),
                          ),
                          
                        ],                       
                      ),
                      Spacer(), // Add a spacer to push the time to the right
                      Text(
                        "10:30 AM", // Replace with the actual time
                        style: TextStyle(color: Colors.black, fontSize: 12.0),
                      ),
                    ],

                    
                  ),
                  SizedBox(height: 25,),
                  Row(
                   children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/andrewtatte.jpg",
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15),
                      // Add some spacing between the image and text
                      Column( 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Andrew Tate",
                            style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Breathe Air!",
                            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w400),
                          ),
                          
                        ],                       
                      ),
                      Spacer(), // Add a spacer to push the time to the right
                      Text(
                        "10:30 AM", // Replace with the actual time
                        style: TextStyle(color: Colors.black, fontSize: 12.0),
                      )
                    ],

                    
                  ),

                  
                ],
              ), 
                          
            
            ), 
                      
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}
