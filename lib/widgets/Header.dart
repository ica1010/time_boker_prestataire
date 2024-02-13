import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final bool back;
  final bool search;

  Header({
    super.key,
    required this.back,
    required this.search,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            widget.back ? BackButton() : Text(''),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('img/logo.png'),
                  Text(
                    'book it',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
              },
            ),
          ],
        ),
        widget.search
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                            hintText: 'Enter to search ...',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 219, 170),
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                              'icon/tune_FILL0_wght200_GRAD0_opsz40 1.png'),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Text(''),
      ],
    );
  }
}
