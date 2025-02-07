import 'package:flutter/material.dart';
import 'package:navigation_rail_flutter/navigation_rail_flutter.dart';

const logo="assets/photoshop.png";

const profile="assets/user.png";
const signOut="assets/logout.png";
const activeHouse="assets/active_house.png";
const activeList="assets/active_list.png";

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


  final List<String> label = <String>['Home', 'List'];
  final List<String> bottomLabel = <String>['Profile', 'Logout'];
  final List<String> bottomIcons = <String>[profile, signOut];
  final List<String> icons = <String>[activeHouse, activeList];

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
            railItemCount: label.length,
            bottomItemCount: bottomLabel.length,
            railIcons: icons,
            pages: pages,
            logo: logo,
            logoSize: 2,
            navigationRailRadius: 10,
            railIconSize: 10,
            railIconsSizeHeight: 40,
            railIconsSizeWidth: 40,
            navigationRailColor: Colors.grey.shade300,
            railLabel: label,
            bottomIcons: bottomIcons,
            activeColor: Colors.orange,
            inActiveColor: Colors.lightBlue.shade300),
      ),
    );
  }
}



