import 'package:flutter/material.dart';
import 'package:our_rights_fe/components/dashboard/dashboard_button.dart';
import 'package:our_rights_fe/components/dashboard/new_ticket_button.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 40,
                          color: const Color.fromARGB(255, 0, 136, 248),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Our Rights",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 117, 227),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.notifications,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 238, 238, 238),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.more_horiz_outlined)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 180,
                  width: 360,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/traffic.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let us be your judical guide",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 69, 137, 254),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Simplify Your Legal Fight with ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "New York's Top Attorneys",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        NewTicketButton(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DashboardButton(
                          displayIcon: Icons.balance_rounded,
                          routeName: "Decision Awarded",
                          countsOf: 100),
                      DashboardButton(
                          displayIcon: Icons.shop_two_outlined,
                          routeName: "Unassigned Tickets",
                          countsOf: 50),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DashboardButton(
                          displayIcon: Icons.person_2_outlined,
                          routeName: "Representatives",
                          countsOf: 20),
                      DashboardButton(
                          displayIcon: Icons.airplane_ticket_outlined,
                          routeName: "Closed Tickets",
                          countsOf: 10),
                    ],
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
