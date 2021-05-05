import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'thongtin_page.dart';
import 'dangky_page.dart';
import 'nganhnghe_page.dart';
import 'hocbong_page.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    ThongTinPage(),
    DangKyPage(),
    NganhNghePage(),
    HocBongPage()
  ];

  int _selectedIndex = 0;

  void onPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItem(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: onPage,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItem,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.newspaper,
                color: Colors.white,
              ),
              label: 'Thông tin'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.pencilAlt,
                color: Colors.white,
              ),
              label: 'Đăng ký'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.book,
                color: Colors.white,
              ),
              label: 'Ngành nghề'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.trophy,
                color: Colors.white,
              ),
              label: 'Học bổng'),
        ],
      ),
    );
  }
}
