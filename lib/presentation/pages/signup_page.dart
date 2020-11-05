import 'package:flutter/material.dart';
import 'package:peliculas/presentation/widgets/header_widget.dart';

class SignUPpage extends StatefulWidget {
  SignUPpage({Key key}) : super(key: key);

  @override
  _SignUPpageState createState() => _SignUPpageState();
}

class _SignUPpageState extends State<SignUPpage> {
  bool _isCheck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child:Column(
          children: [
            HeaderWidget(),
            _formWidget(),
          ],
          ),
      ),
    );
  }

 Widget _formWidget() {
   return Expanded(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children:[
         Text("PASO 2 DE 3",
            style: TextStyle(fontSize:14,
            color: Colors.grey[400]),
            ),
            SizedBox(height:19),
            Text("Registrate para comenzar tu membresia.",
            style: TextStyle(
              fontSize:18,
              fontWeight:FontWeight.bold,
              color:Colors.white
              ),
            ),
            SizedBox(height:10),
            Text("Solo un poco mas y podras disfrutar de nuestro contenido."),
            SizedBox(height:10),
            Text("Crea tu cuenta",
            style:TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold)
              ),
              SizedBox(height:12),
              Container(
                padding: EdgeInsets.symmetric(horizontal:8),
                decoration: BoxDecoration(
                  color:Colors.grey[800],
                  borderRadius:BorderRadius.all(Radius.circular(6))
                ),
                child: TextFormField(
                  decoration:InputDecoration(
                    labelText:"Email",
                    border: InputBorder.none,
                    labelStyle:TextStyle(
                      fontSize: 14,
                      color:Colors.white),
                  )
                )
              ),
              SizedBox(height:15),
              Container(
                padding: EdgeInsets.symmetric(horizontal:8),
                decoration: BoxDecoration(
                  color:Colors.grey[800],
                  borderRadius:BorderRadius.all(Radius.circular(6))
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration:InputDecoration(
                    labelText:"Password",
                    border: InputBorder.none,
                    labelStyle:TextStyle(
                      fontSize: 14,
                      color:Colors.white),
                  ),
                ),
              ),
              SizedBox(height:15),              Row(
                children: [
                  Checkbox(
                    value: _isCheck, 
                    onChanged: (value){
                      setState(() {
                        _isCheck=value;
                      });
                    }
                  ),
                  Text("No me envies correos con promosiones.")
                ],
              ),
              Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical:10),
                decoration: BoxDecoration(
                  color:Colors.red,
                  borderRadius:BorderRadius.circular(6)
                ),
                child: Text("CONTINUAR"),
              ),
       ],
     ),
   );
 }
}