# 🧩 ShortID

A lightweight Swift library for generating **short, URL-safe, unique IDs** — perfect for when a full UUID is too long.

> ✨ Default output: 9 characters  
> ⚙️ Zero dependencies · URL-safe · Secure random source

---

## 🚀 Features

- ✅ **Short & unique** — configurable length (default: 9 chars)
- 🔒 **Cryptographically secure** randomness using `CryptoKit`
- 🌐 **URL-safe characters** (`A–Z`, `a–z`, `0–9`, `_`, `-`)
- 💡 **No external dependencies**
- 🧱 **Works on iOS / macOS / watchOS / tvOS**

---

## 📦 Installation

### Swift Package Manager

You can add **ShortID** to your project directly from Xcode:

1. Open your project in Xcode  
2. Go to **File → Add Packages...**  
3. Enter repository URL:https://github.com/aimpackage/ShortID.git

4. Select **Add Package**

Or in your `Package.swift`:

```swift
dependencies: [
 .package(url: "https://github.com/aimpackage/ShortID.git", from: "1.0.0")
]
```

# Usage
import ShortID

// Default: 9-character short ID
let id = ShortID.generate()
print(id)  // Example: "xAsR6ZtP9"

// Custom length
let id12 = ShortID.generate(length: 12)
print(id12) // Example: "YcQsH1aLqM_p"

# How It Works
	1.	Uses SecRandomCopyBytes to generate secure random data
	2.	Hashes it with SHA256 for better entropy
	3.	Encodes the hash as a Base64 string (URL-safe)
	4.	Truncates to your desired length

This approach provides near-UUID-level uniqueness while being concise and friendly for URLs, filenames, or short tokens.

# Example Outputs

| Length | Example Output | Description |
|---|---|---|
| 6  | sK3d2x | Very compact, may collide in large-scale use |
| 9  | xAsR6ZtP9 | Default, safe for most client-side use |
| 12 | YcQsH1aLqM_p | Recommended for stronger uniqueness |