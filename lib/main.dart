import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Media Query
    double screendWidth = MediaQuery.of(context).size.width;
    int columns = (screendWidth ~/ 150).clamp(1, 3);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('Grid'), backgroundColor: Colors.blue),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(color: Colors.amberAccent),
                  child: Text('Box $index'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
