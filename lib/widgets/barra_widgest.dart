import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BarraGRandeWidge extends StatelessWidget {  //todo: Widge grande
 
  const BarraGRandeWidge({Key? key,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Stack( 
        children: [ 
          Container(
            
          height: 595, //todo: altura 
          margin: const EdgeInsets.only(top: 490,left: 10,right: 10),
          
          decoration: BoxDecoration(
            color: Colors.white, //todo: color de la barra
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [BoxShadow(
              blurRadius: 5,
            offset: Offset(0,0),
            color: Colors.black38
           
            ),
            ]
          ), 
        ),
        ], 
      ),
    );
  }
}


class TexMenu extends StatelessWidget { //todo: ajustes del texto del Widge grande
  final String text;
  const TexMenu({Key? key,required this.text,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        const Divider(),
       Container(
         child: Text(text,style: const TextStyle(color: Colors.black87, fontSize: 35,fontWeight: FontWeight.bold),),
         
          margin: const EdgeInsets.only(top: 500,left: 220), //todo: moviviento del texto Ajuste
            
        ),
         Container(
            margin: EdgeInsets.only(top: 570,left: 45),
           child: const Text("Ajustes de usuario", //todo Texto de Ajuste de Usuario
           style: TextStyle(
             color: Color.fromRGBO(98, 101, 103, 1),
             fontSize: 20, 
             fontWeight: FontWeight.w600),
             
           ),
         ),
        Row(
          children: [
            Container(child: const Icon(Icons.settings_outlined, color: Color.fromARGB(221, 46, 46, 46),size: 30,), //todo: icono ajustes
            width: 390, //todo: movimiento izq y der
            padding: const EdgeInsets.only(top: 507,left: 10), //todo: altura
            ),
            
          ],
        )
      ],
    );
  }
}
class WidgestPequeno extends StatelessWidget { //todo ajustes del Widge pekeño 
  const WidgestPequeno({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( scrollDirection: Axis.horizontal,
      child: Stack(
             
        children: [
         
          Container(   //todo primer contenedor 
           width: 300,
           height: 150,
          margin: const EdgeInsets.only(top: 600,left: 30),
           decoration: BoxDecoration(
            // color: Color.fromRGBO(174, 214, 241, .6),
             borderRadius: BorderRadius.circular(25),
             gradient: const LinearGradient(
               colors:[ 
                Color.fromRGBO(174, 214, 241, 1),
                Color.fromRGBO(163, 228, 215, .5),
               ]
               )
             ),
          ),
           Stack(
             children: [
               Container(                     //todo: segundo container 
             width: 300,
             height: 150,                  
                     margin: const EdgeInsets.only(top: 600,left: 490,right: 190), //todo: separaciones
             decoration: BoxDecoration(
              // color: Color.fromRGBO(174, 214, 241, .6),
               borderRadius: BorderRadius.circular(25),
               gradient: const LinearGradient(
                 colors:[ 
                  Color.fromRGBO(130, 224, 170, 1),
                  Color.fromRGBO(163, 228, 215, .5),
                 ],
                 
                 )
               ),
            ),
            _CrearAdmins(),  //todo: llamado a CrearAdmin
            _CreaAminTexto(),
            
            ],
            
           ),

           
           _TextSetting(), //todo: llamado a Textsetting
          _TextOfIcon(), //todo: llamado a TextIcon

        ],
      ),
    );
  }
}
class _TextSetting extends StatelessWidget { //todo: ajustes del icono Analitica
   
 
  @override
  Widget build(BuildContext context) {
    return Stack( 
      children: [
        
      Container(
      
        margin: EdgeInsets.only(top: 570,left: 15),
        width: 200,
        height:150,
      // color: Colors.amber,
        child: Icon(Icons.analytics_outlined,size: 60,color: Color.fromARGB(255, 36, 36, 36),
        ),
      ),
      ],
    );
  }
}
class _TextOfIcon extends StatelessWidget { //todo: ajustes del texto abajo del icono Analitic
 

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
     
      Container(
        padding: const EdgeInsets.only(top: 680,left: 90),
        child: const Text("Análitica",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Color.fromARGB(255, 38, 38, 39) ),
        ),
      ),
      Container(
         padding: const EdgeInsets.only(top: 710,left: 90),
        child:const Text("# de usuarios",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.black54 ),
      )   
     ),
    ],
    );
  }
}
 
 class _CrearAdmins extends StatelessWidget {  //todo Widge icono de Administracion
   const _CrearAdmins({ Key? key }) : super(key: key);

  @override
     Widget build(BuildContext context) {
     return Stack( 
      children: [
        
      Container(
      
        margin: EdgeInsets.only(top: 570,left: 460 ),
       width: 200,
        height:150,
      // color: Colors.amber,
     // color: Colors.amber,
       child: Icon(Icons.vpn_key_outlined,size: 60,color: Color.fromARGB(255, 36, 36, 36),
        ),
      ),
      ],
    );
   }
     //todo al momento de hacerlo interactivo poner el Wid height y padddin
 }
 class _CreaAminTexto extends StatelessWidget {  //todo: Widge de Texto en Admin 
   const _CreaAminTexto({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
    
         return Stack(
    children: [
     
      Container(
        padding: const EdgeInsets.only(top:680,left: 540),
        child: const Text("Administración",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Color.fromARGB(255, 38, 38, 39) ),
        ),
      ),
      Container(
      
         padding: const EdgeInsets.only(top: 710,left: 540),
        child:const Text("dar permisos",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.black54 ),
      )   
     ),
    ],
    );
    
   }
 }


