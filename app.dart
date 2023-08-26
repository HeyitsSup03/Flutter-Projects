import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),  
));

class IdCard  extends StatefulWidget {
  

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int Currentbid = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: Text('Client ID Card'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            Currentbid += 10;
          });
          
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink[200],
         ),
        
    
      body: Padding(
        padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          
          children:<Widget> [
            CircleAvatar(
              radius: 50, // You can adjust the radius as per your requirement
              backgroundImage: NetworkImage (
                'https://dnm.nflximg.net/api/v6/BvVbc2Wxr2w6QuoANoSpJKEIWjQ/AAAAQSnpMqmsi5f-eRKRfOZ-0sz3bqayoVJHBBwxR__w96hI3iqrLAlQca17pZx_-lNPTsOv12DpbnN6GywwBDOC06oonx5lisMXULWwNywctuz_Jn4tH4EIbcFHOofQJ0dpx7z7o5ho0HtfDulSquyV_lCF7CQ.jpg?r=d1b', // Replace with your own image URL
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Name:',
             style: TextStyle(
              fontSize: 30
               ),
selectionColor: Colors.grey,
              
              
            ),
            SizedBox(height: 10.0), 
                        Text(
              'Thomas Shelby',
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
               ),
selectionColor: Colors.grey,
              
              
            ),
            SizedBox(height:10.0),
            Text(
              'Current Bid:',
             style: TextStyle(
              
              fontSize: 25
               ),
selectionColor: Colors.grey,
              
              
            ),
            SizedBox(height:10.0),
             Text(
              '$Currentbid',
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
               ),
             ),
             SizedBox(height:10.0),
              Text(
              'Status:',
             style: TextStyle(
              
              fontSize: 25
               ),
selectionColor: Colors.grey,
              
              
            ),
             Text(
              'Most Wanted',
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
               ),
             ),
            
            
            
          ]),
          ),
    );
    

    
  }
}
 


 
