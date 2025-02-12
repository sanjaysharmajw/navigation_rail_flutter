import 'package:flutter/material.dart';
import 'package:navigation_rail_flutter/navigation_rail_flutter.dart';

const logo = "assets/logo.png";
const networkImage = "https://images.pexels.com/photos/27305813/pexels-photo-27305813/free-photo-of-a-woman-taking-a-photo-with-her-camera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2";

const profile = "assets/settings.png";
//const signOut = "assets/signout.png";
const activeHouse = "assets/active_house.png";
const activeList = "assets/active_list.png";

const inactiveColor = Color(0xFFE2F3F9);
const activeColor = Color(0xFF005272);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavigationRailExample(),
    );
  }
}

class NavigationRailExample extends StatefulWidget {
  const NavigationRailExample({super.key});

  @override
  State<NavigationRailExample> createState() => _NavigationRailExampleState();
}

class _NavigationRailExampleState extends State<NavigationRailExample> {


  final List<String> bottomLabel = <String>['Profile', 'Logout'];
  final List<String> bottomIcons = <String>[profile, 'assets/logout.png'];

  final List<String> railLabel = <String>['Home', 'List'];
  final List<String> railIcons = <String>[activeHouse, activeList];

  final List<Widget> pages = [
    const Center(child: Text('Home', style: TextStyle(fontSize: 20))),
    const Center(child: Text('List', style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NavigationFlutter(
          railItemCount: railLabel.length,
          railIcons: railIcons,
          pages: pages,
          logo: logo,
          profileImage: networkImage,
          navigationRailPadding: 10,
          logoSize: 15,
          navigationRailRadius: 15,
          railIconSize: 8,
          railIconsSizeHeight: 30,
          railIconsSizeWidth: 30,
          bottomIconsSize: 25,
          bottomRailLabel: bottomLabel,
          navigationRailColor: Colors.white,
          railLabel: railLabel,
          bottomItemCount: bottomLabel.length,
         // bottomIcons: bottomIcons,
          activeColor: activeColor,
          inActiveColor: inactiveColor,
          onBottomIndexSelected: (int index) {},
          onNavigationRailIndexSelected: (int value) {}, logoutIcon: 'assets/logout.png', profileClick: () {  }, logoutClick: () {  },
        ),
      ),
    );
  }
}
