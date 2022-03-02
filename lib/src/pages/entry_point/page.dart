import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';
import 'package:auth_buttons/auth_buttons.dart';

import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageEntryPoint extends StatefulWidget {
  const PageEntryPoint({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageEntryPoint> {
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
                    margin: const EdgeInsets.only(
                      top: 200,
                    ),
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      right: 20,
                      bottom: 20,
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
                      child: Image.network(
                        r'''https://images.unsplash.com/photo-1646220627446-3f4d9d91c140?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80https://images.unsplash.com/photo-1646220627446-3f4d9d91c140?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80''',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 150,
                        right: 20,
                        bottom: 20,
                      ),
                      child: GoogleAuthButton(
                        onPressed: () async {},
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: AppleAuthButton(
                        onPressed: () async {},
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
