import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project_0013',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            heightFactor: .5,
            alignment: Alignment.topCenter,
            child: Image.network(
              "https://wallpaperplay.com/walls/full/2/2/1/145135.jpg",
              fit: BoxFit.cover,
            ),
          ),
          FractionallySizedBox(
            heightFactor: .6,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, -0.5),
                      blurRadius: 5.0),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.0,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'UserName',
                        suffixIcon: Icon(Icons.person),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide: BorderSide(
                            color: Colors.cyan,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.vpn_key),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide: BorderSide(
                            color: Colors.cyan,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        color: Colors.cyan,
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image.network(
                                'https://cdn1.iconfinder.com/data/icons/rcons-user-action/512/user-512.png'),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10, right: 10)),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image.network(
                                'https://cdn1.iconfinder.com/data/icons/shopping-44/96/apple_pay_payment_method_commerce_ecommerce_security_finger_print_fingerprint-512.png'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
