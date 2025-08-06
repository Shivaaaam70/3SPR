import 'package:find_job/core/const/asset_const.dart';
import 'package:find_job/core/const/string_const.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Stack(
      children: [
        // Background Image
        SizedBox(
          height: 600,
          width: double.infinity,
          child: Image.asset(
            AssetConst.landing_background,
            fit: BoxFit.cover,
          ),
        ),

        
        Container(
          height: 634,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringConst.landing_hero_desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Inter' ,
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                StringConst.landing_hero_subdesc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(onPressed: (){ 
                
                
              },
              style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 30, 87, 133),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ), child: Text("Learn More" , style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ],
          ),
        )
      ],
    );
  }
}
