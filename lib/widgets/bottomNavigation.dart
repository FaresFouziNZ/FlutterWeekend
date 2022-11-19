import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../screens/drivers_list_view.dart';

class SalomonNavBar extends StatefulWidget {
  const SalomonNavBar({Key key}) : super(key: key);

  @override
  State<SalomonNavBar> createState() => _SalomonNavBarState();
}

class _SalomonNavBarState extends State<SalomonNavBar> {
  // final style = const TextStyle(fontSize: 12);

  var _currentIndex = 0;
  final List<Widget> _children = [
    DriversListView(),
    DriversListView(),
    DriversListView(),
    ProfileView(),
    //  FavoritePage(),
    //  SearchPage(),
    //  ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      // margin: EdgeInsets.all(10),
      currentIndex: _currentIndex,

      onTap: (i) => setState(() {
        // _children = _currentIndex;
        _currentIndex = i;
      }),
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.purple,
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text("Likes"),
          selectedColor: Colors.pink,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
          selectedColor: Colors.orange,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: Colors.teal,
        )
      ],
    );
  }
}
