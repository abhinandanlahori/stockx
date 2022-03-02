import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const PageEntryPoint());

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
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Google sign in',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
