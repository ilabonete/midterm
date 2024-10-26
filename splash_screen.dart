import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment:
                MainAxisAlignment.center,
                children:[
                  Icon(Icons.local_hospital,
                      size:
                          100,
                      color:
                          Theme.of(context).primaryColor),
                  SizedBox(height:
                      20),
                  Text("Your Health, Our Priority",
                      style:
                          Theme.of(context).textTheme.titleLarge),
                ]),
      ),
    );
  }
}