open Alcotest

(* Use the `last_two` function from the `Main` module *)
let test_last_two () =
  let check_last_two input expected =
    check (option (pair string string)) "last_two" expected (Main.last_two input)
  in
  check_last_two [] None;
  check_last_two ["a"] None;
  check_last_two ["a"; "b"; "c"; "d"] (Some ("c", "d"))

let () =
  run "Last Two Tests" [("last_two", [test_case "Basic cases" `Quick test_last_two])]
