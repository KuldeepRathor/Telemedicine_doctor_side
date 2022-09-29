import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../components/profilepage/appbar.dart';
import '../components/profilepage/edit_profile.dart';
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
        body: ProfileAppbar(),
      ),
    );
  }
}
