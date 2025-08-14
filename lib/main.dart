import 'package:flutter/material.dart';
import 'package:profile_screen_n/login_screen.dart';
import 'package:profile_screen_n/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductsScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset('assets/Depth 5, Frame 0 (1).png'),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/Depth 5, Frame 0.png',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sophia Carter',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            Text(
              '@sophiac',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  print('edit profile');
                },
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Color(0xff1C140D),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF5EDE8),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // <-- change the radius
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffE8D9CF))),
                  child: Column(
                    children: [
                      Text(
                        '12',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffE8D9CF))),
                  child: Column(
                    children: [
                      Text(
                        '12',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffE8D9CF))),
                  child: Column(
                    children: [
                      Text(
                        '12',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  InkWell(

                    onTap: () {
                      print('orders history');
                    },
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF5EDE8)),
                          padding: EdgeInsets.all(10),
                          child: Image.asset('assets/cube.png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Order History',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff1C140D),
                          size: 24,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF5EDE8)),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.payment),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Payment Methods',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff1C140D),
                        size: 24,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF5EDE8)),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.location_on_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Saved Addresses',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff1C140D),
                        size: 24,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF5EDE8)),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.notifications_active_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff1C140D),
                        size: 24,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF5EDE8)),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.help_outline),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff1C140D),
                        size: 24,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF5EDE8)),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.logout),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'LogOut',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff1C140D),
                        size: 24,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
