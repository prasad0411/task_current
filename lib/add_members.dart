import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AddParticipants extends StatefulWidget {
  @override
  _AddParticipantsState createState() => _AddParticipantsState();
}

class _AddParticipantsState extends State<AddParticipants> {
  String username = "Sharad Pawar";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_sharp,
                  color: Colors.black, size: 3.3.h)),
                  titleSpacing: 0,
        title: Row(
          children: [
            Text(
              "Add Participants",
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                color: Color(0xFF363636),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 25.w,
            ),
            //SvgPicture.asset("assets/blue_tick.svg"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(4.w, 0, 4.w, 0),
              child: Row(
                children: [
                  Text(
                    "To:",
                    style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                      color: Color(0xFF363636),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    height: 9.w,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.all(
                        Radius.circular(1.5.w),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "   Type a name or email",
                        hintStyle: TextStyle(
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xFFF3F3F3),
              height: 10.w,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(4.w, 0, 4.w, 0),
                child: SizedBox(
                  height: 600,
                  width: 600,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Color(0xFFE5E5E5),
                              height: 10.h,
                              width: 100.w,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5.5.w,
                                      backgroundImage:
                                          AssetImage('assets/photo.png'),
                                      child: Stack(children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: CircleAvatar(
                                              maxRadius: 0.7.h,
                                              backgroundColor: Colors.white70,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.yellow),
                                              )),
                                        ),
                                      ]),
                                    ),
                                    SizedBox(width: 2.w),
                                    Text(username,
                                        style: GoogleFonts.roboto(
                                          fontSize: 11.5.sp,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 1.h)
                          ],
                        );
                      }),
                ))
          ],
        ),
      ),
    ));
  }
}
