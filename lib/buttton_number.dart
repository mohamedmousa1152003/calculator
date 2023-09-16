import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class button extends StatelessWidget{

  final String number;
  Function numberClick;

   button( {super.key,required this.number , required this.numberClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3),
    
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 46, 160, 237),
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20),
              ),
            ),
            
            onPressed: (){
              numberClick(number);
            }, 
            child:  Text(number,style: const TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),)
          
        ),
        
      ),
    );
  }

}