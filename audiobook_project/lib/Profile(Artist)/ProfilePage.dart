import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                Image(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.2,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1470104240373-bc1812eddc9f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb'),
                ),
                Positioned(
                  bottom: -50.0,
                  left: 20,
                  child: CircleAvatar(
                    radius: 76,
                    backgroundColor: Color(0xFFFBFBFB),
                    child: Card(
                      elevation: 30.0,
                      shadowColor: Colors.grey,
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/pride.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 46,
            ),
            ListTile(
              // ignore: prefer_const_constructors
              title: Text(
                'Captain America',
                style: GoogleFonts.roboto(
                    fontSize: 29,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.15,
                    wordSpacing: 0.25),
              ), // ignore: prefer_const_constructors
              subtitle: Text(
                'Captain America is the alter ego of Steve Rogers, a frail young artist enhanced to the peak of human perfection by an experimental "super-soldier serum" after joining the military to aid the United States government\'s efforts in World War II',
                style: GoogleFonts.poppins(
                    // fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              height: 5,
              thickness: 0.5,
            ),
            songCard(
                photo: "pride.jpg",
                songname: "Pride and Prejudice",
                subtitlename: "The First Part"),
            SizedBox(
              height: 10,
            ),
            songCard(
                photo: "mocking bird.jpg",
                songname: "The Mocking Bird ",
                subtitlename: "The 2nd Part"),
            SizedBox(
              height: 10,
            ),
            songCard(
                photo: "mocking bird.jpg",
                songname: "The Mocking Bird sdvsdsdfdfesdfwsvdwvbew",
                subtitlename: "The 3rd Part"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Padding songCard(
      {required String photo, required String songname, String? subtitlename}) {
    return Padding(
      padding: const EdgeInsets.all(20.0).copyWith(top: 0, bottom: 0),
      child: Card(
        borderOnForeground: true,
        elevation: 12,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "assets/$photo",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 30,
                width: 140,
                child: Text(
                  "$songname",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              // ignore: prefer_const_constructors
              Container(
                height: 30,
                width: 140,
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    "$subtitlename",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ]),
            SizedBox(width: 50),
            // ignore: prefer_const_constructors
            Container(
              width: 50,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
                child: Icon(
                  Icons.play_arrow,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
