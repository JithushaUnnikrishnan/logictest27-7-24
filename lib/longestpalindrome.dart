void main() {
  print(longestpalindrome("malayalam"));print(longestpalindrome("aba"));
}

String longestpalindrome(String s) {
  if (s.isEmpty) return "";
  int n = s.length;
  bool Function(int, int) isPalindrome = (start, end) {
    while (start < end) {
      if (s[start] != s[end]) return false;
      start++;
      end--;
    }
    return true;
  };

  String palindrome = s[0];
  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (isPalindrome(i, j) && (j - i + 1) > palindrome.length) {
        palindrome = s.substring(i, j + 1);
      }
    }
  }
  return palindrome;
}
