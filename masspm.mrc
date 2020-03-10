alias mass {
  if ($regex($1,/^(pm|invite)$/Si)) {
    var %cmd $1, %totalChans $numtok($2, 44), %i 1
    while (%i <= %totalChans) {   
      var %chan $gettok($2, %i, 44), %totalUsers $nick(%chan, 0), %j 1
      if ($left(%chan, 1) != $chr(35)) echo -a Invalid channel name %chan $+ . 
      elseif ($me !ison %chan) echo -a You have to join $v2 first. 
      while (%j <= %totalUsers) {
        if ($nick(%chan, %j) != $me) $iif(%cmd = pm,msg,$1) $nick(%chan, %j) $iif($v1 = $v2,$3-,#)
        inc %j    
      }
      inc %i
    }
  }
}
