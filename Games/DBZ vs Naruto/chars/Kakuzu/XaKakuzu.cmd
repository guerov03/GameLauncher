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


[command]
name = "Potworek4"
command = D,B,x
time = 15

[command]
name = "Potworek3"
command = D,F,x
time = 15

[command]
name = "podziemny"
command = B,z
time = 15

[command]
name = "Mega Combo"
command = F,x
time = 15

[command]
name = "Szybki Atak"
command = F,b
time = 15

[command]
name = "bum"
command = B,y
time = 15

[command]
name = "wj2"
command = F
time = 15

[command]
name = "klon"
command = B,y
time = 15

[command]
name = "combo"
command = F,z
time = 15

[command]
name = "dlugienitki1"
command = /F
time = 15

[command]
name = "dlugienitki2"
command = /y
time = 15


[command]
name = "Doton8"
command = F+B,y
time = 15

[command]
name = "Doton7"
command = D,B,y
time = 15

[command]
name = "Doton6"
command = B,y
time = 15

[command]
name = "Doton5"
command = D,F,y
time = 15

[command]
name = "Doton4"
command = F,y
time = 15

[command]
name = "Doton3"
command = y
time = 15

[command]
name = "Doton2"
command = y
time = 15

[command]
name = "Doton1"
command = y
time = 15

[command]
name = "Suiton8"
command = F+B,z
time = 15

[command]
name = "Suiton7"
command = D,B,z
time = 15

[command]
name = "Suiton6"
command = B,z
time = 15

[command]
name = "Suiton5"
command = D,F,z
time = 15

[command]
name = "Suiton4"
command = F,z
time = 15

[command]
name = "Suiton3"
command = z
time = 15

[command]
name = "Suiton2"
command = z
time = 15

[command]
name = "Suiton1"
command = z
time = 15

[command]
name = "Raiton8"
command = F+B,c
time = 15

[command]
name = "Raiton7"
command = D,B,c
time = 15

[command]
name = "Raiton6"
command = B,c
time = 15

[command]
name = "Raiton5"
command = D,F,c
time = 15

[command]
name = "Raiton4"
command = F,c
time = 15

[command]
name = "Raiton3"
command = c
time = 15

[command]
name = "Raiton2"
command = c
time = 15

[command]
name = "Raiton1"
command = c
time = 15

[command]
name = "Katon8"
command = F+B,b
time = 15

[command]
name = "Katon7"
command = D,B,b
time = 15

[command]
name = "Katon6"
command = B,b
time = 15

[command]
name = "Katon5"
command = D,F,b
time = 15

[command]
name = "Katon4"
command = F,b
time = 15

[command]
name = "Katon3"
command = b
time = 15

[command]
name = "Katon2"
command = b
time = 15

[command]
name = "Katon1"
command = b
time = 15

[command]
name = "Fuuton8"
command = F+B,a
time = 15

[command]
name = "Fuuton7"
command = D,B,a
time = 15

[command]
name = "Fuuton6"
command = B,a
time = 15

[command]
name = "Fuuton5"
command = D,F,a
time = 15

[command]
name = "Fuuton4"
command = F,a
time = 15

[command]
name = "Fuuton3"
command = a
time = 15

[command]
name = "Fuuton2"
command = a
time = 15

[command]
name = "Fuuton1"
command = a
time = 15


[command]
name = "Special 2Forma"
command = /a
time = 15

[command]
name = "Trans"
command = B,x
time = 15

[Remap]
[command]
name = "bunshin"
command = B,b
time = 15

x = x
[command]
name = "D Shuriken"
command = c
time = 15

y = y
[command]
name = "Explo Kunai"
command = B,c
time = 15

z = z
[command]
name = "Kunai"
command = F,c
time = 15

a = a
[command]
name = "Nitki"
command = /a
time = 15

b = b

[command]
name = "wj"
command = /F
time = 15

[command]
name = "Teleport"
command = c
time = 15

c = c
[command]
name = "Chakra"
command = /s
time = 15

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "Stalowa Skora"
command = /s
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "Runb"
command = B
time = 15

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "Runf"
command = F
time = 15

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

;Accel3 Atak
[State -1, Accel3 Atak]
type = ChangeState
value = 872
triggerall = var(5) = 1
triggerall = command = "b"
trigger1 = (statetype = A) && ctrl
triggerall = power >= 500

