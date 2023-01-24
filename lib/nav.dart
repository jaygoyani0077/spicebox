import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:spice_box/favorite.dart';
import 'package:spice_box/privacy.dart';
import 'package:spice_box/search.dart';

import 'about.dart';
import 'home.dart';
import 'login.dart';
import 'offer.dart';


class nav extends StatefulWidget{
  @override
  State<nav> createState() => _navState();
}
class _navState extends State<nav> {
  int index = 0;
  final  screens = [
    home(),
    offer(),
    favorite(),
    Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink,
        child: Center(
          child: Text('cart',style: TextStyle(fontSize: 50,color: Colors.black,fontWeight: FontWeight.bold)),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        title: Text('SpiceBox',style: TextStyle(fontSize: 25,color: Colors.orange),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
          }, icon: Icon(Icons.search),color: Colors.orange),
        ],
        leading: Builder(
          builder: (context)=>IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: Icon(Icons.menu),color: Colors.orange),
        ),
        leadingWidth: 60,
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.grey.shade900,
        child: ListView(
          padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('ast/img/f.jpg',),fit: BoxFit.cover
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    child: Image.asset('ast/img/g.jpeg',height: 100,width: 100,fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  Text('Jay Goyani',style: TextStyle(fontSize: 25),)
                ],
              ),
            ),
            OutlinedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
              },
              child: Container(
                  height: 60,
                  width: 250,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.person,color: Colors.white,),
                      Text('   Profile',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  )
              ),
            ),
            OutlinedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>about()));
              },
              child: Container(
                  height: 60,
                  width: 250,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline,color: Colors.white,),
                      Text('   About Us',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  )
              ),
            ),
            OutlinedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>privacy()));
              },
              child: Container(
                  height: 60,
                  width: 250,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.request_page_outlined,color: Colors.white,),
                      Text('   Pirvacy Policy',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade900,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: GNav(
            backgroundColor: Colors.grey.shade900,
            color: Colors.white,
            activeColor: Colors.orange,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(15.0),
            selectedIndex: index,
            onTabChange: (index) =>
                setState(() => this.index=index),
            tabs: [
              GButton(icon: Icons.home,text: 'Home',gap: 5),
              GButton(icon: Icons.percent,text: 'Offers',gap: 5),
              GButton(icon: Icons.favorite,text: 'Favorite',gap: 5),
              GButton(icon: Icons.shopping_cart,text: 'Cart',gap: 5),
            ],
          ),
        ),
      ),
    );
  }
}