import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

// Top Level Widget Showing Material and Scaffold Widget
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Theming Of The App
      theme: ThemeData(
        // App Color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow, brightness: Brightness.dark),

        // App Bar Theming
        appBarTheme: AppBarTheme(
          elevation: 20,
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontFamily: 'poppins', fontSize: 30),
        ),

        // Floating Button Theming
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
          iconSize: 30,
          elevation: 0,
          splashColor: Color(0xF636ED3B),
        )

      ),

      // The Scaffold
      home: Scaffold(
        // Page Title
        appBar: AppBar(title: AppTitleBar(),),

        // Page Body
        body: AppBody(),

        // Floating Action Button
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add_rounded),),

        // Bottom Navigation Bar


      ),
    );
  }
}

// App Title Bar Widget
class AppTitleBar extends StatelessWidget{
  const AppTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Theming');
  }
}

// App Whole Body Widget
class AppBody extends StatelessWidget{
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: Column(
        spacing: 20,
        children: [
          ListOfBoxes()
        ],
      ),
    );
  }
}

// Elevated Button Widget
class MyElevatedButton extends StatelessWidget{
  const MyElevatedButton({super.key, required this.callBackFunction, required this.buttonData});

  final dynamic callBackFunction;
  final Widget buttonData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: callBackFunction, child: buttonData);
  }
}

// List Of Boxes
class ListOfBoxes extends StatelessWidget{
  const ListOfBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ContainerBoxes(),
      ),
    );
  }
}

// Container (Boxes)
class ContainerBoxes extends StatelessWidget{
  const ContainerBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(40),
      ),

      child: Text(''),
    );
  }
}