import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangauageButton extends StatefulWidget {
  const LangauageButton({super.key});

  @override
  State<LangauageButton> createState() => _LangauageButtonState();
}

class _LangauageButtonState extends State<LangauageButton> {
  String currentLang = 'en';

  @override
  void initState() {
    super.initState();
    _loadLanguage();
  }

  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLang = prefs.getString('language_code') ?? 'en';
    setState(() {
      currentLang = savedLang;
    });
  }

  Future<void> _toggleLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    if (currentLang == 'en') {
      currentLang = 'hi';
    }else {
      currentLang = 'en';
    }

    await prefs.setString('language_code', currentLang);
    Get.updateLocale(Locale(currentLang));
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Text(
        currentLang.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      onPressed: _toggleLanguage,
    );
  }
}