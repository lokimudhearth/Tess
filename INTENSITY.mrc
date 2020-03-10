on *:text:*:#:{ 
  var %a = $1, %b = $gettok($1-,-1,32), %total = $upper($replace($strip($1-),],$+($chr(32),INTENSIFIES]))) | if ([* iswm %a && *] iswm %b && $count($1-,$chr(91)) == 1 && $count($1-,$chr(93)) == 1) { 
    msg # $+($chr(2),$chr(29),$chr(3),04,%total,$chr(3),$chr(29),$chr(2)) 
  } 
}
