
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget ({super.key});

@override
State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>{
  String groupName = "";
  String textfill = "";

@override
Widget build(BuildContext context) {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();

  return Scaffold(
    appBar: AppBar(
      title: Text("Firstpages"),
    
    ),

    body: Form(
      key: _formkey,
      child: Column(
        children: [
          Text("TextFormField1"),
          TextFormField(
            validator: (textfill) {
              if (textfill!.isEmpty){
                return "Text Field is empity";
              }
              return null;
            },
          ),
          TextFormField(
            validator: (textfill) {
              if (textfill!.isEmpty){
                return "Text Field is empity";
              }
              return null;
            },
          ),
          ElevatedButton(onPressed :(){
              if (_formkey.currentState!.validate()){

              }
          }, child: Text("Submit")
          ) 
        ],
      ),
    ),
  ); 
}

}

  