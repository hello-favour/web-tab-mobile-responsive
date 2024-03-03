import 'package:flutter/material.dart';
import 'package:web_tab_mobile_reponsive/components/side_menu.dart';
import 'package:web_tab_mobile_reponsive/responsive.dart';
import 'package:web_tab_mobile_reponsive/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';

//this design looks fine if our width is more than 1100
//let's create our responsive file

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //once our width is less than 1300 then it start showing errors
      //now there is no error if our width is less then 1340
      body: Responsive(
        //lets work on our mobile
        mobile: const ListOfEmails(),
        tablet: const Row(
          //tablet screen is this
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: const SideMenu(),
            ),
            Expanded(
              flex: size.width > 1340 ? 3 : 5,
              child: const ListOfEmails(),
            ),
            Expanded(
              flex: size.width > 1340 ? 8 : 10,
              child: const EmailScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
