import 'package:flutter/material.dart';

import '../../screens/sessions.dart';

class HISTORY extends StatefulWidget {
  const HISTORY({Key? key}) : super(key: key);

  @override
  State<HISTORY> createState() => _HISTORYState();
}

class _HISTORYState extends State<HISTORY> {
  @override
  Widget historycard() {
    return Card(
     child: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CircleAvatar(),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       //crossAxisAlignment: CrossAxisAlignment.start,
                       children: const[
                         Text('Patient name'),
                         Text('Patsy J. Padilla'),
                       ],
                     ),
                   ),
                 ],
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const[
                   Text('Date:'),
                   Text('13/9/2022'),
                 ],
               ),
             ],
           ),
           // Divider(
           //   color: Colors.grey[300],
           //   thickness: 2,
           // ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const[
                   Text('Appointment time'),
                   Text('12:30 PM'),
                 ],
               ),
               ElevatedButton(
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => Sessiondetails(),
                     ),
                   );
                 },
                 style: ElevatedButton.styleFrom(
                   minimumSize: const Size(130, 30),
                   // backgroundColor: Colors.green,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(
                       25,
                     ),
                   ),
                 ),
                 child: const Text('View Details'),
               ),
             ],
           )
         ],
       ),
     ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return historycard();
      },
    );
  }
}
