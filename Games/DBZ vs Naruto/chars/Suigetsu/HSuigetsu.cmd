[Remap]
x = x
y = y
z = z
a = a
b = b
c = c

[command]
name = "Jutsu"
command = ~D,B,a
time = 15

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "Suikoudan"
command = /y
time = 1

[command]
name = "Daibakafu"
command = ~D,F,a
time = 15

[Defaults]

[command]
name = "Suiryudan"
command = ~D,F,x
time = 15

command.time = 30

[command]
name = "Bunshin"
command = ~D,F,b
time = 15

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "pri"
command = ~F, D, DB, x+y

[Command]
name = "pri"
command = ~F, D, DB, x+z

[Command]
name = "pri"
command = ~F, D, DB, y+z

[Command]
name = "mist"
command = ~D, DF, F,D, DF, F, x

[Command]
name = "mist"
command = ~D, DF, F,D, DF, F, y

[Command]
name = "mist"
command = ~D, DF, F,D, DF, F, z

[Command]
name = "dra"
command = ~D, DB, B,D, DB, B, x

[Command]
name = "dra"
command = ~D, DB, B,D, DB, B, y

[Command]
name = "dra"
command = ~D, DB, B,D, DB, B, z

[Command]
name = "bfw"
command = ~D, DF, F,D, DF, F, a

[Command]
name = "bfw"
command = ~D, DF, F,D, DF, F, b

[Command]
name = "bfw"
command = ~D, DF, F,D, DF, F, c
;-| Special Motions |------------------------------------------------------

[Command] ;Quarter circle forward + x
name = "qcb_a"
command = ~D, DB, B, a

[Command] ;Quarter circle forward + x
name = "qcb_b"
command = ~D, DB, B, b

[Command] ;Quarter circle forward + x
name = "qcb_c"
command = ~D, DB, B, c

[Command] ;Quarter circle forward + x
name = "qcf_x"
command = ~D, DF, F, x

[Command] ;Quarter circle forward + x
name = "qcf_y"
command = ~D, DF, F, y

[Command] ;Quarter circle forward + x
name = "qcf_z"
command = ~D, DF, F, z

[Command] ;Quarter circle forward + x
name = "qcb_x"
command = ~D, DB, B, x

[Command] ;Quarter circle forward + x
name = "qcb_y"
command = ~D, DB, B, y

[Command] ;Quarter circle forward + x
name = "qcb_z"
command = ~D, DB, B, z
;---|AI Commands|-----------------------------------------------------------
[Command]
name = "AI1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

[Command]
name = "AI20"
command = D,D,D,F,F,F,a,b,c,x,y,z
time = 1

[Command]
name = "AI21"
command = D,D,D,F,F,F,a+b+c,x+y+z
time = 1

[Command]
name = "AI22"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI23"
command = D,D,D,F,F,UF,a,b+c+x+y+z
time = 1

[Command]
name = "AI24"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "AI25"
command = D,D,D,F,F,DF,a,b,c+x+y+z
time = 1

[Command]
name = "AI26"
command = D,D,D,F,F,B,a+b,c+x,y+z
time = 1

[Command]
name = "AI27"
command = D,D,D,F,F,DB,a,b+c+x,y+z
time = 1

[Command]
name = "AI28"
command = D,D,D,F,F,UB,a,b+c+x+y,z
time = 1

[Command]
name = "AI29"
command = DF,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI30"
command = B,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI31"
command = B,B,BD,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI32"
command = D,F,F,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI33"
command = DF,D,DF,UF,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI34"
command = D,D,D,F,DB,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI35"
command = D,D,UF,DF,UB,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI36"
command = D,DF,DF,DF,DF,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI37"
command = D,D,DB,UF,DF,UF,a+b+c+x,y,z
time = 1

[Command]
name = "AI38"
command = F,U,F,F,F,F,a,b+c,x,y,z
time = 1

[Command]
name = "AI39"
command = DF,UF,D,DF,U,F,a+b,c+x,y,z
time = 1

[Command]
name = "AI40"
command = D,D,D,D,F,D,a+b,c,x,y+z
time = 1
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
name = "fwd"
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up"
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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;===========================================================================

