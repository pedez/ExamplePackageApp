import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/money_input_formatter.dart';

class Package extends StatefulWidget {
  @override
  _PackageState createState() => _PackageState();
}

class _PackageState extends State<Package> {
  double myDouble = 00.00;
  double myNewDouble;
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
              // Container(
              //   width: double.infinity,
              //   height: 150.0,
              //   color: Colors.pinkAccent,
              //   child: Center(
              //     child: Text(
              //       'Local Image Goes Here',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // ),
              // Container(
              //   width: double.infinity,
              //   height: 150.0,
              //   color: Colors.teal,
              //   child: Center(
              //     child: Text(
              //       'Network Image Goes Here',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // ),
              FlatButton(
                color: Colors.lightBlue,
                child: Text(
                  'Open',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // showModalBottomSheet(
                  //   context: context,
                  //   isScrollControlled: true,
                  //   builder: (context) => SingleChildScrollView(
                  //     child: Container(
                  //       padding: EdgeInsets.only(
                  //           bottom: MediaQuery.of(context).viewInsets.bottom),
                  //       child: InputModal(),
                  //     ),
                  //   ),
                  // );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black12,
                child: Column(
                  children: [
                    Text(
                      'Upon Modal Submission, the number will be added to this value:',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      myDouble.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              TextFormField(
                onChanged: (val) {},
                inputFormatters: [
                  MoneyInputFormatter(
                    onValueChange: (value) {
                      setState(() {
                        myNewDouble = value;
                        print(myNewDouble);
                      });
                    },
                  )
                ],
              ),
              FlatButton(
                color: Colors.lightBlue,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    myDouble += myNewDouble;
                  });
                  // showModalBottomSheet(
                  //   context: context,
                  //   isScrollControlled: true,
                  //   builder: (context) => SingleChildScrollView(
                  //     child: Container(
                  //       padding: EdgeInsets.only(
                  //           bottom: MediaQuery.of(context).viewInsets.bottom),
                  //       child: InputModal(),
                  //     ),
                  //   ),
                  // );
                },
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

class InputModal extends StatefulWidget {
  @override
  _InputModalState createState() => _InputModalState();
}

class _InputModalState extends State<InputModal> {
  double newNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Number'),
          TextFormField(
            inputFormatters: [
              MoneyInputFormatter(
                mantissaLength: 2,
                onValueChange: (value) {
                  setState(() {
                    newNumber = value;
                  });
                },
              )
            ],
          ),
          FlatButton(
            color: Colors.lightBlue,
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                print('number B4 $number');
                updateValue(number, newNumber);
                print('number $number');
                print('newNumber $newNumber');
              });
            },
          ),
        ],
      ),
    );
  }
}

double number = 00.00;
double updateValue(double number, double newNumber) {
  print('FUNCTION number $number');
  print('FUNCTION newNumber $newNumber');
  return number += newNumber;
}
