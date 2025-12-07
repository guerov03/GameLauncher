; The CMD file.

[Command]
name = "CPU1"
command = B,F,B,a
time = 0

[Command]
name = "CPU2"
command = B,F,B,b
time = 0

[Command]
name = "CPU3"
command = B,F,B,c
time = 0

[Command]
name = "CPU4"
command = B,F,B,x
time = 0

[Command]
name = "CPU5"
command = B,F,B,y
time = 0

[Command]
name = "CPU6"
command = B,F,B,z
time = 0

[Command]
name = "CPU7"
command = B,D,B,a
time = 0

[Command]
name = "CPU8"
command = B,D,B,b
time = 0

[Command]
name = "CPU9"
command = B,D,B,c
time = 0

[Command]
name = "CPU10"
command = B,D,B,x
time = 0

[Command]
name = "CPU11"
command = B,D,B,y
time = 0

[Command]
name = "CPU12"
command = B,D,B,z
time = 0
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

;-| AI Activators|-------------------------------------------------------------------

[Command]
name = "CPU"
command = a
time = 1

[Command]
name = "CPU"
command = b
time = 1

[Command]
name = "CPU"
command = c
time = 1

[Command]
name = "CPU"
command = x
time = 1

[Command]
name = "CPU"
command = y
time = 1

[Command]
name = "CPU"
command = z
time = 1

[Command]
name = "CPU"
command = s
time = 1

[Command]
name = "CPU"
command = F
time = 1

[Command]
name = "CPU"
command = B
time = 1

[Command]
name = "CPU"
command = U
time = 1

[Command]
name = "CPU"
command = D
time = 1

[Command]
name = "AI"
command = U, U, U, U, U, U, U, U, b, U, a, U, U, U, U, U, c, U, z, U
time = 1

[Command]
name = "AI1"
command = D, D, D, U, U, U, x, U, U, U, a, U, U, U, U, U, U, U, b, U
time = 1

[Command]
name = "AI2"
command = F, F, F, U, U, U, U, U, x, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI3"
command = B, B, B, U, U, U, U, U, x, U, U, U, z, U, U, U, U, U, U, b
time = 1

[Command]
name = "AI4"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI5"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI6"
command = F, F, F, U, U, U, U, U, U, y, U, U, z, y, U, U, U, U, U, U
time = 1

[Command]
name = "AI7"
command = B, B, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI8"
command = U, U, U, U, U, U, U, a, U, U, U, U, U, y, y, U, U, U, U, U
time = 1

[Command]
name = "AI9"
command = D, D, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI10"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI11"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI12"
command = F, B, F, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI13"
command = B, F, B, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI14"
command = U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI15"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI16"
command = F, B, F, U, U, U, U, U, U, U, F, U, a, U, U, U, U, U, U, U
time = 1

[Command]
name = "AI17"
command = B, F, B, U, U, U, U, a, U, U, B, U, U, U, U, U, c, U, U, b
time = 1

[Command]
name = "AI18"
command = U, D, U, U, U, U, U, z, U, U, U, y, U, y, U, D, U, U, U, U
time = 1

[Command]
name = "AI19"
command = D, U, D, U, U, U, U, U, U, U, U, U, U, U, U, U, D, U, U, U
time = 1

[Command]
name = "AI20"
command = F, B, F, U, U, U, U, U, U, F, B, z, a, U, U, U, D, U, U, U
time = 1

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[command]
name = "claymine"
command = D,B,x
time = 15

[command]
name = "cxc"
command = D,F,x
time = 15

[Remap]
[command]
name = "ssserrr"
command = D,D,c
time = 30

x = x
[command]
name = "katonnn"
command = D,D
time = 15

y = y
[command]
name = "t"
command = D,U
time = 15

z = z
[command]
name = "fuuton"
command = B,F,c
time = 15

a = a
[command]
name = "raiton"
command = F,B,c
time = 15

b = b
[command]
name = "supergenjustu"
command = D,B,z
time = 15

