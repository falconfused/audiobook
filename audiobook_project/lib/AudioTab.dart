import 'package:flutter/material.dart';
import 'StartingPage.dart';
import 'CategoryCard.dart';
import 'BookCard.dart';

double widthbwcards = 10;
double heightbwcategorynameandbook = 5;
Scaffold audioTab() {
  return Scaffold(
      body: ListView(
    scrollDirection: Axis.vertical,
    children: [
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 0),
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
                width: widthbwcards,
              ),
              CategoryCard(
                photo: "adventure.jpeg",
                CategoryName: "Adventure",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              CategoryCard(
                photo: "psycho.jpg",
                CategoryName: "Psychology",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              CategoryCard(
                photo: "psycho.jpg",
                CategoryName: "Psychology",
              ),
              SizedBox(
                width: widthbwcards,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recomendation",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            FlatButton(
              onPressed: () {},
              padding: EdgeInsets.all(0),
              child: Text(
                "view all",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFFA4B1EB)),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: heightbwcategorynameandbook,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BookCard(
                authorname: "Jane Austen",
                cover: "pride.jpg",
                bookname: "Pride and Prejudice",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              BookCard(
                cover: "mocking bird.jpg",
                authorname: "Harper Lee",
                bookname: "The Mocking Bird",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              BookCard(
                authorname: "Jane Austen",
                cover: "pride.jpg",
                bookname: "Pride and Prejudice",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              BookCard(
                cover: "mocking bird.jpg",
                authorname: "Harper Lee",
                bookname: "The Mocking Bird",
              ),
              SizedBox(
                width: widthbwcards,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Text(
                "view all",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFFA4B1EB)),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: heightbwcategorynameandbook,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 0, bottom: 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BookCard(
                authorname: "Jane Austen",
                cover: "pride.jpg",
                bookname: "Pride and Prejudice",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              BookCard(
                cover: "mocking bird.jpg",
                authorname: "Harper Lee",
                bookname: "The Mocking Bird",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              BookCard(
                authorname: "Jane Austen",
                cover: "pride.jpg",
                bookname: "Pride and Prejudice",
              ),
              SizedBox(
                width: widthbwcards,
              ),
              BookCard(
                cover: "mocking bird.jpg",
                authorname: "Harper Lee",
                bookname: "The Mocking Bird",
              ),
              SizedBox(
                width: widthbwcards,
              ),
            ],
          ),
        ),
      ),
    ],
  ));
}
