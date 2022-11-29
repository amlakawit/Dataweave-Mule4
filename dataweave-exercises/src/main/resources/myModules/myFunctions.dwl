%dw 2.0

// Determine if the input num is composite number or not
fun isComposite(num) = do {
  var dividers = 2 to num-1
  var reminders = dividers map mod(num, $)
  ---
  if(num<=1 or !isInteger(num)) "Input Not Valid"
  else if(num ==1 or num ==2) "Not composit "
  else if(reminders contains(0)) num ++ "  is composite"
   else num ++  " is not composite"
}

// Given two arrays find the elements that belong only to each array, common, and union of elements only in either
fun common_diff(V1, V2) = do{
    var only_V1 = V1 -- V2
    var only_V2 = V2 -- V1
    ---
    {
   only_V1: only_V1,
   only_V2: only_V2,
   common: V1 -- only_V1,
   only_in_either: only_V1 ++ only_V2
    }
  }
