import 'package:flutter/material.dart';

class DatPage extends StatelessWidget {
  const DatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Color of the border
                width: 2.0, // Thickness of the border
              ),
            ),
            child: AppBar(
              title: Text("Student Dashboard", style: TextStyle(fontSize: 22),),
              automaticallyImplyLeading: false, // Background color of the AppBar
              elevation: 0, // Remove the shadow under the AppBar
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("DAT", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 30,),
                Container(
                  height: 140,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 140,
                  width: 800,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 140,
                  width: 800,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
