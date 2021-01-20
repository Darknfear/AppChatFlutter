import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListTitle extends StatelessWidget {
  String title;
  IconData iconData;
  Function onTap;
  ItemListTitle({this.title, this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: this.onTap,
        child: Row(
          children: [
            Icon(this.iconData),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                this.title,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }}
