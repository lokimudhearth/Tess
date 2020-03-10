on *:KICK:#: {
  if ($knick == yournickhere) {
    sajoin yournickhere #
    ban # $nick 
    kick # $nick Don't do that.
  }
}
