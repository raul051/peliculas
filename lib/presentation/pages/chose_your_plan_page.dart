import 'package:flutter/material.dart';
import 'package:peliculas/presentation/pages/plants_page.dart';
import 'package:peliculas/presentation/widgets/header_widget.dart';

class ChoseYourPlanPage extends StatefulWidget {
  ChoseYourPlanPage({Key key}) : super(key: key);

  @override
  _ChoseYourPlanPageState createState() => _ChoseYourPlanPageState();
}

class _ChoseYourPlanPageState extends State<ChoseYourPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          HeaderWidget(),
          _bodyWidget(),

        ]
      ),
    );
  }

 Widget _bodyWidget() {
   return Expanded(
     child:Container(
       margin:EdgeInsets.symmetric(horizontal:15),
       child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             height: 40,
             width: 40,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(40)),
               border: Border.all(color:Colors.blue[500], width:1.5),

             ),
             child: Icon(Icons.done,size: 26, color:Colors.blue[500],),
           ),
           SizedBox(height:10,),
           Text("PASO 1 DE 3", 
           style: TextStyle(
             fontSize:14, 
             color:Colors.grey[400])
             ),
             SizedBox(height:18),
             Text("Escogue tu plan.", 
             style: TextStyle(
               fontSize:18, 
               fontWeight:FontWeight.bold
               ),
            ),
            SizedBox(height:10),
            rowidget(texto:"Cancela en cualquier momento."),
            SizedBox(height:10),
            rowidget(texto:"Todo por una suscripción"),
            SizedBox(height:10),
            rowidget(texto:"Mira lo que quieras, donde quieras"),
            SizedBox(height:20),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(
                builder:(_) =>PlansPage() ),);
              }, 
              child: Container(
                alignment: Alignment.center,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical:12),
                decoration: BoxDecoration(
                  color:Colors.blue[500],
                  borderRadius: BorderRadius.all(Radius.circular(6))
                ),
                child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(
                builder:(_) =>PlansPage() ),);},child: Text("CONOCE NUESTROS PLANES")),
              ),
            ),
         ],
       )
     )
     );
 }

 Widget rowidget({String texto}) {
   return  Row(
               children: [
                 Icon(Icons.done,color:Colors.blue[500],size: 25,),
                 SizedBox(width:20),
                 Text(texto,
                 style: TextStyle(fontSize:16),
                ),
               ],
             );
 }
}