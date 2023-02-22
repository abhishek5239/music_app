import 'package:flutter/material.dart';

class get_floating_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "btn1",
      child: Icon(
        Icons.arrow_forward_rounded,
        size: 30,
      ),
      onPressed: () {},
      backgroundColor: Colors.black54,
    );
  }
}

class get_textbutton_small extends StatelessWidget {
  get_textbutton_small({this.get_text, this.onpressed, this.text_color});

  final String? get_text;
  final VoidCallback? onpressed;
  final Color? text_color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child: Text(
          get_text!,
          style: TextStyle(
              color: text_color,
              fontSize: 15,
              decoration: TextDecoration.underline),
        ));
  }
}

class get_textbutton_big extends StatelessWidget {
  get_textbutton_big({this.get_text, this.text_color, this.onpress});
  final String? get_text;
  final Color? text_color;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        get_text!,
        style: TextStyle(
          color: text_color,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          decoration: TextDecoration.underline,
        ),
      ),
      onPressed: onpress,
    );
  }
}

class get_text_field extends StatelessWidget {
  get_text_field(
      {this.input_text,
      this.input_icon,
      this.normal_color,
      this.press_color,
      this.hint_color,
      this.text_color,
      this.icon_color,
      this.onchanged});
  final String? input_text;
  final IconData? input_icon;
  final Color? normal_color;
  final Color? press_color;
  final Color? hint_color;
  final Color? text_color;
  final Color? icon_color;
  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 18, color: text_color),
      onChanged: onchanged,
      decoration: InputDecoration(
          hintText: input_text,
          prefixIcon: Icon(
            input_icon,
            color: icon_color,
            size: 30,
          ),
          hintStyle: TextStyle(color: hint_color, fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: normal_color!, width: 2)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: press_color!, width: 3))),
    );
  }
}
