
[Remap]
x = a
y = b
z = c
a = x
b = y
c = z
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]

[command]
name = "arremesso"
command = F,y
time = 25

[command]
name = "especial1"
command = a
time = 45

[command]
name = "especial2"
command = c
time = 45

[command]
name = "especial3"
command = b
time = 45

[command]
name = "comboar"
command = x,x
time = 15

[command]
name = "combo3"
command = x,x,x
time = 12

command.time = 30

[command]
name = "combo2"
command = x,x
time = 10

[Command]
name = "segura_a"
command = /x

[Command]
name = "segura_b"
command = /y

[Command]
name = "segura_c"
command = /y

command.buffer.time = 1

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = z
time = 1

[Command]
name = "y"
command = x
time = 1

[Command]
name = "z"
command = y
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;arremesso
[State -1, arremesso]
type = ChangeState
value = 700
triggerall = command = "arremesso"
trigger1 = (statetype = s) && ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, giro]
type = ChangeState
value = 200
triggerall = power >= 50
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, combo1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;combo2
[State -1, combo2]
type = ChangeState
value = 211
triggerall = command = "y" && movecontact
triggerall = command = "combo2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;combo3
[State -1, combo3]
type = ChangeState
value = 212
triggerall = command = "combo2" && movecontact
triggerall = command = "combo3"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, kunai]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, giro pro alto]
type = ChangeState
value = 400
triggerall = power >= 50
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, teleport]
type = ChangeState
value = 410
triggerall = power >= 50
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, akamaru]
type = ChangeState
value = 420
triggerall = power >= 50
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, giro no ar]
type = ChangeState
value = 600
triggerall = power >= 50
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, combo no ar 1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;comboar
[State -1, combo no ar 2]
type = ChangeState
value = 611
triggerall = command = "comboar" && movecontact
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = Power < 2999
triggerall = (command = "segura_a"&&command = "segura_b"&&command = "segura_c")
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;especial1
[State -1, especial1]
type = ChangeState
value = 1000
triggerall = power >= 1000
trigger1 = p2statetype != A
trigger1 = command = "especial1"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;especial2
[State -1, especial2]
type = ChangeState
value = 2000
triggerall = power >= 3000
trigger1 = p2statetype != A
trigger1 = command = "especial2"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;especial3
[State -1, especial3]
type = ChangeState
value = 3000
trigger1 = p2statetype != A
triggerall = power >= 2000
triggerall = command = "especial3"
trigger1 = statetype = S
trigger1 = ctrl


