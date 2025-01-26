open Alcotest

let test_nth_element () =
  let check_nth_element index input expected =
    check (option string) "nth_element" expected (Main.at index input)
  in
  check_nth_element 1 [] None;
  check_nth_element 0 ["a"] (Some "a");
  check_nth_element 2 ["a"] None;
  check_nth_element 2 ["a"; "b"; "c"; "d"; "e"] (Some "c")

let () =
  run "nth element tests" [("at", [test_case "Basic cases" `Quick test_nth_element])]
