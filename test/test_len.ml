open Alcotest

let test_len () =
  let check_len input expected =
    check int "nth_element" expected (Main.len input)
  in
  check_len [] 0;
  check_len ["a"; "b"; "c"] 3

let () =
  run "len tests" [("len", [test_case "Basic cases" `Quick test_len])]
