import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/salmonburger.dart';
import 'package:spice_box/spicepaneer.dart';

import 'alootikki.dart';
import 'doublecheese.dart';
import 'hamburger.dart';

class burger extends StatefulWidget{
  @override
  State<burger> createState() => _burgerstate();
}
class _burgerstate extends State<burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 60,
        title: Text('Burger',style: TextStyle(color: Colors.orange,fontSize: 25),),
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
                        image: AssetImage('ast/img/burger1.png'),
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
                              child: Text('Burger',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
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
                              child: Text('GERMANY',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 50.0,top: 8.0),
                              child: Text('[1885-1904]',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>alootikki()));
                },
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/b1.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0.0,top: 20.0,bottom: 10.0),
                              child: Text('Aloo Tikki',style: TextStyle(color: Colors.white,fontSize: 25),),
                            ),
                          ],
                        ),
                        Container(
                          width: 150,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>hamburger()));
                },
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/b2.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 10.0),
                              child: Text('Ham Burger',style: TextStyle(color: Colors.white,fontSize: 25),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>doublecheese()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/b3.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 10.0),
                              child: Text('Double cheese Burger',style: TextStyle(color: Colors.white,fontSize: 020),),
                            ),
                          ],
                        ),
                        Container(
                          width: 170,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>salmonburger()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/b4.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0,top: 20.0,bottom: 10.0),
                              child: Text('Salmon Burger',style: TextStyle(color: Colors.white,fontSize: 25),),
                            ),
                          ],
                        ),
                        Container(
                          width: 165,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>spicepaneer()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/b5.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 13.0,top: 20.0,bottom: 10.0),
                              child: Text('Spice Paneer Burger',style: TextStyle(color: Colors.white,fontSize: 22),),
                            ),
                          ],
                        ),
                        Container(
                          width: 180,
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
