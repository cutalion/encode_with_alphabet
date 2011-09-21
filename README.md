# EncodeWithAlphabet

Provides a simple method for encoding integers with specified alphabet.
By default alphabet is `0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ`.


# Examples

```ruby
EncodeWithAlphabet.encode 100                                                                             #=> "2S"
EncodeWithAlphabet.encode 100, "01"                                                                       #=> "1100100"
EncodeWithAlphabet.encode 1000000000000, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" #=> "hBxM5A4"
```
