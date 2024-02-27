import 'package:flutter/material.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          height: 70,
          width: 300,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 3, 69, 167),
              borderRadius: BorderRadius.circular(40)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                'Add new',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ],
          )),
    );
  }
}
