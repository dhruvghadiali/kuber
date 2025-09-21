import 'dart:io';
import 'dart:convert';

void mergeLocalizationFiles(arbFiles, appARB) {
  
  var appContent = json.decode(appARB.readAsStringSync());

  /**
   * Collect all keys from source ARB files
   */
  final Set<String> allKeys = {};
  final Map<String, dynamic> mergedContent = {};

  for (var arbFile in arbFiles) {
    var fileContent = json.decode(arbFile.readAsStringSync());
    for (var key in fileContent.keys) {
      allKeys.add(key);
      mergedContent[key] = fileContent[key];
    }
  }

  /**
   * Remove keys from appContent that are not in allKeys
   */
  final keysToRemove = appContent.keys
      .where((k) => !allKeys.contains(k))
      .toList();
  for (var key in keysToRemove) {
    appContent.remove(key);
  }

  /**
   * Add or update keys from mergedContent
   */
  for (var key in mergedContent.keys) {
    appContent[key] = mergedContent[key];
  }

  /**
   * Write merged and sorted content
   */
  var encoder = const JsonEncoder.withIndent('  ');
  appARB.writeAsStringSync(encoder.convert(appContent));
}

void englishLanguageLocalizationSyncKeys() {
  /**
   * List all english language ARB files to merge
   * These files should contain the keys and values for the English language.
   */
  var arbFiles = [
    File('lib/l10n/en/login_en.arb'),
    File('lib/l10n/en/home_en.arb'),
  ];

  var appARB = File('lib/l10n/app_en.arb');

  mergeLocalizationFiles(arbFiles, appARB);
}

void main() {
  englishLanguageLocalizationSyncKeys();
}
