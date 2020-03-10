on *:BAN:#: {
  if ($bnick == yournickhere) {
    /cs unban # yournickhere
    /ban # $nick 
    kick # $nick Don't do that.
  }
}
