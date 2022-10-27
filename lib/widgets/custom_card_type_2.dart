import 'package:flutter/material.dart';
import 'package:widgets_showdown/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;
  const CustomCardType2({super.key, required this.imageUrl,  this.name  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // corta lo que se salga del contenedor
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.only(top: 20, right: 5, left: 5),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(.4),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity, // toma todo el ancho posible
            height: 230,
            fit: BoxFit.cover, // la imagen se ajusta al tamaño asignado
            fadeInDuration: Duration(milliseconds: 300),
          ),

          if(name != null) 
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only( right:  20, top: 10,  bottom: 10),
              child: Text(name!),
            )
           
        ],
      ),
    );
  }
}