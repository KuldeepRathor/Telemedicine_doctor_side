import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terna_telemedicine_doctor_side/components/star_rating.dart';

class ProfileAppbar extends StatelessWidget {
  const ProfileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset('assets/images/doctor.png'),
          ),
          expandedHeight: 300,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              height: 20,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xffF3F6F9),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Text('Dr James Bond',style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text('Cardiologist',style: TextStyle(
                  fontSize:15
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,5,0),
                      child: Text('4.5'),
                    ),
                    Ratings(),

    ]



    ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                  child: Container(
                    width: 320,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('EXPERIENCE'),
                            Text('8 years',style: TextStyle(fontWeight:FontWeight.bold),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('PATIENTS TREATED'),
                            Text('10k+',style: TextStyle(fontWeight:FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
        )
      ],
    );
    // return Column(
    //   children: [
    //     Text('Profile'),
    //     Stack(
    //       children: [
    //         Container(
    //           child:Image.asset('assets/images/doctor.png')
    //         ),
    //         Container(
    //           height: 100,
    //           decoration: BoxDecoration(
    //             color: Colors.red,
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(20),
    //               topRight: Radius.circular(20),
    //             )
    //           ),
    //         )
    //       ],
    //     ),
    //   ],
    // );
  }
}
