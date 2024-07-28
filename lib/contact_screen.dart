import 'package:assignment3/contact_card.dart';
import 'package:assignment3/models/contact_card_model.dart';
import 'package:assignment3/models/textField_model.dart';
import 'package:assignment3/textField.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  static const String routeName = "ContactScreen";

  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  String name = "";
  String phone = "";
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  List<ContactCard> cards = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 33, 150, 243),
          title: Center(
            child: Text(
              "Contacts Screen",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 158, 158, 158),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          width: double.infinity,
          child: Column(
            children: [
              Textfield(
                textfiledModel: TextfiledModel(
                  textFiledPlaceholder: "Enter Your Name Here",
                  textFiledIcon: Icon(Icons.edit),
                ),
                keyboardType: TextInputType.text,
                controller: _nameController,
              ),
              SizedBox(
                height: 25.0,
              ),
              Textfield(
                textfiledModel: TextfiledModel(
                  textFiledPlaceholder: "Enter Your Phone Here",
                  textFiledIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                controller: _phoneController,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Color.fromARGB(255, 33, 150, 243),
                          ),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          name = _nameController.text;
                          phone = _phoneController.text;
                          cards.add(
                            ContactCard(
                              contactCardModel: ContactCardModel(
                                contactName: name,
                                contactPhone: phone,
                                isVisible: true,
                              ),
                            ),
                          );
                          setState(() {});
                          _nameController.clear();
                          _phoneController.clear();
                        },
                        child: Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 82, 82),
                          ),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            if (cards.isNotEmpty) {
                              cards.last.contactCardModel.isVisible = false;
                            }
                          });
                        },
                        child: Text(
                          "Delete",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  for (var card in cards) card,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
