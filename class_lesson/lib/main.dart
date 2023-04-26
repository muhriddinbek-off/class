import 'package:flutter/material.dart';
import 'class.dart';

class value extends StatefulWidget {
  const value({super.key});

  @override
  State<value> createState() => _valueState();
}

class _valueState extends State<value> {
  int ans = 0;
  bool x1 = false;
  bool x2 = false;
  bool x3 = false;
  void func1 (v){
    int a1 = 75000;
    setState(() {
      x1 = !x1;
      if (x1){
        ans += a1;
      }
      else{
        ans -= a1;
      }
      print(x1);
    });
  }
  void func2 (v){
    int a2 = 60000;
    setState(() {
      x2 = !x2;
      if (x2){
        ans += a2;
      }
      else{
        ans -= a2;
      }
      print(x2);
    });
  }
  void func3 (v){
    int a3 = 97000;
    setState(() {
      x3 = !x3;
      if (x3){
        ans += a3;
      }
      else{
        ans -= a3;
      }
      print(x3);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(value: x1, onChanged: func1),
                  const  Text('Extra Cheese', style: TextStyle(fontSize: 25)),
                ],
              ),
               Row(
                children: [
                  Checkbox(value: x2, onChanged: func2),
                  const  Text('Onions', style: TextStyle(fontSize: 25)),
                ],
              ),
               Row(
                children: [
                  Checkbox(value: x3, onChanged: func3),
                  const  Text('Chisken', style: TextStyle(fontSize: 25)),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 170),
                child: Text('Total sum: $ans', style:const TextStyle(fontSize: 25))),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(  
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Container(
              child: Image.asset('images/2.jpg', height: 250, width: 250, fit: BoxFit.fill),
            ),
          ),
          value(),
        ],
      ),
    ),
  ));
}


