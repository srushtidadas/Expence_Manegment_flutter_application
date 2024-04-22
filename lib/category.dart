

import 'package:expense_manager/pichart.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/transition_scrren.dart';


class CategoryScreen extends StatefulWidget{

  const CategoryScreen({super.key});

  State createState()=>_categoryState();
}
class _categoryState extends State{
int selectedDrawerButtonIndex = 1;


void dummyMathod() {}
  Widget getDrawerButtons({
    required IconData icon,
    required String label,
    required int buttonIndex,
  }) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: (buttonIndex == selectedDrawerButtonIndex)
            ? const Color.fromRGBO(14, 161, 125, 0.15)
            : null,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      height: 45,
      width: 186,
      alignment: Alignment.center,
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color.fromRGBO(5, 158, 117, 1),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Text(
            label,
            style: TextStyle(
              color: (buttonIndex == selectedDrawerButtonIndex)
                  ? const Color.fromRGBO(5, 158, 117, 1)
                  : null,
            ),
          )
        ],
      ),
    );
  }

  
Future<dynamic > showDilogBox() async{

  return await showDialog(context: context, builder: (BuildContext context){
   return AlertDialog(
            backgroundColor: Colors.white,
        title: Text ("Delete Category",style: TextStyle(
          fontSize: 20,
        ),),
        content: Text("Are you sure you want to delete the selected category"),
        actions: [

          ElevatedButton(
            style:  ElevatedButton.styleFrom(fixedSize: Size(130, 50),
            backgroundColor: Color.fromRGBO(14, 161, 125, 1),),
            onPressed: (){
              Navigator.of(context).pop();
            
            },

          

          child: const Text("Delete",style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
      
          ElevatedButton(onPressed: (){Navigator.of(context).pop();

          },style:  ElevatedButton.styleFrom(fixedSize: Size(130, 50)),
           child: const Text("Cancel",style: const TextStyle(fontSize: 20,color:Colors.black)),),
        ],
    
   );

    

  }
 );

}

 

void  showModelBottomSheett(){

    showModalBottomSheet(
      isScrollControlled: true,      
      context: context, builder:(context){
        return Padding(padding:  MediaQuery.of(context).viewInsets,
        
        child: Padding(padding: EdgeInsets.all(20),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

          SizedBox(
            height: 30,
          ),
          Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(134, 142, 142, 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox(
                    child: Image.asset(
                      "asset/ExpenseLogo.png",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Add",
                  style: TextStyle(fontSize: 16),
                ),

                   Form(
                  // key: _taskKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getLabelForTextField(label: "Image URL"),
                      const SizedBox(
                        height: 7,
                      ),
                      TextFormField(
                        validator: (value) {
                          return null;
                        },
                        decoration: getInputDecorationForTextField(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      getLabelForTextField(label: "Category"),
                      const SizedBox(
                        height: 7,
                      ),
                      TextFormField(
                        validator: (value) {
                          return null;
                        },
                        //controller: titleController,
                        decoration: getInputDecorationForTextField(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),



        ],),
        ),
        
        );

    });
  }

  
  Widget build (BuildContext context){
    

    return Scaffold(
         
        drawer: Drawer(
        width: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Expense Maneger",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "Saves all your Transactions",
                    style:
                        TextStyle(fontSize: 11.5, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            /*ListTile(
                shape: Border.all(),
                selectedColor: Color.fromRGBO(14, 161, 125, 1),
                //hoverColor: Color.fromRGBO(14, 161, 125, 0.15),
                leading: Icon(Icons.calendar_month),
                title: const Text('Transaction'),
                selectedTileColor: Color.fromRGBO(14, 161, 125, 0.15),
                autofocus: true,
                selected: true,
                onTap: () {},
              ),*/

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 1;
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Transition(),
                  ),
                );
                

                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.calendar_month,
                label: "Transactions",
                buttonIndex: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 2;
                Navigator.of(context).pop();
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Pichart(),
                  ),
                );
              },
              child: getDrawerButtons(
                icon: Icons.pie_chart_rounded,
                label: "Graphs",
                buttonIndex: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 3;
                setState(() {});
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryScreen(),
                  ),
                );

                
              },
              child: getDrawerButtons(
                icon: Icons.label_rounded,
                label: "Category",
                buttonIndex: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 4;
                Navigator.of(context).pop();
                setState(() {});
              },
              child: getDrawerButtons(
                  icon: Icons.delete_rounded, label: "Trash", buttonIndex: 4),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectedDrawerButtonIndex = 5;
                Navigator.of(context).pop();

                setState(() {});
              },
              child: getDrawerButtons(
                icon: Icons.person_rounded,
                label: "About us",
                buttonIndex: 5,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(

        
    
        title: const Text("categories"),
      ),

      body:GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          mainAxisSpacing: 20,
          crossAxisSpacing:20 ),
          padding: EdgeInsets.all(20),
          itemCount: 4,
           itemBuilder:(context ,index){

            return 
            SizedBox(
              width: 145,
              height: 150,
             child:ElevatedButton(
              
              onPressed: showDilogBox,
              style: ElevatedButton.styleFrom(
                
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  shadowColor: Color.fromRGBO(0, 0, 0, 0.15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
                
              ), child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 74,
                    width: 74,
               child: Image.asset("asset/medicien.png",
                ),),

                SizedBox(height: 5,),
                const Text("Food",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500) ,)
              ],),)
            );
           }),
             
        


           floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
          
        
           floatingActionButton:FloatingActionButton.extended(onPressed:showModelBottomSheett,

           backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
           label:const Row(children: [
            Icon(Icons.add_circle_rounded,color: Color.fromRGBO(14, 161, 125, 1),size: 40,),
            SizedBox(width: 20,),
            Text("Add Category"),
           ],),)
    );
  }
  Widget getLabelForTextField({required String label}) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(33, 33, 33, 1),
      ),
    );
  }

  InputDecoration getInputDecorationForTextField() {
    return const InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(33, 33, 33, 1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
    );
  }
}


  
