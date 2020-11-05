import 'package:flutter/material.dart';
import 'package:peliculas/presentation/screens/on_boarding_screen.dart';

class NavBarInter extends StatefulWidget {
  NavBarInter({Key key}) : super(key: key);

  @override
  _NavBarInterState createState() => _NavBarInterState();
}

class _NavBarInterState extends State<NavBarInter> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
               Text("SERIES"),
               SizedBox(width: 10),
               Text("PELICUAS"),
               SizedBox(width: 10),
               Text("MI LISTA"),
               SizedBox(width: 10),
             ],
           ),
       ]
     ),
   );
  }
}