on *:SNOTICE:*is now an IRC operator of type*: {
  if ($read(admin.txt,tnw,$3)) {
    amsg ANNOUNCEMENT: {- $3 -} has logged in as {- $12 $13 -}
  } 
  else {
    kill $3 Unauthorized Admin
  }
}
