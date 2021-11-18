import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Date Input Field',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text("DOB Input Field"),centerTitle: true,),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DOBInputField(
            firstDate: DateTime(1900),
            lastDate:DateTime.now() ,
            showLabel: true,
            autovalidateMode: AutovalidateMode.always,
            fieldLabelText: "With label",
          ),

          DOBInputField(
            firstDate: DateTime(1900),
            lastDate:DateTime.now() ,
            showLabel: false,
          ),

           DOBInputField(
            firstDate: DateTime(1900),
            lastDate:DateTime.now() ,
            showLabel: true,
            fieldLabelText: "With border",
            inputDecoration: const InputDecoration(border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.zero))),
          ),

          DOBInputField(
            firstDate: DateTime(1900),
            lastDate:DateTime.now() ,
            showLabel: true,
            autovalidateMode: AutovalidateMode.disabled,
            fieldLabelText: "Without Validation",
            inputDecoration: const InputDecoration(border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.zero))),
          ),
        ],
      ),
    );
  }
}