[Statedef -1]
;--------------------------------------------------------------------------
;Suikoudan
[State -1, Suikoudan]
type = ChangeState
value = 3600
trigger1 = command = "Suikoudan"
trigger1 = statetype = S
trigger1 = ctrl
;--------------------------------------------------------------------------
; Suirou no Jutsu
[State -1, Suirou no Jutsu]
type = ChangeState
value = 3300
triggerall = command = "Jutsu"
triggerall = !ishelper(15000)
triggerall = power >= 1000
trigger1 = statetype = S | statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4)>0
trigger3 = stateno = 210 && animelemtime(3)>0
trigger4 = stateno = 220 && animelemtime(3)>0
trigger5 = stateno = 230 && animelemtime(3)>0
;--------------------------------------------------------------------------
; Daibakafu
[State -1, Daibakafu]
type = ChangeState
value = 2030
triggerall = command = "Daibakafu"
triggerall = !ishelper(15000)
triggerall = power >= 2000
trigger1 = statetype = S | statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4)>0
trigger3 = stateno = 210 && animelemtime(3)>0
trigger4 = stateno = 220 && animelemtime(3)>0
trigger5 = stateno = 230 && animelemtime(3)>0
;---------------------------------------------------------------------------
; Suiryudan no Jutsu
[State -1, Suiryudan no Jutsu]
type = ChangeState
value = 2010
triggerall = power >= 1000
triggerall = !ishelper(15000)
triggerall = command = "Suiryudan"
trigger1 = statetype = S | statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4)>0
trigger3 = stateno = 210 && animelemtime(3)>0
trigger4 = stateno = 220 && animelemtime(3)>0
trigger5 = stateno = 230 && animelemtime(3)>0
trigger6 = stateno = 240 && animelemtime(3)>0
trigger7 = stateno = 250 && animelemtime(4)>0
;---------------------------------------------------------------------------
; Mizu Bunshin
[State -1, Mizu Bunshin]
type = ChangeState
value = 1020
triggerall = var(20) = 0
triggerall = !ishelper(15000)
triggerall = numhelper(15000) < 2
triggerall = command = "Bunshin"
trigger1 = statetype = S | statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4)>0
trigger3 = stateno = 210 && animelemtime(3)>0
trigger4 = stateno = 220 && animelemtime(3)>0
trigger5 = stateno = 230 && animelemtime(3)>0
;---------------------------------------------------------------------------
; Teleporte
[State -1, Teleporte]
type = ChangeState
value = IfElse(command = "qcb_x",1000,IfElse(command = "qcb_y",1002,1004))
triggerall = var(20) = 0
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4)>0
trigger3 = stateno = 210 && animelemtime(3)>0
trigger4 = stateno = 220 && animelemtime(3)>0
trigger5 = stateno = 230 && animelemtime(3)>0
;---------------------------------------------------------------------------
; Chakra Charge
[State -1, Chakra Charge]
type = ChangeState
value = 1030
triggerall = power < 3000
triggerall = var(20) = 0
trigger1 = command = "a" && command = "x"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Evade]
type = ChangeState
value = IfElse(command = "holdfwd" || command = "holdback",(IfElse(command = "holdfwd",23,24)),22)
triggerall = var(20) = 0
trigger1 = command = "a" && command = "x"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(20) = 0
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

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(20) = 0
triggerall = var(43) = 0
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Heavy Sword attack]
type = ChangeState
value = 6000
triggerall = var(20) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && animelemtime(3)>0
trigger3 = stateno = 230 && animelemtime(3)>0
trigger4 = stateno = 240 && animelemtime(3)>0
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(20) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && animelemtime(4)>0
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(20) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light kick]
type = ChangeState
value = 230
triggerall = var(20) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Crouch Light kick]
type = ChangeState
value = 400
triggerall = var(20) = 0
triggerall = command = "a" || command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;----|AI|-------------------------------------------------------------------
[State -1, Activate AI]
type = VarSet
triggerall = var(20) != 1 && !ishelper(15000)
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
;----------------------------------------------------------------------------
[State -1, Kill AI]
type = VarSet
triggerall = !ishelper(15000)
triggerall = var(20) = 1
trigger1 = p2life < 0
trigger2 = life < 0
value = 0
;----------------------------------------------------------------------------
;light punch
[State -1, AI Run]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 20
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X > 80
trigger1 = ctrl = 1
value = 100
;----------------------------------------------------------------------------
;light punch
[State -1, AI Hop Back]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 150
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = Life = [100,400]
triggerall = P2bodydist X < 60
trigger1 = ctrl = 1
value = 105
;----------------------------------------------------------------------------
;light punch
[State -1, AI Evade]
type = ChangeState
triggerall = !ishelper(15000)
triggerall = var(20) = 1
triggerall = random <= 200
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 50
triggerall = p2movetype = A
trigger1 = ctrl = 1
value = IfElse(random < 500,22,IfElse(Random < 500,23,24))
; ==========================
[State -1,AI Standing Guard]
type = ChangeState
triggerall = !Ishelper(15000)
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C ;
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 500
value = 130

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1,AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = !Ishelper(15000)
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
triggerall = !Ishelper(15000)
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 500
value = 131

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1,AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = !Ishelper(15000)
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

