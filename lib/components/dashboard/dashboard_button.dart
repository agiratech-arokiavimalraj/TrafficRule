import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/demo/demo.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton({
    super.key,
    required this.displayIcon,
    required this.routeName,
    required this.countsOf,
  });
  final IconData displayIcon;
  final String routeName;
  final int countsOf;
  @override
  Widget build(BuildContext context) {
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
        height: 90,
        width: 170,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 55, 50, 197),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Icon(
              displayIcon,
              color: const Color.fromARGB(255, 69, 137, 254),
              weight: 40,
              size: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              routeName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              countsOf.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
