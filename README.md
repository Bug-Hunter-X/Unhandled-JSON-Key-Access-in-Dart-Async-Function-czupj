# Unhandled JSON Key Access in Dart Async Function

This repository demonstrates a common yet easily overlooked error in Dart: accessing a non-existent key in a JSON response within an asynchronous function.  Improper handling of this can lead to runtime exceptions and application crashes.

## The Bug
The `bug.dart` file contains a function `fetchData()` that fetches JSON data from an API.  The issue lies in how it handles the response. It assumes a specific key exists ('nonExistentKey') in each JSON object within the response, which might not always be the case. This results in a runtime error if the key is missing.

## The Solution
The `bugSolution.dart` file presents a corrected version of `fetchData()`. The solution focuses on using robust error handling methods within the JSON parsing process to prevent runtime exceptions. This improved version uses a null-aware operator (?.) to safely access the element in the JSON and provides more informative error messages.