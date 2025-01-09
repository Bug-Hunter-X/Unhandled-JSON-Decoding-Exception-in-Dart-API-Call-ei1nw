```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the JSON response here, for example
      final jsonData = jsonDecode(response.body);
      // Access data from jsonData
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions appropriately
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled by the caller
  }
}
```