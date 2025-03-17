import 'package:flutter/material.dart';

class NavBar extends StatefulWidget{
  const NavBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return NavBarState();
  }
}

class NavBarState extends State<NavBar>{


  int currentIndex = 0;


  void onTapping(int index){
      setState(() {
        currentIndex = index;
      });
  }

  Color dynamicColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTapping,
      destinations: <NavigationDestination> [
        NavigationDestination(icon: Icon(Icons.home_rounded, color: currentIndex == 0 ? Colors.blue : Colors.grey,), label: 'Book',),
        NavigationDestination(icon: Icon(Icons.face, color: currentIndex == 1 ? Colors.blue : Colors.grey), label: 'Face'),
        NavigationDestination(icon: Icon(Icons.account_balance, color: currentIndex == 2 ? Colors.blue : Colors.grey), label: 'Bank'),
      ],
    );
  }
}


// Navigation Drawer
class NavDrawer extends StatelessWidget{
  const NavDrawer({super.key});



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 70, 5, 70),
      child: screenWidth < 600 ? ProfileCard() : Center(child: ProfileCard())
    );
  }
}

class ProfileCard extends StatelessWidget{
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    oonTap(){
      Navigator.pop(context);
    }

    return NavigationDrawer(
      shadowColor: Colors.grey,
      elevation: 50,
      selectedIndex: null,
      // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Colors.grey,Colors.amber])),
      children: [
        DrawerHeader(
          child: ElevatedButton(onPressed: oonTap, child: Icon(Icons.cancel_rounded)),
        ),


        NavigationDrawerDestination(icon: Icon(Icons.account_balance), label: Text('d')),
        NavigationDrawerDestination(icon: Icon(Icons.account_balance), label: Text('s')),
        screenWidth < 400 ? NavigationDrawerDestination(icon: Icon(Icons.account_balance), label: Text('$screenWidth')) : NavigationDrawerDestination(icon: Icon(Icons.cable), label: Text('$screenWidth')),
      ],
    );
  }
}