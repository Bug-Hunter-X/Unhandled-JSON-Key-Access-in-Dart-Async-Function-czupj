```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      // Safely access the element using null-aware operators
      for (var item in data) {
        final String? value = item['nonExistentKey'];
        if (value != null) {
          print(value);
        } else {
          print('Key "nonExistentKey" not found in JSON object.');
        }
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```