;3D Atak
[State -1, 3D Atak]
type = ChangeState
value = 871
triggerall = var(5) = 1
triggerall = command = "bunshin"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000

;NUNAtak1
[State -1, NUNAtak1]
type = ChangeState
value = 870
triggerall = var(5) = 1
triggerall = command = "dlugienitki1" && command = "dlugienitki2"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000

;Zniszczenie potw 4
[State -1, Potworek4]
type = ChangeState
value = 868
triggerall = numhelper(990) = 1
triggerall = command = "Potworek4"
trigger1 = (statetype = s) && ctrl
triggerall = var(5) = 2

;Zniszczenie potw 3
[State -1, Potworek3]
type = ChangeState
value = 867
triggerall = numhelper(980) = 1
triggerall = command = "Potworek3"
trigger1 = (statetype = s) && ctrl
triggerall = var(5) = 2

;Zniszczenie potw 2
[State -1, Potworek2]
type = ChangeState
value = 866
triggerall = numhelper(970) = 1
triggerall = command = "Trans"
trigger1 = (statetype = s) && ctrl
triggerall = var(5) = 2

;Zniszczenie potw 1
[State -1, Potworek1]
type = ChangeState
value = 865
triggerall = numhelper(960) = 1
triggerall = command = "Mega Combo"
trigger1 = (statetype = s) && ctrl
triggerall = var(5) = 2

;Podstawienie
[State -1, Podstawienie]
type = ChangeState
value = 863
triggerall = command = "podziemny"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 1000
triggerall = var(5) = 1

;Super Atak
[State -1, Super Atak]
type = ChangeState
value = 864
triggerall = command = "combo"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
triggerall = life <= 500
triggerall = var(5) = 1

;podziemny
[State -1, podziemny]
type = ChangeState
value = 862
triggerall = command = "podziemny"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 1000
triggerall = var(5) = 0

;Mega Combo2
[State -1, Mega Combo2]
type = ChangeState
value = 861
triggerall = command = "Mega Combo"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
triggerall = life <= 500
triggerall = var(5) = 1

;Mega Combo
[State -1, Mega Combo]
type = ChangeState
value = 861
triggerall = command = "Mega Combo"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
triggerall = life <= 500
triggerall = var(5) = 0


;Szybki Atak2
[State -1, Szybki Atak2]
type = ChangeState
value = 860
triggerall = command = "Szybki Atak"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000
triggerall = var(5) = 1

;Szybki Atak
[State -1, Szybki Atak]
type = ChangeState
value = 860
triggerall = command = "Szybki Atak"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000
triggerall = var(5) = 0


;bum
[State -1, bum]
type = ChangeState
value = 856
triggerall = command = "bum"
triggerall = var(5) = 1
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000

;auto kawarimi2
[State -1, auto kawarimi2]
type = hitoverride
triggerall = roundstate = 2
trigger1 = movetype = H
trigger2 = command = "a"
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 4500
triggerall = power >= 3500
slot = 0
time = 1

;auto kawarimi1
[State -1, auto kawarimi1]
type = hitoverride
triggerall = roundstate = 2
trigger1 = movetype = H
trigger2 = command = "down"
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 4500
triggerall = power >= 3500
slot = 0
time = 1

;kawarimi3
[state -1, kawarimi3]
type = ChangeState
value = 4500
triggerall = command = "x"
triggerall = statetype = S
trigger1 = stateno = [5000,5110]
trigger2 = stateno = [120,152]
triggerall = power >= 250
triggerall = var(5) = 2

;kawarimi2
[state -1, kawarimi2]
type = ChangeState
value = 4500
triggerall = command = "b"
triggerall = statetype = S
trigger1 = stateno = [5000,5110]
trigger2 = stateno = [120,152]
triggerall = power >= 250
triggerall = var(5) = 1

;kawarimi
[state -1, kawarimi]
type = ChangeState
value = 4500
triggerall = command = "b"
triggerall = statetype = S
trigger1 = stateno = [5000,5110]
trigger2 = stateno = [120,152]
triggerall = power >= 250
triggerall = var(5) = 0

;klon
[State -1, klon]
type = ChangeState
value = 855
triggerall = command = "klon"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500
triggerall = numhelper(8551) < 1

