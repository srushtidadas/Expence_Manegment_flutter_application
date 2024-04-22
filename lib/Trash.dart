import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/pichart.dart';
import 'package:expense_manager/category.dart';
import 'package:expense_manager/transition_scrren.dart';
import 'package:flutter/widgets.dart';

class TrashScreen extends StatefulWidget{
  const TrashScreen({super.key});
  State createState()=>_TrashScreenState();
}
class _TrashScreenState extends State{
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

  Widget build (BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Trash"),

      ),
      body:Column(children: [

        SizedBox(
          height:40,

        ),

        Expanded(
          child:ListView.builder(
            itemCount: 4,
            itemBuilder: (context,index){
            return Column(
              children:[
                Container(
                  padding: EdgeInsets.all(15),
                  child:Column(
                    children: [
                      Row(mainAxisAlignment :MainAxisAlignment.start ,
                      children:[
                      
                        GestureDetector(child: Icon(Icons.remove_circle_rounded,
                        color: Color.fromRGBO(206, 206, 206, 1),
                        size: 30,
                          ),),
                      
                          SizedBox(
                            width: 10,
                          ),
                          const Text(
                                  "Medicine",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                const Text("500"),
                      
                      ],),

                      const Row(
                        children: [

                          SizedBox( width:30),
                          Text("Lorem Ipsum is simply dummy text ",
                           style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                                          ),
                        ],
                      ),
                      const Row(children: [

                        Spacer(),

                       Text("3 June | 11:50 AM",    style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                                  )
                      ],),

                      Container(
                                     height: 1.4,
                                  color: Colors.black26,
                                  )
                    ],
                  ),

            
                )
              ]
            );
          })
        ),
          
      ],),

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
    );
  } 
}