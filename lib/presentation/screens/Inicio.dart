import 'package:flutter/material.dart';
import 'package:peliculas/presentation/widgets/CartelPrincipal.dart';
class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CartelPrincipal(),
          Padding(
            child: Text("Avances"),
            padding: EdgeInsets.symmetric(horizontal:6.0, vertical: 310.0),
            ),
            SizedBox(height:15),
            Container(
              child: _avances(),
            )
        ],
      )
    );
  }

  Widget ciercular( String imagen){
    return Container(
          margin: EdgeInsets.only(top:335),
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110),
            border:Border.all(
              color:Colors.blue[800],
              width: 2.0,
            )
          ),
          child: ClipOval(
            child: Image.network(imagen,
            fit: BoxFit.cover,),
            )
          );
  }

   Widget pelicula( String imagen){
    return Container(
         
          height: 100.0,
          width: 160.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border:Border.all(
              color:Colors.blue[800],
              width: 2.0,
            )
          ),
            child: Image.network(imagen,
            fit: BoxFit.cover,),
          );
  }
  
  Widget _peliculas(){
    return ListView(
              scrollDirection: Axis.horizontal,
               children: [
                 Stack(
                   children: [
                     pelicula("https://lascronicasdeaxa.files.wordpress.com/2018/11/halloween_2018_banner.jpg"),
                   ],
                 ),
                 SizedBox(width:10.0),
               ],
              );
  }

  Widget _avances(){
    return ListView(
              scrollDirection: Axis.horizontal,
               children: [
                 Stack(
                   children: [
                    ciercular("https://alinkavalera.com/wp-content/uploads/2017/07/13ReasonsWhy_PosterLA.jpg"),
                    SizedBox(width:10.0),
                   ],
                 ),
                 SizedBox(width:10.0),
                 Stack(
                   children: [
                    ciercular("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2020/07/umbrella-academy-temporada-2-1981367.jpg?itok=n4UmGolq"),
                   ],
                 ),
                 SizedBox(width:10.0),
                 Stack(
                   children: [
                    ciercular("https://es.web.img3.acsta.net/pictures/19/06/04/16/39/4888520.jpg?coixp=51&coiyp=36"),
                   ],
                 ),
                 SizedBox(width:10.0),
                 Stack(
                   children: [
                    ciercular("https://mx.web.img2.acsta.net/r_1280_720/pictures/18/09/22/02/56/2323749.jpg"),
                   ],
                 ),
                 SizedBox(width:10.0),
                 Stack(
                   children: [
                    ciercular("https://pbs.twimg.com/media/D5pd72CWkAAMLho.jpg"),
                   ],
                 ),
                 SizedBox(width:10.0),
                 Stack(
                   children: [
                    ciercular("https://teleaudienciastv.files.wordpress.com/2020/03/la-casa-de-papel-1.jpg?w=640"),
                   ],
                 ),
                 SizedBox(width:10.0),
                 Stack(
                   children: [
                    ciercular("https://static.diariofemenino.com/pictures/articulos/215000/215964-4.jpg"),
                   ],
                 ),
                 SizedBox(width:10.0),
               ],
              );
  }
  
}