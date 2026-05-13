import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:navigation/my_home_home_page.dart';
import 'arguments.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page One")),
      body: Hero(
        tag: 'btn1',
        child: ElevatedButton
        (onPressed:() async{
         


           //Navigator.push(context,
           // MaterialPageRoute(builder: (context) =>
           //   const MyHomePage(title: 'TITLE')));

          //final result = await Navigator.pushNamed(context,
          //  '/MyHomePage',
          //  arguments: Arguments(id: 10, name: "Ebac"));
        
        
        
           final result = await Navigator.pushNamed(context, "/MyHomePage",
           arguments: Arguments(id: 10, name: "Ebac")  
            );
        
      //  final result = await Navigator.push(context, PageRouteBuilder(
       // transitionDuration: const Duration(milliseconds: 2000),
       // reverseTransitionDuration: const Duration(seconds: 1),
      //  pageBuilder: (_, __, ___,) => const MyHomePage(),
      //  settings: RouteSettings(arguments: Arguments(id: 50, name: "Ebac")),
     //   ),
     //   );
        
        debugPrint('Resultado da Página MyHomePage => ${result??"Sem Resultdado"}');
        
        
        
        },
        child: Text("My Home Page"),),
      ),

      
   
      );
    
  }
}