c = c
[command]
name = "meteority"
command = D,F,z
time = 15

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "sss"
command = D,F,b
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "Katon"
command = D,B,c
time = 15

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "Suiton"
command = D,F,c
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

[State -1, AI Run Forward]
type = ChangeState
value = 100
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = Var(50) = 1
triggerall = p2life > 0
triggerall = p2bodydist X > 420
trigger2 = power >= 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Run Back]
type = ChangeState
value = 105
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = Var(50) = 1
triggerall = p2life > 0
triggerall = p2bodydist X > 420
trigger2 = power >= 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Walking]
type = ChangeState
value = 20
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = Var(50) = 1
triggerall = p2life > 0
triggerall = p2bodydist X > 300
trigger2 = power >= 0
trigger1 = statetype = S
trigger1 = ctrl

; AI combo
[State -1, AI combo]
type = ChangeState
value = 220
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl


; AI combo1
[State -1, AI combo1]
type = ChangeState
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
value = 250

[State -1, AI combo2]
type = ChangeState
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250
value = 230


; AI combo
[State -1, AI combo]
type = ChangeState
value = 210
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl


; AI combo1
[State -1, AI combo1]
type = ChangeState
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
value = 240


; AI combo10
[State -1, AI combo10]
type = ChangeState
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
value = 200


; AI combo
[State -1, AI combo]
type = ChangeState
value = 260
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl


; AI combo1
[State -1, AI combo1]
type = ChangeState
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 260
value = 210


; AI combo1
[State -1, AI combo1]
type = ChangeState
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
value = 270


[State -1, AI AmaterasuKuybi]
type = ChangeState
value = 1000
triggerall = power> 2000
triggerall = var(6) = 1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = s
trigger1 = ctrl

[State -1, AI Mangekyo Revenge]
type = ChangeState
value = 1120
triggerall = var(6) = 1
triggerall = life<500
triggerall = power> 4000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Mangekyo Revenge]
type = ChangeState
value = 1140
triggerall = var(6) = 1
triggerall = life<500
triggerall = power> 4000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1, AI Amaterengan]
type = ChangeState
value = 1010
triggerall = power> 4000
triggerall = var(6) = 1
triggerall = Var(50) = 1
triggerall = p2bodydist X > 200
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Bunshin]
type = ChangeState
value = 1070
triggerall = power> 3000
triggerall = var(6) = 0
triggerall = Var(50) = 1
triggerall = p2life > 0
triggerall = p2bodydist X < 200
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Sharingan ON]
type = ChangeState
triggerall = var(6) = 0
value = 1040
triggerall = power >= 500
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = p2life > 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1, AI ClayMine]
type = ChangeState
value = 1030
triggerall = power> 1000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X <150
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Doton]
type = ChangeState
value = 1020
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >200
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Doton]
type = ChangeState
value = 1020
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X <200
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI GhostJutsu]
type = ChangeState
value = 1050
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X <100
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI SuperAmaterasu]
type = ChangeState
value = 1060
triggerall = power> 3000
triggerall = var(6)=  1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >200
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI SunRise]
type = ChangeState
value = 1080
triggerall = power> 4000
triggerall = life< 500
triggerall = var(6)=  1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >200
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Meteory]
type = ChangeState
value = 1090
triggerall = power> 4000
triggerall = life< 500
triggerall = var(6)=  1
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >200
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Suiton]
type = ChangeState
value = 1100
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >300
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Katon]
type = ChangeState
value = 1110
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >150
triggerall = p2life > 0
trigger1 = ctrl


[State -1, AI Raiton]
type = ChangeState
value = 1160
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >150
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Fuuton]
type = ChangeState
value = 1170
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >150
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Housenka]
type = ChangeState
value = 1220
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = S
triggerall = p2bodydist X >300
triggerall = p2life > 0
trigger1 = ctrl

[State -1, AI Housenka AIR]
type = ChangeState
value = 1310
triggerall = power> 2000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
trigger1 = statetype = A
triggerall = p2bodydist X >300
triggerall = p2life > 0
trigger1 = ctrl


