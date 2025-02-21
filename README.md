# Dart JSON Decoding Type Safety Bug

This repository demonstrates a common error when working with JSON responses in Dart: assuming the structure of the JSON response without proper type checking.

The `bug.dart` file contains the buggy code.  The `bugSolution.dart` file provides the corrected implementation.

## Bug Description

The original code assumes the JSON response is always a list.  If the server returns a different JSON structure (e.g., a map, a string, or null), the code will throw a runtime exception.

## Solution

The solution involves using more robust type checking and handling potential errors gracefully.

## How to Run

1. Clone this repository
2. Run the `bug.dart` file (you will see an error). 
3. Run the `bugSolution.dart` file (you will see correct behavior)

Make sure to have the `http` package added to your `pubspec.yaml` and run `pub get`.