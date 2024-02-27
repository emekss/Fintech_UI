import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String userName;
  final String userJob;
  const UserCard({
    super.key,
    required this.userName,
    required this.userJob,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.person_3_rounded),
              const SizedBox(width: 10),
              Column(children: [
                Text(
                  userName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 1),
                Text(
                  userJob,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ]),
            ],
          ),
          Column(
            children: [
              Text(
                '**** 2724',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Image.asset('assets/images/mclogo.jpeg')
            ],
          )
        ],
      ),
    );
  }
}
