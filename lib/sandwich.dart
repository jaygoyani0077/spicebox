import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/paneersandwich.dart';

import 'cheesesandwich.dart';
import 'chikentikka.dart';
import 'grillsandwich.dart';
import 'mayonese.dart';

class sandwich extends StatefulWidget{
  @override
  _sandwichstate createState() => _sandwichstate();
}
class _sandwichstate extends State<sandwich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 60,
        title: Text('Sandwich',style: TextStyle(color: Colors.orange,fontSize: 25),),
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.0,left: 20.0,bottom: 20.0,right: 20.0),
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('ast/img/s.png'),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 100,
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5.0),
                              child: Text('Sandwich',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Text('Found in: ',style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Text('ENGLAND',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 100.0,top: 8.0),
                              child: Text('[1762]',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.grey.shade900
              ),
              height: 100,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cheesesandwich()));
                },
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/s1.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20.0,top: 20.0,bottom: 10.0),
                              child: Text('Cheese Sandwich',style: TextStyle(color: Colors.white,fontSize: 22),),
                            ),
                          ],
                        ),
                        Container(
                          width: 170,
                          margin: EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('4.5',style: TextStyle(fontSize: 17,color: Colors.white),),
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('ast/img/veg.png')
                                    )
                                ),
                              ),
                              Text(' Veg.',style: TextStyle(fontSize: 18,color: Colors.green),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.grey.shade900
              ),
              height: 100,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>grillsandwich()));
                },
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/s2.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 10.0),
                              child: Text('Grill Sandwich',style: TextStyle(color: Colors.white,fontSize: 24),),
                            ),
                          ],
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('4.2',style: TextStyle(fontSize: 17,color: Colors.white),),
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('ast/img/veg.png')
                                    )
                                ),
                              ),
                              Text(' Veg.',style: TextStyle(fontSize: 18,color: Colors.green),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.grey.shade900
              ),
              height: 100,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>chikentikka()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/s3.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0.0,top: 20.0,bottom: 10.0),
                              child: Text('Chiken Tikka',style: TextStyle(color: Colors.white,fontSize: 025),),
                            ),
                          ],
                        ),
                        Container(
                          width: 175,
                          margin: EdgeInsets.only(left: 30.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('3.7',style: TextStyle(fontSize: 17,color: Colors.white),),
                              Container(
                                margin: EdgeInsets.only(left: 25.0),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('ast/img/nonveg.png')
                                    )
                                ),
                              ),
                              Text(' Non-veg.',style: TextStyle(fontSize: 18,color: Colors.red),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.grey.shade900
              ),
              height: 100,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>mayonese()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/s4.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 13.0,top: 20.0,bottom: 10.0),
                              child: Text('Mayonnaise Sandwich',style: TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ],
                        ),
                        Container(
                          width: 165,
                          margin: EdgeInsets.only(left: 010.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('4.4',style: TextStyle(fontSize: 17,color: Colors.white),),
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('ast/img/veg.png')
                                    )
                                ),
                              ),
                              Text(' Veg.',style: TextStyle(fontSize: 18,color: Colors.green),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.grey.shade900
              ),
              height: 100,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>paneersandwich()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/s5.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 13.0,top: 20.0,bottom: 10.0),
                              child: Text('Paneer Sandwich',style: TextStyle(color: Colors.white,fontSize: 24),),
                            ),
                          ],
                        ),
                        Container(
                          width: 180,
                          margin: EdgeInsets.only(left: 30.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('3.2',style: TextStyle(fontSize: 17,color: Colors.white),),
                              Container(
                                margin: EdgeInsets.only(left: 30.0),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('ast/img/veg.png')
                                    )
                                ),
                              ),
                              Text(' Veg.',style: TextStyle(fontSize: 18,color: Colors.green),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}