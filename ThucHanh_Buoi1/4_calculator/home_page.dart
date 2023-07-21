import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  State createState() => HomePageState();
}


class HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");


  void doAdd(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1+num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1-num2;
    });
  }

  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1*num2;
    });
  }

  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1~/num2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Nhập số A"),
              controller: t1,
            ),
           TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: "Nhập số B"),
             controller: t2,
            ),

            Text(
              "Kết quả: $sum",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(padding: const EdgeInsets.only(top:20),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ElevatedButton(
                  child: Text("+"),
                  onPressed: doAdd,
                ),
                SizedBox(width: 10),

                new ElevatedButton(
                  onPressed: doSub,
                  child: Text("-"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                ),
                SizedBox(width: 10),

                new ElevatedButton(
                  onPressed: doMul,
                  child: Text("x"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                ),
                SizedBox(width: 10),

                new ElevatedButton(
                  onPressed: doDiv,
                  child: Text("/"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                ),
                SizedBox(width: 10),

              ],
            )
          ],
        ),
        ),
      );
  }
}