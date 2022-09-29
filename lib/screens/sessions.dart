import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Sessiondetails extends StatelessWidget {
  const Sessiondetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Session details',style: TextStyle(
                fontWeight:FontWeight.bold,fontSize: 25
              ),),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('Patient name'),
                               Text('Patsy J. Padilla',style: TextStyle(
                                   fontWeight: FontWeight.bold
                               ),),
                              ],
                            ),
                          )
                        ],
                      ),
            Column(
              children: [
                Text('Date',),
                Text('13/09/22',textAlign:TextAlign.left,style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Session start time '),
                            Text('4:30 pm',style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Session end time '),
                            Text('5:00 pm',style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height:20,
                  ),
                  Text('Something',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,\n sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Enter feedback',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter feedback about patient'
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Upload prescription',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)
                ],

              ),
            ),
            SizedBox(
              height: 190,
            ),
            ElevatedButton( style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),),
                onPressed: (){}, child: Text('Conclude Sessions'))



          ],
        ),
      )
      ),);
  }
}
