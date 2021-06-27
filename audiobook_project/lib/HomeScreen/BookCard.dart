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
        color: Colors.grey[100],
        padding: EdgeInsets.all(0),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 9,
              shadowColor: Colors.grey,
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(1),
                child: Image.asset(
                  "assets/$cover",
                  fit: BoxFit.cover,
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
              child: Text("$authorname",
                  overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
            ),
            Text("$bookname",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
      ),
    );
  }
}
