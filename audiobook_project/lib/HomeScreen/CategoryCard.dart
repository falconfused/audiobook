import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String CategoryName;
  final String photo;

  CategoryCard({required this.photo, required this.CategoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: 180,
      width: 120,
      child: FlatButton(
        color: Colors.grey[100],
        padding: EdgeInsets.all(0),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(
                "assets/$photo",
              ),
              radius: 70,
            ),
            Text(
              "$CategoryName",
              style: TextStyle(
                  color: Color(0xFF607d8b), fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
