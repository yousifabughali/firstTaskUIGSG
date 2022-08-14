import 'package:first_task_ui/views/favorite_screen.dart';
import 'package:first_task_ui/views/profile_screen.dart';
import 'package:first_task_ui/views/home_screen.dart';
import 'package:first_task_ui/views/widgets/listview_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'ELEGANT',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: _selectedScreenIndex==0? HomeScreen(): _selectedScreenIndex==1?FavoriteScreen():ProfileScreen(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          onTap: (i) {
            _selectedScreenIndex = i;
            setState(() {});
          },
          currentIndex: _selectedScreenIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Favourite',
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.perm_identity,
                  color: Colors.black,
                ))
          ]),
    );
  }
}
