import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //===== Images Login =====
                Image.asset(
                  'assets/images/login.png',
                  width: size.width * 0.7,
                ),
                const SizedBox(height: 10.0),
                //===== Text Login =====
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                //===== Form Login =====
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //===== Enter field email =====
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter your email or username',
                            label: const Text('Email or password'),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                              fontFamily: 'verdana_regular',
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: const Icon(Icons.email),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            )),
                      ),
                      const SizedBox(height: 10.0),
                      //===== Enter field password =====
                      TextFormField(
                        obscureText: !showPass,
                        decoration: InputDecoration(
                            hintText: 'Enter your password',
                            label: const Text('Password'),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                              fontFamily: 'verdana_regular',
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: const Icon(Icons.vpn_key_sharp),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showPass = !showPass;
                                });
                              },
                              icon: Icon(showPass
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(color: Colors.grey),
                            )),
                      ),
                      const SizedBox(height: 10.0),
                      //===== Button Submit Login =====
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.lock_open, color: Colors.white),
                              SizedBox(width: 5.0),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                //===== Button Link Register =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
