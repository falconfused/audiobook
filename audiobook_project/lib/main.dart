import 'package:flutter/material.dart';

import 'BookCard.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

void main() => runApp(MaterialApp(
      home: StartingPage(),
      debugShowCheckedModeBanner: false,
    ));

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
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,

              // TextField(
              //   decoration: InputDecoration(
              //     hintText: "Enter a message",
              //     suffixIcon: IconButton(
              //       onPressed: () {},
              //       icon: Icon(Icons.clear),
              //     ),
              //   ),
              // ),
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(16).copyWith(top: 5, bottom: 5),
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 0.25),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 0.25),
                      ),
                      hintText: 'Search Bar',
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.grey),
                ),
              ),
              bottom: TabBar(
                indicatorColor: Color(0xFF687FF9),
                indicatorPadding:
                    EdgeInsets.all(40).copyWith(top: 0, bottom: 0),
                unselectedLabelColor: Colors.black,
                labelColor: Color(0xFF687FF9),
                tabs: [
                  Tab(text: 'BOOKS'),
                  Tab(text: 'AUDIO'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Scaffold(
                    bottomNavigationBar: BottomNavigationBar(
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
                      selectedItemColor: Color(0xFF687FF9),
                      unselectedItemColor: Colors.grey,
                      onTap: _onItemTapped, showUnselectedLabels: true,
                    ),
                    body: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0)
                              .copyWith(top: 0, bottom: 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CategoryCard(
                                  photo: "psycho.jpg",
                                  CategoryName: "Psychology",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CategoryCard(
                                  photo: "adventure.jpeg",
                                  CategoryName: "Adventure",
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                CategoryCard(
                                  photo: "psycho.jpg",
                                  CategoryName: "Psychology",
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                CategoryCard(
                                  photo: "psycho.jpg",
                                  CategoryName: "Psychology",
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0)
                              .copyWith(top: 0, bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recomendation",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "view all",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFFA4B1EB)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0)
                              .copyWith(top: 0, bottom: 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BookCard(cover: "strip.jpg"),
                                SizedBox(
                                  width: 10,
                                ),
                                BookCard(cover: "mocking bird.jpg"),
                                SizedBox(
                                  width: 15,
                                ),
                                BookCard(cover: "pride.jpg"),
                                SizedBox(
                                  width: 15,
                                ),
                                BookCard(cover: "mocking bird.jpg"),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0)
                              .copyWith(top: 0, bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "view all",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFFA4B1EB)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0)
                              .copyWith(top: 0, bottom: 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BookCard(cover: "mocking bird.jpg"),
                                SizedBox(
                                  width: 10,
                                ),
                                BookCard(cover: "mocking bird.jpg"),
                                SizedBox(
                                  width: 15,
                                ),
                                BookCard(cover: "mocking bird.jpg"),
                                SizedBox(
                                  width: 15,
                                ),
                                BookCard(cover: "mocking bird.jpg"),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Scaffold(
                    body: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      "hey",
                      style: TextStyle(fontSize: 100),
                    ),
                    Text(
                      "hey",
                      style: TextStyle(fontSize: 100),
                    ),
                    Text(
                      "hey",
                      style: TextStyle(fontSize: 100),
                    ),
                    Text(
                      "hey",
                      style: TextStyle(fontSize: 100),
                    ),
                    Text(
                      "hey",
                      style: TextStyle(fontSize: 100),
                    ),
                    Text(
                      "hey",
                      style: TextStyle(fontSize: 100),
                    ),
                  ],
                )),
              ],
            )),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String CategoryName;
  final String photo;

  CategoryCard({required this.photo, required this.CategoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 120,
      child: Center(
        child: Column(
          children: [
            FlatButton(
              color: Colors.white,
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Card(
                color: Colors.white,
                elevation: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/$photo",
                        ),
                        radius: 70,
                      ),
                    ),
                    Text(
                      "     $CategoryName",
                      style: TextStyle(
                          color: Color(0xFFA4B1EB),
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
