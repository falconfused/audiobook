import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String CategoryName;
  final String photo;

  CategoryCard({required this.photo, required this.CategoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 120,
      child: FlatButton(
        color: Colors.white,
        padding: EdgeInsets.all(0),
        onPressed: () {},
        child: Card(
          color: Colors.white,
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 10,
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
                    color: Color(0xFFA4B1EB), fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
