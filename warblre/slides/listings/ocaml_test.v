let%expect_test "sequence" =
  test_regex
    ((char 'a') -- (char 'b') -- (char 'b'))
    "abbb"
    0 ();
  [%expect {|
    Matched 3 characters ([0-3]) in 'abbb' (length=4)
  |} ]