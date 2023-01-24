import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spice_box/pepsi.dart';
import 'package:spice_box/sprite.dart';
import 'package:spice_box/thumpsup.dart';

import 'cocacola.dart';
import 'fanta.dart';

class colddrink extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 60,
        title: Text('Cold drink',style: TextStyle(color: Colors.orange,fontSize: 25),),
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
                        image: AssetImage('ast/img/colddrinkm.jpeg'),
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
                              child: Text('Cold drinks',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
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
                              child: Text('FRANCE',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 50.0,top: 8.0),
                              child: Text('[17th century]',style: TextStyle(fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.bold),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cocacola()));
                },
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/c1.png'),fit: BoxFit.fitHeight),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 170,
                              margin: EdgeInsets.only(left: 25.0,top: 20.0,bottom: 10.0),
                              child: Text('Coca cola',style: TextStyle(color: Colors.white,fontSize: 22),),
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
                                margin: EdgeInsets.only(left: 20.0),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>fanta()));
                },
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      margin: EdgeInsets.all(5.0),
                      child: Image(image: AssetImage('ast/img/c2.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 170,
                              margin: EdgeInsets.only(left: 25.0,top: 20.0,bottom: 10.0),
                              child: Text('Fanta',style: TextStyle(color: Colors.white,fontSize: 22),),
                            ),
                          ],
                        ),
                        Container(
                          width: 170,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>thumpsup()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/c3.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 170,
                              margin: EdgeInsets.only(left: 20.0,top: 20.0,bottom: 10.0),
                              child: Text('Thumps up',style: TextStyle(color: Colors.white,fontSize: 22),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>pepsi()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/c4.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 170,
                              margin: EdgeInsets.only(left: 17.0,top: 20.0,bottom: 10.0),
                              child: Text('Pepsi',style: TextStyle(color: Colors.white,fontSize: 25),),
                            ),
                          ],
                        ),
                        Container(
                          width: 180,
                          margin: EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('4.4',style: TextStyle(fontSize: 17,color: Colors.white),),
                              Container(
                                margin: EdgeInsets.only(left: 40.0),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>sprite()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 80,
                      child: Image(image: AssetImage('ast/img/c5.png')),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 170,
                              margin: EdgeInsets.only(left: 13.0,top: 20.0,bottom: 10.0),
                              child: Text('Sprite',style: TextStyle(color: Colors.white,fontSize: 24),),
                            ),
                          ],
                        ),
                        Container(
                          width: 180,
                          margin: EdgeInsets.only(left: 25.0),
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