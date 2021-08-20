import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
          margin: EdgeInsets.only(
              top: 50,
              left: 20
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  color: Colors.white,
                  child : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                            height: 160,
                            width: 80,
                            fit: BoxFit.fitHeight
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 200,
                                  height : 20,
                                  color: Colors.grey,
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                      "Owl"
                                  )
                              ),
                              Text(
                                  "Owl Desc"
                              ),
                              Text(
                                  "Owl Desc 2"
                              ),
                              Text(
                                  "Owl Desc 2"
                              )
                            ]
                        )
                      ]
                  ),),
                Text('''Lorem .''',style: TextStyle(fontSize: 20, color: Colors.red)),
                Container(
                    width : MediaQuery.of(context).size.width /1.2,
                    height: 120,
                    color: Colors.white
                )
              ]
          )
      ),
    );
  }
}