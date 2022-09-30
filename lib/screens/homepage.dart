// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import '../components/homepage/custom_appbar.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF3F6F9),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              CustomAppbar(),
              // SearchBar(),

            ],
          ),
        ),
      ),
    );
  }
}
