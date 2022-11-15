

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:property_app/post.dart';
import 'package:property_app/search.dart';
import 'package:sizer/sizer.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3989a4),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3989a4),
        elevation: 0,
        centerTitle: true,
        title: RichText(
            text: const TextSpan(
                text: 'RC',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                children: <TextSpan>[
              TextSpan(
                text: "Realator",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
              ),
              TextSpan(
                text: "Connect",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )
            ])),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> post()));
                  },
                  child: Column(
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "post",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      "welcome",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      "TeamAasma",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> search())),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text(
                        "search",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Expanded(
                  child: Container(
                height: 40.h,
                width: 90.w,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Dashboard",
                      style: TextStyle(
                          color: Color(0xFF3989a4),
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: null,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.house_siding_sharp,
                                    color: Color(0xFF3989a4),
                                    size: 40,
                                  ),
                                  Text(
                                    "Companies",
                                    style: TextStyle(color: Color(0xFF3989a4)),
                                  ),
                                  Text(
                                    "42",
                                    style: TextStyle(
                                        color: Color(0xFF3989a4),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: null,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.people_outline,
                                    color: Color(0xFF3989a4),
                                    size: 40,
                                  ),
                                  Text(
                                    "Agents",
                                    style: TextStyle(color: Color(0xFF3989a4)),
                                  ),
                                  Text(
                                    "45",
                                    style: TextStyle(
                                        color: Color(0xFF3989a4),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: null,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.villa_outlined,
                                    color: Color(0xFF3989a4),
                                    size: 40,
                                  ),
                                  Text(
                                    "Apartment",
                                    style: TextStyle(color: Color(0xFF3989a4)),
                                  ),
                                  Text(
                                    "1357",
                                    style: TextStyle(
                                        color: Color(0xFF3989a4),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: null,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.home_work_outlined,
                                    color: Color(0xFF3989a4),
                                    size: 40,
                                  ),
                                  Text(
                                    "houses",
                                    style: TextStyle(color: Color(0xFF3989a4)),
                                  ),
                                  Text(
                                    "326",
                                    style: TextStyle(
                                        color: Color(0xFF3989a4),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: null,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.landscape_outlined,
                                    color: Color(0xFF3989a4),
                                    size: 40,
                                  ),
                                  Text(
                                    "Agents",
                                    style: TextStyle(color: Color(0xFF3989a4)),
                                  ),
                                  Text(
                                    "124",
                                    style: TextStyle(
                                        color: Color(0xFF3989a4),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: null,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.location_city_outlined,
                                    color: Color(0xFF3989a4),
                                    size: 40,
                                  ),
                                  Text(
                                    "offices",
                                    style: TextStyle(color: Color(0xFF3989a4)),
                                  ),
                                  Text(
                                    "222",
                                    style: TextStyle(
                                        color: Color(0xFF3989a4),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: 80.w,
                lineThickness: 5.0,
                dashLength: 4.0,
                dashColor: Colors.black,
                dashRadius: 5.0,
                dashGapLength: 4.0,
                dashGapRadius: 0.0,
              ),
            ),
            Row(children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search by ID",
                      prefixIcon: Icon(Icons.image_search_sharp)),
                ),
              ),
            ]),
            Row(children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "My Properties",
                      prefixIcon: Icon(Icons.today_rounded)),
                ),
              ),
            ]),
            Row(children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "My Requirments",
                      prefixIcon: Icon(Icons.line_style)),
                ),
              ),
            ]),
            Row(children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "GAR Requirements",
                      prefixIcon: Icon(Icons.table_rows_rounded)),
                ),
              ),
            ]),
            Row(children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Notifications",
                      prefixIcon: Icon(Icons.notifications_none_outlined)),
                ),
              ),
            ]),
            Row(children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Important Contacts",
                      prefixIcon: Icon(Icons.contact_mail_rounded)),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
