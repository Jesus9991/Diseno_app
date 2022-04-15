import 'package:call_api_diseno/widgets/widgest.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
             _backgroundWidge(),  //todo: llamado a el background

             BarraGRandeWidge(), //todo: llamado a barra_widgest

             TexMenu(text:"Ajustes"), //todo: texto a mostrar 
             
              
               Container(   //todo llamado al Widge mas pequeño
                 width: 528, padding: EdgeInsets.only(left: 12),child: WidgestPequeno()
                  ),

             
          ],
        ),
      ),
     
    );
       
  }
      

  Container _backgroundWidge() { //todo: ajustes del fondo 
    return Container(
      width: double.infinity,
      height: double.infinity,
     // color: Colors.blue,
      decoration: const BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           colors:[
             Color.fromRGBO(108, 52, 131, 1),
             Color.fromRGBO(142,68 ,173 , 1)
           ] 
         )
      ),
    );
  }
}