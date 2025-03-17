import 'package:flutter/material.dart';
import 'package:app/widgets/navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow, brightness: Brightness.light),

        // App Bar Theming
        appBarTheme: AppBarTheme(
          elevation: 20,
          surfaceTintColor: Colors.transparent,
          // shadowColor: Colors.green,
          // backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,

          titleTextStyle: GoogleFonts.roboto(
            color: Colors.grey
          ),
        ),

        
        // Text Theming Of App
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Colors.green,
            fontSize: 28,
            backgroundColor: Colors.black,
            decorationThickness: 20,
            // letterSpacing: 0,
            fontFamily: 'poppins'
          ),

          displayLarge: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 15,
          ),
        ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.yellow
        ),

        navigationBarTheme: NavigationBarThemeData(
          surfaceTintColor: Colors.blue,
          elevation: 30,
          indicatorColor: Colors.white,
          height: 70

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
        appBar: AppBar(
          title: AppTitleBar(),
          actions: [
            // Builder(
            //   builder: (context){
            //     // return ElevatedButton(onPressed: Scaffold.of(context).openDrawer, child: Icon(Icons.menu_rounded));
            //   },
            // ),
          ],
        ),

        // Drawer
        drawer: NavDrawer(),

        // Page Body
        body: AppBody(),

        // Floating Action Button
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add_rounded),),

        // Bottom Navigation Bar
        bottomNavigationBar: NavBar(),
      ),
    );
  }

}

// App Title Bar Widget
class AppTitleBar extends StatelessWidget{
  const AppTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(filter: ColorFilter.srgbToLinearGamma(), child: Text('Theming'),);
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
          // Displaying List Of Boxes
          // ListOfBoxes(),

          // Displaying Text
          MyText(),
        ],
      ),
    );
  }
}

// Widget For Displaying Text
class MyText extends StatelessWidget{
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400),
      child: Text(
          'At present students are poor writers, not because they are incapable of learning to wipline as  writing. This is true on the one hand because teachers often lack a clear theory of the relationship between writing and learning and, on the other, are concerned with the time involved in grading written work.',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
            letterSpacing: 0.6,
            height: 1.38
          ),
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
        itemCount: 1,
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