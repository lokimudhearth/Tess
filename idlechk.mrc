on 1:TEXT:*:#: {
  if ($chan == #ignoredchannelhere) { halt }
  if ($me == $1) { halt }
  if ($remove($1,$chr(58),$chr(44),$chr(64)) ison $chan) { set -u3 %whois.chan $chan | whoischeck $nick $remove($1,$chr(58),$chr(44),$chr(64)) }
  if ($remove($1,$chr(58)) !ison $chan) { halt }
}
alias whoischeck {
  if ([ % $+ [ $1 $+ [ .whois.ignore ] ] ] == on) { halt }
  set -u3 % $+ $remove($2,$chr(58)) $+ .whois on
  .whois $2 $2
  set -u15 % $+ $nick $+ .whois.ignore on
}
raw 317:*: {
  if ([ % $+ [ $2 $+ [ .whois ] ] ] == on) { 
    if ($3 > 1799) { msg %whois.chan  $2 has been idle for $duration($3) $+ , try messaging them instead. }
  }
}
