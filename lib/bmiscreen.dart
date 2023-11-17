import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final TextEditingController _height=TextEditingController();
  final TextEditingController _weight=TextEditingController();
  double result=0;
  void bmicalculate(){
    double Height=double.parse(_height.text)/100;
    double weight=double.parse(_weight.text);
    double heightsquare=Height*Height;
     result=weight/heightsquare;
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('BMI CALCULATOR'),
      ),body: Column( mainAxisAlignment:MainAxisAlignment.center,
      children: [
        TextField(controller:_height ,
          decoration: InputDecoration(iconColor:Colors.pink,
              icon:Icon(Icons.trending_up),labelText: 'height in cm'),),
        TextField(controller:_weight,
          decoration: InputDecoration(icon:Icon(Icons.line_weight),
              labelText:'weight in kg'),),
        ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.pinkAccent),
            onPressed: (){setState(() {
              bmicalculate();
            });},
            child: Text('Calculate')),
        Text(result.toStringAsFixed(2)),


    ],),
    );

  }
}
