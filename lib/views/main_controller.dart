import 'package:flutter/material.dart';
import 'package:music_app/common/color_config.dart';
import 'package:music_app/views/home/home_page.dart';

class MainControllerPage extends StatefulWidget {
  const MainControllerPage({Key? key}) : super(key: key);

  @override
  State<MainControllerPage> createState() => _MainControllerPageState();
}

class _MainControllerPageState extends State<MainControllerPage> {
  final PageController _pageController = PageController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onPageChange(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  void _onBottomTap(int value) {
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: _onPageChange,
        children: const [
          HomePage(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: ColorConfig.primary,
          unselectedItemColor: ColorConfig.textGray,
          elevation: 0,
          onTap: _onBottomTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined),
              activeIcon: Icon(
                Icons.my_library_music_rounded,
                color: ColorConfig.primary,
              ),
              label: '发现',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              activeIcon: Icon(
                Icons.supervised_user_circle,
                color: ColorConfig.primary,
              ),
              label: '我的',
            ),
          ],
        ),
      ),
    );
  }
}
