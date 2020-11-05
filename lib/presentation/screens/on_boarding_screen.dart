import 'package:flutter/material.dart';
import 'package:peliculas/domain/entities/on_boarding_entity.dart';
import 'package:peliculas/presentation/pages/chose_your_plan_page.dart';
import 'package:peliculas/presentation/widgets/header_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  
  final _OnBoardingData = OnBoardingEntity.onBoardingData;
  int _currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          _pageViewBuilderWidget(),
          _columnWidget(),
          HeaderWidget(),
        ],
      ),
    );
  }

 

 Widget _pageViewBuilderWidget() {
   return PageView.builder(
     itemCount: _OnBoardingData.length,
     onPageChanged:(index){
      setState(() {
        _currentPageIndex=index;
      });
     },
     itemBuilder: (ctx,index){
       return Stack(
         fit: StackFit.passthrough,
         children: [
           index == 3?Container(
             height: double.infinity,
            child: Image.asset(_OnBoardingData[index].image, fit:BoxFit.cover ,),
           ):Container(
             margin: EdgeInsets.only(bottom:40),
            child: Image.asset(_OnBoardingData[index].image),
           ),
           index==3?Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.1),
                  Colors.black.withOpacity(.9),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment(0.9, 0.0),
                  end: Alignment(0.8, 0.4),
                 ),
             ),
           ):Container(),
           Container(
             margin: EdgeInsets.only(top: 230, left:40, right:40),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children:[
                 Text(_OnBoardingData[index].heading,
                 style: TextStyle(fontSize: 22),
                 textAlign: TextAlign.center,
                 ),
                 SizedBox(height:20),
                  Text(_OnBoardingData[index].description,
                 style: TextStyle(fontSize: 16),
                 textAlign: TextAlign.center,
                 ),
               ]
             ),
           ),
        ],
       );
     });
 }

 Widget _columnWidget() {
   return Align(
     alignment: Alignment.bottomCenter,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
       children: [
         Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:_OnBoardingData.map(
               (data) {
                 //get index
                 int index = _OnBoardingData.indexOf(data);
               return Container(
                 height: 10,
                 width: 10,
                 margin: EdgeInsets.all(5),
                 decoration: BoxDecoration(
                   color: index == _currentPageIndex?Colors.blue[500]:Colors.grey,
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                 ),
               );
             },).toList(),
           ),
         ),
         SizedBox(height:20),
         InkWell(
           onTap: (){
                   Navigator.push(context, MaterialPageRoute(
                     builder: (_) => ChoseYourPlanPage(),
                     ));
                 },
           child: Container(
             margin: EdgeInsets.only(bottom: 10, right:15, left:15),
             padding: EdgeInsets.symmetric(vertical:12),
             width: double.infinity,
             alignment: Alignment.center,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(12),),
               color: Colors.blue[500]
             ),
             
             child:InkWell(onTap: (){
                   Navigator.push(context, MaterialPageRoute(
                     builder: (_) => ChoseYourPlanPage(),
                     ));
                 },child: Text("COMENZAR")),
             
           ),
         ),
       ],
     ),
   );
 }
}