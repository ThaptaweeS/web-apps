import 'package:newmaster/constants.dart';
import 'package:flutter/material.dart';

class PumpdataInfo {
  final String? svgSrc, title, totalStorage, numOfFiles;
  final int? percentage, id;
  final Color? color, color2, color3;

  PumpdataInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
    this.id,
    this.color2,
    this.color3,
  });
}

List<PumpdataInfo> demoMyFiles = [
  PumpdataInfo(
     id: 1,
    title: "FA Pump",
    numOfFiles: "",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "75 / 120 liter",
    color: Color.fromARGB(255, 253, 49, 205),
    percentage: 83,
    color2: Color.fromARGB(255, 2, 147, 53),
    color3: Color.fromARGB(255, 215, 255, 54),
  ),
  PumpdataInfo(
   id: 2,
    title: "AC Pump",
    numOfFiles: "",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "85 / 120 liter",
    color: Color.fromARGB(255, 237, 80, 137),
    percentage: 71,
    color2: Color.fromARGB(255, 255, 5, 5),
    color3: Color.fromARGB(255, 215, 255, 54),
  ),
];

class PumpdataInfo2 {
  final String? svgSrc, title, totalStorage, numOfFiles;
  final int? percentage, id;
  final Color? color, color2,color3;

  PumpdataInfo2({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
    this.id,
    this.color2,
    this.color3,
  });
}

List<PumpdataInfo2> demoMyFiles2 = [
  PumpdataInfo2(
    id: 1,
    title: "FA Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "0/100 liter",
    color: Color.fromARGB(255, 49, 229, 253),
    percentage: 0,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(33, 35, 49, 20),
  ),
  PumpdataInfo2(
    id: 2,
    title: "AC Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "60/100 liter",
    color: Color.fromARGB(255, 14, 99, 41),
    percentage: 60,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  )
],demoMyFiles3 = [
  PumpdataInfo2(
    id: 1,
    title: "FA Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "25/100 liter",
    color: Color.fromARGB(255, 185, 253, 49),
    percentage: 32,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  ),
  PumpdataInfo2(
    id: 2,
    title: "AC Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "82/100 liter",
    color: Color.fromARGB(255, 35, 14, 99),
    percentage: 82,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  )
],demoMyFiles4 = [
  PumpdataInfo2(
    id: 1,
    title: "FA Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "25/100 liter",
    color: Color.fromARGB(255, 253, 49, 144),
    percentage: 25,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  ),
  PumpdataInfo2(
    id: 2,
    title: "AC Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "82/100 liter",
    color: Color.fromARGB(255, 99, 86, 14),
    percentage: 82,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  )
],demoMyFiles5 = [
  PumpdataInfo2(
    id: 1,
    title: "FA Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "25/100 liter",
    color: Color.fromARGB(255, 49, 229, 253),
    percentage: 25,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  ),
  PumpdataInfo2(
    id: 2,
    title: "AC Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "82/100 liter",
    color: Color.fromARGB(255, 99, 38, 14),
    percentage: 82,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  )
],demoMyFiles6 = [
  PumpdataInfo2(
    id: 1,
    title: "FA Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "25/100 liter",
    color: Color.fromARGB(255, 49, 229, 253),
    percentage: 25,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  ),
  PumpdataInfo2(
    id: 2,
    title: "AC Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "82/100 liter",
    color: Color.fromARGB(255, 14, 99, 41),
    percentage: 82,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  )
],demoMyFiles7 = [
  PumpdataInfo2(
    id: 1,
    title: "FA Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "25/100 liter",
    color: Color.fromARGB(255, 199, 49, 253),
    percentage: 25,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  ),
  PumpdataInfo2(
    id: 2,
    title: "AC Pump",
    numOfFiles: "10 litter/hr",
    svgSrc: "assets/icons/pump.svg",
    totalStorage: "82/100 liter",
    color: Color.fromARGB(255, 99, 89, 14),
    percentage: 82,
    color2: Color.fromARGB(255, 190, 16, 16),
    color3: Color.fromARGB(255, 215, 255, 54),
  )
];
