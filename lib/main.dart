import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(color: Colors.black),
          title: Text('Sign In',style: TextStyle(color: Colors.red),),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'email adress',border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'password',border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){}, child: Text('Log in'),
              style: ElevatedButton.styleFrom(primary: Colors.red,fixedSize: Size(300, 40)),
              ),
              SizedBox(height: 10,),
              Text('OR',style: TextStyle(color: Colors.blueGrey),),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){}, child: Text('facebook Login'),
                style: ElevatedButton.styleFrom(fixedSize: Size(300, 40)),
              ),

            ],
          ),
        ),
      ),

    );


  }
}
