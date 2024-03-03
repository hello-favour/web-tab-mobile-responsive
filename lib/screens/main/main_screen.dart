import 'package:flutter/material.dart';
import 'package:web_tab_mobile_reponsive/components/side_menu.dart';
import 'package:web_tab_mobile_reponsive/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          Expanded(
            flex: 3,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: 8,
            child: EmailScreen(),
          ),
        ],
      ),
    );
  }
}
