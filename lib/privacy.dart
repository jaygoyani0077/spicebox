import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class privacy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade900,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30.0,left: 10.0),
                    child: BackButton(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30.0,top: 20.0),
                    child: Text('Privacy Policy',style: TextStyle(fontSize: 30,color: Colors.blueAccent),),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30.0,top: 50.0),
                    child: Text('''    When you use our services, you’re 
trusting us with your information. 
We understand this is a big 
responsibility and work hard to 
protect your information and put 
you in control.

    This Privacy Policy is meant 
to help you understand what 
information we collect,why we 
collect it, and how you can update, 
manage, export, and delete your 
information.

    If you use our services to make
and receive calls or send and receive
messages, we may collect call and 
message log information like your 
phone number, calling-party number, 
receiving-party number, forwarding 
numbers, sender and recipient email 
address, time and date of calls 
and messages, duration of calls, 
routing information, and types and 
volumes of calls and messages.''',style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

}