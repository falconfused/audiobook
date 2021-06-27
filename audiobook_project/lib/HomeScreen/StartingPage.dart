import 'package:flutter/material.dart';
import 'AudioTab.dart';
import 'CategoryCard.dart';
import 'BookCard.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: SafeArea(
        child: Scaffold(
            bottomNavigationBar: buildBottomNavigationBar(),
            appBar: AppBar(
              elevation: 1,
              backgroundColor: Colors.white,
              flexibleSpace: buildSearchBar(),
              bottom: buildTabBar(),
            ),
            body: TabBarView(
              children: [audioTab(), audioTab()],
            )),
      ),
    );
  }

//Making a Search Bar
  Padding buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: TextField(
        style: const TextStyle(color: Colors.red),
        decoration: InputDecoration(
          fillColor: Color(0xFFFAFAFA),
          filled: true,
          contentPadding: EdgeInsets.only(
            top: 1,
          ),
          focusColor: Colors.red,
          hoverColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(width: 0.25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(width: 0.25),
          ),
          hintText: 'Search Bar',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

//Building a TabBar
  TabBar buildTabBar() {
    return TabBar(
      indicatorColor: Color(0xFF2979ff),
      indicatorPadding: EdgeInsets.all(40).copyWith(top: 0, bottom: 0),
      unselectedLabelColor: Colors.blueGrey,
      labelColor: Color(0xFF2979ff),
      tabs: [
        Tab(text: 'BOOKS'),
        Tab(text: 'AUDIO'),
      ],
    );
  }

//Building a bottomnavigation bar for our App
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.headphones),
          label: 'AudioBooks',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note),
          label: 'My Books',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.white,
        ),
      ],
      currentIndex: _selectedIndex,
      // selectedItemColor: Color(0xFF687FF9),
      selectedItemColor: Color(0xFF2979ff),
      unselectedItemColor: Colors.blueGrey,
      onTap: _onItemTapped, showUnselectedLabels: true,
    );
  }
}
