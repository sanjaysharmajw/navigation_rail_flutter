
import 'package:flutter/material.dart';

const color = Color(0xFFEDF6F7);
const networkImage = "https://images.pexels.com/photos/27305813/pexels-photo-27305813/free-photo-of-a-woman-taking-a-photo-with-her-camera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2";



class NavigationFlutter extends StatefulWidget {

  final double? navigationRailPadding;
  final double? navigationRailWidth;
  final double? navigationRailRadius;
  final List<String>? railLabel;
  final List<String>? bottomRailLabel;
  final List<String>? bottomIcons;
  final List<String> railIcons;
  final int railItemCount;
  final int? bottomItemCount;
  final List<Widget> pages;
  final Color activeColor;
  final Color inActiveColor;
  final Color? navigationRailColor;
  final String? logo;
  final String logoutIcon;
  final String? profileImage;
  final bool? bottomLabelActive;
  final bool? railLabelActive;
  final double? railIconSize;
  final double? logoSize;
  final double? bottomIconsSize;
  final Color? background;
  final ValueChanged<int> onBottomIndexSelected;
  final ValueChanged<int> onNavigationRailIndexSelected;


  final double? railIconsSizeHeight,railIconsSizeWidth;
  final double? railBottomSizeHeight,railBottomSizeWidth;

  const NavigationFlutter({super.key,
    this.navigationRailPadding=4,
    this.navigationRailWidth=65,
    this.navigationRailRadius=5,
    required this.railItemCount,
     this.bottomItemCount,
    this.railLabel,
     this.bottomIcons,
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
    this.railBottomSizeHeight, this.railBottomSizeWidth,
    this.bottomIconsSize=18, required this.onBottomIndexSelected,
    required this.onNavigationRailIndexSelected, this.background=color, required this.logoutIcon, this.profileImage});

  @override
  State<NavigationFlutter> createState() => _NavigationFlutterState();
}

class _NavigationFlutterState extends State<NavigationFlutter> {

  int isSelected = 0;
  int bottomSelected = -1;
  double? get railBottomSizeHeight => widget.railBottomSizeHeight;
  double? get navigationRailPad => widget.navigationRailPadding;
  double? get railIconsSizeHeight => widget.railIconsSizeHeight;
  double? get railIconsSizeWidth => widget.railIconsSizeWidth;
  double? get navigationRailWid => widget.navigationRailWidth;
  double? get navigationRailRad => widget.navigationRailRadius;
  Color? get navigationRailColor => widget.navigationRailColor;
  double? get railBottomSizeWidth => widget.railBottomSizeWidth;
  bool? get bottomLabelActive => widget.bottomLabelActive;
  List<String>? get bottomLab => widget.bottomRailLabel;
  double? get bottomIconsSize => widget.bottomIconsSize;
  Color? get inActiveRailColors => widget.inActiveColor;
  bool? get railLabelActive => widget.railLabelActive;
  Color? get activeRailColors => widget.activeColor;
  List<String>? get bottomIcon => widget.bottomIcons;
  int? get bottomItemCou => widget.bottomItemCount;
  List<String> get railIcon => widget.railIcons;
  List<String>? get railLab => widget.railLabel;
  int get railItemCou => widget.railItemCount;
  double? get railIconSize => widget.railIconSize;
  List<Widget> get page => widget.pages;
  String? get companyLog => widget.logo;
  String get logoutIcon => widget.logoutIcon;
  String? get profileImage => widget.profileImage;
  double? get logoSize => widget.logoSize;
  Color? get background => widget.background;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
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
                      const SizedBox(height: 5),
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
                                  widget.onNavigationRailIndexSelected(index);
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
                      Column(
                        children: [
                          bottomIcon == null || bottomIcon!.isEmpty || bottomItemCou == 0
                              ? Container()  // If bottomIcon is null/empty or bottomItemCou is 0, show an empty container
                              : ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: bottomItemCou,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.onBottomIndexSelected(index);
                                  });
                                },
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    Image.asset(
                                      bottomIcon![index],
                                      scale: bottomIconsSize,
                                    ),
                                    const SizedBox(height: 10),
                                    bottomLabelActive == false
                                        ? Container() // If bottomLabelActive is false, hide the label
                                        : Text(
                                      bottomLab == null || bottomLab!.isEmpty
                                          ? "Provide label" // Provide a default label if bottomLab is null or empty
                                          : bottomLab![index],
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

                          const SizedBox(height: 5),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: profileImage != null && Uri.tryParse(profileImage!)?.hasAbsolutePath == true
                                  ? Image.network(
                                profileImage!,
                                fit: BoxFit.cover,
                              )
                                  : Image.asset(
                                profileImage!, // Path to your local default image
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),
                          Divider(
                              color: Colors.grey.shade300,
                              indent: 15,
                              endIndent: 15,
                              thickness: 2),
                          const SizedBox(height: 5),
                          Image.asset(
                            scale: bottomIconsSize,
                              logoutIcon
                          ),
                          const SizedBox(height: 20),
                        ],
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


