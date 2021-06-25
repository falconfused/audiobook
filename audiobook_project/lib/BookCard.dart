import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String cover;
  final String authorname;
  final String bookname;
  BookCard(
      {required this.cover, required this.authorname, required this.bookname});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 150,
      child: FlatButton(
        color: Colors.white,
        padding: EdgeInsets.all(0),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 9,
              shadowColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/$cover",
                  height: 220,
                  semanticLabel: "asgegweg",
                  width: 150,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                "Harper Lee",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),
            Text("To Kill a Mocking Bird sfghwsgsg",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
      ),
    );
  }
}