;----------------------------------------------------------------------------
;light punch
[State -1, AI light punch]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 30
trigger1 = ctrl = 1
value = 200
;----------------------------------------------------------------------------
;medium punch
[State -1, AI medium punch]
type = ChangeState
triggerall = random <= 80
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 30
trigger1 = ctrl = 1
trigger2 = stateno = 200 && animelemtime(4)>0
value = 210
;----------------------------------------------------------------------------
;heavy punch
[State -1, AI heavy Attack]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 50
triggerall = random <=30
trigger1 = ctrl = 1
trigger2 = animelemtime(3)>0 && stateno = 210
value = 220

;----------------------------------------------------------------------------
;light punch
[State -1, AI light kick]
type = ChangeState
triggerall = var(20) = 1
triggerall = random <= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 30
trigger1 = ctrl = 1
value = 230
;----------------------------------------------------------------------------
;Teleporte
[State -1, AI Teleporte]
type = ChangeState
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0 && p2dist X > 90
trigger1 = random < 90
value = IfElse(random < 500,1000,IfElse(random < 500,1002,1004))

;--------------------------------------------------------------------------
;Suirou no Jutsu
[State -1, AI Suirou no Jutsu]
type = ChangeState
value = 2020
triggerall = !ishelper(15000)
triggerall = power >= 3000
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0 && p2dist X < 50
trigger1 = random < 50
;---------------------------------------------------------------------------
;Suiryudan no Jutsu
[State -1, AI Suiryudan no Jutsu]
type = ChangeState
value = 2010
triggerall = power >= 1000
triggerall = !ishelper(15000)
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0 && p2dist X > 60
trigger1 = random < 100
;---------------------------------------------------------------------------
;Daibakafu
[State -1, AI Daibakafu]
type = ChangeState
value = 2030
triggerall = power >= 2000
triggerall = !ishelper(15000)
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0 && p2dist X > 80
trigger1 = random < 100
;---------------------------------------------------------------------------
;Mizu Bunshin
[State -1, AI Mizu Bunshin]
type = ChangeState
value = 1020
triggerall = !ishelper(15000)
triggerall = ctrl = 1
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0 && p2dist X > 80
trigger1 = random < 10
;---|Bunshins Holdback and stuff|---------------------------------------------
[State -1, Mizu Bunshin 0]
type = PlayerPush
trigger1 = 1 && Ishelper(15000)
value = 1

[State -1, Mizu Bunshin 1]
type = AssertSpecial
trigger1 = 1 && Ishelper(15000)
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State -1, Mizu Bunshin 2]
type = ChangeState
triggerall = ishelper(15000)
triggerall = stateno != 15001
triggerall = stateno != 15000
trigger1 = var(15) > 50
trigger2 = var(16) > 600
trigger3 = winko
trigger4 = (root, life < 0)
value = 15001
ctrl = 0

[State -1, Mizu Bunshin 3]
type = VarSet
trigger1 = 1 && ishelper(15000)
v = 20   ;fv = 10
value = 1

[State -1, Mizu Bunshin 4]
type = ScreenBound
trigger1 = 1 && ishelper(15000)
value = 1
movecamera = 1,1

[State -1, Mizu Bunshin 5]
type = Turn
trigger1 = p2dist x < -30 && ishelper(15000) && ctrl = 1

[State -1, Mizu Bunshin 6]
type = AttackMulSet
triggerall = ishelper(15000)
trigger1 = 1 && (parent,numhelper(15000) = 1)
time = 2
value = 0.1

[State -1, Mizu Bunshin 6]
type = AttackMulSet
triggerall = ishelper(15000)
trigger1 = 1 && (parent,numhelper(15000) = 2)
time = 2
value = 0.03

[State -1, Mizu Bunshin 7]
type = VarAdd
trigger1 = IsHelper(15000)
v = 16   ;fv = 10
value = 1
