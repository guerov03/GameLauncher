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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------


;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_x"
command = D, DB, B, x
time = 20
[Command]
name = "QCF_x"
command = D, DF, F, x
time = 20

[Command]
name = "Manda"
command = /$DB, z
time = 30

[Command]
name = "CS"
command = /$DB, a
time = 25

[Command]
name = "CSS"
command = /$DB, b
time = 25

[Command]
name = "kusa"
command = /$DB, y
time = 25

[Command]
name = "Kunai"
command = /$DF, y
time = 25
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

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
 ;Combo hit1
[State -1, combo hit1]
type = ChangeState
value = 200
triggerall = var(9) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
; Combo hit2
[State -1, Combo hit2]
type = ChangeState
value = 210
triggerall = var(9) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = s
trigger1 = stateno = 200
trigger1 = time >= 8
;---------------------------------------------------------------------------
; Combo hit3
[State -1, Combo hit3]
type = ChangeState
value = 220
triggerall = var(9) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = s
trigger1 = stateno = 210
trigger1 = time >= 8
;---------------------------------------------------------------------------
 ; running attack
[State -1, Running attack]
type = ChangeState
value = 221
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
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
triggerall = anim != 21
triggerall = stateno = 20
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

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


;---------------------------------------------------------------------------
; Kunai throw
[State -1, Kunai throw]
type = ChangeState
value = 480
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Multiple Kunai throw
[State -1,Multiple Kunai throw]
type = ChangeState
value = 488
triggerall = power >= 200
triggerall = command = "Kunai"
trigger1 = statetype = c
trigger1 = ctrl
;---------------------------------------------------------------------------

;teleport
[state -1, teleport]
type = changestate
value = 198
triggerall= command="c"
trigger1 = ctrl
trigger1 = statetype = S
;---------------------------------------------------------------------------

;teleport in air
[state -1, teleport in air]
type = changestate
value = 4100
triggerall= command="c" && command != "QCB_x"
trigger1 = ctrl
trigger1 = statetype = a

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Chakra seal(special)
[State -1, Chakra seal]
type = ChangeState
value = 240
triggerall = power >= 2000
triggerall = command = "CSS"
;triggerall = command != "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Curse seal(special)
[State -1, Curse seal]
type = ChangeState
value = 666
triggerall = power >= 1500
triggerall = command = "CS"
trigger1 = statetype = C
trigger1 = ctrl

; Chakra charge
[State -1, Chakra charge]
type = ChangeState
value = 930
triggerall = power < 3000
triggerall = command = "hold_a"
triggerall = command = "hold_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Hidden snakes hand
[State -1, Hidden snakes hand]
type = ChangeState
value = 400
triggerall = power >= 500
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
; Snake bite
[State -1, Snake bite]
type = ChangeState
value = 235
triggerall = power >= 1000
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command != "holdback"
trigger1 = statetype = C
trigger1 = ctrl

; Snake bite
[State -1, Snake bite]
type = ChangeState
value = 235
triggerall = power >= 1000
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl


; Snake trap
[State -1, Snake trap]
type = ChangeState
value = 700
triggerall = power >= 500
triggerall = command = "z"
trigger1 = statetype = s
trigger1 = ctrl

; Rashumon summon
[State -1, Rashumon summon]
type = ChangeState
value = 6666
triggerall = power >= 2000
Triggerall = Numhelper(666666) < 1
triggerall = command = "down_c"
trigger1 = statetype = c
trigger1 = ctrl

; Manda summon
[State -1, Manda summon]
type = ChangeState
value = 12001
triggerall = power >= 3000
triggerall = command = "Manda"
trigger1 = (statetype = c) && ctrl
;---------------------------------------------------------------------------
; Upper attack
[State -1, Upper attack]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Special 2
[State -1, Special 2]
type = ChangeState
value = 440
Triggerall = Power >= 200
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "holdback"
trigger1 = statetype = C
trigger1 = ctrl

; Kusanagi combo
[State -1, Kusangi combo]
type = ChangeState
value = 444
Triggerall = Power >= 2500
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command != "holdback"
trigger1 = statetype = C
trigger1 = ctrl

; Kusanagi throw
[State -1, Kusangi throw]
type = ChangeState
value = 2500
Triggerall = Power >= 300
triggerall = command = "kusa"
trigger1 = (statetype = c) && ctrl

; Kawarimi
[State -1, Kawarimi]
type = ChangeState
value = 500
Triggerall = Power >= 100
triggerall = command = "c"
triggerall = power >= 100
trigger1 = movetype = H && (statetype = S)

;---------------------------------------------------------------------------
;Special3
[State -1, Special3]
type = ChangeState
value = 899
Triggerall = Numhelper(3000) = 0
Triggerall = Power >= 2000
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 9999999
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Kunai
[State -1, Air Kunai]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
