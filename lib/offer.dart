import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'nav.dart';

class offer extends StatefulWidget{
  @override
  State<offer> createState() => _offerState();
}

class _offerState extends State<offer> {
  final controller = PageController();
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: PageView(
            controller: controller,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 70.0,bottom: 100.0),
                height: 450,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 185,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('ast/img/offer4.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20.0,left: 20.0),
                          child: Text('Free Delivery',style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 20.0),
                          child: Text('on first order',style: TextStyle(color: Colors.grey,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30.0,left: 20.0),
                          child: Text('''Spice Box welcomes you. we give 
different offers. we give free delivery
on first order.''',style: TextStyle(color: Colors.white,fontSize: 15.0),),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                        },
                        child: Text('Get Offer',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 70.0,bottom: 100.0),
                height: 450,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 185,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('ast/img/offer5.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20.0,left: 20.0),
                          child: Text('40% Off',style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 20.0),
                          child: Text('on Pepperoni Pizza',style: TextStyle(color: Colors.grey,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30.0,left: 20.0),
                          child: Text('''Spice Box welcomes you. we give 
different offers. we give 40% off on 
pepperoni Pizza every friday.''',style: TextStyle(color: Colors.white,fontSize: 15.0),),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                        },
                        child: Text('Get Offer',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 70.0,bottom: 100.0),
                height: 450,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.grey.shade800),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 185,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('ast/img/offer.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20.0,left: 20.0),
                          child: Text('25% Off',style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 20.0),
                          child: Text('on order of ₹1000',style: TextStyle(color: Colors.grey,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30.0,left: 20.0),
                          child: Text('''Spice Box welcomes you. we give 
different offers. we give 25% off on 
order of ₹1000.''',style: TextStyle(color: Colors.white,fontSize: 15.0),),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                        },
                        child: Text('Get Offer',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
          Positioned(
              top: 590,
              left: 130,
              child: Container(
                height: 10,
                width: 100,
                //color: Colors.grey.shade800,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      spacing: 10,
                      dotColor: Colors.grey.shade800,
                      activeDotColor: Colors.redAccent,
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                    ),
                  ),
                ),
          )
          )
      ],
      ),
    );
  }
}