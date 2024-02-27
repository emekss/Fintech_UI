import 'package:flutter/material.dart';

import 'user_card.dart';

class UserColumn extends StatelessWidget {
  const UserColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserCard(
          userName: 'Maria Collas',
          userJob: 'Nursing Assistant',
        ),
        UserCard(
          userName: 'James David',
          userJob: 'Software Engineer',
        ),
        UserCard(
          userName: 'Jonah Dave',
          userJob: 'Doctor',
        ),
        UserCard(
          userName: 'Mercy Damford',
          userJob: 'Surgeon',
        ),
        UserCard(
          userName: 'Maria James',
          userJob: 'Nursing Assistant',
        ),
      ],
    );
  }
}
