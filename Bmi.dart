import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'B.M.I Doc'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var htController = TextEditingController();
  var result ="";
  var weightcategory = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: wtController,
            decoration: InputDecoration(
              labelText: 'Enter your weight (in Kgs)',
              prefixIcon: Icon(Icons.line_weight),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          TextField(
            controller: htController,
            decoration: InputDecoration(
              labelText: 'Enter your height (in cm)',
              prefixIcon: Icon(Icons.height),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
            var wt = wtController.text.toString();
            var ht = htController.text.toString();
            
            if(wt!="" && ht!=""){
            var iwt = int.parse(wt);
            var iht = int.parse(ht);
            var bmi = iwt/iht/iht*10000;
            setState(() {
              if (bmi<18.5){
                weightcategory = "Damn You Are Underweight!,Eat More!";
              }
              else if((bmi>=18.6)&(bmi<=24)){
                weightcategory = " Normal Weight ";
              }
              else if(bmi>24){
                weightcategory = " Damn Nigga You Overweight,Eat Some Less For Gods Sake!";
              }
              else {
                weightcategory = "";

              }
            });
            setState(() {
              result = "Your B.M.I is: $bmi";
              
            });
            } else { 
              setState(() {
                result ="Please enter valid values!";
                weightcategory = "";
              });

            } // Calculate BMI here
            },
            child: Text('Calculate BMI'),
          ),
          SizedBox(height: 20),
          Center( // Wrapping the result text with Center widget
            child: Text(
              result,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
              
            ),           
          ),  
          SizedBox(height: 20),
          Center( // Wrapping the result text with Center widget
            child: Text(
            weightcategory,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
              
            ),           
          ),    
        ],
      ),
    );
  }
}