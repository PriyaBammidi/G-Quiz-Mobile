import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:z_quiz/userModel.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    checkAuthentication();
  }

  UserDetails _user = new UserDetails();
  checkAuthentication() async {
    _auth.onAuthStateChanged.listen((user) {
      if (user == null) {

        Navigator.pushNamed(context, '/');
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft, end: Alignment.bottomRight,
                    colors: <Color>[Color(0xff0000ff), Color(0xffafeeee)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 268.w,top:20.h),
                    child: GestureDetector(
                      onTap: () => _auth.signOut(),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                        width: 60.w,
                        height: 25.h,
                        child: Center(
                            child: Text(
                          'Logout',
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(15),
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        )),
                      ),
                    )),
                    SizedBox(height: 20.h,),
                Padding(
                  padding: EdgeInsets.only(left: 32.w),
                  child: Text(
                    'Quiz',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(45),
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                     SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/js_material');
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/blue.jpeg')),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(40)),
                          width: 140.w,
                          height: 150.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'JavaScript',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(17)),
                                ),
                              ),
                              SizedBox(height: 20.h,),
                              Container(
                                width: 70.w,
                                height: 15.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(child: Icon(Icons.play_arrow)),
                              )
                            ],
                          )),
                    ),
                  SizedBox(
                      width: 30.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/python_material');
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/pink.jpeg')),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(40)),
                         width: 125.w,
                          height: 130.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Python',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(17)),
                                ),
                              ),
                                                            SizedBox(height: 20.h,),

                              Container(
                                width: 70.w,
                                height: 15.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(child: Icon(Icons.play_arrow)),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                
                SizedBox(height: 50.h),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/react_material');
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/purple.jpeg')),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(40)),
                          width: 140.w,
                          height: 150.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'React',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(17)),
                                ),
                              ),
                                                            SizedBox(height: 20.h,),

                              Container(
                                width: 70.w,
                                height: 15.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(child: Icon(Icons.play_arrow)),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/bootstrap_material');
                      // Navigator.pushNamed(context, '/');

                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/gold.jpeg')),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(40)),
                           width: 125.w,
                          height: 130.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Bootstrap',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(17)),
                                ),
                              ),
                                                            SizedBox(height: 20.h,),

                              Container(
                                width: 70.w,
                                height: 15.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(child: Icon(Icons.play_arrow)),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.h,
                ),
                
                Row(
                  children: [
                   
                    Padding(
                      padding:  EdgeInsets.only(left:48.w),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/comments');
                        },
                        child: Container(
                           width: 35.w,
                              height: 30.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(70)),
                          child: Icon(
                            Icons.chat,
                            color: Colors.black,
                            size: ScreenUtil().setSp(20),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/about');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 90.w, top: 2.h),
                        child: Container(
                            width: 35.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(70)),
                            child: Icon(
                              Icons.contacts,
                              color: Colors.black,
                            )),
                      ),
                    ), GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/leaderboard');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 80.w,
                          top:2.h
                        ),
                        child: Container(
                            width: 35.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(70)),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
