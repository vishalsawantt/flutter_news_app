import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'welcome_hint': 'Welcome',
      'continue_hint': 'Enter your name to continue',
      'enter_name': 'Enter your name',
      'continue_button': 'Continue',
      'welcome_user': 'Welcome, @name',
      'general': 'General',
      'business': 'Business',
      'entertainment': 'Entertainment',
      'health': 'Health',
      'science': 'Science',
      'sports': 'Sports',
      'technology': 'Technology',
      'description_hint': 'Description',
      'content_hint': 'Content',
      'no_news' : "No news available",
      'internet_exception' : "we're unable to show results.\nPlease check you data\nconenction",
      'general_exception' : "we're unable to process your request.\n Please try again",
    },
    'hi_IN': {
      'welcome_hint': 'स्वागत है',
      'continue_hint': 'जारी रखने के लिए अपना नाम दर्ज करें',
      'enter_name': 'अपना नाम दर्ज करें',
      'continue_button': 'जारी रखें',
      'welcome_user': 'स्वागत है, @name',
      'general': 'सामान्य',
      'business': 'व्यापार',
      'entertainment': 'मनोरंजन',
      'health': 'स्वास्थ्य',
      'science': 'विज्ञान',
      'sports': 'खेल',
      'technology': 'प्रौद्योगिकी',
      'description_hint': 'विवरण',
      'content_hint': 'लेख',
      'no_news' : "कोई समाचार उपलब्ध नहीं है",
      'internet_exception' : "आम्ही निकाल दाखवू शकत नाही.\nकृपया तुमचा डेटा तपासा\nकनेक्शन",
      'general_exception' : "आम्ही तुमच्या विनंतीवर प्रक्रिया करू शकत नाही.\n कृपया पुन्हा प्रयत्न करा",
    },
  };
}
