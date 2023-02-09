import 'package:flutter/material.dart';

class PaymentTile extends StatelessWidget {
  PaymentTile({Key? key, required this.title, required this.trailing})
      : super(key: key);
  String? title;
  Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 30,
        width: 55,
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)),
        child: Image.asset(
          'asset/Gpay.png',
          fit: BoxFit.contain,
        ),
      ),
      title: Text(title.toString()),
      trailing: trailing,
    );
  }
}
