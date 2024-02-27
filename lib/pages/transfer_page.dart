import 'package:fintech_1/components/add_card_button.dart';
import 'package:fintech_1/components/avatar_column.dart';
import 'package:fintech_1/components/transaction_card.dart';
import 'package:fintech_1/components/user_column.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_rounded),
        title: const Text(
          'Transfer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overview',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TransactionCard(
                    amount: '\$54,700.00',
                    tag: 'Received',
                    percent: '+15%',
                    percentColor: Colors.blue,
                    arrowIcon: Icons.arrow_upward_rounded,
                    iconColor: Colors.white,
                    contColor: Colors.blue,
                  ),
                  TransactionCard(
                    amount: '\$4,700.00',
                    tag: 'Sent',
                    percent: '-5.2%',
                    percentColor: Colors.red,
                    arrowIcon: Icons.arrow_downward_rounded,
                    iconColor: Colors.black,
                    contColor: Colors.lime,
                  ),
                ],
              ),
              SizedBox(height: 20),
              AvatarColumn(),
              SizedBox(height: 20),
              Text(
                'Favourites',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 20),
              UserColumn(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AddCardButton(),
    );
  }
}
