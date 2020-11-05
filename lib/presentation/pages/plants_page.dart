import 'package:flutter/material.dart';
import 'package:peliculas/presentation/widgets/header_widget.dart';

import 'crear_cuenta.dart';

class PlansPage extends StatefulWidget {
  PlansPage({Key key}) : super(key: key);

  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  int _selectPlan=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        flexibleSpace: HeaderWidget(),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal:15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("PASO 1 DE 3"),
            SizedBox(height:10),
            Text("Escogue el mejor plan para tí.",
            style:TextStyle(
              fontSize:18,
              fontWeight:FontWeight.bold
            ) ,),
            SizedBox(height:10),
            Text("Descarga o mira cuando quieras."),
            SizedBox(height:15),
            _rowButtonWidget(),
            _plans(),

          ]
        )
      ),
    );
  }

 Widget _rowButtonWidget() {
   return Row(
     children: [
       Expanded(
                child: InkWell(onTap:(){
           setState(() {
             _selectPlan =0;
           });
         },child: _singleRowButto(
           texto: "Basico",
           color: _selectPlan==0 ? Colors.blue[600] : Colors.blue[300])
      ),
       ),
      Expanded(
              child: InkWell(onTap:(){
           setState(() {
             _selectPlan =1;
           });
         },child: _singleRowButto(
           texto: "Pro",
           color: _selectPlan==1? Colors.blue[600] : Colors.blue[300])
        ),
      ),
      Expanded(
              child: InkWell(onTap:(){
           setState(() {
             _selectPlan =2;
           });
         },child: _singleRowButto(
           texto: "Premium",
           color: _selectPlan== 2? Colors.blue[600] : Colors.blue[300])
        ),
      ),
     ],
    );
 }

 Widget _singleRowButto({Color color, String texto}) {
   return Container(
     margin: EdgeInsets.all(6),
     height: 50,
     alignment: Alignment.center,
     decoration: BoxDecoration(
       borderRadius:BorderRadius.all(Radius.circular(6),),
       color:color
     ),
     child: Text(texto,
     style:TextStyle(
       fontSize:16
     ) ,),
   );
 }

 Widget _plans() {
   return Container(
     margin: EdgeInsets.symmetric(horizontal:15),
     child: Column(
       children:[
         SizedBox(height: 15,),
         Text("Precio Mensual"),
         SizedBox(height:15),
         _preciomensual(),
         Text("Calidad de Vídeo"),
         SizedBox(height:15),
         _calidadvideo(),
         Text("Resolución"),
         SizedBox(height:15),
         _resolucion(),
         Text("Donde puedes ver"),
         SizedBox(height:15),
         _dispositivos(),
         SizedBox(height:15),
         InkWell(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (_) => CrearCuenta()
             )
            );
           },
           child: Container(
             height:30,
             width:double.maxFinite,
             alignment: Alignment.center,
             decoration:BoxDecoration(
               color: Colors.blue[500],
               borderRadius: BorderRadius.all(Radius.circular(6))
             ),
             child:InkWell(
               onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (_) => CrearCuenta()
             )
            );
           },
               child: Text("Continuar"))
           ),
         ),
         SizedBox(height:30),
       ],
     ),
   );
 }

 Widget _preciomensual() {
   if(_selectPlan==0){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("150 pesos", style:TextStyle(color:Colors.blue[500])),
                 ), 
                ),
              Expanded(
               child:Center(
                 child: Text("350 pesos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("450 pesos", style:TextStyle(color:Colors.grey)),
                 ), 
              ), 
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else if(_selectPlan==1){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("150 pesos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("350 pesos", style:TextStyle(color:Colors.blue[500])),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("450 pesos", style:TextStyle(color:Colors.grey)),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else{
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("150 pesos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("350 pesos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("450 pesos", style:TextStyle(color:Colors.blue[500])),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }
 }

 Widget _calidadvideo() {
   if(_selectPlan==0){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("Baja", style:TextStyle(color:Colors.red)),
                 ), 
                ),
              Expanded(
               child:Center(
                 child: Text("Media", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("Alta", style:TextStyle(color:Colors.grey)),
                 ), 
              ), 
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else if(_selectPlan==1){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("Baja", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("Media", style:TextStyle(color:Colors.red)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("Alta", style:TextStyle(color:Colors.grey)),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else{
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("Baja", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("Media", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("Alta", style:TextStyle(color:Colors.red)),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }
 }

 Widget _resolucion() {
   if(_selectPlan==0){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("1080", style:TextStyle(color:Colors.red)),
                 ), 
                ),
              Expanded(
               child:Center(
                 child: Text("1080", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("4k", style:TextStyle(color:Colors.grey)),
                 ), 
              ), 
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else if(_selectPlan==1){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("1080", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("1080", style:TextStyle(color:Colors.red)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("4k", style:TextStyle(color:Colors.grey)),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else{
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("1080", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("1080", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("4k", style:TextStyle(color:Colors.red)),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }
 }

 Widget _dispositivos() {
   if(_selectPlan==0){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("2 Dispocitivos", style:TextStyle(color:Colors.red)),
                 ), 
                ),
              Expanded(
               child:Center(
                 child: Text("4 Dispocitivos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("6 Dispocitivos", style:TextStyle(color:Colors.grey)),
                 ), 
              ), 
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else if(_selectPlan==1){
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("2 Dispocitivos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("4 Dispocitivos", style:TextStyle(color:Colors.red)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("6 Dispocitivos", style:TextStyle(color:Colors.grey)),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }else{
     return Column(
       children: [
         Row(
           children: [
             Expanded(
               child:Center(
                 child: Text("2 Dispocitivos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("4 Dispocitivos", style:TextStyle(color:Colors.grey)),) 
                 ),
              Expanded(
               child:Center(
                 child: Text("6 Dispocitivos", style:TextStyle(color:Colors.blue[500])),) 
                 ),                    
           ],
         ),
         Divider(thickness:1.5),
       ],
     );
   }
 }
}