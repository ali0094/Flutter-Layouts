import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('assets/images/login_image.png'),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 16.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Please enter user name',
                      labelText: 'User Name',
                    ),
                  ),
                  TextFormField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Please enter password',
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('You just clicked me');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