;air2.3
[State -1, air2.3]
type = ChangeState
value = 854
triggerall = command = "y"
trigger1 = (statetype = a) && ctrl
triggerall = var(5) = 1
triggerall = power >= 500

;air2.2
[State -1, air2.2]
type = ChangeState
value = 853
triggerall = command = "z"
trigger1 = (statetype = a) && ctrl
triggerall = var(5) = 1

;air2.1
[State -1, air2.1]
type = ChangeState
value = 852
triggerall = command = "x"
trigger1 = (statetype = a) && ctrl
triggerall = var(5) = 1

;air3
[State -1, air3]
type = ChangeState
value = 854
triggerall = command = "y"
trigger1 = (statetype = a) && ctrl
triggerall = var(5) = 0
triggerall = power >= 500

;air2
[State -1, air2]
type = ChangeState
value = 853
triggerall = command = "z"
trigger1 = (statetype = a) && ctrl
triggerall = var(5) = 0

;air1
[State -1, air1]
type = ChangeState
value = 852
triggerall = command = "x"
trigger1 = (statetype = a) && ctrl
triggerall = var(5) = 0


;dluga reka
[State -1, dluga reka]
type = ChangeState
value = 851
triggerall = var(5) = 0
triggerall = command = "combo"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500

;dlugienitki
[State -1, dlugienitki]
type = ChangeState
value = 850
triggerall = var(5) = 0
triggerall = command = "dlugienitki1" && command = "dlugienitki2"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 100

;Doton8
[state -1, Doton8]
type = changestate
value = 9597
triggerall = var(5) = 2
triggerall = command = "Doton8"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
trigger1 = ctrl = 1

;Doton7
[state -1, Doton7]
type = changestate
value = 9596
triggerall = var(5) = 2
triggerall = command = "Doton7"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3500
trigger1 = ctrl = 1

;Doton6
[state -1, Doton6]
type = changestate
value = 9595
triggerall = var(5) = 2
triggerall = command = "Doton6"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000
trigger1 = ctrl = 1

;Doton5
[state -1, Doton5]
type = changestate
value = 9594
triggerall = var(5) = 2
triggerall = command = "Doton5"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2500
trigger1 = ctrl = 1

;Doton4
[state -1, Doton4]
type = changestate
value = 9593
triggerall = var(5) = 2
triggerall = command = "Doton4"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000
trigger1 = ctrl = 1

;Doton3
[state -1, Doton3]
type = changestate
value = 9592
triggerall = var(5) = 2
triggerall = command = "Doton3"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1500
trigger1 = ctrl = 1

;Doton2
[state -1, Doton2]
type = changestate
value = 9591
triggerall = var(5) = 2
triggerall = command = "Doton2"
trigger1 = (statetype = a) && ctrl
triggerall = power >= 1000
trigger1 = ctrl = 1

;Doton1
[state -1, Doton1]
type = changestate
value = 959
triggerall = var(5) = 2
triggerall = command = "Doton1"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500
trigger1 = ctrl = 1

;Suiton8
[state -1, Suiton8]
type = changestate
value = 9587
triggerall = var(5) = 2
triggerall = command = "Suiton8"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
trigger1 = ctrl = 1

;Suiton7
[state -1, Suiton7]
type = changestate
value = 9586
triggerall = var(5) = 2
triggerall = command = "Suiton7"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3500
trigger1 = ctrl = 1

;Suiton6
[state -1, Suiton6]
type = changestate
value = 9585
triggerall = var(5) = 2
triggerall = command = "Suiton6"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000
trigger1 = ctrl = 1

;Suiton5
[state -1, Suiton5]
type = changestate
value = 9584
triggerall = var(5) = 2
triggerall = command = "Suiton5"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2500
trigger1 = ctrl = 1

;Suiton4
[state -1, Suiton4]
type = changestate
value = 9583
triggerall = var(5) = 2
triggerall = command = "Suiton4"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000
trigger1 = ctrl = 1

;Suiton3
[state -1, Suiton3]
type = changestate
value = 9582
triggerall = var(5) = 2
triggerall = command = "Suiton3"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1500
trigger1 = ctrl = 1

;Suiton2
[state -1, Suiton2]
type = changestate
value = 9581
triggerall = var(5) = 2
triggerall = command = "Suiton2"
trigger1 = (statetype = a) && ctrl
triggerall = power >= 1000
trigger1 = ctrl = 1

