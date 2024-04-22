import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'signin.dart';

class Signup extends StatefulWidget{

  const Signup({super.key});

  State createState()=>_signup();
}
class _signup extends State{

  final TextEditingController _Namecontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwardroller = TextEditingController();
 final TextEditingController _confirmpasswardcontroller = TextEditingController();
  



Widget build(BuildContext context){

  return Scaffold(

    body: 
    Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(
              height: 60,
            ),
          Center(
            child:Image.asset("asset/ExpenseLogo.png")
          ),
          const SizedBox(height: 30,),
        
          const Text(" Create your Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),

          SizedBox(height: 20,),

          
            Container(

                decoration: const BoxDecoration(
                color: Colors.white,
                    boxShadow: [

                        BoxShadow(
                             color: Color.fromRGBO(0, 0, 0, 0.15),
                                   spreadRadius: 5,
                                     blurRadius: 7,
                                  offset: Offset(0, 3), 
                                       ),
                                      ],
                                          ),


              child: TextFormField(
                      controller: _Namecontroller,
                      decoration: const InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      cursorColor:Colors.black
                    ),
            ),

             SizedBox(height: 20,),

          
            Container(

              decoration: const BoxDecoration(
                color: Colors.white,
                    boxShadow: [

                        BoxShadow(
                             color: Color.fromRGBO(0, 0, 0, 0.15),
                                   spreadRadius: 5,
                                     blurRadius: 7,
                                  offset: Offset(0, 3), 
                                       ),
                                      ],
                                          ),
              child: TextFormField(
                
                      controller: _usernamecontroller,
                      decoration: const InputDecoration(
                        hintText: "UserName",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      cursorColor:Colors.white
                    ),
            ),
                  SizedBox(height: 20,),

                  Container(

                  decoration: const BoxDecoration(
                color: Colors.white,
                    boxShadow: [

                        BoxShadow(
                             color: Color.fromRGBO(0, 0, 0, 0.15),
                                   spreadRadius: 5,
                                     blurRadius: 7,
                                  offset: Offset(0, 3), 
                                       ),
                                      ],
                                          ),

                    child: TextFormField(
                      controller:_passwardroller,
                      decoration: const InputDecoration(
                        hintText: "passward",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      cursorColor:Colors.black
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(

              decoration: const BoxDecoration(
                color: Colors.white,
                    boxShadow: [

                        BoxShadow(
                             color: Color.fromRGBO(0, 0, 0, 0.15),
                                   spreadRadius: 5,
                                     blurRadius: 7,
                                  offset: Offset(0, 3), 
                                       ),
                                      ],
                                          ),

                    child: TextFormField(
                      controller:_confirmpasswardcontroller,
                      decoration: const InputDecoration(
                        hintText: "Confirm Passward",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      cursorColor:Colors.black
                    ),
                  ),
                  const SizedBox(height: 30,),

                  ElevatedButton(
                    
                   style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                        fixedSize: const Size(400, 50),
                      ),

                    onPressed: (){}, child: const Text("Sign up",style: TextStyle(
                      color: Colors.white ,fontSize: 20
                    ),)),

                    Spacer(),

                     Center(child: Row(
                       children: [
                         const Text("Already have an account?"),
                         GestureDetector(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>const Signin()),
                          );
                         },child: const Text("Sign in",style: TextStyle(color:Color.fromRGBO(14, 161, 125, 1), ),),)
                       ],
                     ))

                    
          

        
          ],
        ),
      ),
    )
  );
}
}