import 'package:flutter/material.dart';

class ResponsiveElevatedButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color color;
  final VoidCallback onPressed;

  const ResponsiveElevatedButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal, children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.08,
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: Center(
              child: Text(
                text,
                style: textStyle,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class reele extends StatelessWidget {
  const reele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        side: BorderSide(),
        shadowColor: Colors.grey.withOpacity(0.5),
        elevation: 5,
        primary: Colors.white,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Responsive Elevated Box',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
