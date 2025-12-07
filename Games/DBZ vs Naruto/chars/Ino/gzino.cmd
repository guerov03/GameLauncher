[Command]
name = "AI1"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI2"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI3"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI4"
command = UF,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI5"
command = UF,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI6"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI7"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI8"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI9"
command = UF,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI10"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI11"
command = UF,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI12"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI13"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI14"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI15"
command = UF,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI16"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI17"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI18"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI19"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI20"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI21"
command = UF,UF,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI22"
command = UF,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI23"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI24"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI25"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI26"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI27"
command = D,D,D,F,UF,F,a+z+c+y+b,/$F,b
time = 1

[Command]
name = "AI28"
command = D,D,D,F,UF,F,a+z+c+x+b,/$F,b
time = 1

[Command]
name = "AI29"
command = D,D,D,F,UF,F,a+z+c+x+y+b,/$F,b
time = 1

[Command]
name = "AI30"
command = D,D,D,F,UF,F,a+z+c+x+y+b,/$F,b
time = 1


[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;-| Default Values |-------------------------------------------------------

[command]
name = "super chute"
command = D,F,x
time = 15

[command]
name = "shinrashin"
command = D,F,a
time = 15

[Defaults]

[command]
name = "fumma shuriken"
command = D,B,a
time = 15

[command]
name = "Agarrao"
command = /~B,x
time = 15

[command]
name = "Kunai_explo"
command = D,B,y
time = 15

[command]
name = "DBb"
command = D,B,b
time = 15


; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

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

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "x" || command = "b"
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

;----------------------------------------------------------------------------
;Kunai Throw
[State -1 , Kunai Throw]
type = ChangeState
value = 700
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = time >= 5

;----------------------------------------------------------------------------
;Kunai Explosiva
[State -1 , Kunai Explosiva]
type = ChangeState
value = 715
triggerall = numhelper(715)=0
triggerall = command = "Kunai_explo"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------

;Kunai Throw Air
[State -1 , Kunai Throw Air]
type = ChangeState
value = 710
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------------------------

;Fumma Shuriken
[State -1 , Fumma Shuriken]
type = ChangeState
value = 902
triggerall = numhelper(705)=0
triggerall = command = "fumma shuriken"
trigger1 = statetype = S
triggerall = power >= 1000
trigger1 = ctrl

;-------------------------------------------------------------------------------

;Chakra Charge
[State -1, Chakra Charge]
type = ChangeState
value = 750
triggerall = command = "hold_x" && command = "hold_y"
triggerall = command != "holddown"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------

;Ataque correndo
[State -1 , Ataque correndo]
type = ChangeState
value = 240
triggerall = stateno = 100
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------

;Super chute
[State -1 , Super chute]
type = ChangeState
value = 900
triggerall = power >= 500
triggerall = command = "super chute"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------

;Teleport
[State -1, Teleport]
type = ChangeState
value = 430
triggerall = command = "c"
trigger1 = power >= 50
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------

;Teleport Ar
[State -1, Teleport Ar]
type = ChangeState
value = 431
triggerall = command = "c"
trigger1 = power >= 50
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------------------------------------------

;Shinrashin no jutsu - Ino - Shika - Chou
[State -1, Shinrashin no jutsu - Ino - Shika - Chou]
type = ChangeState
value = 910
triggerall = command = "shinrashin"
trigger1 = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

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

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;-----------------------------------------------------------------------------
;Counter
[State -1 , Counter]
type = ChangeState
value = 830
triggerall = command = "DBb"
trigger1 = statetype = S
trigger1 = ctrl


;-----------------------------------------------------------------------------
;Combo Socos #1
[State -1 , Combo Socos #1]
type = ChangeState
value = 200
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------
;Combo Socos #2
[State -1, Combo Socos #2]
type = ChangeState
value = 220
triggerall = stateno = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 3

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1 , Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = stateno = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 10

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = stateno = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 7

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 250
triggerall = stateno = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = time >= 20

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-----------------------------------------------------------------------------
; Crouch Kunai Throw
[State -1, Crouch Kunai Throw]
type = ChangeState
value = 703
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
; Air Dash FWD
[State -1, Air Dash FWD]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = var(20) = 0
triggerall = power >= 50
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;-----------------------------------AI------------------------------------------
;-------------------------------------------------------------------------------

[State -1, AI ON]
type = VarSet
triggerall = var(18) != 1
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
var(18) = 1

; ==========================
[State -1,AI Standing Guard]
type = ChangeState
triggerall = var(18) = 1 ;AI trigger used
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
triggerall = var(18) = 1
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
triggerall = var(18) = 1
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
triggerall = var(18) = 1
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
triggerall = var(18) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 600
value = 132
;---------------------------------------------------------------------

;Light punch
[State -1, AI Light punch]
type = ChangeState
triggerall = var(18) = 1
triggerall = random <= 200
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 200

;medium punch
[State -1, AI medium punch]
type = ChangeState
triggerall = Stateno = 200
trigger1 = movehit = 1
triggerall = random <= 200
triggerall = var(18) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
value = 210

;heavy punch
[State -1, AI heavy punch]
type = ChangeState
triggerall = Stateno = 210
trigger1 = random <= 300
trigger1 = movehit = 1
triggerall = var(18) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
value = 220

;Joga Kunai
[State -1, AI Joga Kunai]
type = ChangeState
triggerall = var(18) = 1
trigger1 = random <= 1
triggerall = var(18) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X >= 50
value = 700

;Chute
[State -1, AI Chute]
type = ChangeState
triggerall = var(18) = 1
triggerall = random <= 200
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 230

;Chute 2
[State -1, AI Chute 2]
type = ChangeState
triggerall = Stateno = 200
trigger1 = movehit = 1
triggerall = random <= 200
triggerall = var(18) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
value = 240

;Especial Chute
[State -1, AI Especial Chute]
type = ChangeState
triggerall = power >= 500
triggerall = var(18) = 1
triggerall = random <= 100
triggerall = p2bodydist x > 50
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 900

;Fumma Shuriken
[State -1, AI Fumma Shuriken]
type = ChangeState
triggerall = power >= 700
triggerall = var(18) = 1
triggerall = random <= 200
triggerall = p2bodydist x > 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 902

;Kunai Explosiva
[State -1, AI Kunai Explosiva]
type = ChangeState
triggerall = power >= 300
triggerall = var(18) = 1
triggerall = random <= 100
triggerall = p2bodydist x > 150
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 715

;Counter
[State -1, AI Counter]
type = ChangeState
triggerall = power >= 0
triggerall = var(18) = 1
triggerall = random <= 400
triggerall = p2bodydist x <= 50
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 830

;Shinrashin no Jutsu - Ino - Shika - Chou
[State -1, AI Shinrashin no Jutsu - Ino - Shika - Chou]
type = ChangeState
triggerall = power >= 2000
triggerall = var(18) = 1
triggerall = random <= 600
triggerall = p2bodydist x >= 50
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 910

;teleport
[State -1, AI teleport]
type = ChangeState
triggerall = var(18) = 1
triggerall = random <= 50
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 430

;teleport ar
[State -1, AI teleport ar]
type = ChangeState
triggerall = var(18) = 1
triggerall = random <= 50
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = P2Life > 0
trigger1 = ctrl = 1
value = 431

;---------------------------------------------------------------------

;Chakra Charge
[State -1, AI Chakra Charge]
type = ChangeState
Triggerall = power < 3000
triggerall = var(18) = 1
triggerall = random <= 5
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X > 600
trigger1 = ctrl = 1
value = 800
