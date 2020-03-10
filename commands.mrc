on *:TEXT:*:*: {
  if ($istok( +o -o +h -h +v -v @opme @dopme @k @hop @die @cmds @ig @idleon @idleoff @dhop @pop @psop @pv @dop @dsop @dv @top @p @regn @dropn @regc @dropc @j @admin @rehash @kill @kl1 @kl2 @kl3 @klp @ukl @restart,$1,32)) {
    if ($read(users.txt,tnw,$nick)) {
      if ($1 == @admin) { /write users.txt $2 | .auser 900 $2 | /msg $chan User $2  added to admin list. }
      if ($1 == @rehash) { /rehash | /msg $chan Rehashed InspIRCd Config. }
      if ($1 == @kill) { /kill $2  $3- }
      if ($1 == @kl1) { /kline $2 1d $3- (1 day ban) }
      if ($1 == @kl2) { /kline $2 2d $3- (2 day ban) }
      if ($1 == @kl3) { /kline $2 3d $3- (3 day ban) }
      if ($1 == @klp) { /kline $2 $3- (permanent ban) }
      if ($1 == @ukl) { /kline - $+ $2 | /msg $chan Removed Kline for  $2  }
      if ($1 == @restart) { /server irc.tesseractnet.com +6698 }
      if ($1 == @j) { /join #$2 }
      if ($1 == @ig) { /ignore $2- }
      if ($1 == @regc) { /cs register $chan $chan }
      if ($1 == @dropc) { /cs drop $chan $chan }
      if ($1 == @p) { /part # }
      if ($1 == @top) { /topic # $2- }
      if ($1 == @pop) { /cs aop # add $2 }
      if ($1 == @psop) { /cs sop # add $2 }
      if ($1 == @pv) { /cs vop # add $2 }
      if ($1 == @ph) { /cs hop # add $2 }
      if ($1 == @dop) { /cs aop # del $2 }
      if ($1 == @dsop) { /cs sop # del $2 }
      if ($1 == @dv) { /cs vop # del $2 }
      if ($1 == @dh) { /cs hop # del $2 }
      if ($1 == @opme) { /mode # +o $nick }
      if ($1 == @dopme) { /mode # -o $nick }
      if ($1 == @die) { /quit Command used by  $nick  }
      if ($1 == @k) { /kick # $2- }
      if ($1 == +o) { mode # +o $2 }
      if ($1 == -o) { mode # -o $2 }
      if ($1 == +h) { mode # +h $2 }
      if ($1 == -h) { mode # -h $2 }
      if ($1 == +v) { mode # +v $2 }
      if ($1 == -v) { mode # -v $2 }
      if ($1 == @cmds) { msg # https://tesseractnet.org/wiki/index.php?title=Tess }
    }
    else {
      /msg $chan You don't have permission to use that command.
    }
  }
}
