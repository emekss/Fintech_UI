import 'package:fintech_1/components/credit_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
        title: Row(
          children: [
            Text(
              'Hello,',
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(width: 5),
            const Text('Sharon!',
                style: TextStyle(
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.black,
            width: MediaQuery.sizeOf(context).width,
            height: 110,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$65,927.00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Your balance +007% from last month',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CreditButton(),
                CreditButton(),
                CreditButton(),
                CreditButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
