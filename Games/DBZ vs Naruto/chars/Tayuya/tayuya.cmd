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
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do. Now only press two buttons to perform an hyper attack
;Delete it if you feel so easy to fight.
;
[Command]
name =  "Special_Flute"
command = x+y ;~D, DF, F, D, DF, F, x
time = 20

[Command]
name =  "Special_Flute"
command = x+y ;~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "makyou_no_ran"   
command = a+b ;~D, DF, F, D, DF, F, a
time = 20

[Command] 
name = "makyou_no_ran"   
command = a+b ;~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "demon1"  
command = ~D, DF, F, c
time = 20

[Command]
name = "helper1"  
command = ~F, D, DF, c
time = 20

[Command]
name = "demon2"  
command = ~D, DB, B, c
time = 20

[Command]
name = "helper2"  
command = ~B, D, DB, c
time = 20

[Command]
name = "demon3"  
command = ~D, DF, F, z
time = 20

[Command]
name = "helper3"  
command = ~F, D, DF, z
time = 20

[Command]
name = "demon4"  
command = ~D, DB, B, z   
time = 20

[Command]
name = "helper4"  
command = ~B, D, DB, z  
time = 20

[Command]
name = "pseudoghosts"   
command = ~D, DF, F, c+z
time = 20

[Command]
name = "pseudo_projc"  
command = ~$D, D,  c
time = 20

[Command]
name = "pseudo_projz"  
command = ~$D, D,  z
time = 20

[Command]
name = "cstrans"
command = x+y           ;~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "cstrans"        ;Same name as above
command = x+y           ;~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "hiddensp"
command = a+b           ;~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "hiddensp"       ;Same name as above
command = a+b           ;~D, DB, B, D, DB, B, b
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "flute"
command = ~D, DF, F, x

[Command]
name = "flute"
command = ~D, DF, F, y

[Command]
name = "teleport"
command = ~D, DF, F, a

[Command]
name = "teleport"
command = ~D, DF, F, b

[Command]
name = "antiteleport"
command = ~D, DB, B, x

[Command]
name = "antiteleport"
command = ~D, DB, B, y

[Command]
name = "WallWalk"
command = B, B

[Command]
name = "combo"
command = ~D, DB, B, a

[Command]
name = "combo"
command = ~D, DB, B, b





;-| Super Motions |--------------------------------------------------------  
;Curse Seal Commands. The "cs" added means "curse seal" commands.
[Command]
name =  "Special_FluteCS"
command = z ;~D, DF, F, D, DF, F, x
time = 20

[Command]
name =  "Special_FluteCS"
command = z ;~D, DF, F, D, DF, F, y
time = 20

[Command]
name =  "Special_Attackcs"
command = c ;~D, DF, F, D, DF, F, z
time = 20

[Command]
name =  "Special_Attackcs"
command = c ;~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "mateki"  
command = x+y ;~D, DB, B, D, DB, B, x
time = 20

[Command] 
name = "mateki"   
command = x+y ;~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "hiddenspcs"
command = a+b ;~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "hiddenspcs"   
command = a+b ;~D, DB, B, D, DB, B, b
time = 20

;-| Special Motions |------------------------------------------------------
;Curse Seal Commands. The "cs" added means "curse seal" commands.
[Command]
name = "teleportcs"
command = ~D, DF, F, a

[Command]
name = "teleportcs"
command = ~D, DF, F, b

[Command]
name = "combocs"
command = ~D, DB, B, a

[Command]
name = "combocs"
command = ~D, DB, B, b

[Command]
name = "antiteleportcs"
command = ~D, DB, B, x

[Command]
name = "antiteleportcs"
command = ~D, DB, B, y

[Command]
name = "WallWalkCS"  
command = B, B

[Command]
name = "fluteCS"
command = ~D, DF, F, x

[Command]
name = "fluteCS"
command = ~D, DF, F, y

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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


