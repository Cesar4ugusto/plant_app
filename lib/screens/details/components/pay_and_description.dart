import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class PayAndDescription extends StatelessWidget {
  const PayAndDescription({
    Key? key,
    required this.pressPay,
    required this.pressDescription,
  }) : super(key: key);

  final VoidCallback pressPay, pressDescription;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        children: <Widget>[
          SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                  onPressed: pressPay,
                  child: Text("Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )),
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: pressDescription,
                  child: const Text("Description"))),
        ],
      ),
    );
  }
}
