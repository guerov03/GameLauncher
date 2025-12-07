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

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

; Default value for the "time" parameter of a Command. Minimum 1.
[Defaults]
command.time = 30



;-| CPU |--------------------------------------------------------------

[Command]
name = "cpu0"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu1"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu2"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu3"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu4"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu5"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu6"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu7"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu8"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu9"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

; Add more as desired.  The greater the number of uniquely-named CPU-only
; commands you use, the faster the AI will tend to activate.  Mugen allows up
; to 128 total unique command names.
; Note that the command input strings do not need to be unique, but the command
; names do.  Having 32 commands named "cpu" won't make the computer any more
; likely to choose one of them than having a single "cpu" command would.


;-| Default Values |-------------------------------------------------------
[command]
name = "cstrans"
command = a+b
time = 15

[command]
name = "teshi_sendan"
command = a
time = 15

[command]
name = "hold_teshi_sendan"
command = /a
time = 15

[command]
name = "yangai_no_mai"
command = x+y
time = 15

;-| Super Motions |--------------------------------------------------------
[command]
name = "sawarabi"
command = a+b
time = 15

[command]
name = "sawarabinomai"
command = b+x
time = 15

[command]
name = "tessenka"
command = x+y
time = 15

[command]
name = "tessenka"
command = x+y
time = 15

[command]
name = "runaway"
command = a+y
time = 15

;-| Special Motions |------------------------------------------------------
[command]
name = "teleportcs"
command = a
time = 15

[command]
name = "teleportcs"
command = b
time = 15

[command]
name = "teleportcs"
command = x
time = 15

[command]
name = "teleportcs"
command = y
time = 15

[command]
name = "bones1"
command = ~D, DB, B, x
time = 30

[command]
name = "bones2"
command = ~D, DB, B, y
time = 30

[command]
name = "bones3"
command = ~D, DB, B, a
time = 30

[command]
name = "bones4"
command = ~D, DB, B, b
time = 30

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

;-| Button Combination Dir |------------------------------------------------------------
[Command]
name = "ay"  ;Required (do not remove)
command = a+y
time = 1

[Command]
name = "bx"  ;Required (do not remove)
command = b+x
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
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;                       AI  N O R M A L  P L A Y E R
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
; It is very important that this controller NOT be moved to State -2.
; This guarantee to active the AI more fast
[State -1, CPU]
type = VarSet
triggerall = var(58)!=1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu0"
; Add more as desired.  (See above.)
var(58) = 1

;--------------------------------------------------------------------------
;   AI action Universal
;--------------------------------------------------------------------------
;misc moves
[State -1,100]
type = ChangeState
value = 100
triggerall = var(58) = 1
triggerall = p2bodydist x > 50 && p2movetype != A && random <= 100
trigger1 = stateno != 100 && statetype = S && ctrl

; yangai no mai
[State -1, Yangai No Mai]
type = ChangeState
value = 2000
triggerall = var(58) = 1 && palno <= 6 && power >= 1000 && var(11) != 1 && var(7) != 1
trigger1 = (P2BodyDist X = [16,100]) && StateType != A && P2StateType = S && random <= 250 && ctrl
;trigger1 =

; yangai no mai MAX
[State -1, Yangai No Mai MAX]
type = ChangeState
value = 2300
triggerall = var(58) = 1 && palno <= 6 && var(11) = 1 && var(7) != 1 && StateType != A && p2life != 0 && ctrl
trigger1 =  P2BodyDist X >= 50 && P2StateType = S && random <= 500
trigger2 =  P2BodyDist X >= 50 && P2StateType = L && random <= 100
trigger3 = p2stateno = 5120 && random <= 250


;---------------------------------------------------------------------------
; Teshi Sendan
[State -1, Teshi Sendan]
type = ChangeState
value = 2100
triggerall = var(58) = 1 && palno <= 6 && var(7) != 1 && StateType != A && p2life != 0 && ctrl
trigger1 = P2BodyDist X >= 60 && statetype = S && P2MoveType = I && random <= 250
trigger2 = P2BodyDist X >= 60 && statetype = S && P2MoveType != H && random <= 250
trigger3 = random < 25

