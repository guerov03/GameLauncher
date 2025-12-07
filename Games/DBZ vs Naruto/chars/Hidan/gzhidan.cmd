[Command]
name = "AI1"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI2"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI3"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI4"
command = UF,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI5"
command = UF,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI6"
command = F,F,D,UB,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI7"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI8"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI9"
command = UF,D,D,F,UF,F,UF,UF,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI10"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI11"
command = UF,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI12"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI13"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI14"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI15"
command = UF,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI16"
command = D,D,D,F,UF,F,x+y+b,/$F,b
time = 1

[Command]
name = "AI17"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI18"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI19"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI20"
command = D,D,D,F,UF,U,U,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI21"
command = UF,UF,D,F,UF,U,U,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI22"
command = UF,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI23"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI24"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI25"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI26"
command = D,D,D,F,UF,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI27"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI28"
command = D,D,D,F,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI29"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI30"
command = D,D,D,F,UF,UF,F,a+x+y+b,/$F,b
time = 1

[Command]
name = "AI31"
command = B,B,BD,F,DF,F,a+b+x+y
time = 1

[Command]
name = "AI32"
command = D,F,F,F,D,F,a+b+x+y
time = 1

[Command]
name = "AI33"
command = DF,a,D,DF,UF,DB,F,a+b+x+y
time = 1

[Command]
name = "AI34"
command = D,a,D,D,F,DB,DF,a+b+x+y
time = 1

[Command]
name = "AI35"
command = D,D,UF,DF,UB,a,UF,a+b+x+y
time = 1

[Command]
name = "AI36"
command = D,DF,DF,DF,DF,F,a+b+x+y
time = 1

[Command]
name = "AI37"
command = D,D,DB,UF,DF,UF,a+b+x,y
time = 1

[Command]
name = "AI38"
command = F,U,F,F,F,F,a,a,b,x,y
time = 1

[Command]
name = "AI39"
command = DF,a,UF,D,DF,U,F,a+b,x,y
time = 1

[Command]
name = "AI40"
command = F,F,UF,UF,D,F,D,a+b,x,y
time = 1

; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "Especial Slash 2"
command = D,F,x

command.time = 30

[command]
name = "Foice"
command = /z , a

[command]
name = "Dano na perna"
command = /z , b

[command]
name = "Joga Foice"
command = D,F,b
time = 15

[command]
name = "Circulo"
command = D,F,/z
time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

[command]
name = "Especial Slash 1"
command = D,F,a

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
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

;-|Special Moves|---------------------------------------------------------------

[Command]
name = "QCB_x"
command = D, DB, c, x
time = 15

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
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
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

;Sumir ao tomar hit
[State -1, Sumir ao tomar hit]
type = ChangeState
value = 920
triggerall = command = "c" && command != "QCB_x"
triggerall = power >= 500
triggerall = statetype = S || statetype = c
triggerall = life > 0
trigger1 = stateno = [5000,5110]
trigger2 = stateno = [120,152]

;Shuriken Throw
[State -1, Shuriken Throw]
type = ChangeState
value = 603
triggerall = command = "y"
triggerall = var(21) = 0
trigger1 = statetype = S
trigger1 = ctrl

;Shuriken Throw
[State -1, Shuriken Throw]
type = ChangeState
value = 606
triggerall = command = "y"
triggerall = var(21) = 0
trigger1 = statetype = C
trigger1 = ctrl

;Chakra Charge
[State -1, Chakra Charge]
type = ChangeState
value = 910
triggerall = command = "hold_x" && command = "hold_y"
triggerall = command != "holddown"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl

; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "x" || command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Teleport
[State -1, Teleport]
type = ChangeState
value = 900
triggerall = command = "c"
trigger1 = power >= 50
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;Teleport Ar
[State -1, Teleport Ar]
type = ChangeState
value = 901
triggerall = command = "c"
trigger1 = power >= 50
trigger1 = statetype = A
trigger1 = ctrl

;Foice
[State -1, Foice]
type = ChangeState
value = 732
triggerall = stateno = 730
triggerall = command = "Foice"
triggerall = command != "holddown"
trigger1 = power >= 2000
trigger1 = statetype = S
trigger1 = time >= 13

;Foice 2
[State -1, Foice 2]
type = ChangeState
value = 732
triggerall = stateno = 706
triggerall = command = "Foice"
triggerall = command != "holddown"
trigger1 = power >= 2000
trigger1 = statetype = S
trigger1 = time >= 13

;Dano na perna
[State -1, Dano na perna]
type = ChangeState
value = 736
triggerall = stateno = 730
triggerall = command = "Dano na perna"
triggerall = command != "holddown"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = time >= 13

;Dano na perna 2
[State -1, Dano na perna 2]
type = ChangeState
value = 736
triggerall = stateno = 706
triggerall = command = "Dano na perna"
triggerall = command != "holddown"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = time >= 13

;Dano no Peito
[State -1, Dano no Peito]
type = ChangeState
value = 739
triggerall = stateno = 736
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = time >= 40

;Especial 3
[State -1, Especial 3]
type = ChangeState
value = 730
triggerall = command = "Circulo"
trigger1 = (statetype = s) && ctrl
trigger1 = power > 0

;Especial Slash 1
[State -1, Especial Slash 1]
type = ChangeState
value = 710
triggerall = command = "Especial Slash 1"
trigger1 = (statetype = s) && ctrl
trigger1 = power >= 1000

