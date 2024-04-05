import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/demo/demo.dart';

class NewTicketButton extends StatelessWidget {
  const NewTicketButton({
    super.key,
  });
  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Demo(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 69, 137, 254),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: const Text(
          'Create New Ticket',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
