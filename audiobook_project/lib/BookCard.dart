import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String cover;

  BookCard({
    required this.cover,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 120,
      child: Column(
        children: [
          FlatButton(
            color: Colors.white,
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                      image: AssetImage(
                    "assets/$cover",
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
// Opacity(
//                   opacity: 0.5,
//                   child: Text(
//                     "Harper Lee",
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 Text("To Kill a Mocking Bird",
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                     )),
