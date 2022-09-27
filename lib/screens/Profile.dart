import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../components/profilepage/appbar.dart';
import '../components/profilepage/edit_profile.dart';
import '../components/profilepage/name_surname.dart';
import '../components/profilepage/tiles.dart';
import 'appointment.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F6F9),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const ProfileAppbar(),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile())),
                child: const NameSurname(),
              ),
              InkWell(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const Appointment())),
                child: Tiles(
                  title: 'My Appointment',
                  icon: const Icon(
                    Icons.add_comment,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: size.width,
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'notificationpage',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: FlutterSwitch(
                          value: status,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tiles(
                title: 'Settings',
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ),
              ),
              Tiles(
                title: 'Logout',
                icon: const Icon(
                  Icons.logout,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
