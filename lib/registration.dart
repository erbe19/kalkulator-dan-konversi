import 'package:flutter/material.dart';
import 'account_page.dart';
import 'user.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController birthplaceController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              TextField(
                controller: birthplaceController,
                decoration: InputDecoration(labelText: 'Place of Birth'),
              ),
              TextField(
                controller: birthdateController,
                decoration: InputDecoration(labelText: 'Date of Birth'),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true, // Untuk menyembunyikan teks saat mengetik password
              ),
              ElevatedButton(
                onPressed: () {
                  User newUser = User(
                    name: nameController.text,
                    username: usernameController.text,
                    email: emailController.text,
                    phoneNumber: phoneNumberController.text,
                    birthplace: birthplaceController.text,
                    birthdate: birthdateController.text,
                    password: passwordController.text,
                  );

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AccountPage(user: newUser),
                    ),
                  );
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
