import 'package:flutter/material.dart';
// import 'package:outlook/models/Email.dart';
import 'package:web_tab_mobile_reponsive/models/Email.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';
import 'email_card.dart';

class ListOfEmails extends StatelessWidget {
  const ListOfEmails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        color: kBgDarkColor,
        child: Column(
          children: [
            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Search",
                fillColor: kBgLightColor,
                filled: true,
                suffixIcon: WebsafeSvg.asset(
                  "assets/Icons/Search.svg",
                  width: 24,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: [
                WebsafeSvg.asset(
                  "assets/Icons/Angle down.svg",
                  width: 16,
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 5),
                const Text(
                  "Sort by date",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Spacer(),
                MaterialButton(
                  minWidth: 20,
                  onPressed: () {},
                  child: WebsafeSvg.asset(
                    "assets/Icons/Sort.svg",
                    width: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            Expanded(
              child: ListView.builder(
                itemCount: emails.length,
                itemBuilder: (context, index) => EmailCard(
                  isActive: index == 0,
                  email: emails[index],
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
