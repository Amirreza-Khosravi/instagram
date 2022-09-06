import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/screens/login_screen.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/switch_account_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 40.0,
                        sigmaY: 40.0,
                      ),
                      child: Container(
                        width: 340,
                        height: 352,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2)
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32),
                            Image(
                              image: AssetImage('images/profile.me.png'),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'AmirrezaKhosravi',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 129,
                              height: 46,
                              child: ElevatedButton(
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) {
                                        return LoginScreen();
                                      }),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Confirm',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                            ),
                            SizedBox(height: 32),
                            Text(
                              'switch account',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(height: 32),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 132, bottom: 32),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? / ',
                    style: TextStyle(
                        color: Color(0xff80FFFFFF),
                        fontSize: 16,
                        fontFamily: 'GB'),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, fontFamily: 'GB'),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
