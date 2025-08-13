import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController ayHaga = TextEditingController();

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
                controller: ayHaga,
                decoration: InputDecoration(
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
                onTap: () {

                },
              ),


              ElevatedButton(onPressed: () {

                print(ayHaga.text);

              }, child: Text('test'))
            ],
          ),
        ),
      ),
    );
  }
}
