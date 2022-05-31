import 'package:flutter/material.dart';
import 'package:internsforyou/screens/register/controller.dart';
import 'package:internsforyou/theme/ify_custom_theme.dart';
import 'package:get/get.dart';

import '../widgets/ify_textfields.dart';

class UserDetailsScreen extends GetView<RegisterController> {
  UserDetailsScreen({Key? key}) : super(key: key);

final bool isCompany = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('${isCompany ? 'Company' : 'Personal'} Details', style: IFYFonts.introHeader),
                      Container()
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 2),
                        child: primaryTextField('${isCompany ? 'company' : 'first'} name', '${isCompany ? 'company' : 'first'} name', false, firstnameController, TextInputType.text, 1, 30)
                      ),
                      if (!isCompany)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 2),
                          child: primaryTextField('last name', 'last name', false, lastnameController, TextInputType.text, 1, 30)
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 2),
                        child: primaryTextField('${isCompany ? 'company' : 'personal'} bio', 'bio', false, bioController, TextInputType.multiline, 5, 200)
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: ElevatedButton(
                          child: const Text('Create Account'),
                          style: IFYButtons.primaryButton,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (isCompany) {
                                debugPrint('${firstnameController.text}\n ${bioController.text}');
                              } else {
                                debugPrint('${firstnameController.text} ${lastnameController.text}\n ${bioController.text}');
                              }
                              //TODO: Continue if passed
                            } else {
                              debugPrint('false');
                            }  
                          }, 
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