;---------------------------------------------------------------------------
;Curse Seal Transfrormation
[State -1, Curse Seal Transfrormation]
type = ChangeState
value = 2200
triggerall = var(58) = 1 && palno <= 6 && var(7) = 0 && var(11) = 1 && StateType != A && ctrl;&& life <= 500
triggerall = stateno != [5000,5999]
trigger1 =  P2BodyDist X >= 60 && P2MoveType != A && random <= 500
trigger2 = P2BodyDist X >= 60 && statetype = S && P2MoveType = I && random <= 500
trigger3 = P2BodyDist X >= 60  && random <= 500
trigger4 = random < 500

;---------------------------------------------------------------------------
; teleport
[State -1, 1000]
type = ChangeState
value = 1000
triggerall = var(58) = 1 && palno <= 6 && p2statetype != L && statetype != A && P2Life != 0 && var(7) != 1 && power > 200 && ctrl
trigger1 = (p2bodydist x >= 150) && P2MoveType != A && random <= 200
trigger2 = enemy,numproj = 1 && random <= 250
trigger3 = p2movetype = A && random <= 100

;---------------------------------------------------------------------------
; Wall stand
[State -1, Wall Stand]
type = ChangeState
value = 1100
triggerall = var(58) = 1 && palno <= 6 && statetype = A && P2Life != 0 && anim != 44 && anim != 41 && var(7) != 1 && ctrl
triggerall = stateno != 1100 && stateno != 1150
trigger1 = BackEdgeDist < 10

[State -1, Wall Stand iddle]
type = ChangeState
value = 1150
triggerall = var(58) = 1 && palno > 6 && ctrl || var(58) = 1 && var(7) = 1 && ctrl
triggerall = stateno != 1100 && stateno != 1150
trigger1 = statetype = A && BackEdgeDist < 10 && stateno = 1100
trigger2 = statetype = A && BackEdgeDist < 10 && stateno = 1100 && animelemtime(2) >= 0

;---------------------------------------------------------------------------
;Chakra Increase !!
[State -1, Chakra Increase]
type = ChangeState
value = 1200
triggerall = var(58) = 1 && palno <= 6
triggerall = var(7) != 1 && var(8) != 1 && var(9) != 1 && var(10) != 1 && var(11) != 1
triggerall = power < 3000 && statetype != A && ctrl
trigger1 = (p2bodydist x >= 100) && P2MoveType != A && random <= 200
trigger2 = p2statetype = L && random <= 3
trigger3 = P2MoveType != A && random <= 200

;---------------------------------------------------------------------------
;Chakra Get ON !!
[State -1, Chakra ON]
type = ChangeState
value = 1250
triggerall = var(58) = 1 && palno <= 6 && var(7) != 1 && var(8) != 1 && var(9) != 1 && var(10) != 1 && var(11) != 1 && power >= 1000
triggerall = numexplod(4300) = 0  && statetype != A && ctrl
trigger1 = P2MoveType != A
trigger2 = random > 500

;--------------------------------------------------------------------------
;   AI action Universal
;--------------------------------------------------------------------------
; Valid for normal version.
; common moves
; start jump
[State -1, 40]
type = ChangeState
value = 40
triggerall = var(58) = 1 && palno <= 6 && statetype != A && P2Life != 0 && stateno != 40 && anim != 40 && stateno != 0 && anim != 0 && stateno != 10 && anim != 10 && var(7) != 1 && ctrl
trigger1 = (p2bodydist x >= 30) && random <= 250
trigger2 = random = (0,100)
trigger3 = p2statetype = A && random <= 100

[State -1, 105]
type = ChangeState
value = 105
triggerall = var(58) = 1 && palno <= 6 && statetype != A && P2Life != 0 && stateno != 40 && anim != 40 && stateno != 0 && anim != 0 && stateno != 10 && anim != 10 && var(7) != 1 && ctrl
trigger1 = (p2bodydist x >= 30) && random <= 250
trigger2 = random = (301,400)
trigger3 = p2statetype = L && random <= 50

;Taunt
[State -1, 195]
type = ChangeState
value = 195
triggerall = var(58) = 1 && palno <= 6 && var(7) != 1 && statetype != A && ctrl
trigger1 = p2statetype = L && random <= 5
trigger2 = p2movetype = I && random <= 5
trigger3 = p2movetype != H && random <= 5
trigger4 = p2movetype != A && random <= 5

;---------------------------------------------------------------------------
; AI Y combo
[State -1, 200]
type = ChangeState
value = 200
triggerall = var(58) = 1 && palno <= 6 && p2statetype != L && statetype != A && P2Life != 0 && var(7) != 1 && ctrl
trigger1 = (p2bodydist x <= 15) && p2statetype = S && random <= 200