;Katon:Housenka no Jutsu
[State -1, Katon:Housenka no Jutsu in Air]
type = ChangeState
value = 1310
triggerall = var(6) = 1
triggerall = power >= 2000
triggerall = command = "c"
trigger1 = (statetype = a) && ctrl

;Katon:Housenka no Jutsu
[State -1, Katon:Housenka no Jutsu in Air]
type = ChangeState
value = 1310
triggerall = var(6) = 0
triggerall = power >= 2000
triggerall = command = "a"
trigger1 = (statetype = a) && ctrl



;Katon:Housenka no Jutsu
[State -1, Katon:Housenka no Jutsu]
type = ChangeState
value = 1220
triggerall = power >= 2000
triggerall = var(6) = 1
triggerall = command = "ssserrr"
trigger1 = (statetype = s) && ctrl

;Katon:Housenka no Jutsu
[State -1, Katon:Housenka no Jutsu]
type = ChangeState
value = 1220
triggerall = power >= 2000
triggerall = var(6) = 0
triggerall = command = "down_a"
trigger1 = (statetype = c) && ctrl

;Fuuton
[State -1, Fuuton]
type = ChangeState
value = 1170
triggerall = power >= 2000
triggerall = var(6) = 0
triggerall = command = "down_b"
trigger1 = (statetype = c) && ctrl

;Fuuton
[State -1, Fuuton]
type = ChangeState
value = 1170
triggerall = power >= 2000
triggerall = var(6) = 1
triggerall = command = "fuuton"
trigger1 = (statetype = s) && ctrl

;Raiton ON
[State -1, Raiton ON]
type = ChangeState
value = 1160
triggerall = power >= 100
triggerall = var(20) = 0
triggerall = numhelper(1161) < 1
triggerall = var(6) = 0
triggerall = command = "down_c"
trigger1 = (statetype = c) && ctrl

;Raiton
[State -1, Raiton]
type = ChangeState
value = 1160
triggerall = power >= 100
triggerall = var(20) = 0
triggerall = numhelper(1161) < 1
triggerall = var(6) = 1
triggerall = command = "raiton"
trigger1 = (statetype = s) && ctrl

;SuperGenjustu
[State -1, SuperGenjustu]
type = ChangeState
value = 1140
triggerall = life <= 500
triggerall = power >= 4500
triggerall = var(6) = 1
triggerall = command = "supergenjustu"
trigger1 = (statetype = s) && ctrl

;SharinganSpecialMove
[State -1, SharinganSpecialMove]
type = ChangeState
value = 1120
triggerall = life <= 500
triggerall = power >= 4500
triggerall = var(6) = 1
triggerall = command = "sss"
trigger1 = (statetype = s) && ctrl

;Katon:Gokakyo nu Jutsu
[State -1, Katon:Gokakyo nu Jutsu]
type = ChangeState
value = 1110
triggerall = power >= 2000
triggerall = var(6) = 0
triggerall = command = "down_z"
trigger1 = (statetype = c) && ctrl

;Katon:Gokakyo nu Jutsu
[State -1, Katon:Gokakyo nu Jutsu]
type = ChangeState
value = 1110
triggerall = power >= 2000
triggerall = var(6) = 1
triggerall = command = "Katon"
trigger1 = (statetype = s) && ctrl

;Suiton: Suryudan no jutsu
[State -1, Suiton: Suryudan no jutsu]
type = ChangeState
value = 1100
triggerall = power >= 2000
triggerall = var(6) = 1
triggerall = command = "Suiton"
trigger1 = (statetype = s) && ctrl


;Suiton: Suryudan no jutsu
[State -1, Suiton: Suryudan no jutsu]
type = ChangeState
value = 1100
triggerall = power >= 2000
triggerall = var(6) = 0
triggerall = command = "down_y"
trigger1 = (statetype = c) && ctrl

;Katon:Meteority
[State -1, Katon:Meteority]
type = ChangeState
value = 1090
triggerall = life <= 500
triggerall = power >= 4500
triggerall = var(6) = 1
triggerall = command = "meteority"
trigger1 = (statetype = s) && ctrl

