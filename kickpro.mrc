on *:KICK:#: {
  if ($knick == Protheus) {
    sajoin Protheus #
    ban # $nick 
    kick # $nick Don't do that.
  }
}
