```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Access data from jsonData
      } catch (e) {
        print('Error decoding JSON: $e');
        //Handle decoding error (e.g., log it, show a user-friendly message, return a default value)
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow; 
  }
}
```