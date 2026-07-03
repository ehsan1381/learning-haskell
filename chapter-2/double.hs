doubleMe x = x + x

-- doubleUs x y = 2*x + 2*y

-- doubleUs can be redefined
doubleUs x y = doubleMe x + doubleMe y

-- double if the input is less than 100, otherwise return the number itself
doubleSmallNumber x = if x<= 100
  then doubleMe x
  else x


-- same function as before but add 1 to the result
doubleSmallNumber' x = (if x<= 100 then doubleMe x else x) + 1
