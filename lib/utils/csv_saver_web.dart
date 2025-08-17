// lib/utils/csv_saver_web.dart
// Only compiled for Flutter Web
import 'dart:convert';
import 'dart:html' as html;

Future<String?> saveCsv(String csv, {String filename = 'export.csv'}) async {
  final bytes = utf8.encode(csv);
  final blob = html.Blob([bytes], 'text/csv;charset=utf-8');
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute('download', filename)
    ..style.display = 'none';
  html.document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  html.Url.revokeObjectUrl(url);
  return filename; // path isn't meaningful on web
}
