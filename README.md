![Logo](https://github.com/sanjaysharmajw/navigation_rail_flutter/blob/main/screenshots/rail.png?raw=true)

# Navigation Rail Flutter
| ![Publisher](https://img.shields.io/pub/publisher/navigation_rail_flutter) | ![Points](https://img.shields.io/pub/points/navigation_rail_flutter) | ![Version](https://img.shields.io/pub/v/navigation_rail_flutter) |
|:------------------------------------------------------------:|:-----------------------------------------------------:|:--------------------------------------------------:|



A customizable and elegant navigation rail widget for Flutter applications that provides a sidebar navigation experience with support for both main navigation items and bottom action items.



## Features

- ✨ Customizable navigation rail with rounded corners
- 🎨 Configurable colors for active and inactive states
- 📱 Support for both rail navigation items and bottom action items
- 🖼️ Logo display at the top
- 👤 Profile image support (network or asset images)
- 🏷️ Optional labels for navigation items
- 🎯 Callback functions for navigation and actions
- 📐 Fully customizable dimensions and styling

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  navigation_rail_flutter: ^1.0.3
```

Then run:

```bash
flutter pub get
```

## Usage

### Basic Example

```dart
import 'package:flutter/material.dart';
import 'package:navigation_rail_flutter/navigation_rail_flutter.dart';

class NavigationRailExample extends StatefulWidget {
  const NavigationRailExample({super.key});

  @override
  State<NavigationRailExample> createState() => _NavigationRailExampleState();
}

class _NavigationRailExampleState extends State<NavigationRailExample> {
  final List<String> bottomLabel = <String>['Profile', 'Logout'];
  final List<String> bottomIcons = <String>['assets/settings.png', 'assets/logout.png'];

  final List<String> railLabel = <String>['Home', 'List'];
  final List<String> railIcons = <String>['assets/home.png', 'assets/list.png'];

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
          logo: 'assets/logo.png',
          profileImage: 'https://example.com/profile.jpg',
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
          bottomIcons: bottomIcons,
          activeColor: const Color(0xFF005272),
          inActiveColor: const Color(0xFFE2F3F9),
          onBottomIndexSelected: (int index) {
            // Handle bottom navigation selection
            print('Bottom item selected: $index');
          },
          onNavigationRailIndexSelected: (int value) {
            // Handle rail navigation selection
            print('Rail item selected: $value');
          },
          logoutIcon: 'assets/logout.png',
          profileClick: () {
            // Handle profile click
            print('Profile clicked');
          },
          logoutClick: () {
            // Handle logout click
            print('Logout clicked');
          },
        ),
      ),
    );
  }
}
```

## Parameters

### Required Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `railItemCount` | `int` | Number of main navigation items |
| `railIcons` | `List<String>` | List of asset paths for navigation icons |
| `pages` | `List<Widget>` | List of pages to display when navigation items are selected |
| `activeColor` | `Color` | Background color for active navigation items |
| `inActiveColor` | `Color` | Background color for inactive navigation items |
| `onBottomIndexSelected` | `ValueChanged<int>` | Callback function when bottom items are selected |
| `onNavigationRailIndexSelected` | `ValueChanged<int>` | Callback function when rail items are selected |
| `logoutIcon` | `String` | Asset path for logout icon |
| `profileClick` | `VoidCallback` | Callback function when profile is clicked |
| `logoutClick` | `VoidCallback` | Callback function when logout is clicked |

### Optional Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `navigationRailPadding` | `double?` | `4` | Padding around the navigation rail |
| `navigationRailWidth` | `double?` | `65` | Width of the navigation rail |
| `navigationRailRadius` | `double?` | `5` | Border radius of the navigation rail |
| `railLabel` | `List<String>?` | `null` | Labels for navigation rail items |
| `bottomRailLabel` | `List<String>?` | `null` | Labels for bottom navigation items |
| `bottomIcons` | `List<String>?` | `null` | Asset paths for bottom navigation icons |
| `bottomItemCount` | `int?` | `null` | Number of bottom navigation items |
| `navigationRailColor` | `Color?` | `Colors.blueGrey` | Background color of the navigation rail |
| `logo` | `String?` | `null` | Asset path for the logo |
| `profileImage` | `String?` | `null` | Asset path or URL for profile image |
| `bottomLabelActive` | `bool?` | `false` | Whether to show labels for bottom items |
| `railLabelActive` | `bool?` | `false` | Whether to show labels for rail items |
| `railIconSize` | `double?` | `6` | Padding inside icon containers |
| `logoSize` | `double?` | `10` | Scale factor for the logo |
| `bottomIconsSize` | `double?` | `18` | Scale factor for bottom icons |
| `background` | `Color?` | `Color(0xFFEDF6F7)` | Background color of the entire widget |
| `railIconsSizeHeight` | `double?` | `30` | Height of rail icon containers |
| `railIconsSizeWidth` | `double?` | `30` | Width of rail icon containers |
| `railBottomSizeHeight` | `double?` | `null` | Height of bottom icon containers |
| `railBottomSizeWidth` | `double?` | `null` | Width of bottom icon containers |

## Asset Requirements

Make sure to add your assets to the `pubspec.yaml` file:

```yaml
flutter:
  assets:
    - assets/
    - assets/icons/
