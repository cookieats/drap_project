
import 'dart:async';
import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier{
   late Timer timer;
   double currentDuration = 10;
   double selectedTime = 10;
   bool timerPlaying = false;
   String CurrentState = "FOKUS";

   void start(){
    timerPlaying = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) { 
      if (currentDuration == 0){
      handleNextRound();
    }else{
      currentDuration--;
      
    }
    notifyListeners();  
    });
   }
   void pause (){
    timer.cancel();
    timerPlaying = false;
    notifyListeners();

   }

   void handleNextRound(){
    if (CurrentState == "FOKUS"){
      CurrentState = "BREAK";
      currentDuration = 5;
      selectedTime = 5;
    }else {
      CurrentState = "FOCUS";
      currentDuration = 10;
      selectedTime = 10;
    }
    notifyListeners();
   }

   void selectTime(double seconds){
    selectedTime = seconds;
    currentDuration = seconds;
    notifyListeners();
   }
}