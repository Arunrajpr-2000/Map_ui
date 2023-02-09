import 'package:flutter/material.dart';
import 'package:map_ui/core/const.dart';
import 'package:map_ui/presentation/widgets/payment_tile_widget.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey[600],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: kDivider),
                Text(
                  '  SELECT PAYMENT METHOD  ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(child: kDivider),
              ],
            ),
            PaymentTile(
              title: 'Khalti',
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
            kDivider,
            PaymentTile(
              title: 'Esewa',
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
            kDivider,
            PaymentTile(
              title: 'Cash on delivery',
              trailing: Radio<int>(
                  activeColor: Colors.blue,
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {
                    value = value!;
                  }),
            ),
            kDivider
          ],
        ),
      ),
    );
  }
}