;Suiton1
[state -1, Suiton1]
type = changestate
value = 958
triggerall = var(5) = 2
triggerall = command = "Suiton1"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500
trigger1 = ctrl = 1

;Raiton8
[state -1, Raiton8]
type = changestate
value = 9577
triggerall = var(5) = 2
triggerall = command = "Raiton8"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
trigger1 = ctrl = 1

;Raiton7
[state -1, Raiton7]
type = changestate
value = 9576
triggerall = var(5) = 2
triggerall = command = "Raiton7"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3500
trigger1 = ctrl = 1

;Raiton6
[state -1, Raiton6]
type = changestate
value = 9575
triggerall = var(5) = 2
triggerall = command = "Raiton6"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000
trigger1 = ctrl = 1

;Raiton5
[state -1, Raiton5]
type = changestate
value = 9574
triggerall = var(5) = 2
triggerall = command = "Raiton5"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2500
trigger1 = ctrl = 1

;Raiton4
[state -1, Raiton4]
type = changestate
value = 9573
triggerall = var(5) = 2
triggerall = command = "Raiton4"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000
trigger1 = ctrl = 1

;Raiton3
[state -1, Raiton3]
type = changestate
value = 9572
triggerall = var(5) = 2
triggerall = command = "Raiton3"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1500
trigger1 = ctrl = 1

;Raiton2
[state -1, Raiton2]
type = changestate
value = 9571
triggerall = var(5) = 2
triggerall = command = "Raiton2"
trigger1 = (statetype = a) && ctrl
triggerall = power >= 1000
trigger1 = ctrl = 1


;Raiton1
[state -1, Raiton1]
type = changestate
value = 957
triggerall = var(5) = 2
triggerall = command = "Raiton1"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500
trigger1 = ctrl = 1

;Katon8
[state -1, Katon8]
type = changestate
value = 9567
triggerall = var(5) = 2
triggerall = command = "Katon8"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
trigger1 = ctrl = 1

;Katon7
[state -1, Katon7]
type = changestate
value = 9566
triggerall = var(5) = 2
triggerall = command = "Katon7"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3500
trigger1 = ctrl = 1

;Katon6
[state -1, Katon6]
type = changestate
value = 9565
triggerall = var(5) = 2
triggerall = command = "Katon6"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000
trigger1 = ctrl = 1

;Katon5
[state -1, Katon5]
type = changestate
value = 9564
triggerall = var(5) = 2
triggerall = command = "Katon5"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2500
trigger1 = ctrl = 1

;Katon4
[state -1, Katon4]
type = changestate
value = 9563
triggerall = var(5) = 2
triggerall = command = "Katon4"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000
trigger1 = ctrl = 1

;Katon3
[state -1, Katon3]
type = changestate
value = 9562
triggerall = var(5) = 2
triggerall = command = "Katon3"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1500
trigger1 = ctrl = 1

;Katon2
[state -1, Katon2]
type = changestate
value = 9561
triggerall = var(5) = 2
triggerall = command = "Katon2"
trigger1 = (statetype = a) && ctrl
triggerall = power >= 1000
trigger1 = ctrl = 1

;Katon1
[state -1, Katon1]
type = changestate
value = 956
triggerall = var(5) = 2
triggerall = command = "Katon1"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500
trigger1 = ctrl = 1

;Fuuton8
[state -1, Fuuton8]
type = changestate
value = 9557
triggerall = var(5) = 2
triggerall = command = "Fuuton8"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 4000
trigger1 = ctrl = 1

;Fuuton7
[state -1, Fuuton7]
type = changestate
value = 9556
triggerall = var(5) = 2
triggerall = command = "Fuuton7"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3500
trigger1 = ctrl = 1

;Fuuton6
[state -1, Fuuton6]
type = changestate
value = 9555
triggerall = var(5) = 2
triggerall = command = "Fuuton6"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 3000
trigger1 = ctrl = 1

;Fuuton5
[state -1, Fuuton5]
type = changestate
value = 9554
triggerall = var(5) = 2
triggerall = command = "Fuuton5"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2500
trigger1 = ctrl = 1

;Fuuton4
[state -1, Fuuton4]
type = changestate
value = 9553
triggerall = var(5) = 2
triggerall = command = "Fuuton4"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 2000
trigger1 = ctrl = 1

