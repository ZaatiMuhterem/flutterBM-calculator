import 'package:flutter/material.dart';
import 'counter_button.dart'; // buton class'ını import et

class CounterBox extends StatefulWidget {
  final String deger;
  const CounterBox({

    super.key, required this.deger,

});

  @override
  State<CounterBox> createState() => _CounterBoxState();
}

class _CounterBoxState extends State<CounterBox> {
  int _value = 50;


  void _increase() {
    setState(() => _value++);
  }

  void _decrease() {
    setState(() {
      if (_value > 0) _value--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10 ,horizontal: 10),
      width: 160,
      height: 140,
      decoration: BoxDecoration(
        color: Color.fromRGBO(27, 26, 42, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(widget.deger,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),

          Text(
            "$_value",
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CounterButton(
                icon: Icons.remove,
                color: Color.fromRGBO(66, 68, 83, 1),
                onPressed: _decrease,
              ),

              CounterButton(
                icon: Icons.add,
                color: Color.fromRGBO(66, 68, 83, 1),
                onPressed: _increase,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
