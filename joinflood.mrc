on ^:join:#: { 
  inc -u5 %joins. [ $+ [ $chan ] ] 
  if ( %joins. [ $+ [ $chan ] ] == 4 ) { 
    mode $chan +Rmi 
    .msg $chan Join Flood Detected, Channel Locked For 5 Minutes.
    .timer 1 400 mode $chan -Rmi
  } 
}
