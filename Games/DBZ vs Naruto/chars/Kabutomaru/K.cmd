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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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

command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.


[command]
name = "taunt"
command = D,s
time = 500

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;



;-| Special Motions |------------------------------------------------------
[Command]
name = "Scalpel"
command = ~D,DF,F, x
time = 30

[command]
name = "Weak Scalpel"
command = ~x
time = 30

[command]
name = "Poison Wind"
command = ~y
time = 30

[command]
name = "Kuchios"
command = ~z
time = 303

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[command]
name = "UU"
command = U,U
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[command]
name = "Grab"
command = /$F,c
time = 15

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
name = "start"
command = s
time = 1

[command]
name = "chakra"
command = /s
time = 15

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
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
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Get Up Fast
[State -1, Get Up Fast]
type = ChangeState
value = 5121
trigger1 = command = "UU"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 5080

;---------------------------------------------------------------------------
;Weak Punch
[State -1, Weak Punch]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
value = 200

;Mid Punch
[State -1, Mid Punch]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
value = 210

;Hard Punch
[State -1, Hard Punch]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
value = 220

;-------------------------------------------------------------------------
;Weak Punch2
[State -1, Weak Punch2]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 220
value = 230

;Mid Punch2
[State -1, Mid Punch2]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
value = 240

;Hard Punch2
[State -1, Hard Punch2]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
value = 250

;---------------------------------------------------------------------------
;Grab
[State -1, Grab]
type = ChangeState
value = 520
triggerall = command = "Grab"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 260
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Crouching Kick
[State -1, Crouching Punch]
type = ChangeState
trigger1 = command = "b"
trigger1 = statetype = C
trigger1 = stateno = 11
trigger1 = ctrl = 1
value = 400

;-------------------------------------------------------------------------
;Jumping Punch
[State -1, Jumping Punch]
type = ChangeState
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
value = 600

;---------------------------------------------------------------------------
;Senbon throw
[State -1, Senbon throw]
type = ChangeState
value = 1234
triggerall = var(40) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger1 = statetype = S

;Double Senbon throw
[State -1, Double Senbon throw]
type = ChangeState
value = 1235
triggerall = var(40) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = stateno = 1234
trigger2 = time >= 15

;-----------------------------------------------------------------------------
;[State -1, Counter]
;type = ChangeState
;value = 500
;triggerall = stateno != 120
;triggerall = stateno != 130
;triggerall = command = "x"
;trigger1 = movetype = H && (statetype = S)

;-----------------------------------------------------------------------------
[State -1,AIR counter]
type = ChangeState
value = 502
triggerall = power > 1000
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = stateno != 131
triggerall = stateno != 132
triggerall = stateno != 140
triggerall = stateno != 150
triggerall = stateno != 151
triggerall = stateno != 152
triggerall = stateno != 153
triggerall = stateno != 154
triggerall = stateno != 155
triggerall = p2stateno != 846
triggerall = statetype = A
triggerall = command = "b"
trigger1 = movetype = H
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5000
trigger5 = stateno = 5001


;---------------------------------------------------------------------------
[State -1, Chakra Gain]
type = ChangeState
value = 700
triggerall = command = "chakra"
triggerall = stateno = 0
triggerall = power < 3000
trigger2 = statetype != A
trigger1 = ctrl


;-------------------------------------------------------------------
;Poison Wind Jutsu
[State -1, Poison Wind Jutsu]
type = ChangeState
value = 6000
triggerall = power >= 450
Triggerall = command = "Poison Wind"
Triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 220
trigger3 = time >= 7
trigger4 = stateno = 230
trigger4 = time >= 7
trigger5 = stateno = 240
trigger5 = time >= 7

;-------------------------------------------------------------------
;Weak Scalpel
[State -1, Weak Scalpel]
type = ChangeState
value = 6500
triggerall = power >= 2000
Triggerall = command = "Weak Scalpel"
Triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 220
trigger3 = time >= 7
trigger4 = stateno = 230
trigger4 = time >= 7
trigger5 = stateno = 240
trigger5 = time >= 7

;-------------------------------------------------------------------
;Kuchios no Jutsu
[State -1, Kuchios no Jutsu]
type = ChangeState
value = 6010
triggerall = power >= 1000
Triggerall = command = "Kuchios"
Triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 220
trigger3 = time >= 7
trigger4 = stateno = 230
trigger4 = time >= 7
trigger5 = stateno = 240
trigger5 = time >= 7


;-------------------------------------------------------------------
;Chakra Scalpel
[State -1, Chakra Scalpel]
type = ChangeState
value = 7500
triggerall = power >= 2000
Triggerall = command = "Scalpel"
Triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 220
trigger4 = stateno = 230
trigger5 = time >= 7

;-------------------------------------------------------------------