;Fuuton3
[state -1, Fuuton3]
type = changestate
value = 9552
triggerall = var(5) = 2
triggerall = command = "a"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1500
trigger1 = ctrl = 1

;Fuuton2
[state -1, Fuuton2]
type = changestate
value = 9551
triggerall = var(5) = 2
triggerall = command = "a"
trigger1 = (statetype = a) && ctrl
triggerall = power >= 1000
trigger1 = ctrl = 1

;Fuuton1
[state -1, Fuuton1]
type = changestate
value = 955
triggerall = var(5) = 2
triggerall = command = "a"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500
trigger1 = ctrl = 1

;Potworki
[state -1, Potworki]
type = changestate
value = 950
triggerall = var(5) = 1
triggerall = stateno != 950
triggerall = power >= 2000
triggerall = command = "Trans"
triggerall = numhelper(9500) = 0
trigger1 = ctrl = 1

;Tarcza
[State -1,Tarcza]
type = ChangeState
value = 849
triggerall = command = "z"
triggerall = var(5) = 1
trigger1 = (statetype = s) && ctrl
triggerall = power >= 100
triggerall = numhelper(8491) < 1

;Fuuton
[State -1,Fuuton]
type = ChangeState
value = 847
triggerall = command = "y"
triggerall = var(5) = 1
trigger1 = (statetype = s) && ctrl
triggerall = power >= 1000

;Katon&Raiton
[State -1,Katon&Raiton]
type = ChangeState
value = 848
triggerall = command = "y"
triggerall = var(5) = 1
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1500

;Serce
[State -1,Serce]
type = ChangeState
value = 845
triggerall = command = "z"
triggerall = var(5) = 1
trigger1 = (statetype = c) && ctrl
triggerall = power = 4000
triggerall = life <= 200

;Special 2Forma
[State -1,Special 2Forma]
type = ChangeState
value = 844
triggerall = command = "b"
triggerall = var(5) = 1
trigger1 = (statetype = c) && ctrl

;Special 2Forma
[State -1,Special 2Forma]
type = ChangeState
value = 843
triggerall = command = "Special 2Forma"
triggerall = var(5) = 1
trigger1 = (statetype = s) && ctrl
triggerall = power >= 500

;Atak1  2forma
[State -1, Atak1  2forma]
type = ChangeState
value = 840
triggerall = command = "x"
triggerall = var(5) = 1
trigger1 = (statetype = s) && ctrl

;Atak1  3forma
[State -1, Atak1  3forma]
type = ChangeState
value = 840
triggerall = command = "x"
triggerall = var(5) = 2
trigger1 = (statetype = s) && ctrl

;Atak2  2forma
[State -1, Atak2  2forma]
type = ChangeState
value = 841
triggerall = command = "x"
triggerall = var(5) = 1
trigger1 = (statetype = s) && ctrl

;Atak2  3forma
[State -1, Atak2  3forma]
type = ChangeState
value = 841
triggerall = command = "x"
triggerall = var(5) = 2
trigger1 = (statetype = s) && ctrl

;Atak3  2forma
[State -1, Atak3  2forma]
type = ChangeState
value = 842
triggerall = command = "x"
triggerall = var(5) = 1
trigger1 = (statetype = s) && ctrl

;Atak3  3forma
[State -1, Atak3  3forma]
type = ChangeState
value = 842
triggerall = command = "x"
triggerall = var(5) = 2
trigger1 = (statetype = s) && ctrl

;C Atak1  2forma
[State -1, C Atak1  2forma]
type = ChangeState
value = 837
triggerall = command = "x"
triggerall = var(5) = 1
trigger1 = (statetype = c) && ctrl

;C Atak1  3forma
[State -1, C Atak1  3forma]
type = ChangeState
value = 837
triggerall = command = "x"
triggerall = var(5) = 2
trigger1 = (statetype = c) && ctrl

;C Atak2  2forma
[State -1, C Atak2  2forma]
type = ChangeState
value = 838
triggerall = command = "x"
triggerall = var(5) = 1
trigger1 = (statetype = c) && ctrl

;C Atak2  3forma
[State -1, C Atak2  3forma]
type = ChangeState
value = 838
triggerall = command = "x"
triggerall = var(5) = 2
trigger1 = (statetype = c) && ctrl

