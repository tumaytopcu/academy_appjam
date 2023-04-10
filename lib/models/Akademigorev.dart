// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Task {
  final String month, task1, task2, task3,task4;
  final int oncelik, size, id;
  final Color color;
  Task({
    required this.id,
    required this.month,
    required this.task1,
    required this.task2,
    required this.task3,
    required this.task4,
    required this.size,
    required this.color,
    required this.oncelik
  });
}

List<Task> tasks = [
  Task(
      id: 1,
      month: "Nisan Görevleri",
      oncelik: 1,
      size: 12,
      task1: "Flutter Eğitimlerinin 12-17 arası modüllerini(%80) tamamla. (ZORUNLU)",
      task2: "Google Proje Yönetimi Eğitimlerinin 3.kursunu tamamla.(ZORUNLU)",
      task3: "Yazılımcılar için İngilizce derslerinin ilk 6 modülünü tamamla.(SEÇENLER İÇİN ZORUNLU) ",
      task4: "Game & App Jam’e katıl.(ZORUNLU)",
      color: Color(0xFF3D82AE)),
  Task(
      id: 2,
      month: "Mayıs Görevleri",
      oncelik: 2,
      size: 8,
      task1: "Flutter Eğitimlerini %100 tamamla.(ZORUNLU)",
      task2: "Google Proje Yönetimi Eğitimlerinin 4. ve 5.kursunu tamamla.(ZORUNLU)",
      task3:"Yazılımcılar için İngilizce derslerini %100(8 modül) tamamla.(SEÇENLER İÇİN ZORUNLU) " ,
      task4: "Kariyer Zirvesine Katıl. (ZORUNLU)",
      color: Color(0xFFD3A984)),
  Task(
      id: 3,
      month: "Haziran Görevleri",
      oncelik: 3,
      size: 10,
      task1:"Eksik kalan tüm eğitimlerini tamamla! Rozetlerini al" ,
      task2: "Google Proje Yönetimi Eğitimlerinin 6.kursunu tamamla.(ZORUNLU)",
      task3: "Kariyer Buluşması’na Katıl.",
      task4: "Mezuniyet BOOTCAMP’ine Odaklan.",
      color: Color(0xFF989493)),
  Task(
      id: 4,
      month: "Temmuz Görevleri",
      oncelik: 4,
      size: 11,
      task1: "BOOTCAMP’i tamamla.",
      task2: "Mezuniyet Törenine katıl.",
      task3: "Sertifikalarını al.",
      task4: "Mezunlar ağına dahil ol.",
      color: Color(0xFFE6B398)),
];


class UnityTask {
  final String month, task1, task2, task3,task4;
  final int oncelik, size, id;
  final Color color;
  UnityTask({
    required this.id,
    required this.month,
    required this.task1,
    required this.task2,
    required this.task3,
    required this.task4,
    required this.size,
    required this.color,
    required this.oncelik
  });
}

List<UnityTask> unitytasks = [
  UnityTask(
      id: 1,
      month: "Nisan Görevleri",
      oncelik: 1,
      size: 12,
      task1: "Unity Uzmanlık Eğitimlerinin 11-19 arası modüllerini (%70) tamamla.(ZORUNLU)",
      task2: "Google Proje Yönetimi Eğitimlerinin 3.kursunu tamamla.(ZORUNLU)",
      task3: "Yazılımcılar için İngilizce derslerinin ilk 6 modülünü tamamla.(SEÇENLER İÇİN ZORUNLU) ",
      task4: "Game & App Jam’e katıl.(ZORUNLU)",
      color: Color(0xFF3D82AE)),
  UnityTask(
      id: 2,
      month: "Mayıs Görevleri",
      oncelik: 2,
      size: 8,
      task1: "Unity Uzmanlık Eğitimini %100 tamamla.(ZORUNLU)",
      task2: "Google Proje Yönetimi Eğitimlerinin 4. ve 5.kursunu tamamla.(ZORUNLU)",
      task3:"Yazılımcılar için İngilizce derslerini %100(8 modül) tamamla.(SEÇENLER İÇİN ZORUNLU) " ,
      task4: "Kariyer Zirvesine Katıl. (ZORUNLU)",
      color: Color(0xFFD3A984)),
  UnityTask(
      id: 3,
      month: "Haziran Görevleri",
      oncelik: 3,
      size: 10,
      task1:"Eksik kalan tüm eğitimlerini tamamla! Rozetlerini al." ,
      task2: "Google Proje Yönetimi Eğitimlerinin 6.kursunu tamamla.(ZORUNLU)",
      task3: "Kariyer Buluşması’na Katıl.",
      task4: "Mezuniyet BOOTCAMP’ine Odaklan.",
      color: Color(0xFF989493)),
  UnityTask(
      id: 4,
      month: "Temmuz Görevleri",
      oncelik: 4,
      size: 11,
      task1: "BOOTCAMP’i tamamla.",
      task2: "Mezuniyet Törenine katıl.",
      task3: "Sertifikalarını al.",
      task4: "Mezunlar ağına dahil ol.",
      color: Color(0xFFE6B398)),
];