;-| Hold Buttons |--------------------------------------------------------------
; Chakra Power Increase.

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdx"
command = /x
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
; 3. Extra Info
; -------------- 
; This is not a extra information about state -1, skip this part if you are not
; interested.
; The following lines are the helpers`ID, varset conrollers.etc. 
; Useful to explore more easily and AI variables optimization.
; 
; Helpers ID
; NumHelper(2610) = 0 ; summon demons first time. Label name: "kuchiyose-no-jutsu".
; NumHelper(2615) = 0 ; summon demon 1 with stick. Label name: "demon1".
; NumHelper(2630) = 0 ; summon demon 2 without hands(mummy). Label name: "demon2".
; NumHelper(2675) = 0 ; summon demon 3 with blades in both hands. Label name: "demon3".
; NumHelper(2685) = 0 ; summon demons serving as a defence shield. Label name: "demons4".
; NumHelper(2695) = 0 ; demons summon snakes ghosts. Label name: "PseudoGhosts".
; NumHelper(3350) = 0 ; background special move.
;
;
; Projectiles ID
; NumProjID(4000) = 0 ; snake ghost. Label name: "PseudoGhosts". 
;
; VarSets Variables.
; -----------------
; Before procedure, there are two diferents variables from the diferentes versions of states.
; normal - from normal to curse seal - curse seal (enter+any button) in select screen.
; the code are; n1 for normal states.
; 		n1tocs2 to the second one.
;		cstransf for the last one.
;
; var(5) = 1  ; activate once per round. from summon state (kuchiyose no jutsu (hyper)).
; var(6) = 1  ; activate once per round. from PseudoGhosts Summon state [Statedef 2690].
; var(7) = 1  ; Only n1tocs2 can access.
; var(8) = 1  ; Blink Player White from power up states.
; var(9) = 1  ; Keep Player Blink Yellow from power up state.
; var(10) = 1 ; Reduce Power By 10 from power up state.
; var(11) = 1 ; Active special moves only if chakra is ON.
; var(12) = 1 ; Turn Chakra Off in n1,n1tocs2 and cstransf.
; var(13) = 1 ; Turn Chakra Off from curse seal states in [Statedef 3100] ;Mateki: Mugen Onsa.
; var(14) = 1 ; Turn Chakra Off from [Statedef 3310].
; var(58) = 1 ; AI activation code.
; var(7) != 1 ; Neither n1 nor cstransf can access.

; The following varsets stops in state -2.
; var(8) = -2
; var(9) = -2
; var(10) = -2
; var(11) = -2
; var(12) = -2
; var(13) = -2
; var(14) = -2

;===========================================================================
;---------------------------------------------------------------------------
;kuchiyose no jutsu
[State -1, kuchiyose no jutsu]
type = ChangeState
value = 2600
triggerall = (command = "makyou_no_ran") && palno <= 6 && var(5) = 0 && var(7) != 1 && power >= 1000
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks helper 1
[State -1, Makyou No Ran Special Attacks 1]
type = ChangeState
value = 2200
triggerall = command = "helper1" && command != "z" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2615) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks helper 2
[State -1, Makyou No Ran Special Attacks 2]
type = ChangeState
value = 2220
triggerall = command = "helper2" && command != "z" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2630) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special helper 3
[State -1, Makyou No Ran Special Attacks 3]
type = ChangeState
value = 2230
triggerall = command = "helper3" && command != "c" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2675) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special helper 4
[State -1, Makyou No Ran Special Attacks 4]
type = ChangeState
value = 2240
triggerall = command = "helper4" && command != "c" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1 
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks projectile.
[State -1, PseudoGhost]
type = ChangeState
value = 2250
triggerall = command = "pseudo_projz" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2690) = 0 && NumHelper(2685) = 0 && NumProjID(4000) = 0 && var(6) = 1 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks 1
[State -1, Makyou No Ran Special Attacks 1]
type = ChangeState
value = 2650
triggerall = command = "demon1" &&  command != "z" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2615) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks 2
[State -1, Makyou No Ran Special Attacks 2]
type = ChangeState
value = 2660
triggerall = command = "demon2" &&  command != "z" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2630) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks 3
[State -1, Makyou No Ran Special Attacks 3]
type = ChangeState
value = 2670
triggerall = command = "demon3" &&  command != "c" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2675) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks 4
[State -1, Makyou No Ran Special Attacks 4]
type = ChangeState
value = 2680
triggerall = command = "demon4" &&  command != "c" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2685) = 0 && NumHelper(2695) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks 5
[State -1, Makyou No Ran Special Attacks 5]
type = ChangeState
value = 2690
triggerall = command = "pseudoghosts" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2695) = 0 && NumHelper(2685) = 0 && var(6) = 0 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Makyou No Ran Special Attacks 6
[State -1, PseudoGhost]
type = ChangeState
value = 2700
triggerall = command = "pseudo_projc" && palno <= 6 && var(5) = 1 && NumHelper(2610) = 0 && NumHelper(2690) = 0 && NumProjID(4000) = 0 && var(6) = 1 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Curse Seal Transfrormation
[State -1, Curse Seal Transfrormation]
type = ChangeState
value = 2800
triggerall = command = "cstrans" && palno <= 6 && var(7) = 0 && var(11) = 1 && life <= 250
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;MAX HIDDEN POWER !!!!
[State -1, MAX HIDDEN POWER]
type = ChangeState
value = 2900
triggerall = command = "hiddensp" && palno <= 6 && var(9) = 1 && var(11) = 1 && var(7) != 1 && life <= 250
trigger1 = statetype != A && ctrl

;--------------------------------------------------------------------------- 
;Special Flute
[State -1, Special Flute]
type = ChangeState
value = 2000
triggerall = (command = "Special_Flute") && palno <= 6 && var(7) != 1 && power >= 1000 || (command = "Special_Flute") && palno <= 6 && var(7) != 1 && var(11) = 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 1000
triggerall = command = "teleport" && power >= 200 && palno <= 6 && var(7) != 1
trigger1 = statetype != A && ctrl 

;---------------------------------------------------------------------------
;Flute
[State -1, Flute]
type = ChangeState
value = 1100
triggerall = command = "flute" && palno <= 6 && var(7) != 1
trigger1 = statetype != A && ctrl 

;---------------------------------------------------------------------------
;Combo
[State -1, Combo]
type = ChangeState
value = 1200
triggerall = command = "combo" && palno <= 6 && var(7) != 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
;Wall Walk
[State -1, Wall Walk]
type = ChangeState
value = 1300
triggerall = command = "WallWalk" && palno <= 6 && var(7) != 1
trigger1 = statetype = A && BackEdgeDist < 10 && ctrl 
trigger1 = ScreenPos Y = [0,200]

;---------------------------------------------------------------------------
;Anti-Teleport
[State -1, Anti-Teleport]
type = ChangeState
value = 1400
triggerall = command = "antiteleport" && palno <= 6 && var(7) != 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 2660 && var(11) = 1
trigger3 = stateno = 2220 && var(11) = 1
trigger4 = stateno = 2200 && var(11) = 1
trigger5 = stateno = 2230 && var(11) = 1
trigger6 = stateno = 2240 && var(11) = 1
trigger7 = stateno = 2680 && var(11) = 1

;---------------------------------------------------------------------------
;Chakra Get ON !!
[State -1, Chakra ON]
type = ChangeState
value = 1450
triggerall = command = "a" && command = "y" && palno <= 6 && var(7) != 1 && power >= 1000 && var(9) != 1 && var(10) != 1 && var(11) != 1 && var(12) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Chakra Increase !!
[State -1, Chakra Increase]
type = ChangeState
value = 1460
triggerall = command = "holdb" && command = "holdx" && palno <= 6 && var(7) != 1 && var(10) != 1 && var(12) != 1 && power < 3000
trigger1 = statetype != A && ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "y"
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

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start" && palno <= 6&& var(7) != 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = palno <= 6 && var(7) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking




;---------------------------------------------------------------------------
;                    C U R S E  S E A L  F O R M 
;---------------------------------------------------------------------------
;----------------------------Hyper Attacks.---------------------------------
;---------------------------------------------------------------------------
;Special Flute
[State -1, Special Flute]
type = ChangeState
value = 3000
triggerall = command = "Special_FluteCS" && palno > 6 && var(7) != 1 
triggerall = power >= 1000 || var(11) = 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;mateki:mugen onsa
[State -1, mateki - mugen onsa]
type = ChangeState
value = 3100
triggerall = command = "mateki" && palno > 6 && var(11) = 1 && var(7) != 1 
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;MAX HIDDEN POWER CURSE SEAL!!!!
[State -1, MAX HIDDEN POWER]
type = ChangeState
value = 3200
triggerall = command = "hiddenspcs" && palno > 6 && var(9) = 1 && var(11) = 1 && var(7) != 1 && life <= 250
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;SPECIAL ATTACK CS!!!!
[State -1, SPECIAL ATTACK CS]
type = ChangeState
value = 3300
triggerall = command = "Special_Attackcs" && palno > 6 && var(9) = 1 && var(11) = 1 && var(7) != 1 
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;---------------------------Specials Attacks.-------------------------------
;---------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 1500
triggerall = command = "teleportcs" && power >= 200 && palno > 6 && var(7) != 1
trigger1 = statetype != A && ctrl 

;---------------------------------------------------------------------------
;Combo
[State -1, Combo]
type = ChangeState
value = 1600
triggerall = command = "combocs" && palno > 6 && var(7) != 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Anti-Teleport
[State -1, Anti-Teleport]
type = ChangeState
value = 1700
triggerall = command = "antiteleportcs" && palno > 6 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Wall Walk
[State -1, Wall Walk]
type = ChangeState
value = 1800
triggerall = command = "WallWalkCS" && palno > 6 && var(7) != 1
trigger1 = statetype = A && BackEdgeDist < 10 && ctrl 
trigger1 = ScreenPos Y = [0,200]

;---------------------------------------------------------------------------
;CS Flute
[State -1, CS Flute]
type = ChangeState
value = 1900
triggerall = command = "fluteCS" && palno > 6 && var(7) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Chakra Get ON !!
[State -1, Chakra ON]
type = ChangeState
value = 1950
triggerall = command = "a" && command = "y" && palno > 6 && var(7) != 1 && power >= 1000 && var(9) != 1 && var(10) != 1 && var(11) != 1 && var(12) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Chakra Increase !!
[State -1, Chakra Increase]
type = ChangeState
value = 1960
triggerall = command = "holdb" && command = "holdx" && palno > 6 && var(7) != 1 && var(10) != 1 && var(12) != 1 && power < 3000 
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = palno > 6 && var(7) != 1
triggerall = command = "y"
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

;---------------------------------------------------------------------------
;----------------------------Normal Attacks.--------------------------------
;---------------------------------------------------------------------------
;Commands to operate 2ｺ form of tayuya.
;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start" && palno > 6 && var(7) != 1
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = palno > 6 && var(7) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = palno > 6 && var(7) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 231
triggerall = palno > 6 && var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = palno > 6 && var(7) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 401
triggerall = palno > 6 && var(7) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = palno > 6 && var(7) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 431
triggerall = palno > 6 && var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 441
triggerall = palno > 6 && var(7) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 1600 && animelemtime(14) > 0 && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = palno > 6 && var(7) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = palno > 6 && var(7) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 631
triggerall = palno > 6 && var(7) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = palno > 6 && var(7) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking





;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; The following commands are use for transformation only. Do not confuse with-
; the commands lines above. The code 2800 is the statedef itｴs come from.
; VarSet acivated is var(7) = 1.
;---------------------------------------------------------------------------
;                C U R S E  S E A L  F O R M  C O D E  2 8 0 0
;---------------------------------------------------------------------------
;----------------------------Hyper Attacks.---------------------------------
;---------------------------------------------------------------------------
;Special Flute
[State -1, Special Flute]
type = ChangeState
value = 3000
triggerall = command = "Special_FluteCS" && var(7) = 1 
triggerall = power >= 1000 || var(11) = 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;mateki:mugen onsa
[State -1, mateki - mugen onsa]
type = ChangeState
value = 3100
triggerall = command = "mateki" && var(11) = 1 && var(7) = 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;MAX HIDDEN POWER CURSE SEAL!!!!
[State -1, MAX HIDDEN POWER]
type = ChangeState
value = 3200
triggerall = command = "hiddenspcs" && var(11) = 1 && var(7) = 1  && var(9) = 1 && life <= 250
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;SPECIAL ATTACK CS!!!!
[State -1, SPECIAL ATTACK CS]
type = ChangeState
value = 3300
triggerall = command = "Special_Attackcs" && var(9) = 1 && var(11) = 1 && var(7) = 1 
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;---------------------------Specials Attacks.-------------------------------
;---------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 1500
triggerall = command = "teleportcs" && power >= 200 && var(7) = 1
trigger1 = statetype != A && ctrl 

;---------------------------------------------------------------------------
;Combo
[State -1, Combo]
type = ChangeState
value = 1600
triggerall = command = "combocs" && var(7) = 1
trigger1 = statetype != A && ctrl
trigger2 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;Anti-Teleport
[State -1, Anti-Teleport]
type = ChangeState
value = 1700
triggerall = command = "antiteleportcs" && var(7) = 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Wall Walk
[State -1, Wall Walk]
type = ChangeState
value = 1800
triggerall = command = "WallWalkCS" && var(7) = 1
trigger1 = statetype = A && BackEdgeDist < 10 && ctrl 
trigger1 = ScreenPos Y = [0,200]

;---------------------------------------------------------------------------
;CS Flute
[State -1, CS Flute]
type = ChangeState
value = 1900
triggerall = command = "fluteCS" && var(7) = 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Chakra Get ON !!
[State -1, Chakra ON]
type = ChangeState
value = 1950
triggerall = command = "a" && command = "y" && var(7) = 1 && power >= 1000 && var(9) != 1 && var(10) != 1 && var(11) != 1 && var(12) != 1
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Chakra Increase !!
[State -1, Chakra Increase]
type = ChangeState
value = 1960
triggerall = command = "holdb" && command = "holdx" && var(7) = 1 && var(10) != 1 && var(12) != 1 && power < 3000 
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = var(7) = 1
triggerall = command = "y"
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

;---------------------------------------------------------------------------
;----------------------------Normal Attacks.--------------------------------
;---------------------------------------------------------------------------
;Commands to operate 2ｺ form of tayuya.
;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start" && var(7) = 1
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = var(7) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = var(7) = 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 231
triggerall = var(7) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = var(7) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 401
triggerall = var(7) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = var(7) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 431
triggerall = var(7) = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 441
triggerall = var(7) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 1600 && animelemtime(14) > 0 && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = var(7) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = var(7) = 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 631
triggerall = var(7) = 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = var(7) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

