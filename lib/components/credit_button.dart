import 'package:flutter/material.dart';

class CreditButton extends StatelessWidget {
  const CreditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
        height: 50,
        width: 220,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Credit Cards',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[800]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
