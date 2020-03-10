on 900:TEXT:*:#:{
  if ($1 == !whois) && ($2) {
    if ($($+(%,whois,$remove($chan,$chr(35))),5) == $null) {
      hadd -m whois chan $chan
      whois $2
      set -u20 $+(%,whois,$remove($chan,$chr(35))) on
    }
    else { .msg This command can only be used once every 20 seconds! }
  }
}
raw 401:*:{ msg $hget(whois,chan) 3{14-14 3N14o such nick/channel:3 $2
  halt 
}
raw 301:*: {
  msg $hget(whois,chan) 3{14-14 3A14way: Yes: ( $+ $3- $+ ) 14-3} 
  halt
}
raw 307:*: {
  msg $hget(whois,chan) 3{14-14 3R14egistered 3N14ickname: Yes. 14-3} 
  halt
}
raw 310:*: {
  msg $hget(whois,chan) 3{14-14 3I14RC 3H14elper: Yes. 14-3} 
  halt
}
raw 311:*: {
  msg $hget(whois,chan) 3{14-14 3W14hois for $2 14-3}
  msg $hget(whois,chan) 3{14-14 3N14ick3N14ame: $2 14-3} 
  msg $hget(whois,chan) 3{14-14 3R14eal 3N14ame: $6- 14-3}
  msg $hget(whois,chan) 3{14-14 3I14dent: $3 14-3}
  msg $hget(whois,chan) 3{14-14 3A14ddress: *!*3@14 $+ $4 14-3}
  halt
}
raw 378:*: {
  msg $hget(whois,chan) 3{14-14 3H14ostmask: $6 14-3} 
  msg $hget(whois,chan) 3{14-14 3I14P: $7 14-3}
  halt
}
raw 379:*: {
  msg $hget(whois,chan) 3{14-14 3M14odes: $6- 14-3}
  halt
}
raw 671:*: {
  msg $hget(whois,chan) 3{14-14 3S14ecure 3C14onnection: Yes 14-3} 
  halt

}
raw 276:*: {
  msg $hget(whois,chan) 3{14-14 3C14lient 3C14ert 3F14ingerprint: $7 14-3}
  halt
}
raw 320:*: {
  msg $hget(whois,chan) 3{14-14 3N14etwork 3A14dministrator: Yes 14-3}
  halt
}
raw 330:*: {
  msg $hget(whois,chan) 3{14-14 3L14ogged in as: $2 14-3}
  halt
}
raw 312:*: {
  msg $hget(whois,chan) 3{14-14 3S14erver: $3 14-3}
  msg $hget(whois,chan) 3{14-14 3D14escription: $4- 14-3}
  halt
}

raw 313:*: {
  msg $hget(whois,chan) 3{14-14 3N14etwork 3R14ank: $5-9 14-3}
  halt
}
raw 319:*: {
  msg $hget(whois,chan) 3{14-14 3C14hannels: $Replace($3-,~,3~14,&,3&14,@,3@14,%,3%14,+,3+14) 14-3}
  halt
}
raw 317:*: {
  msg $hget(whois,chan) 3{14-14 3S14igned on at: $asctime($4,dddd mm/dd/yyyy HH:nn:sstt) 14-3}
  msg $hget(whois,chan) 3{14-14 3T14ime 3I14dle: $duration($3) 14-3}
  msg $hget(whois,chan) 3{14-14 3T14ime 3O14nline: $duration($calc($ctime - $4)) 14-3}
  halt
}
raw 335:*: { 
  msg $hget(whois,chan) 3{14-14 3B14ot: Yes. 14-3} 
  halt
}

raw 318:*: { 
  msg $hget(whois,chan) 3{14-14 3E14nd of 3W14hois 14-3} 
  halt
}
