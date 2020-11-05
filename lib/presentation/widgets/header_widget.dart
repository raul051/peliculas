import 'package:flutter/material.dart';
import 'package:peliculas/presentation/pages/sign_in_page.dart';
import 'package:peliculas/presentation/screens/on_boarding_screen.dart';

class HeaderWidget extends StatefulWidget {
  HeaderWidget({Key key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(
           height: 70,
           width: 70,
           child: InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_) => OnBoardingScreen()));
             },
             child: Image.asset('assets/n_symbol.png')),
           ),
           Row(
             children: [
               Text("PRIVACY"),
               SizedBox(width: 10),
               Text("HELP"),
               SizedBox(width: 10),
               InkWell(onTap:(){
                 Navigator.push(context, MaterialPageRoute(
                   builder: (_) => SignInPage(),
                   ));
               },child: Text("SING IN")),
               SizedBox(width: 10),
             ],
           ),
       ]
     ),
    );
  }
}