import 'package:flutter/material.dart';

import '../constant/constant.dart';

class Custom_drawer extends StatelessWidget {
  const Custom_drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage('images/girl.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                kPrimaryColor,
                BlendMode.color,
              ),
            ),
          ),
          child: Text(
            'Minet Gleeweh',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ));
  }
}
