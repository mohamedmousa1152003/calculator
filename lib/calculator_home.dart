import 'package:calculator/buttton_number.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String screenResult="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //Tiltle 
        title: const Center(child: Text("calculator",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

      ),

      body: Column(
        children: [

          //Create a container for the text
          Container(
            alignment: Alignment.centerLeft,
            
            width: double.infinity, //to take all width
            height: 130, 
            child:  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 8),
              child:  Text(screenResult,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ),

           Expanded(
           child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(number: "7",numberClick: onDigitClicked),
              button(number: "8",numberClick: onDigitClicked),
              button(number: "9",numberClick: onDigitClicked),
              button(number: "/",numberClick: onOperatorClick),
            ],
              ),
            ),
          

           Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
              button(number: "4",numberClick: onDigitClicked),
              button(number: "5",numberClick: onDigitClicked),
              button(number: "6",numberClick: onDigitClicked),
              button(number: "*",numberClick: onOperatorClick),],
            ),
          ),

           Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
              button(number: "1",numberClick: onDigitClicked),
              button(number: "2",numberClick: onDigitClicked),
              button(number: "3", numberClick: onDigitClicked),
              button(number: "+" ,numberClick: onOperatorClick),],
            ),
          ),

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
              button(number: ".",numberClick: onDigitClicked),
              button(number: "0" ,numberClick: onDigitClicked),
              button(number: "=",numberClick: onClickEqual),
              button(number: "-",numberClick: onOperatorClick),],
            ),
          ),

          
        ],
      ),

    );

  }

  // 5 + 7 
  // lhs = 5
  // operator = +
  // rhs = 7

  String lhs="";
  String operator="";
  
  onOperatorClick(value){
    if(lhs.isEmpty)
    {
      lhs=screenResult;
      operator=value;
    }
    else{
      lhs= calculator(lhs ,operator,screenResult);
      operator =value;
    }
    
    screenResult = "";
    setState(() {
      
    });

  }
   
   String calculator(String lhs ,String operator ,String rhs)
   {
    double LHS =double.parse(lhs);
    double RHS =double.parse(rhs);

    if(operator=='+'){
     double res =LHS + RHS;
     return res.toString(); //text بتتحول لي .......  علشان بتظهر في 
    }
    else if(operator=='-'){
     double res =LHS - RHS;
     return res.toString();
    }
    else if(operator=='/'){
     double res =LHS / RHS;
     return res.toString();
    }
    else if(operator=='*'){
     double res =LHS * RHS;
     return res.toString();
    }
    
    return "";
   }
  
  onClickEqual(value){
    String resultFinal =calculator(lhs ,operator,screenResult);
    screenResult=resultFinal;
    setState(() {
      
    });

    operator =value ;
  }
 onDigitClicked (value){
   if(operator == '=')
   {
    lhs="";
    operator="";
    screenResult="";
   }
   screenResult+=value;
  setState(() {
    
  });
 }
 
 
}




