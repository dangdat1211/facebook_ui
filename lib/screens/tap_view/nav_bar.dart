import 'package:facebook_ui/screens/tap_view/friend_request_screen.dart';
import 'package:facebook_ui/screens/tap_view/home_screen.dart';
import 'package:facebook_ui/screens/tap_view/menu_screen.dart';
import 'package:facebook_ui/screens/tap_view/notification_screen.dart';
import 'package:facebook_ui/screens/tap_view/personal_profile_screen.dart';
import 'package:facebook_ui/screens/tap_view/watch_video_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const FriendRequestScreen(),
    const PersonalProfileScreen(),
    const WatchVideoScreen(),
    const NotificationScreen(),
    const MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildNavBar() {
    return Container(
      height: kToolbarHeight - 8, // Giảm chiều cao của navbar
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
            0,
            'assets/icons/home_outline_icon.png',
            'assets/icons/home_solid_icon.png',
          ),
          _buildNavItem(
            1,
            'assets/icons/friend_outline_icon.png',
            'assets/icons/friend_outline_icon.png',
            showBadge: true,
            badgeCount: 3,
          ),
          _buildNavItem(
            2,
            'assets/icons/personal_outline_icon.png',
            'assets/icons/personal_solid_icon.png',
          ),
          _buildNavItem(
            3,
            'assets/icons/watch_outline_icon.png',
            'assets/icons/watch_solid_icon.png',
          ),
          _buildNavItem(
            4,
            'assets/icons/notification_outline_icon.png',
            'assets/icons/notification_solid_icon.png',
            showBadge: true,
            badgeCount: 5,
          ),
          _buildNavItem(
            5,
            'assets/icons/menu_outline_icon.png',
            'assets/icons/menu_outline_icon.png',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    int index,
    String unselectedIconPath,
    String selectedIconPath, {
    bool showBadge = false,
    int badgeCount = 0,
  }) {
    final bool isSelected = _selectedIndex == index;

    return InkWell(
      onTap: () => _onItemTapped(index),
      child: SizedBox(
        height: kToolbarHeight - 8, // Giảm chiều cao tương ứng
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Image.asset(
                    isSelected ? selectedIconPath : unselectedIconPath,
                    width: 22, 
                    height: 22,
                    color: isSelected ? Colors.blue : Colors.black
                  ),
                ),
                const SizedBox(height: 4),
                if (isSelected)
                  Container(
                    width: 6, 
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
            if (showBadge && !isSelected)
              Positioned(
                right: 12,
                top: 4,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Center(
                    child: Text(
                      badgeCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: _selectedIndex == 0
            ? const Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'facebook',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20, // Giảm kích thước chữ
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null,
        actions: [
          if (_selectedIndex == 0)
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 4.0),
              child: GestureDetector(
                onTap: () {
                  // Handle messenger tap
                },
                child: Image.asset(
                  'assets/images/fb_messenger.png',
                  width: 20, // Giảm kích thước icon
                  height: 20,
                ),
              ),
            ),
        ],
        toolbarHeight: _selectedIndex == 0 ? kToolbarHeight * 2 : kToolbarHeight, 
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 8),
            _buildNavBar(),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
