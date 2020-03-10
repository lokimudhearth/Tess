on *:TEXT:*:#: {
  if ($1 == .wave) { /describe $chan waves }
  if ($1 == .s) { /msg $chan $2- }
  if ($1 == .gyst) { /msg $chan GET YOUR SHIT TOGETHER, $2 $+ ! }
  if ($1 == .scake) { /describe # bakes $2 some ShutTheFuckUpcakes }
}
