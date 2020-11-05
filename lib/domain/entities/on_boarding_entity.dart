import 'package:flutter/material.dart';

class OnBoardingEntity{
  final String image;
  final String heading;
  final String description;

  OnBoardingEntity({this.image, this.heading, this.description});

  static List<OnBoardingEntity> onBoardingData=[
    OnBoardingEntity(
      image: 'assets/devices.png',
      description: 'Stream on your phone, tablet, laptop and TV',
      heading: 'Wach on device'
    ),
    OnBoardingEntity(
      image: 'assets/download.png',
      description: 'Always have some to watch',
      heading: '3,2,1... Download!'
    ),
    OnBoardingEntity(
      image: 'assets/contract.png',
      description: 'Join todat, cancel any time',
      heading: 'No annoying contracts'
    ),
    OnBoardingEntity(
      image: 'assets/background.png',
      description: 'Strem and downloada as much as you want',
      heading: 'Unlimited entertrainment, one low price'
    ),
    
  ];
}
