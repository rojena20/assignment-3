import 'package:flutter/material.dart';

import 'models/contact_card_model.dart';

class ContactCard extends StatelessWidget {
  ContactCardModel contactCardModel;

  ContactCard({
    super.key,
    required this.contactCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: contactCardModel.isVisible,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 30.0,
        ),
        margin: EdgeInsets.only(
          bottom: 15.0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${contactCardModel.contactName}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Phone: ${contactCardModel.contactPhone}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
