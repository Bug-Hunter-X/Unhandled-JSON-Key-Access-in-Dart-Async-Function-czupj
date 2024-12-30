```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON list
      final List<dynamic> data = jsonDecode(response.body);
      // Accessing an element that might not exist
      final String value = data[0]['nonExistentKey']; // This can throw an error
      print(value);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e'); // Handle the error properly
  }
}
```