;RisingSun
[State -1, RisingSun]
type = ChangeState
value = 1080
triggerall = power >= 4500
triggerall = life <= 500
triggerall = var(6)=  1
triggerall = command = "down_z"
trigger1 = (statetype = c) && ctrl

;Bunshin
[State -1, Bunshin]
type = ChangeState
value = 1070
triggerall = power >= 3000
triggerall = var(6) = 0
triggerall = numhelper(20000) < 3
triggerall = command = "cxc"
trigger1 = (statetype = s) && ctrl

;Amaterasu
[State -1, Amaterasu]
type = ChangeState
value = 1060
triggerall = power >= 3505 && power < 4999
triggerall  = var(6) = 1
triggerall = command = "down_a"
trigger1 = (statetype = c) && ctrl

;Chakra
[State -1, Chakra]
type = ChangeState
value = 1050
triggerall = var(6) = 0
triggerall = command = "hold_a"
triggerall = power < 5000
trigger1 = (statetype = s) && ctrl

;Chakra
[State -1, Chakra]
type = ChangeState
value = 1050
triggerall = var(6) = 1
triggerall = command = "hold_a"
trigger1 = (statetype = s) && ctrl

;SharinganOFF
[State -1, SharinganOFF]
type = ChangeState
value = 1041
triggerall = var(6) = 1
triggerall = command = "s"
trigger1 = (statetype = s) && ctrl

;SharinganON
[State -1, SharinganON]
type = ChangeState
value = 1040
triggerall = power>= 100
triggerall = var(6) = 0
triggerall = command = "s"
trigger1 = (statetype = s) && ctrl

;ClayMine
[State -1, ClayMine]
type = ChangeState
value = 1030
triggerall = power>= 1000
triggerall = command = "claymine"
trigger1 = (statetype = s) && ctrl

;Doton
[State -1, Doton]
type = ChangeState
value = 1020
triggerall = power>= 1500
triggerall = var(6) = 0
triggerall = command = "down_x"
trigger1 = (statetype = c) && ctrl

;Doton
[State -1, Doton]
type = ChangeState
value = 1020
triggerall = power>= 1500
triggerall = var(6) = 1
triggerall = command = "down_c"
trigger1 = (statetype = c) && ctrl

;Amaterengan
[State -1, Amaterengan]
type = ChangeState
value = 1010
triggerall = power>= 4000
triggerall = var(6) = 1
triggerall = command = "down_b"
trigger1 = (statetype = c) && ctrl

;Kyubi amaterasu
[State -1, KyubiAmaterasu]
type = ChangeState
value = 1000
triggerall = power >= 1000 && power < 3500
triggerall  = var(6) = 1
triggerall = command = "down_a"
trigger1 = (statetype = c) && ctrl

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

[State -1, Combo1]
type = ChangeState
value = 220
trigger1 = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
;---------------------------------------------------------------------------
[State -1, Combo2]
type = ChangeState
trigger1 = command = "x"
value = 250
trigger1 = stateno = 220
trigger1 = time > 9

[State -1, Combo2]
type = ChangeState
trigger1 = command = "x"
value = 230
trigger1 = stateno = 250
trigger1 = time > 14


;---------------------------------------------------------------------------
[State -1, Combo3]
type = ChangeState
trigger1 = command = "y"
value = 210
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100

[State -1, Combo3]
type = ChangeState
trigger1 = command = "y"
value = 240
trigger1 = stateno = 210
trigger1 = time > 12

[State -1, Combo3]
type = ChangeState
trigger1 = command = "y"
value = 200
trigger1 = stateno = 240
trigger1 = time > 8

[State -1, Combo3]
type = ChangeState
trigger1 = command = "z"
value = 260
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100

[State -1, Combo3]
type = ChangeState
trigger1 = command = "z"
value = 210
trigger1 = stateno = 260
trigger1 = time > 10

[State -1, Combo3]
type = ChangeState
trigger1 = command = "z"
value = 270
trigger1 = stateno = 210
trigger1 = time > 10


;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