[State -1, 201]
type = ChangeState
value = 201
triggerall = var(58) = 1
trigger1 = stateno = 200 && animelemtime(3) >= 0 && movecontact

[State -1, 201]
type = ChangeState
value = 202
triggerall = var(58) = 1
trigger1 = stateno = 201 && animelemtime(1) >= 0 && movecontact

;---------------------------------------------------------------------------
; AI Y hit
[State -1, AI Y hit]
type = ChangeState
value = 210
triggerall = var(58) = 1 && palno <= 6 && p2statetype != L && statetype != A && P2Life != 0 && var(7) != 1 && ctrl
trigger1 = (p2bodydist x <= 60) && p2statetype = A && random <= 250

;---------------------------------------------------------------------------
; AI Jump Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(58) = 1 && palno <= 6 && var(7) != 1
trigger1 = statetype = A && random <= 50 && ctrl

;---------------------------------------------------------------------------
; AI Jump Strong Punch
[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(58) = 1 && palno <= 6 && var(7) != 1
trigger1 = statetype = A && random <= 100 && ctrl




;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; The following commands are use for curse transformation only. Do not confuse
; with the commands lines above.
;---------------------------------------------------------------------------
;               AI  C U R S E  S E A L  F O R M  C O D E  var(58) = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
 ; Taunt CS
[State -1, Taunt CS]
type = ChangeState
value = 196
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && p2life != 0 && ctrl
trigger1 = p2movetype != A  && random <= 100
trigger2 = p2statetype = L && random <= 10

; Y combo CS
[State -1, Y combo CS]
type = ChangeState
value = 250
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && p2life != 0 && ctrl
trigger1 = (p2bodydist x <= 50) && p2statetype = S

[State -1, 201]
type = ChangeState
value = 251
triggerall = var(58) = 1
trigger1 = stateno = 250 && animelemtime(2) >= 0 && movecontact

[State -1, 201]
type = ChangeState
value = 252
triggerall = var(58) = 1
trigger1 = stateno = 251 && animelemtime(3) >= 0 && movecontact


; Y hit CS
[State -1, Y hit CS]
type = ChangeState
value = 260
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && p2life != 0 && ctrl
trigger1 = (p2bodydist x <= 30) && p2statetype != A && frontedgebodydist < 60

; Anti-Teleport
[State -1, Anti-Teleport]
type = ChangeState
value = 270
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && p2life != 0 && ctrl
trigger1 = (p2bodydist x <= 60) && p2statetype = A && random <= 250

; Anti-Aerial Attack
[State -1, Anti-Aerial Attack]
type = ChangeState
value = 280
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && p2life != 0 && ctrl
trigger1 = (p2bodydist x <= 60) && statetype != A && p2statetype = A  && random > 251
trigger2 = (p2bodydist x <= 60) && statetype != A && p2stateno = 5050 && random <= 250

;---------------------------------------------------------------------------
; Air Attack 1
[State -1, Air Attack 1]
type = ChangeState
value = 620
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype = A && p2life != 0 && ctrl
trigger1 = (p2bodydist x <= 150) && p2statetype = A && random > 501
trigger1 = (p2bodydist x <= 150) && p2statetype = S && random > 501

;---------------------------------------------------------------------------
; Air Attack 2
[State -1, Air Attack 2]
type = ChangeState
value = 640
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype = A && p2life != 0 && ctrl
trigger1 = (p2bodydist x <= 150) && p2statetype = A && random < 500
trigger1 = (p2bodydist x <= 150) && p2statetype = S && random < 500

;---------------------------------------------------------------------------
; Teleport
[State -1, Teleport]
type = ChangeState
value = 1500
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && p2life != 0 && ctrl
trigger1 = p2movetype = A && random <= 100
trigger2 = (p2bodydist x >= 60) && p2movetype = A && random <= 250
trigger3 = enemy,numproj = 1

;---------------------------------------------------------------------------
;Wall Stand
[State -1, Wall Stand]
type = ChangeState
value = 1600
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype = A && p2life != 0 && ctrl
triggerall = stateno != 1600 && stateno != 1650
trigger1 = BackEdgeDist < 10
trigger1 = ScreenPos Y = [0,200]

[State -1, Wall Stand]
type = ChangeState
value = 1650
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype = A && p2life != 0 && ctrl
triggerall = stateno != 1600 && stateno != 1650
trigger1 = statetype = A && BackEdgeDist < 10 && stateno = 1600
trigger2 = statetype = A && BackEdgeDist < 10 && stateno = 1600 && animelemtime(2) >= 0


;---------------------------------------------------------------------------
;Chakra Increase !!
[State -1, Chakra Increase CS]
type = ChangeState
value = 1700
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && ctrl
triggerall = var(11) != 1 && power <= 3000 && ctrl
trigger1 = (p2bodydist x >= 100) && P2MoveType != A  && random <= 250
trigger2 =  (p2bodydist x >= 60) && P2MoveType != H  && random <= 250
trigger3 = (p2bodydist x >= 60) && P2MoveType = I  && random <= 250
trigger4 = (p2bodydist x >= 60) && P2stateType = L  && random <= 100

;---------------------------------------------------------------------------
;Chakra Get ON !!
[State -1, Chakra ON CS]
type = ChangeState
value = 1750
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && statetype != A && power >= 1000 && ctrl
triggerall = var(8) != 1 && var(9) != 1 && var(10) != 1 && var(11) != 1 && var(12) != 1
trigger1 = (p2bodydist x >= 30) && P2stateType = L  && random > 100
trigger2 = random < 500

; Tessenka no Mai
[State -1, Tessenka no Mai]
type = ChangeState
value = 3000
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && var(11) != 1 && power >= 1000 && statetype != A && ctrl
trigger1 = (p2bodydist x <= 100) && random = (0,100)

; Tessenka no Mai MAX
[State -1, Tessenka no Mai MAX]
type = ChangeState
value = 3400
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) &&  var(11) = 1 && statetype != A && ctrl
trigger1 = (p2bodydist x >= 100) && random <= 350
trigger2 = random <= 500

