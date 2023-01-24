import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/pepperonipizza.dart';

import 'cheesepizza.dart';
import 'classicpizza.dart';
import 'marhgerita.dart';
import 'newyorkpizza.dart';

class pizza extends StatefulWidget{
  @override
  State<pizza> createState() => _pizzaState();
}
class _pizzaState extends State<pizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 60,
        title: Text('Pizza',style: TextStyle(color: Colors.orange,fontSize: 25),),
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
                        image: AssetImage('ast/img/p7.jpeg'),
                      ),
                      color: Colors.black,
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
                              child: Text('Pizza',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
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
                              child: Text('ITALY',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 50.0,top: 8.0),
                              child: Text('[19th century]',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>margherita()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/p2.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 10.0),
                              child: Text('Margherita pizza',style: TextStyle(color: Colors.white,fontSize: 25),),
                            ),
                          ],
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 0.0),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cheesepizza()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/p3.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 10.0),
                              child: Text('Cheese pizza',style: TextStyle(color: Colors.white,fontSize: 25),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>pepperonipizza()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/p4.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 10.0),
                              child: Text('Pepperoni pizza',style: TextStyle(color: Colors.white,fontSize: 25),),
                            ),
                          ],
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 0.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('3.7',style: TextStyle(fontSize: 17,color: Colors.white),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>classicpizza()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/p5.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 8.0,top: 20.0,bottom: 10.0),
                              child: Text('Classic pizza',style: TextStyle(color: Colors.white,fontSize: 25),),
                            ),
                          ],
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 25.0),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>newyorkpizza()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/p6.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 13.0,top: 20.0,bottom: 10.0),
                              child: Text('New-york style pizza',style: TextStyle(color: Colors.white,fontSize: 21),),
                            ),
                          ],
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 0.0),
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