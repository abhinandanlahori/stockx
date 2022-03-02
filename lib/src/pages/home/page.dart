import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';
import 'package:auth_buttons/auth_buttons.dart';

import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageHome extends StatefulWidget {
  const PageHome({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageHome> {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xFF000000),
                border: Border(
                  left: BorderSide(width: 0, color: Color(0xFF000000)),
                  top: BorderSide(width: 0, color: Color(0xFF000000)),
                  right: BorderSide(width: 0, color: Color(0xFF000000)),
                  bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.zero,
                    padding: const EdgeInsets.only(
                      top: 69,
                    ),
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFF000000),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFF000000)),
                        top: BorderSide(width: 0, color: Color(0xFF000000)),
                        right: BorderSide(width: 0, color: Color(0xFF000000)),
                        bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          border: null,
                        ),
                        child: TextField(
                          onChanged: (String value) async {},
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            hintText: r'''seach an item''',
                            contentPadding: const EdgeInsets.only(
                              left: 16,
                              top: 10,
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          minLines: 1,
                          maxLength: null,
                          obscureText: false,
                          showCursor: true,
                          autocorrect: false,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFF000000),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFF000000)),
                        top: BorderSide(width: 0, color: Color(0xFF000000)),
                        right: BorderSide(width: 0, color: Color(0xFF000000)),
                        bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 50,
                      ),
                      child: Text(r'''Search by nearest store''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFF000000),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFF000000)),
                        top: BorderSide(width: 0, color: Color(0xFF000000)),
                        right: BorderSide(width: 0, color: Color(0xFF000000)),
                        bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: ListView(
                        primary: true,
                        children: [
                          Builder(
                            builder: (context) {
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: 0,
                                itemBuilder: (context, index) {
                                  return Text(r'''text''',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: const Color(0xFF000000),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      textAlign: TextAlign.left,
                                      maxLines: 1);
                                },
                              );
                            },
                          ),
                          Builder(
                            builder: (context) {
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: 0,
                                itemBuilder: (context, index) {
                                  return Text(r'''text''',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: const Color(0xFF000000),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      textAlign: TextAlign.left,
                                      maxLines: 1);
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