```

### Required Assets Structure

```
assets/
├── logo.png
├── home.png
├── list.png
├── settings.png
├── logout.png
└── ... (other icons)
```

## Customization Examples

### Dark Theme Navigation Rail

```dart
NavigationFlutter(
  // ... other parameters
  navigationRailColor: Colors.grey[900],
  activeColor: Colors.blue[700]!,
  inActiveColor: Colors.grey[800]!,
  background: Colors.grey[850],
)
```

### With Labels Enabled

```dart
NavigationFlutter(
  // ... other parameters
  railLabelActive: true,
  bottomLabelActive: true,
  railLabel: ['Dashboard', 'Analytics', 'Settings'],
  bottomRailLabel: ['Profile', 'Help'],
)
```

### Custom Dimensions

```dart
NavigationFlutter(
  // ... other parameters
  navigationRailWidth: 80,
  navigationRailRadius: 20,
  railIconsSizeHeight: 40,
  railIconsSizeWidth: 40,
  logoSize: 20,
)
```

## Profile Image Support

The widget supports both network and asset images for the profile:

```dart
// Network image
profileImage: 'https://example.com/profile.jpg'

// Asset image
profileImage: 'assets/default_profile.png'
```

The widget automatically detects whether the provided string is a URL or asset path.

## Best Practices

1. **Icon Consistency**: Use icons with consistent styling and size for better visual harmony
2. **Color Contrast**: Ensure sufficient contrast between active/inactive states for accessibility
3. **Asset Optimization**: Optimize your image assets for better performance
4. **Responsive Design**: Test the navigation rail on different screen sizes
5. **Error Handling**: Implement proper error handling in your callback functions

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## API Documentation

### Class: NavigationFlutter

A stateful widget that creates a customizable navigation rail with main navigation items and optional bottom action items.

#### Constructor: NavigationFlutter.new

```dart
NavigationFlutter({
  Key? key,
  double? navigationRailPadding = 4,
  double? navigationRailWidth = 65,
  double? navigationRailRadius = 5,
  List<String>? railLabel,
  List<String>? bottomRailLabel,
  List<String>? bottomIcons,
  required List<String> railIcons,
  required int railItemCount,
  int? bottomItemCount,
  required List<Widget> pages,
  required Color activeColor,
  required Color inActiveColor,
  Color? navigationRailColor = Colors.blueGrey,
  String? logo,
  required String logoutIcon,
  String? profileImage,
  bool? bottomLabelActive = false,
  bool? railLabelActive = false,
  double? railIconSize = 6,
  double? logoSize = 10,
  double? bottomIconsSize = 18,
  Color? background = const Color(0xFFEDF6F7),
  required ValueChanged<int> onBottomIndexSelected,
  required ValueChanged<int> onNavigationRailIndexSelected,
  required VoidCallback profileClick,
  required VoidCallback logoutClick,
  double? railIconsSizeHeight = 30,
  double? railIconsSizeWidth = 30,
  double? railBottomSizeHeight,
  double? railBottomSizeWidth,
})
```

Creates a NavigationFlutter widget with the specified configuration.

**Parameters:**
- `key`: An optional key to use for this widget
- All other parameters are documented in the Parameters section above

#### Properties

##### activeColor → Color
The background color used for the currently selected navigation rail item. This color is applied to the container background of the active navigation item to provide visual feedback to the user about their current selection.

**Example:**
```dart
NavigationFlutter(
  activeColor: Colors.blue, // Active item will have blue background
  // ... other parameters
)
```

##### background → Color?
The background color of the entire NavigationFlutter widget. This sets the overall background color of the scaffold body where the navigation rail is displayed.

**Default Value:** `Color(0xFFEDF6F7)` (light blue-gray)

**Example:**
```dart
NavigationFlutter(
  background: Colors.white, // Sets white background
  // ... other parameters
)
```

##### inActiveColor → Color
The background color used for non-selected navigation rail items. This provides visual contrast between active and inactive navigation items.

**Example:**
```dart
NavigationFlutter(
  activeColor: Colors.blue,
  inActiveColor: Colors.grey[300]!, // Inactive items have light gray background
  // ... other parameters
)
```

##### railIcons → List<String>
A list of asset paths for the navigation rail icons. Each string should be a valid asset path that corresponds to an image file in your Flutter project's assets directory.

**Example:**
```dart
NavigationFlutter(
  railIcons: [
    'assets/icons/home.png',
    'assets/icons/search.png',
    'assets/icons/profile.png',
  ],
  // ... other parameters
)
```

##### pages → List<Widget>
A list of widgets that represent the different pages/screens to display when navigation items are selected. The index of the selected navigation item corresponds to the index in this list.

**Example:**
```dart
NavigationFlutter(
  pages: [
    HomeScreen(),
    SearchScreen(), 
    ProfileScreen(),
  ],
  // ... other parameters
)
```

##### railItemCount → int
The number of main navigation items to display in the rail. This should match the length of the `railIcons` and `pages` lists.

##### onNavigationRailIndexSelected → ValueChanged<int>
A callback function that is called when a navigation rail item is selected. The function receives the index of the selected item.

**Example:**
```dart
NavigationFlutter(
  onNavigationRailIndexSelected: (int index) {
    print('Selected navigation item: $index');
    // Handle navigation logic here
  },
  // ... other parameters
)
```

##### onBottomIndexSelected → ValueChanged<int>
A callback function that is called when a bottom navigation item is selected. The function receives the index of the selected bottom item.

**Example:**
```dart
NavigationFlutter(
  onBottomIndexSelected: (int index) {
    if (index == 0) {
      // Handle profile action
    } else if (index == 1) {
      // Handle settings action  
    }
  },
  // ... other parameters
)
```

## Symbol Reference

### navigation_rail_flutter
The main library that exports the NavigationFlutter widget and related components.

### navigation_rail_flutter.NavigationFlutter
The primary widget class that creates a customizable navigation rail interface.

### navigation_rail_flutter.NavigationFlutter.NavigationFlutter.new
The default constructor for creating a NavigationFlutter widget instance.

### navigation_rail_flutter.NavigationFlutter.activeColor
Property that defines the background color for the currently selected navigation item.

### navigation_rail_flutter.NavigationFlutter.background
Property that defines the overall background color of the navigation rail widget.

## Migration Guide

### From version 0.x to 1.x
- No breaking changes in the current version
- All existing parameters remain compatible

## Support

For issues and feature requests, please visit our [GitHub repository](https://github.com/sanjaysharmajw/navigation_rail_flutter).