;Especial Slash 2
[State -1, Especial Slash 2]
type = ChangeState
value = 720
triggerall = command = "Especial Slash 2"
trigger1 = (statetype = s) && ctrl
trigger1 = power >= 2000

;Joga Foice
[State -1, Joga Foice]
type = ChangeState
value = 700
triggerall = command = "Joga Foice"
trigger1 = (statetype = s) && ctrl
trigger1 = power >= 500
;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
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

;===========================================================================
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
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = stateno = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S

;---------------------------------------------------------------------------
; Soco
[State -1, Soco]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Chute
[State -1, Chute]
type = ChangeState
value = 210
triggerall = stateno = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10

;--------------------------------------------------------------------------
; Slash 1
[State -1, Slash 1]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Slash 2
[State -1, Slash 2]
type = ChangeState
value = 230
triggerall = stateno = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = stateno = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 9

;---------------------------------------------------------------------------
; Slash 1
[State -1, Slash 1]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Slash 2
[State -1, Slash 2]
type = ChangeState
value = 230
triggerall = stateno = 240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S

;---------------------------------------------------------------------------
; Slash 3
[State -1, Slash 3]
type = ChangeState
value = 250
triggerall = stateno = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 13

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" || command = "z" || command = "a" || command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shuriken Ar
[State -1, Shuriken Ar]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Foice Ar
[State -1, Foice Ar]
type = ChangeState
value = 610
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Soco Ar
[State -1, Soco Ar]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;-----------------------------------AI------------------------------------------
;-------------------------------------------------------------------------------

[State -1, AI ON]
type = VarSet
triggerall = var(20) != 1
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
trigger36 = command = "AI36"
trigger37 = command = "AI37"
trigger38 = command = "AI38"
trigger39 = command = "AI39"
trigger40 = command = "AI40"
var(20) = 1

; ==========================
[State -1,AI Standing Guard]
type = ChangeState
triggerall = var(20) = 1 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 600 ;triggers at 80% probability
value = 130 ;Default standing guard state

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1,AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; =============================
; AI Crouching Guard
; =============================
[State -1, AI Crouching Guard]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 600
value = 131

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1,AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; =============================
; AI Aerial Guard
; =============================
[State -1,AI Aerial Guard]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 600
value = 132
;---------------------------------------------------------------------

;light punch
[State -1, AI light punch]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 400
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x <= 30
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 200

;medium punch
[State -1, AI medium punch]
type = ChangeState
triggerall = Stateno = 200
trigger1 = movehit = 1
triggerall = random <= 400
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x <= 30
triggerall = P2Life > 0
value = 210

;heavy punch
[State -1, AI heavy punch]
type = ChangeState
triggerall = Stateno = 210
trigger1 = random <= 300
trigger1 = movehit = 1
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x <= 30
triggerall = P2Life > 0
value = 220

;-------------------------------------------------------------------------
;light punch
[State -1, AI light punch]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 400
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x <= 30
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 230

;medium punch
[State -1, AI medium punch]
type = ChangeState
triggerall = Stateno = 230
trigger1 = movehit = 1
triggerall = random <= 400
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x <= 30
triggerall = P2Life > 0
value = 240

;heavy punch
[State -1, AI heavy punch]
type = ChangeState
triggerall = Stateno = 240
trigger1 = random <= 300
trigger1 = movehit = 1
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x <= 30
triggerall = P2Life > 0
value = 250

;------------------------
;Shuriken Ar Frente
[State -1, AI Shuriken Ar Frente]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 50
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x >= 200
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 600

;Shuriken Ar Normal
[State -1, AI Shuriken Ar Normal]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 50
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x >= 200
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 603

;---------------------------

;Especial 3
[State -1, AI Dano na perna]
type = ChangeState
triggerall = power >= 500
triggerall = var(20) = 1
triggerall = random <= 20
triggerall = p2bodydist x >= 30
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 736

;Especial 3
[State -1, AI Dano no peito]
type = ChangeState
triggerall = power >= 500
triggerall = Stateno = 736
triggerall = var(20) = 1
triggerall = random <= 200
triggerall = p2bodydist x >= 30
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 739

;Especial 2
[State -1, AI Especial 2]
type = ChangeState
triggerall = power >= 1000
triggerall = var(20) = 1
triggerall = random <= 200
triggerall = p2bodydist x < 20
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 720

;Especial 1
[State -1, AI Especial 1]
type = ChangeState
triggerall = power >= 500
triggerall = var(20) = 1
triggerall = random <= 20
triggerall = p2bodydist x > 60
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 710

;Especial 3
[State -1, AI Foice]
type = ChangeState
triggerall = power >= 1500
triggerall = var(20) = 1
triggerall = random <= 400
triggerall = p2bodydist x >= 40
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 732

;Especial 3
[State -1, AI Jogando Foice]
type = ChangeState
triggerall = power >= 100
triggerall = var(20) = 1
triggerall = random <= 5
triggerall = p2bodydist x >= 40
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 700

;teleport
[State -1, AI teleport]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 5
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 900

;teleport ar
[State -1, AI teleport ar]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 30
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 901

;throw
[State -1, AI throw]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 300
triggerall = StateType != A
triggerall = Movetype != H
triggerall = p2bodydist x <= 10
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 800

;---------------------------------------------------------------------

;Chakra Charge
[State -1, AI Chakra Charge]
type = ChangeState
Triggerall = power <= 2999
triggerall = var(20) = 1
triggerall = random <= 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist x >= 400
trigger1 = ctrl = 1
value = 910
