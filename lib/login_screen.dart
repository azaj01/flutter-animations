import 'package:flutter/material.dart';
import 'package:new_animation_ui/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme.bodyMedium;
    double width = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/logo.png',
                // height: 75,
                // width: 75,
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              InkWell(
                onTap: null,
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: orientation == Orientation.landscape
                          ? width * 0.2
                          : 25),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    border: Border.all(
                      width: 2.0,
                      color: const Color(0xffe7e5ee),
                    ),
                  ),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "+91",
                              style: theme!.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 0, minHeight: 0),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15),
                      hintText: 'Your phone number ',
                      hintStyle: theme.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white70,
                      alignLabelWithHint: true,
                      disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: orientation == Orientation.landscape
                          ? width * 0.2
                          : 25),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xffffcc00),
                        Color(0XFFfef0be),
                      ],
                    ),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Text(
                        "Get Started ",
                        style: theme.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff252525),
                            fontSize: 17),
                      ),
                      const Spacer(),
                      const IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Color(0xff252525),
                          size: 30,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    const Text('OR'),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: orientation == Orientation.landscape
                          ? width * 0.2
                          : 25),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x722c06b5).withOpacity(.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomLeft,
                    //   colors: [
                    //     // Color(0xff7751ff),
                    //     Colors.blue.shade200,
                    //     Colors.blue.shade50,
                    //   ],
                    // ),
                  ),
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Image.asset(
                        'assets/images/google.png',
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "SignIn with Google",
                        style: theme.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                      const Spacer(),
                      const IconButton(
                        icon: Text(''),
                        // Icon(
                        //   Icons.arrow_forward,
                        //   color: Colors.white,
                        //   size: 30,
                        // ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: orientation == Orientation.landscape
                          ? width * 0.2
                          : 25),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x722c06b5).withOpacity(.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomLeft,
                    //   colors: [
                    //     // Color(0xff7751ff),
                    //     Colors.blue.shade200,
                    //     Colors.blue.shade50,
                    //   ],
                    // ),
                  ),
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      Image.asset(
                        'assets/images/apple.png',
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "SignIn with apple",
                        style: theme.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                      const Spacer(),
                      const IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 52,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
