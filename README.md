
![Logo](https://github.com/sanjaysharmajw/navigation_rail_flutter/blob/main/screenshots/rail.png?raw=true)


- [Main Navigation Properties](#main-navigation-properties)
- [Padding and Sizing](#padding-and-sizing)
- [Bottom Navigation Properties](#bottom-navigation-properties)
- [Styling & Colors](#styling-&-colors)
- [Callbacks & Actions](#callbacks-&-actions)

## Navigation Rail Flutter

A Navigation Rail is useful for providing a clear, space-efficient way to navigate between different sections of an app. It enhances usability on larger screens, such as tablets or desktop apps, by offering a consistent and easily accessible navigation bar that minimizes screen clutter while maximizing available space.




### Main Navigation Properties

- ```railItemCount:``` railLabel.length → Sets the number of items in the navigation rail based on the railLabel list length.

- ```railIcons```: railIcons → A list of icons for the navigation rail.

- ```pages```: pages → A list of widgets representing different pages/screens in the app.

- ```logo```: logo → The app's logo, typically a widget or image.

- ```profileImage```: networkImage → The profile image, fetched from a network or a local asset.
### Padding and Sizing

- ```navigationRailPadding```: 10 → Adds padding around the navigation rail.

- ```logoSize```: 15 → Defines the size of the logo in the navigation bar.

- ```navigationRailRadius```: 15 → Sets the border radius for the navigation rail for rounded corners.

- ```railIconSize```: 8 → The size of the icons in the navigation rail.

- ```railIconsSizeHeight```: 30 → Height of individual rail icons.

- ```railIconsSizeWidth```: 30 → Width of individual rail icons.

- ```bottomIconsSize```: 25 → Size of icons in the bottom navigation bar.
### Bottom Navigation Properties

- ```bottomRailLabel```: bottomLabel → A list of labels for the bottom navigation bar.
- ```bottomItemCount```: bottomLabel.length → Defines the number of items in the bottom navigation based on bottomLabel list length.
- ```bottomIcons``` (commented out) → Would likely contain a list of icons for the bottom navigation bar.
### Styling & Colors

- ```navigationRailColor```: Colors.white → Sets the background color of the navigation rail.
- ```activeColor```: activeColor → Defines the color for active (selected) navigation items.
- ```inActiveColor```: inactiveColor → Defines the color for inactive (unselected) navigation items.
### Callbacks & Actions

- ```onBottomIndexSelected```: (int index) {} → Callback function triggered when a bottom navigation item is selected, with index representing the selected item's position.
- ```onNavigationRailIndexSelected```: (int value) {} → Callback function triggered when a rail navigation item is selected, with value representing the selected item's position.
- ```profileClick```: () {} → Callback function triggered when the profile icon is clicked.
- ```logoutClick```: () {} → Callback function triggered when the logout icon is clicked.

- ```logoutIcon```: 'assets/logout.png' → The asset path for the logout icon image.

### Document

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


### Authors
* [@sanjaysharmajw](https://github.com/sanjaysharmajw)


### About Me
I'm a full stack developer. Cross-Platform Mobile Developer: Android, iOS, Swift , and Flutter Expert


### License

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/sanjaysharmajw/navigation_rail_flutter/blob/main/LICENSE)


### Support
I hope you had a great experience using this package! If you found the Extensions Pro helpful, consider supporting me by buying a coffee—your generosity would mean a lot and is deeply appreciated!

[![Buy Me A Coffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/sanjaysharmajw)



### Skills
Android, iOS, Java, Kotlin, JetPack Compose, SwiftUI, Flutter, Dart, JavaScript, Node.js...

