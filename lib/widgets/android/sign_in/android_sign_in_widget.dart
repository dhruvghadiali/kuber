import 'package:flutter/material.dart';
import 'package:kuber/widgets/android/sign_in/sign_in_form/android_sign_in_form_widget.dart';
import 'package:kuber/widgets/android/sign_in/sign_in_icon/android_sign_in_icon_widget.dart';

class AndroidSignInWidget extends StatelessWidget {
  const AndroidSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).colorScheme.primary,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child:  Column(
                children: [
                  const AndroidSignInIconWidget(),
                  AndroidSignInFormWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
