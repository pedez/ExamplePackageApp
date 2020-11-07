import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/money_input_formatter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Installing Packages'),
        centerTitle: true,
        backgroundColor: Color(0xFF45D1FD),
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 150.0,
                color: Colors.pinkAccent,
                child: Center(
                  child: Text(
                    'Local Image Goes Here',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 150.0,
                color: Colors.teal,
                child: Center(
                  child: Text(
                    'Network Image Goes Here',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// final String url =
//     'https://images.pexels.com/photos/2226987/pexels-photo-2226987.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
