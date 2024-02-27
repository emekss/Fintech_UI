import 'package:fintech_1/components/arrow_icon.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String amount;
  final String tag;
  final String percent;
  final Color percentColor;
  final Color iconColor;
  final IconData arrowIcon;
  final Color contColor;
  const TransactionCard({
    super.key,
    required this.amount,
    required this.tag,
    required this.percent,
    required this.percentColor,
    required this.arrowIcon,
    required this.iconColor,
    required this.contColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 130,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowIcon(
                    arrowIcon: arrowIcon,
                    iconColor: iconColor,
                    contColor: contColor,
                  ),
                  Text(
                    percent,
                    style: TextStyle(
                        color: percentColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    amount,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    tag,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
