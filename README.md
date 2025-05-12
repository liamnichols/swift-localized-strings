# swift-localized-strings

[![Tests](https://github.com/liamnichols/swift-localized-strings/actions/workflows/tests.yml/badge.svg)](https://github.com/liamnichols/swift-localized-strings/actions/workflows/tests.yml)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fliamnichols%2Fswift-localized-strings%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/liamnichols/swift-localized-strings)

A set of small libraries used for parsing localized string resources.

## Libraries

- **StringCatalog** - `Codable` types for Apple's Strings Catalog file format.
- **StringSource** - Different representations of localized string resources.
- **StringResource** - A representation of a parsed localized string.
- **StringExtractor** - Tools for extracting resources from different sources of localized strings.
- **StringValidator** - Basic validations that can be performed on extracted resources.

## Usage

The libraries in this repository primarily exist to support [XCStrings Tool](https://github.com/liamnichols/xcstrings-tool/), but you might find them useful yourself if you want to build your own developer tools that interact with localized string resources.