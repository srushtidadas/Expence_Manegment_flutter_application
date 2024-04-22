import 'package:expense_manager/signup_scrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash_scrren extends StatefulWidget{

  const Splash_scrren({super.key});

  State createState()=>_Splash_scrrenState();
}
class _Splash_scrrenState extends State{

  Widget build(BuildContext context){
    return Scaffold(

      body: 


      
             Padding(
              padding: EdgeInsets.all(30),
               child: Center(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                             
                    
                        Spacer(),
                          Container(
                          width: 144,
                          height: 144,
                           
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(234, 238, 235, 1),
                                     
                          ),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context)=>const Signup()),
                            ),
                            child: Image.asset("asset/ExpenseLogo.png")),
                                           ),
                       
                    
                     
                            Spacer(), 
                          const Text("Expense Manager", style: TextStyle(fontWeight: FontWeight.w600),)
                  ],
                             
                        
                    
                           ),
               ),
             ),
    );

  }
}