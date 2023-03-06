import 'dart:math';

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0XFF0A0E21),
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    //width: 140,
                    // height: MediaQuery.of(context).size.height * 0.3,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //  color: Color(0xFF1D1E33),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // width: 140,
                    //height: MediaQuery.of(context).size.height * 0.3,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
              ),
              //  height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    //width: 140,
                    // height: MediaQuery.of(context).size.height * 0.3,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //  color: Color(0xFF1D1E33),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // width: 140,
                    //height: MediaQuery.of(context).size.height * 0.3,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