; Sawarabi no Mai
[State -1, Sawarabi no Mai]
type = ChangeState
value = 3100
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && var(11) != 1 && ctrl
trigger1 = (p2bodydist x >= 100) && statetype != A && random >= 500

; No Mess Up
[State -1, No Mess Up]
type = ChangeState
value = 3200
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && var(11) = 1 && statetype != A && ctrl
trigger1 = (p2bodydist x >= 60) && random = [351,500]

; Sawarabi no Mai MAX
[State -1, Sawarabi no Mai MAX]
type = ChangeState
value = ifelse(random <= 500,3300,3500)
triggerall = var(58) = 1
triggerall = (palno > 6 || var(7) = 1) && var(11) = 1  && statetype != A && ctrl
trigger1 = (p2bodydist x >= 100) && random > 500
trigger2 = random > 500

;---------------------------------------------------------------------------




;===========================================================================
;---------------------------------------------------------------------------
; yangai no mai
[State -1, Yangai No Mai]
type = ChangeState
value = 2000
triggerall = command =  "yangai_no_mai" && palno <= 6 && power >= 1000 && var(11) != 1 && var(7) != 1
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

; yangai no mai MAX
[State -1, Yangai No Mai MAX]
type = ChangeState
value = 2300
triggerall = command =  "yangai_no_mai" && palno <= 6 && var(11) = 1 && var(7) != 1
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 202 && movecontact && var(11) = 1

;---------------------------------------------------------------------------
; Teshi Sendan
[State -1, Teshi Sendan]
type = ChangeState
value = 2100
triggerall = command = "teshi_sendan" && palno <= 6 && var(7) != 1
triggerall = command != "holddown" && command != "b"
trigger1 = statetype = S
trigger1 = ctrl

; Teshi Sendan Persistent  <= DEPRECATED****
[State -1, Teshi Sendan]
type = null;ChangeState
value = 2110
triggerall = command = "hold_teshi_sendan"
triggerall = palno <= 6 && var(7) != 1
;triggerall = command != "holddown" && command != "b"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;Curse Seal Transfrormation
[State -1, Curse Seal Transfrormation]
type = ChangeState
value = 2200
triggerall = command = "cstrans" && palno <= 6 && var(7) = 0 && var(11) = 1 ;&& life <= 500
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; Teleport
[State -1, Teleport]
type = ChangeState
value = 1000
triggerall = palno <= 6  && var(7) != 1
triggerall = (command = "a" || command = "b" || command = "x" || command = "y") && command = "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Wall Walk
[State -1, Wall Walk]
type = ChangeState
value = 1100
triggerall = command = "BB" && palno <= 6 && var(7) != 1
trigger1 = statetype = A && BackEdgeDist < 10 && ctrl 
trigger1 = ScreenPos Y = [0,200]

