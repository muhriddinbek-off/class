import 'package:flutter/material.dart';
import 'class.dart';

class value extends StatefulWidget {
  const value({super.key});

  @override
  State<value> createState() => _valueState();
}

class _valueState extends State<value> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  int answer = 0;
  String ans = '';
  void func (value) {
    setState(() {
      ans = value;
      if (ans == 'Small'){
      answer = 75000;
    } if (ans == 'Medium'){
      answer = 80000;
    }
    if (ans == 'Large'){
      answer = 95000;
    }
    print(answer);
    });
  } 

  void checkfunc1 (v){
    setState(() {
      check1 = !check1;
      if (check1){
        answer += 5000;
      } else {
        answer -= 5000;
      }
      print(check1);
    });
  }
  void checkfunc2 (v){
    setState(() {
      check2 = !check2;
      if (check2){
        answer += 10000;
      } else {
        answer -= 10000;
      }
      print(check2);
    });
  }
  void checkfunc3 (v){
    setState(() {
      check3 = !check3;
      if (check3){
        answer += 15000;
      } else {
        answer -= 15000;
      }
      print(check3);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Radio(value: 'Small', groupValue: ans, onChanged: func),
                    const Text('Small'),
                  ],
                ),
                Row(
                  children: [
                    Radio(value: 'Medium', groupValue: ans, onChanged: func),
                    const Text('Medium'),
                  ],
                ),
                Row(
                  children: [
                    Radio(value: 'Large', groupValue: ans, onChanged: func),
                    const Text('Large'),
                  ],
                ),
              ],
             ),
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(value: check1, onChanged: checkfunc1),
                  const Text('Extra Cheese'),
                ],
              ),
              Row(
                children: [
                  Checkbox(value: check2, onChanged: checkfunc2),
                  const Text('Onions'),
                ],
              ),
              Row(
                children: [
                  Checkbox(value: check3, onChanged: checkfunc3),
                  const Text('Chisken'),
                ],
              ),
            ],
           ),
           Container(margin: const EdgeInsets.only(top: 200), child: Center(child: Text('Total sum: $answer', style: const TextStyle(fontSize: 20)))),
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
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40, bottom: 50),
              child: Image.asset('images/2.jpg', height: 250, width: 250, fit: BoxFit.fill),
            ),
          ),
          const value(),
        ],
      ),
    ),
  ));
}


