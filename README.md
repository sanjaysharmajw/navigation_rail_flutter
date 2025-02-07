
## NavigationRailFlutter


#### Why Do We Need a Navigation Rail in Flutter?
A Navigation Rail is a compact, vertical navigation component introduced by Flutter to enhance navigation on larger screens (such as tablets, desktops, and foldable devices). It provides an efficient way to switch between different sections of an app while maintaining screen real estate.


```dart

/// Define image or icons
const logo="assets/photoshop.png";
const profile="assets/user.png";
const signOut="assets/logout.png";
const activeHouse="assets/active_house.png";
const activeList="assets/active_list.png";

/// Define lable and pages

final List<String> label = <String>['Home', 'List'];
final List<String> bottomLabel = <String>['Profile', 'Logout'];
final List<String> bottomIcons = <String>[profile, signOut];
final List<String> icons = <String>[activeHouse, activeList];

final List<Widget> pages = [
   const Center(child: Text('Home', style: TextStyle(fontSize: 20))),
   const Center(child: Text('List', style: TextStyle(fontSize: 20))),
];


/// Use in you code

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

```
