import 'package:expense_manager/Trash.dart';
import 'package:expense_manager/category.dart';
import 'package:expense_manager/pichart.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Transition extends StatefulWidget{

  const Transition({super.key});

  State createState()=>_TransitionState();
}
class _TransitionState extends State{




  void showMyBottomShett() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  // key: _taskKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " Title",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                                  color: Colors.black,
                          ),
                        ),
                        TextFormField(
                          validator: (value) {},
                          //controller: titleController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        const Text(
                          " Amount",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                                  color: Colors.black,
                          ),
                        ),
                        TextFormField(
                          validator: (value) {},
                          //controller: titleController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        const Text(
                          " category",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                                  color: Colors.black,
                          ),
                        ),
                        TextFormField(
                          validator: (value) {},
                          //controller: titleController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(" Description",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                          color: Colors.black,
                            )),
                        TextFormField(
                          maxLines: 2,
                          //controller: descriptionController,
                          decoration: const InputDecoration(
                            /* contentPadding: EdgeInsets.symmetric(
                                vertical: 35.0, horizontal: 10.0),*/
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                                  color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        
                        const SizedBox(
                          height: 30,
                        ),
                      ]),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color.fromRGBO(14, 161, 125, 1),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        );
      }
    );
  }

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

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: true,
        actions: const [
          Icon(Icons.search_sharp),
          SizedBox(
            width: 20,
          )
        ],
        title: const Text(
          "June 22",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrashScreen(),
                  ),
                );
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
      

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return transationCard(index);
              },
            ),
          )
        ]
        ),
        
      
      
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton:FloatingActionButton.extended(onPressed: showMyBottomShett,
           backgroundColor: Color.fromRGBO(255, 255, 255, 1),
           label:const Row(children: [
            Icon(Icons.add_circle_rounded,color: Color.fromRGBO(14, 161, 125, 1),size: 40,),
            SizedBox(width: 20,),
            Text("Add Transaction"),
           ],),)
    );
  }

  Widget transationCard(int index) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      "asset/medicien.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Medicine",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.66,
                              child: const Text(
                                "Lorem Ipsum is simply dummy text of the ",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_circle_rounded,
                                size: 20,
                                color: Color.fromRGBO(246, 113, 49, 1),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text("300")
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "                                                            3 June | 11:50 AM",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1.4,
          color: Colors.black26,
        )
      ],
    );
  }
}