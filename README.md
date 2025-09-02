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
  navigation_rail_flutter: ^1.0.2
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

- **Icon Consistency**: Use icons with consistent styling and size for better visual harmony
- **Color Contrast**: Ensure sufficient contrast between active/inactive states for accessibility
- **Asset Optimization**: Optimize your image assets for better performance
- **Responsive Design**: Test the navigation rail on different screen sizes
- **Error Handling**: Implement proper error handling in your callback functions

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For issues and feature requests, please visit our [GitHub repository](https://github.com/sanjaysharmajw/navigation_rail_flutter).