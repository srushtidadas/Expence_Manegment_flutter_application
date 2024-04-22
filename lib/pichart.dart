import "package:flutter/material.dart";
import 'package:pie_chart/pie_chart.dart';
import 'package:expense_manager/category.dart';
import 'package:expense_manager/transition_scrren.dart';


class Pichart extends StatefulWidget{

  const Pichart({super.key});

  State createState()=>_PichartState();
  
  

  
}
class _PichartState extends State{

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

  Map <String,double>data={

    "Food":30,
    "Shopping":40,
    "Movies":20,
    "Entertanment":30
  };

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title:const Text("Graph",style: TextStyle(fontSize: 20),)),

      body:Column(children: [

        SizedBox(height: 50,),
        PieChart(

          dataMap:data,
          animationDuration: const Duration(milliseconds: 200),
          chartType:ChartType.ring,
          ringStrokeWidth: 30,
          chartRadius: 200,
          centerText: "Total",

        ),

        SizedBox(height:30),

        Container(
          height: 370,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5),))
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:ListView.builder(itemBuilder: (context,index){

            return getGraphCard();

            
          },),

          
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
          
            children: [
              
              const Text("Total",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
              Spacer(),
              const Text("2,550.00",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700
              )),
            ],
          ),
        )

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
  Widget getGraphCard(){

    return Container(
            
      child:Padding(
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          SizedBox( height: 50,width: 50,
          child:Image.asset("asset/medicien.png") ,),
            SizedBox( width:3),
            const Text("Food",style:TextStyle(fontSize: 20)),
          Spacer(),
          const Text("₹ 650.00",style:TextStyle(fontSize: 20)),
          

        ],),
      )
    );
  }
}