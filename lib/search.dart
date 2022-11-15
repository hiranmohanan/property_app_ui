import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'apartment_elemet.dart';
import 'home.dart';

class search extends StatefulWidget {
  @override
  State<search> createState() => _searchState();
}

bool _isSelected = false;
bool button = false;

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
           backgroundColor:  Colors.white,
          appBar: AppBar(
             backgroundColor:  Color(0xFF3989a4),
            leading: IconButton(
                onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>home()));
          },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                )),
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "Search",
              style: TextStyle(
                //fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
               IconButton(
            onPressed: null,
            icon: Icon(Icons.add,color: Colors.white,),
            
          ),
            ],
            bottom: TabBar(
                indicatorSize: null,
                indicatorColor: null,
                indicator: null,
                tabs: [
                  Tab(
                    icon: Icon(Icons.apartment),
                    text: "Apartment",
                  ),
                  Tab(
                    icon: Icon(Icons.house_outlined),
                    text: "House",
                  ),
                  Tab(
                    icon: Icon(Icons.location_city_outlined),
                    text: "Comerecial",
                  ),
                  Tab(
                    icon: Icon(Icons.landslide),
                    text: "Land",
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              buildPagea(),
              buildPageh(),
              buildPagec(),
              buildPagel(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.search),
            backgroundColor: Colors.blue[900],
          ),
        ));
  }

  Widget element(String text, int heigh, int wig,bool clr) {
    return InkWell(
      onTap: () {
        setState(() {
          button = true;
        });
      },
      child: Container(
        height: heigh.h,
        width: wig.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: clr ? Colors.blue[100] : Colors.grey),
        child: Center(
          child: Text(text,style: TextStyle(
            color: Colors.blue[800]
          ),),
        ),
      ),
    );
    // return Transform.scale(
    //   scaleX: 3.2,
    //   scaleY: 1.5,

    //   child: ChoiceChip(

    //     label: Text(text),
    //     selected: _isSelected,
    //     surfaceTintColor: Colors.amber,
    //     onSelected: (newBoolValue) {
    //       setState(() {
    //         button = true;
    //       });

    //     },
    //   ),
    // );
  }

  Widget buildPageh() => Container(
        child: Center(
  child: Text("home"),
        ),
      );
  Widget buildPagea() => Container(
        child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(children: [
      SizedBox(
        height: 10,
      ),
      Wrap(
        children: [
          element("Rent", 8, 40,true),
          SizedBox(
            width: 10,
          ),
          element("Sale", 8, 40,false),
        ],
      ),
      Divider(thickness: 2.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          element("flat", 5, 25,true),
          element("penthouse", 5, 25,false),
          element("Duplex", 5, 25,false),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      element("Studio", 5, 25,false),
      Divider(thickness: 2.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          element("1BHk", 5, 25,true),
          element("2BHK", 5, 25,false),
          element("3BHK", 5, 25,false),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          element("4BHK", 5, 25,false),
          element("5BHK", 5, 25,false),
          element("6BHK", 5, 25,false),
        ],
      ),
      Divider(thickness: 2.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          element("Unfinished", 5, 40,true),
          element("Finished", 5, 40,false),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      element("Semi Finished", 5, 40,false),
      Divider(thickness: 2.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "price range",
            style: TextStyle(color: Colors.blue[200]),
          ),
          Text(
            "₹ 8k",
            style: TextStyle(
                color: Colors.blue[900], fontWeight: FontWeight.bold),
          ),
          Text(
            "to",
            style: TextStyle(color: Colors.blue[900]),
          ),
          Text(
            "₹ 57k",
            style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(height: 10,),

      Divider(thickness: 2.0),
      Row(children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Location", suffixIcon: Icon(Icons.search)),
        ),
      ),
    ]),
    Row(children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Socity Type", ),
        ),
      ),
    ]),
  ]),
        ),
      ));

  Widget buildPagel() => Expanded(
          child: Container(
        child: Center(
          child: Text("aprtment"),
        ),
      ));
  Widget buildPagec() => Expanded(
          child: Container(
        child: Center(
          child: Text("aprtment"),
        ),
      ));
}
