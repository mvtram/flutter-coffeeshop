import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Welcome, Nadia',
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF473D3A)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.cover,
                      )
                  ),
                ),
                ),
            
            ],
          ),
            SizedBox(height: 10.0),
                Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Container(
                  child: Text(
                'Let\'s select the best taste for your next coffee break!',
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFB0AAA7)),
              ),
              ),
            ),
            SizedBox(height: 25.0,),
            Row(
              children: [
                Text('Taste of the week',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0xFF473D3A)
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                  'See All',
                  style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFB0AAA7)),
              ),
                ),
              ],
            )
        ],
      )
      );
  }
}
