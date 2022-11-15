import 'package:flutter/material.dart';

Widget apartmentElements() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            element("* Avilable for",true),
            Row(children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "* Location", suffixIcon: Icon(Icons.search)),
                ),
              ),
              Icon(
                Icons.add_circle_outline_outlined,
                color: Colors.black38,
              )
            ]),
            element("* Type",true),
            element("* BHK", false),
            element("* furnishing", true),
            element("* Price", false),
            element("* Area", false),
            Row(children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "* Socity", suffixIcon: Icon(Icons.search)),
                ),
              ),
             
            ]),
            element("* Floor", true),
            element("* parking", true),
            element("* Bathrooms", false),
            element("* Facing", true),
          ],
        ),
      ),
    ),
  );
}

Widget element(String text,bool sufixIcon) {
 
  return Row(children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: text,

                  suffixIcon: sufixIcon 
                  ?Icon(Icons.arrow_drop_down)
                  :null),
            ),
          ),
        ]);
}
