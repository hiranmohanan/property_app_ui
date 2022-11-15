import 'package:flutter/material.dart';
import 'package:property_app/home.dart';

import 'apartment_elemet.dart';
import 'package:sizer/sizer.dart';

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
         backgroundColor:  Colors.white,
        appBar: AppBar(
          backgroundColor:  Color(0xFF3989a4),
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>home()));
          }, icon: Icon(
            
            Icons.arrow_back_ios_rounded,
            color: Colors.white,)),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "post property",
            style: TextStyle(
              //fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
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
        body: TabBarView(children: [
          buildPagea(),
          buildPageh(),
          buildPagec(),
          buildPagel(),
        ],),
        floatingActionButton: FloatingActionButton(onPressed: null,
            child: Icon(Icons.add),
            backgroundColor: Colors.blue[900],),
        
       
    ));
    
  }
}
  Widget buildPageh( )=> Expanded(child: Container(
    child: Center(
      child: Text("home"),
    ),
  ));
  Widget buildPagea( )=> Expanded(child: apartmentElements());

  
  
  Widget buildPagel( )=> Expanded(child: Container(
    child: Center(
      child: Text("aprtment"),
    ),
  ));
  Widget buildPagec( )=> Expanded(child: Container(
    child: Center(
      child: Text("aprtment"),
    ),
  ));


