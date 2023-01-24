import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/pizza.dart';
import 'package:spice_box/sandwich.dart';
import 'package:spice_box/searchlist.dart';

import 'burger.dart';

class search extends StatefulWidget{
  @override
  State<search> createState() => _searchState();
}
class _searchState extends State<search> {
  late final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade900,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.0,top: 40.0),
                  child: BackButton(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left:30.0,top: 15.0),
                  child: Text('Search Food Items',style: TextStyle(fontSize: 22,color: Colors.white),),
                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 30,top: 10.0,bottom: 0.0),
                    width: 300,
                    height: 55,
                    child: TextField(
                      style: TextStyle(color: Colors.white,fontSize: 20),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade800,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide.none,
                          ),
                          hintText: ('eg: cheese pizza'),
                          hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                          prefixIcon: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.search,color: Colors.white),
                          )
                      ),
                      onTap: () {
                        showSearch(context: context, delegate: searchlist(),);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left:30.0,top: 40.0),
                  child: Text('Our speciality',style: TextStyle(fontSize: 22,color: Colors.white),),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>pizza()));
                  },
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Container(
                              height: 65,
                              width: 65,
                              child: CircleAvatar(
                                foregroundImage: AssetImage('ast/img/pizzam.png'),
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(padding: EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: Container(
                              child: Text('Pizza',style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 10.0),
              child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>burger()));
                  },
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Container(
                              height: 65,
                              width: 65,
                              child: CircleAvatar(
                                foregroundImage: AssetImage('ast/img/burgerm.png'),
                                backgroundColor: Colors.grey.shade900,
                              ),
                            ),
                          ),
                        ),
                        Container(padding: EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: Container(
                              child: Text('Burger',style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 10.0),
              child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>sandwich()));
                  },
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          child: Center(
                            child: Container(
                              height: 65,
                              width: 65,
                              child: CircleAvatar(
                                foregroundImage: AssetImage('ast/img/sandwichm.png'),
                                backgroundColor: Colors.grey.shade900,
                              ),
                            ),
                          ),
                        ),
                        Container(padding: EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: Container(
                              child: Text('Sandwich',style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}