;---------------------------------------------------------------------------
;Chakra Increase !!
[State -1, Chakra Increase]
type = ChangeState
value = 1200
triggerall = command = "c" && palno <= 6 && var(7) != 1 && var(8) != 1 && var(9) != 1 && var(10) != 1 && var(11) != 1&& power < 3000
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Chakra Get ON !!
[State -1, Chakra ON]
type = ChangeState
value = 1250
triggerall = command = "z" || command = "cstrans"
triggerall = palno <= 6 && var(7) != 1 && var(8) != 1 && var(9) != 1 && var(10) != 1 && var(11) != 1 && power >= 1500
trigger1 = statetype != A && ctrl

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
; Throw  a
[State -1, Throw Backward]
type = ChangeState
value = ifelse(random <= 250,850,800)
triggerall = command = "b" && palno <= 6 && var(7) != 1
trigger1 = stateno != 100 && statetype = S && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s" && palno <= 6 && var(7) != 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Y combo
[State -1, Y combo]
type = ChangeState
value = 200
triggerall = command = "x" && palno <= 6 && var(7) != 1
triggerall = command != "holddown" && command != "yangai_no_mai"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && var(11) = 1
trigger3 = stateno = 2100 && animelemtime(10) >= 0 && var(11) = 1

;---------------------------------------------------------------------------
; Y hit
[State -1, Y hit]
type = ChangeState
value = 210
triggerall = command = "y" && palno <= 6 && var(7) != 1
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 2100 && animelemtime(10) >= 0 && var(11) = 1

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && palno <= 6 && var(7) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno =  1150

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y" && palno <= 6 && var(7) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno =  1150

;---------------------------------------------------------------------------
; Jump Light Punch + bullets shoot forward
[State -1, Air Bullets forward]
type = ChangeState
value = 720
triggerall = numprojid(2150) = 0 || var(11) = 1
triggerall = command = "a" && palno <= 6 && var(7) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno =  1150

;---------------------------------------------------------------------------
; Jump Light Punch + bullets shoot diag down
[State -1, Air Bullets diag down]
type = ChangeState
value = 730
triggerall = numprojid(2150) = 0 || var(11) = 1
triggerall = command = "b" && palno <= 6 && var(7) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno =  1150

;---------------------------------------------------------------------------
;--------------------C U R S E  S E A L  C O M M A N D S--------------------
;---------------------------------------------------------------------------
; Taunt CS
[State -1, Taunt CS]
type = ChangeState
value = 196
triggerall = command = "s" && palno > 6 || command = "s" && var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl

; Y combo CS
[State -1, Y combo CS]
type = ChangeState
value = 250
triggerall = palno > 6 || var(7) = 1
triggerall = command = "x" && command != "y" && command != "a" && command != "b"
triggerall = command != "bones1"
trigger1 = statetype = S && ctrl

; Y hit CS
[State -1, Y hit CS]
type = ChangeState
value = 260
triggerall = palno > 6 || var(7) = 1
triggerall = command = "y" && command != "x" && command != "a"
triggerall = command != "bones2"
trigger1 = statetype = S && ctrl

; Anti-Teleport
[State -1, Anti-Teleport]
type = ChangeState
value = 270
triggerall = palno > 6 || var(7) = 1
triggerall = command = "a" && command != "b"  && command != "holddown" && command != "y"
triggerall = command != "bones3"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 260 && animelemtime(2) >= 0 && var(11) = 1

; Anti-Aerial Attack
[State -1, Anti-Aerial Attack]
type = ChangeState
value = 280
triggerall = palno > 6 || var(7) = 1
triggerall = command = "b" && command != "a" && command != "x" && command != "holddown"
triggerall = command != "bones4"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 270 && animelemtime(2) >= 0 && var(11) = 1

;---------------------------------------------------------------------------
; Air Attack 1
[State -1, Air Attack 1]
type = ChangeState
value = 620
triggerall = command = "x"  && palno > 6 || command = "x"  && var(7) = 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Attack 2
[State -1, Air Attack 2]
type = ChangeState
value = 640
triggerall = command = "y" && command != "a" && palno > 6 || command = "y" && command != "a" && var(7) = 1
trigger1 = statetype = A  && ctrl
trigger2 = stateno = 280 && movecontact && var(11) = 1

