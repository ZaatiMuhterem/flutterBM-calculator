import 'package:flutter/material.dart';
import 'counter_button.dart';
import 'counter_box.dart';

class anaSayfa1 extends StatefulWidget {
  const anaSayfa1({super.key});


  @override
  State<anaSayfa1> createState() => _anaSayfa1State();
}

class _anaSayfa1State extends State<anaSayfa1> {
  double _boy = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 14, 27, 1),
      appBar: AppBar(title: Center(child: Text("Vücut Kitle Endeksi",style: TextStyle(color: Colors.white),)),backgroundColor: Color.fromRGBO(19, 18, 23, 1),),
      body:
      Column(
        children: [
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(icon: Icons.male, color: Color.fromRGBO(27, 26, 42, 1), onPressed: (){}, text1: "MALE",),
              SizedBox(width: 5,),
              CustomButton(icon: Icons.female, color: Color.fromRGBO(27, 26, 42, 1), onPressed: (){}, text1: "FEMALE",)

            ],
          ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 45,),
          decoration: BoxDecoration(
              color: Color.fromRGBO(27, 26, 42, 1),
              borderRadius: BorderRadius.circular(18)),
          child: Column(

            children: [
              
              Text("BOY",style: TextStyle(color: Colors.grey,fontSize: 20),),
              Row(
                children: [
                  SizedBox(width: 130,),
                  Text("${_boy.toStringAsFixed(0)} ",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                  Text("cm",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 30),)
                ],
              ),
              SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: Color.fromRGBO(213, 0, 76, 1),
                    overlayColor: Color.fromRGBO(213, 0, 76, 0.4),
                    trackHeight: 6,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
                  ),
                  child: Slider(
                      value: _boy,
                      min: 100,
                      max: 220,
                      divisions: 120,
                      onChanged: (value) {
                        setState(() {
                          _boy = value;
                        });
                      },
                ),
                        ),
            ],
          ),
        ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CounterBox(deger: "KİLO",),
              CounterBox(deger: "YAŞ")
            ],
          ),

        ],

      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          width: double.infinity,
          height: 70,
          margin: const EdgeInsets.all(16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(213, 0, 76, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {
              // Tıklandığında yapılacaklar

            },
            child: const Text(
              "HESAPLA",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),

    );

  }

}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final String text1;

  const CustomButton({

    super.key,
    required this.text1,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 47),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 90,
              color: Colors.white,
            ),
            Text(text1,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900,fontSize: 20),)
          ],

        )
      ),
    );
  }


}
