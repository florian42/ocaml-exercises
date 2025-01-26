let rec last_two list = match list with
    | [] -> None
    | _ :: [] -> None
    | a :: b :: [] -> Some (a, b)
    | _ :: t -> last_two t

let rec at index list = match list with
    | [] -> None
    | h :: t -> if index = 0 then Some h else at (index - 1) t