;---------------------------------------------------------------------------
; Throw  CS
[State -1, Throw CS]
type = ChangeState
value = 900
triggerall = command = "c" && palno > 6 || command = "c" && var(7) = 1
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
; Teleport
[State -1, Teleport]
type = ChangeState
value = 1500
triggerall = command = "teleportcs" && command = "holddown" && palno > 6 || command = "teleportcs" && command = "holddown" && var(7) = 1
trigger1 = statetype = C || statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Wall Walk
[State -1, Wall Walk]
type = ChangeState
value = 1600
triggerall = var(58) != 1
triggerall = command = "BB" && palno > 6 || command = "BB" && var(7) = 1
trigger1 = statetype = A && BackEdgeDist < 10 && ctrl
trigger1 = ScreenPos Y = [0,200]

;---------------------------------------------------------------------------
;Chakra Increase !!
[State -1, Chakra Increase CS]
type = ChangeState
value = 1700
trigger1 = command = "hold_c" && palno > 6 && var(7) != 1 && var(8) != 1 && var(9) != 1 && var(10) != 1 && var(11) != 1 && var(12) != 1 && power < 3000
trigger2 = command = "hold_c" && var(7) = 1 && var(8) != 1 && var(9) != 1 && var(10) != 1 && var(11) != 1 && var(12) != 1 && power < 3000
triggerall = statetype != A && ctrl

;---------------------------------------------------------------------------
;Chakra Get ON !!
[State -1, Chakra ON CS]
type = ChangeState
value = 1750
triggerall = command = "z" || command = "ay" || command = "bx"
triggerall = (palno > 6 || var(7) = 1) && var(11) != 1 && power >= 1000
trigger1 = statetype != A && ctrl


;---------------------------------------------------------------------------
;Bones Hability!!
[State -1, Y combo CS]
type = ChangeState
value = 1800
triggerall = NumProjID(1850) = 0
triggerall = palno > 6 || var(7) = 1
triggerall = command = "bones1"
trigger1 = statetype = S && ctrl

[State -1, Y combo CS]
type = ChangeState
value = 1801
triggerall = NumProjID(1850) = 0
triggerall = palno > 6 || var(7) = 1
triggerall = command = "bones2"
trigger1 = statetype = S && ctrl

[State -1, Y combo CS]
type = ChangeState
value = 1802
triggerall = NumProjID(1850) = 0
triggerall = palno > 6 || var(7) = 1
triggerall = command = "bones3"
trigger1 = statetype = S && ctrl

[State -1, Y combo CS]
type = ChangeState
value = 1803
triggerall = NumProjID(1850) = 0
triggerall = palno > 6 || var(7) = 1
triggerall = command = "bones4"
trigger1 = statetype = S && ctrl


;---------------------------------------------------------------------------
; Tessenka no Mai
[State -1, Tessenka no Mai]
type = ChangeState
value = 3000
triggerall = command = "tessenka" && var(11) != 1 && palno > 6 || command = "tessenka" && var(11) != 1 && var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl

; Tessenka no Mai MAX
[State -1, Tessenka no Mai MAX]
type = ChangeState
value = 3400
triggerall = command = "tessenka" && var(11) = 1 && palno > 6 || command = "tessenka" && var(11) = 1 && var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl

; Sawarabi no Mai
[State -1, Sawarabi no Mai]
type = ChangeState
value = 3100
triggerall = command = "sawarabi" && var(11) != 1 && palno > 6 || command = "sawarabi" && var(11) != 1 && var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl

; No Mess Up
[State -1, No Mess Up]
type = ChangeState
value = 3200
triggerall = command = "runaway" && var(11) = 1 && palno > 6 || command = "runaway" && var(11) = 1 && var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl

; Sawarabi no Mai MAX
[State -1, Sawarabi no Mai MAX]
type = ChangeState
value = 3300
triggerall = command = "sawarabi" && var(11) = 1 && palno > 6 || command = "sawarabi" && var(11) = 1 && var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl

; Sawarabi no Mai (special)
[State -1, Sawarabi no Mai]
type = ChangeState
value = 3500
triggerall = command = "sawarabinomai" && var(11) = 1 && palno > 6 || command = "sawarabinomai" && var(11) = 1 && var(7) = 1
trigger1 = statetype = S
trigger1 = ctrl
