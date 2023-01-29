import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/inbox_screen.dart';
import 'package:ecommerce/screens/notification_screen.dart';
import 'package:ecommerce/screens/post_product_screen.dart';
import 'package:ecommerce/screens/setting_screen.dart';
import 'package:ecommerce/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';

import '../../utils/style.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key, int? selectedPage = 0}) : super(key: key);

  @override
  _DashPageState createState() => _DashPageState();
}

class _DashPageState extends State<DashBoardScreen> {
  int selectedPage = 0; //initial value

  String? jwt;

  final List<Widget> pages = [
    const HomeScreen(),
    const InboxScreen(),
    const PostProductScreen(),
    const NotificationScreen(),
    const SettingScreen()
  ];

  @override
  void initState() {
    //pushNotificationService.initialise();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          elevation: 8.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: kDisabledTextColor,
          selectedItemColor: kPrimaryColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: selectedPage,
          enableFeedback: false,
          items: [
            _bottomNavigationBarItem(
                icon: selectedPage == 0
                    ? SvgPicture.asset(Assets.icons.homeIcon,
                        color: kPrimaryColor)
                    : SvgPicture.asset(
                        Assets.icons.homeIcon,
                        color: kBottomBarDeactiveColor,
                      ),
                label: kHomeBottomBarLable),
            _bottomNavigationBarItem(
                icon: selectedPage == 1
                    ? SvgPicture.asset(Assets.icons.messageIcon,
                        color: kPrimaryColor)
                    : SvgPicture.asset(
                        Assets.icons.messageIcon,
                        color: kBottomBarDeactiveColor,
                      ),
                label: kMessageBottomBarLable),
            _bottomNavigationBarItem(
                icon: selectedPage == 2
                    ? SvgPicture.asset(Assets.icons.postProductIcon)
                    : SvgPicture.asset(Assets.icons.postProductIcon),
                ),
            _bottomNavigationBarItem(
                icon: selectedPage == 3
                    ? SvgPicture.asset(Assets.icons.notificationIcon,
                        color: kPrimaryColor)
                    : SvgPicture.asset(
                        Assets.icons.notificationIcon,
                        color: kBottomBarDeactiveColor,
                      ),
                label: kNotificationBottomBarLable),
            _bottomNavigationBarItem(
                icon: selectedPage == 4
                    ? SvgPicture.asset(
                        Assets.icons.settingIcon,
                        color: kPrimaryColor,
                      )
                    : SvgPicture.asset(
                        Assets.icons.settingIcon,
                        color: kBottomBarDeactiveColor,
                      ),
                label: kSettingBottomBarLable),
          ],
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          //onTap: (index) => dashController.selectedIndex = index,
        ));
  }

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentindex,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          items: [
            BottomNavigationBarItem(
                backgroundColor: kPrimaryColor,
                label: "Home",
                icon: Image.asset(
                  "assets/icons/home.png",
                  height: 24,
                  width: 24,
                  color: Color(0xFF050C1F).withOpacity(0.5),
                ),
                //SvgPicture.asset(Assets.icons.homeIcon),
                activeIcon: Image.asset(
                  "assets/icons/home.png",
                  height: 24,
                  width: 24,
                  color: kPrimaryColor,
                ) /*SvgPicture.asset(
                  Assets.icons.homeIcon,
                )*/
            ),
            BottomNavigationBarItem(
              label: "Sponsors",
              icon: SvgPicture.asset(Assets.icons.sponsorsIcon),
              activeIcon: SvgPicture.asset(
                Assets.icons.sponsorsIcon,
                color: kPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
                label: "Messages",
                icon: SvgPicture.asset(Assets.icons.mail),
                activeIcon: SvgPicture.asset(
                  Assets.icons.mail,
                  color: kPrimaryColor,
                )),
            BottomNavigationBarItem(
                label: "More",
                icon: SvgPicture.asset(Assets.icons.moreIcon),
                activeIcon: SvgPicture.asset(
                  Assets.icons.moreIcon,
                  color: kPrimaryColor,
                )),
          ],
          onTap: (index) {

            jwt != null ?
            setState(() {
              _currentindex = index;
            }) : Get.to(() => LoginScreen(),
                transition:
                sendTransition);
          },
        ),
        body: pages[_currentindex]);
  }*/

  _bottomNavigationBarItem({
    Widget? icon,
    String? label,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(4.0),
        child: icon!,
      ),
      label: label ?? "",
    );
  }
}
