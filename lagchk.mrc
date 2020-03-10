alias lagcheck {
  if (%hilag == $null) { set %hilag -1 }
  if (%lolag == $null) { set %lolag 999 }
  set %lagchan $chan
  .enable #lagcheck 
  .raw $ticks 
}
menu channel { 
  Check lag:lagcheck 
}
#lagcheck off
raw 421:*: {
  var %lag = $calc(($ticks - $2) / 1000)
  if (%lag > %hilag) { set %hilag %lag }
  if (%lag < %lolag) { set %lolag %lag }
  msg %lagchan %lag seconds. $& Highest: %hilag $+ s; Lowest: %lolag $+ s.  
  .disable #lagcheck 
  haltdef
}
#lagcheck end

on *:TEXT:*:#: {
  if $1 == .lag {
    /lagcheck
  }
}
