import 'package:flutter/material.dart';

import 'LoginPage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Your Account ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue),
              ),
              SizedBox(height: 32),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter Your first name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    hintText: 'ex : John',
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter Your Last name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    hintText: 'ex : DOE',
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter your phone number'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    hintText: 'ex : +228 99 88 77 66',
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('Enter Your Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    hintText: '',
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('Confirm Your Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    hintText: '',
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                width: MediaQuery.of(context).size.width - 10,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Creé mon compte',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('Déjà un compte? Se connecter'),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
