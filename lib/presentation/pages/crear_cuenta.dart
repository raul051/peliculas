import 'package:flutter/material.dart';
import 'package:peliculas/presentation/pages/signup_page.dart';
import 'package:peliculas/presentation/widgets/header_widget.dart';

class CrearCuenta extends StatefulWidget {
  CrearCuenta({Key key}) : super(key: key);

  @override
  _CrearCuentaState createState() => _CrearCuentaState();
}

class _CrearCuentaState extends State<CrearCuenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          HeaderWidget(),
          _bodyWidget(),
        ]
      )
    );
  }

 Widget _bodyWidget() {
   return Expanded(
     child: Container(
       margin: EdgeInsets.symmetric(horizontal:15),
       child:Column(
         crossAxisAlignment:CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             height: 100,
             child: Image.asset('assets/devices.png'),
           ),
           SizedBox(height:7),
           Text(
             "PASO 2 DE 3", 
             style: TextStyle(
               fontSize: 15, 
               color: Colors.grey[400])
              ),
            Text("Crea una cuenta.",
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height:15),
            Text("HUAMI es personalizado para tí. Usa tu Email y tu contrasela para acceder.",
            style: TextStyle(
              fontSize:16),
            ),
            SizedBox(height:10),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (_) => SignUPpage()));
              },
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical:12),
                decoration:BoxDecoration(
                  color:Colors.red,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Text("CONTINUAR"),
              ),
            )
         ],
        )
     )
    );
 }
}