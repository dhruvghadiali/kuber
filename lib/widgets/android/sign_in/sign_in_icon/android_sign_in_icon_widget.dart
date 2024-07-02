import 'package:flutter/material.dart';

class AndroidSignInIconWidget extends StatelessWidget {
  const AndroidSignInIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height:  MediaQuery.of(context).size.width / 4,
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 1,
        ),
        color: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary,
      ),
      child: Image.asset('assets/images/icon.png'),
    );
  }
}
