import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AgeCaluc.dart';

class agePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _agePageState();
}

class _agePageState extends State<agePage> {
  var MyControler = TextEditingController();
  int ageValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        title: Text("Age calculator"),
        backgroundColor: Colors.pink,
      ),

      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 100),
            Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Birth Year",
                    hintText: "Enter your birth year",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.pink),
                    suffixIcon: IconButton(
                      color: Colors.pink,
                      icon: Icon(Icons.date_range),
                      onPressed: () {},
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: MyControler,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(96, 161, 147, 147),
                      blurRadius: 22,
                      offset: const Offset(0, 10),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Your age : ${ageValue}",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
                margin: EdgeInsets.all(60),
                child: ElevatedButton(
                  onPressed: () => setState(() {
                    //get year from textFeild then send it to the funcation
                    AgeClaculator(int.parse(MyControler.text));
                    ageValue = AgeClaculator.age;
                  }),
                  child: Text("Get Valute", style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink),
                      elevation: MaterialStateProperty.all(10),
                      padding: MaterialStateProperty.all(EdgeInsets.all(13)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                      )),
                )),
            SizedBox(height: 40),
          ],
        )),
      ),
    );
  }
}
