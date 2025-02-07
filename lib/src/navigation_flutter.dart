
import 'package:flutter/material.dart';

class NavigationFlutter extends StatefulWidget {

  final double? navigationRailPadding;
  final double? navigationRailWidth;
  final double? navigationRailRadius;
  final List<String>? railLabel;
  final List<String>? bottomRailLabel;
  final List<String> bottomIcons;
  final List<String> railIcons;
  final int railItemCount;
  final int bottomItemCount;
  final List<Widget> pages;
  final Color activeColor;
  final Color inActiveColor;
  final Color? navigationRailColor;
  final String? logo;
  final bool? bottomLabelActive;
  final bool? railLabelActive;
  final double? railIconSize;
  final double? logoSize;
  final double? bottomIconsSize;

  final double? railIconsSizeHeight,railIconsSizeWidth;
  final double? railBottomSizeHeight,railBottomSizeWidth;

  const NavigationFlutter({super.key,
    this.navigationRailPadding=4,
    this.navigationRailWidth=65,
    this.navigationRailRadius=5,
    required this.railItemCount,
    required this.bottomItemCount,
    this.railLabel,
    required this.bottomIcons,
    required this.railIcons,
    this.bottomRailLabel,
    required this.pages,
    required this.activeColor,
    required this.inActiveColor,
    this.logo,
    this.bottomLabelActive=false,
    this.railLabelActive=false,
    this.navigationRailColor=Colors.blueGrey,
    this.railIconsSizeHeight=30,
    this.railIconsSizeWidth=30, this.railIconSize=6, this.logoSize=10,
    this.railBottomSizeHeight, this.railBottomSizeWidth, this.bottomIconsSize=18});

  @override
  State<NavigationFlutter> createState() => _NavigationFlutterState();
}

class _NavigationFlutterState extends State<NavigationFlutter> {

  int isSelected = 0;

  double? get railBottomSizeHeight => widget.railBottomSizeHeight;
  double? get railBottomSizeWidth => widget.railBottomSizeWidth;
  double? get bottomIconsSize => widget.bottomIconsSize;

  double? get railIconsSizeHeight => widget.railIconsSizeHeight;
  double? get railIconsSizeWidth => widget.railIconsSizeWidth;
  double? get railIconSize => widget.railIconSize;
  double? get logoSize => widget.logoSize;

  double? get navigationRailPad => widget.navigationRailPadding;
  double? get navigationRailWid => widget.navigationRailWidth;
  double? get navigationRailRad => widget.navigationRailRadius;
  int get railItemCou => widget.railItemCount;
  int get bottomItemCou => widget.bottomItemCount;
  List<String> get bottomIcon => widget.bottomIcons;
  List<String> get railIcon => widget.railIcons;
  List<String>? get railLab => widget.railLabel;
  List<String>? get bottomLab => widget.bottomRailLabel;
  List<Widget> get page => widget.pages;
  String? get companyLog => widget.logo;
  Color? get navigationRailColor => widget.navigationRailColor;

  Color? get activeRailColors => widget.activeColor;
  Color? get inActiveRailColors => widget.inActiveColor;

  bool? get bottomLabelActive => widget.bottomLabelActive;
  bool? get railLabelActive => widget.railLabelActive;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(navigationRailPad!),
          child: Row(
            children: [
              Container(
                width: navigationRailWid!,
                decoration: BoxDecoration(
                  color: navigationRailColor,
                  borderRadius: BorderRadius.all(Radius.circular(navigationRailRad!)),
                ),
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Image.asset(companyLog!,scale: logoSize),
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: railItemCou,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  isSelected = index;
                                });
                              },
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Container(
                                    height: railIconsSizeHeight,
                                    width: railIconsSizeWidth,
                                    decoration: BoxDecoration(
                                      color: isSelected == index
                                          ? activeRailColors
                                          : inActiveRailColors,
                                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.all(railIconSize!),
                                      child: Image.asset(
                                        railIcon[index],
                                        color: isSelected == index
                                            ? Colors.white
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  railLabelActive==false?Container():
                                  Text(
                                    railLab!.isEmpty?"provide label":
                                    railLab![index],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10), // Space between lists
                      // Bottom ListView (Limited height)
                      ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: bottomItemCou,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              const SizedBox(height: 10),
                              SizedBox(
                                height: railIconsSizeHeight,
                                width: railIconsSizeWidth,
                                child: Image.asset(
                                  scale: bottomIconsSize,
                                  bottomIcon[index],
                                ),
                              ),
                              const SizedBox(height: 10),
                              bottomLabelActive==false?Container():
                              Text(
                                bottomLab!.isEmpty?"provide label":
                                bottomLab![index],
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 2),
              Expanded(
                child: page[isSelected], // Show selected page
              ),
            ],
          ),
        ),
      ),
    );
  }
}
