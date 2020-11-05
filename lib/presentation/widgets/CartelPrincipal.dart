import 'package:flutter/material.dart';
import 'Nav_Inter.dart';

class CartelPrincipal extends StatelessWidget {
  const CartelPrincipal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          _cabecera(),
          _info(),
          _botones(),
          NavBarInter(),
          
        ]
      ),
    );
  }

 Widget _cabecera() {
   return Stack(
     children: [
       Image.asset('assets/you.jpg',fit: BoxFit.cover,),
          Container(width: double.infinity,height: 1950,
            decoration: BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment.center,
                end:Alignment.bottomCenter, 
                colors:<Color>[
                  Colors.black38,
                  Colors.black
                ]
                )
            ),
          ),
     ],
   );
 }

 Widget _info(){
   return Container(
     margin: EdgeInsets.only(top:228),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Suspenso"),
           SizedBox(width:6.0),
           Icon(Icons.fiber_manual_record,size:10),
           Text("Misterio"),
           SizedBox(width:6.0),
           Icon(Icons.fiber_manual_record,size:10),
           Text("Adolcentes"),
         ],
      ),
   );
 }

 Widget _botones(){
   return Container(
     margin: EdgeInsets.only(top:265),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         Column(
           children: [
             Icon(Icons.check),
             SizedBox(height:3),
             Text("Agregar",style:TextStyle(fontSize: 10))
           ],
         ),
         Column(
           children: [
             FlatButton.icon(
               onPressed: (){}, 
               color: Colors.white,
               icon: Icon(Icons.play_arrow,color: Colors.black,), 
                label: Text("Reproducir",style: TextStyle(color:Colors.black),)
                ),
           ],
         ),
          Column(
            children: [
              Icon(Icons.info_outline),
              SizedBox(height:3),
             Text("Información",style:TextStyle(fontSize: 10))
            ],
          ),
       ],
     ),
   );
   
 }
}
