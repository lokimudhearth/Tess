on *:BAN:#: {
  if ($bnick == Protheus) {
    /cs unban # Protheus
    /ban # $nick 
    kick # $nick Don't do that.
  }
}