;C Atak3  2forma
[State -1, C Atak3  2forma]
type = ChangeState
value = 839
triggerall = command = "x"
triggerall = var(5) = 1
trigger1 = (statetype = c) && ctrl

;C Atak3  3forma
[State -1, C Atak3  3forma]
type = ChangeState
value = 839
triggerall = command = "x"
triggerall = var(5) = 2
trigger1 = (statetype = c) && ctrl

;Air Atak 2forma
[State -1, Air Atak 2forma]
type = ChangeState
value = 836
triggerall = command = "a"
triggerall = var(5) = 1
trigger1 = (statetype = A) && ctrl

;Air Atak 3forma
[State -1, Air Atak 3forma]
type = ChangeState
value = 836
triggerall = command = "a"
triggerall = var(5) = 2
trigger1 = (statetype = A) && ctrl

;Trans3
[state -1, Trans3]
type = changestate
value = 951
triggerall = var(5) = 2
triggerall = stateno != 951
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl = 1
triggerall = numhelper(960) = 0
triggerall = numhelper(970) = 0
triggerall = numhelper(980) = 0
triggerall = numhelper(990) = 0

;Trans2
[state -1, Trans2]
type = changestate
value = 40000
triggerall = var(5) = 2
triggerall = stateno != 40000
triggerall = power >= 3000
triggerall = command = "Trans"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl = 1

;Trans1
[state -1, Trans1]
type = changestate
value = 30000
triggerall = var(5) = 0
triggerall = stateno != 30000
triggerall = power >= 1000
triggerall = command = "Trans"
trigger1 = ctrl = 1

;bunshin2
[State -1, bunshin2]
type = ChangeState
value = 21200
triggerall = command = "b"
triggerall = power >= 1000
triggerall = var(5) = 1
trigger1 = (statetype = a || statetype = s) && ctrl = 1
triggerall = numhelper(220000) < 1
trigger1 = (statetype = s) && ctrl

;bunshin
[State -1, bunshin]
type = ChangeState
value = 1200
triggerall = command = "bunshin"
triggerall = power >= 1000
triggerall = var(5) = 0
trigger1 = (statetype = a || statetype = s) && ctrl = 1
triggerall = numhelper(20000) < 1
trigger1 = (statetype = s) && ctrl

;Air Kunai
[State -1, Air Kunaj]
type = ChangeState
value = 835
triggerall = var(5) = 0
triggerall = command = "c"
trigger1 = (statetype = A) && ctrl
triggerall = power >= 20

;Air Kunai 2forma
[State -1, Air Kunai 2forma]
type = ChangeState
value = 835
triggerall = var(5) = 1
triggerall = command = "c"
trigger1 = (statetype = A) && ctrl
triggerall = power >= 20

;Air Kunai 3forma
[State -1, Air Kunai 3forma]
type = ChangeState
value = 835
triggerall = var(5) = 2
triggerall = command = "x"
trigger1 = (statetype = A) && ctrl
triggerall = power >= 20

;Explo Kunai
[State -1, Explo Kunai]
type = ChangeState
value = 834
triggerall = var(5) = 0
triggerall = command = "Explo Kunai"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(8341) < 2

;Explo Kunai 2forma
[State -1, Explo Kunai 2forma]
type = ChangeState
value = 834
triggerall = var(5) = 1
triggerall = command = "Explo Kunai"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(8341) < 2

;Kunai
[State -1, Kunai]
type = ChangeState
value = 832
triggerall = var(5) = 0
triggerall = command = "Kunai"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(8321) < 2

;Kunai 2forma
[State -1, Kunai  2forma]
type = ChangeState
value = 832
triggerall = var(5) = 1
triggerall = command = "Kunai"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(8321) < 2

;Shuriken
[State -1, Shuriken]
type = ChangeState
value = 831
triggerall = var(5) = 0
triggerall = command = "c"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(8311) < 2

;Shuriken Kunai 2forma
[State -1, Shuriken Kunai 2forma]
type = ChangeState
value = 831
triggerall = var(5) = 1
triggerall = command = "c"
trigger1 = (statetype = S) && ctrl
triggerall = numhelper(8311) < 2

;Air Atk2
[State -1, Air Atk2]
type = ChangeState
value = 828
triggerall = command = "b"
triggerall = var(5) = 0
trigger1 = (statetype = a) && ctrl

