import 'package:flutter/material.dart';
// .....
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final myController1 = TextEditingController();
    final myController2 = TextEditingController();
      final _formKey = GlobalKey<FormState>();

Widget myWidget(){
  return SizedBox(
height: 10,  );
}

Widget mySecondWidget(double h){
  return SizedBox(
height: h,  
);
}

void onpressedFunction(){
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      if(value.length>5){
        return 'plase enter more';
      }
      return null;
      },
                controller:     TextEditingController(),
        decoration: InputDecoration(
          
          hintText: 'title',
            border: OutlineInputBorder(),
        )
              ),
              const SizedBox(height: 10,),
                     TextFormField(
                
                controller:     TextEditingController(),
        decoration: InputDecoration(
          hintText: 'title',
            border: OutlineInputBorder(),
        ),
              ),
        
              FloatingActionButton(onPressed: myFunction
              ),
            ],
          ),
        ),
      ),
    );
  }

  void myFunction() {
if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }
}