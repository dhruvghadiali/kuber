import 'package:flutter/material.dart';
import 'package:kuber/theme/extensions_theme_data.dart';
import 'package:kuber/widgets/android/common/form_fields/button/android_text_button_widget.dart';
import 'package:kuber/widgets/android/common/form_fields/text_field/android_floating_text_field_widget.dart';
import 'package:kuber/widgets/android/common/loader/android_api_request_loader_widget.dart';

class AndroidSignInFormWidget extends StatelessWidget {
  AndroidSignInFormWidget({super.key});

  final TextEditingController usernameTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AndroidFloatingTextFieldWidget(
          controller: usernameTextEditingController,
          textInputType: TextInputType.text,
          textInputAction: TextInputAction.next,
          hintText: 'Enter your username',
          labelText: 'Username',
          showError: false,
          errorMessage: '',
          onChange: (String value) {},
          onSubmitted: (String value) {},
        ),
        const SizedBox(height: 30),
        AndroidFloatingTextFieldWidget(
          controller: passwordTextEditingController,
          textInputType: TextInputType.text,
          textInputAction: TextInputAction.done,
          hintText: 'Enter your password',
          labelText: 'Password',
          obscureText: true,
          showError: false,
          errorMessage: '',
          onChange: (String value) {},
          onSubmitted: (String value) {},
        ),
        const SizedBox(height: 30),
        const AndroidApiRequestLoaderWidget(),
        SizedBox(
          width: double.infinity,
          child: AndroidTextButtonWidget(
            buttonText: 'SIGN IN',
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: AndroidTextButtonWidget(
                  backgroundColor: Theme.of(context)
                      .extension<ExtensionsThemeData>()!
                      .accent,
                  textColor: Theme.of(context).colorScheme.primary,
                  buttonText: 'Forgotten Password',
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: AndroidTextButtonWidget(
                  backgroundColor: Theme.of(context)
                      .extension<ExtensionsThemeData>()!
                      .accent,
                  textColor: Theme.of(context).colorScheme.primary,
                  buttonText: 'SIGN UP',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