;Air Atk1
[State -1, Air Atk1]
type = ChangeState
value = 829
triggerall = command = "a"
triggerall = var(5) = 0
trigger1 = (statetype = a) && ctrl

;Nitki2
[State -1, Nitki2]
type = ChangeState
value = 827
triggerall = var(5) = 1
triggerall = command = "Nitki"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1000

;Nitki2
[State -1, Nitki2]
type = ChangeState
value = 827
triggerall = var(5) = 0
triggerall = command = "Nitki"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 1000

;Nitki
[State -1, Nitki]
type = ChangeState
value = 826
triggerall = command = "Nitki"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl
triggerall = power >= 200

; Wall jump
[State -1, Wall Jump]
type = ChangeState
value = 48
trigger1 = command = "wj"
trigger1 = statetype = A
triggerall = backedgebodydist <= 1 && backedgebodydist > -1
triggerall = Pos Y < -30
trigger1 = Vel X <= 0
triggerall = power > 0
trigger1 = ctrl

;Combo2
[State -1, Combo2]
type = ChangeState
value = 825
triggerall = command = "b"
triggerall = var(5) = 0
trigger1 = (statetype = C) && ctrl
triggerall = power >= 500

;Combo1a
[State -1, Combo1a]
type = ChangeState
value = 824
triggerall = var(5) = 0
triggerall = command = "b"
trigger1 = (statetype = s) && ctrl

;Atak3a
[State -1, Atak3a]
type = ChangeState
value = 817
triggerall = command = "z"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak3b
[State -1, Atak3b]
type = ChangeState
value = 818
triggerall = command = "z"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak3c
[State -1, Atak3c]
type = ChangeState
value = 859
triggerall = command = "z"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak3d
[State -1, Atak3d]
type = ChangeState
value = 819
triggerall = command = "z"
triggerall = var(5) = 0
trigger1 = (statetype = C) && ctrl

;Atak2a
[State -1, Atak2a]
type = ChangeState
value = 814
triggerall = command = "y"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak2b
[State -1, Atak2b]
type = ChangeState
value = 816
triggerall = command = "y"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak2c
[State -1, Atak2c]
type = ChangeState
value = 858
triggerall = command = "y"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak2d
[State -1, Atak2d]
type = ChangeState
value = 815
triggerall = command = "y"
triggerall = var(5) = 0
trigger1 = (statetype = C) && ctrl

;Atak1a
[State -1, Atak1a]
type = ChangeState
value = 811
triggerall = command = "x"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl


;Atak1b
[State -1, Atak1b]
type = ChangeState
value = 814
triggerall = command = "x"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak1c
[State -1, Atak1c]
type = ChangeState
value = 857
triggerall = command = "x"
triggerall = var(5) = 0
trigger1 = (statetype = s) && ctrl

;Atak1d
[State -1, Atak1d]
type = ChangeState
value = 813
triggerall = command = "x"
triggerall = var(5) = 0
trigger1 = (statetype = c) && ctrl



;Chakra
[State -1, Chakra]
type = ChangeState
value = 801
triggerall = command = "Chakra"
trigger1 = (statetype = s) && ctrl
triggerall = power < 4000


;Teleport
[State -1, Teleport]
type = ChangeState
value = 803
triggerall = var(5) = 0
triggerall = command = "Teleport"
trigger1 = (statetype = c) && ctrl

;Teleport
[State -1, Teleport]
type = ChangeState
value = 803
triggerall = var(5) = 1
triggerall = command = "Teleport"
trigger1 = (statetype = c) && ctrl


;Stalowa Skora
[State -1, Stalowa Skora]
type = ChangeState
value = 804
triggerall = command = "Stalowa Skora"
trigger1 = (statetype = c) && ctrl
triggerall = power >= 50


;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
; Crouch walk F
[State -1, Crouch Fwd]
type = ChangeState
value = 22
trigger1 = command = "holdfwd"
trigger1 = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl
trigger1 = stateno !=23
trigger1 = stateno !=22

;---------------------------------------------------------------------------
; Crouch walk B
[State -1, Crouch Back]
type = ChangeState
value = 23
trigger1 = command = "holdback"
triggerall = command = "holdback"
trigger1 = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl
trigger1 = stateno !=23
trigger1 = stateno !=22
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "Runf"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = power >= 500

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "Runb"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = power >= 500

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

