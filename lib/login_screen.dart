import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'M',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.help_outline),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back to \nMarketly!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  // for fill color
                  fillColor: Color(0xffF5EDE8),
                  filled: true,
                  //======
                  //for border
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  //=======
                ),
                onChanged: (value) {
                  // print(value);
                },
                onTap: () {},
              ),
              SizedBox(
                height: 14,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Icon(Icons.visibility),
                  ),

                  prefixIcon: Icon(Icons.filter_list),
                  // prefixIcon: ,
                  hintText: 'password',
                  // for fill color
                  fillColor: Color(0xffF5EDE8),
                  filled: true,
                  //======
                  //for border
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  //=======
                ),
                onChanged: (value) {
                  // print(value);
                },
                onTap: () {},
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  TextButton(
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Color(0xff9C704A)),
                    ),
                    onPressed: () {
                      print('forget password');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF28021)),
                    onPressed: () {
                      print('login');
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1C140D)),
                    )),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          color: Color(0xff9C704A),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      ' Sign up',
                      style: TextStyle(
                          color: Color(0xff9C704A),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
