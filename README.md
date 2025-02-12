
![Logo](https://github.com/sanjaysharmajw/navigation_rail_flutter/blob/main/screenshots/rail.png?raw=true)


## Navigation Rail Flutter

A Navigation Rail is useful for providing a clear, space-efficient way to navigate between different sections of an app. It enhances usability on larger screens, such as tablets or desktop apps, by offering a consistent and easily accessible navigation bar that minimizes screen clutter while maximizing available space.




## Document

```dart 

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

```


## Authors
* [@sanjaysharmajw](https://github.com/sanjaysharmajw)


## About Me
I'm a full stack developer. Cross-Platform Mobile Developer: Android, iOS, Swift , and Flutter Expert


## License

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/sanjaysharmajw/navigation_rail_flutter/blob/main/LICENSE)


## Support
I hope you had a great experience using this package! If you found the Extensions Pro helpful, consider supporting me by buying a coffee—your generosity would mean a lot and is deeply appreciated!

[![Buy Me A Coffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/sanjaysharmajw)



## Skills
Android, iOS, Java, Kotlin, JetPack Compose, SwiftUI, Flutter, Dart, JavaScript, Node.js...

