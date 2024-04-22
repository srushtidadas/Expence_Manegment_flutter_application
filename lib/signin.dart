import 'package:expense_manager/signup_scrren.dart';
import 'package:expense_manager/transition_scrren.dart';
import'package:flutter/material.dart';

class Signin extends StatefulWidget{

  const Signin({super.key});

  State createState()=>_signin();
}
class _signin extends State{

  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwardcontroller = TextEditingController();

  Widget build (BuildContext context){

    return Scaffold(

      body:Padding(
        padding: EdgeInsets.all(30),
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

            const Text("Login to your Account",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            SizedBox( height: 30,),

              Container(
                  height:55,
                  width: 380,
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
                      cursorColor:Colors.black
                    ),
            ),
            const SizedBox( height: 30,),

            Container(
                  height:55,
                  width: 380,
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
                      controller: _passwardcontroller,
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
            const SizedBox(height: 30),

                    ElevatedButton(
                    
                   style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                        fixedSize: const Size(400, 50),
                      ),

                    onPressed: (){

                      
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>const Transition()),
                          );
                      
                    }, child: const Text("Sign in",style: TextStyle(
                      color: Colors.white,fontSize: 20
                    ),)),


              Spacer(),

                     Center(child: Row(children:[ const Text("Don't have an account?"),
                     GestureDetector(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>const Signup()),
                          );
                         },child: Text("Sign up",style: TextStyle( color: Color.fromRGBO(14, 161, 125, 1)),),)
                     
                     
                     ])
                     
                     )



        
            
            ]
        ),
      ),
    );
  }
}


