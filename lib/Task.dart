import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //APPBAR STARTS HERE
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_sharp,
                  color: Colors.black, size: 3.3.h)),
          titleSpacing: 0,
          title: Text("New Team",
              style: GoogleFonts.roboto(
                  fontSize: 19.5.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 4.w, 0),
              child: Icon(Icons.check, color: Colors.deepPurple, size: 3.7.h),
            )
          ],
        ),
        backgroundColor: Colors.white,

        //BODY STARTS HERE
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.fromLTRB(4.w, 0, 4.w, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 3.h),
            Text("Team name",
                style: GoogleFonts.roboto(
                  fontSize: 13.sp,
                  color: Colors.black,
                )),
            SizedBox(height: 1.5.h),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  isCollapsed: true,
                  hintText: 'Team name',
                  hintStyle: TextStyle(fontSize: 13.sp, color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple))),
            ),
            SizedBox(height: 3.h),
            MaterialButton(
              height: 4.h,
              elevation: 0,
              color: Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {},
              child: Container(
                width: 36.5.w,
                child: Row(
                  children: [
                    Icon(Icons.groups),
                    SizedBox(width: 3.w),
                    Text('Add Members',
                        style: GoogleFonts.roboto(
                          fontSize: 13.sp,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Text("Description (optional)",
                style: GoogleFonts.roboto(
                  fontSize: 13.sp,
                  color: Colors.black,
                )),
            SizedBox(height: 1.5.h),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  isCollapsed: true,
                  hintText: 'This will help people find your team',
                  hintStyle: TextStyle(fontSize: 13.sp, color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple))),
            ),
            SizedBox(height: 5.h),
            Text('Privacy',
                style: GoogleFonts.roboto(
                  fontSize: 13.sp,
                )),
            SizedBox(height: 2.h),
            GestureDetector(
              onTap: () {
                setState(() {
                  //Icon(Icons.star);
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Private',
                      style: GoogleFonts.roboto(
                        fontSize: 13.sp,
                      )),
                  Text('Only team owners and admins can add members',
                      style: GoogleFonts.roboto(
                        fontSize: 9.sp,
                      )),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            GestureDetector(
              onTap: (){
                setState(() {
                  
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Public',
                      style: GoogleFonts.roboto(
                        fontSize: 13.sp,
                      )),
                  Text('Anyone in your organization can join',
                      style: GoogleFonts.roboto(
                        fontSize: 9.sp,
                      )),
                ],
              ),
            ),
          ]),
        )),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.deepPurple,
            selectedItemColor: Colors.deepPurple,
            unselectedFontSize: 3.5.h,
            selectedFontSize: 3.5.h,
            unselectedLabelStyle: TextStyle(fontSize: 11.sp),
            selectedLabelStyle: TextStyle(fontSize: 11.sp),
            backgroundColor: Colors.grey[200],
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.star, color: Colors.deepPurple))),
              BottomNavigationBarItem(
                  label: 'Create New',
                  icon: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.star, color: Colors.deepPurple))),
              BottomNavigationBarItem(
                  label: 'EAG',
                  icon: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.star, color: Colors.deepPurple))),
              BottomNavigationBarItem(
                  label: 'Profile',
                  icon: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.star, color: Colors.deepPurple))),
            ]),
      ),
    );
  }
}
