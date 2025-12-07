[Command]
name = "cpu1"
command = U, D, F
time = 1

[Command]
name = "cpu2"
command = U, B, F
time = 1

[Command]
name = "cpu3"
command = U, D, D
time = 1

[Command]
name = "cpu4"
command = F, B, U
time = 1

[Command]
name = "cpu5"
command = U, F, U, B
time = 1

[Command]
name = "cpu6"
command = U, D, B
time = 1

[Command]
name = "cpu7"
command = F, F, B
time = 1

[Command]
name = "cpu8"
command = U, D, U
time = 1

[Command]
name = "cpu9"
command = F, B, B
time = 1

[Command]
name = "cpu10"
command = F, F, B, B
time = 1

[Command]
name = "cpu11"
command = U, U, F
time = 1

[Command]
name = "cpu12"
command = U, B, B
time = 1

[Command]
name = "cpu13"
command = U, B, F, F
time = 1

[Command]
name = "cpu14"
command = U, F, B, U
time = 1

[Command]
name = "cpu15"
command = U, B, F, U
time = 1

[Command]
name = "cpu16"
command = U, B, B, B
time = 1

[Command]
name = "cpu17"
command = U, D, B, F
time = 1

[Command]
name = "cpu18"
command = U, D, B, D
time = 1

[Command]
name = "cpu19"
command = U, D, F, U
time = 1

[Command]
name = "cpu20"
command = U, D, U, B
time = 1

[Command]
name = "cpu21"
command = U, D, F, F
time = 1

[Command]
name = "cpu22"
command = F, F, F, F
time = 1

[Command]
name = "cpu23"
command = U, U, U, D
time = 1

[Command]
name = "cpu24"
command = B, B, B
time = 1

[Command]
name = "cpu25"
command = D, D, D, D
time = 1

[Command]
name = "cpu26"
command = D, D, D
time = 1

[Command]
name = "cpu27"
command = F, F, F
time = 1

[Command]
name = "cpu28"
command = U, U, U
time = 1

[Command]
name = "cpu29"
command = U, U, B, B
time = 1

[Command]
name = "cpu30"
command = D, D, F, F
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

[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1
;===========================================================================

[Statedef -1]

[State -1, AI TRIGGER]
type = Varset
triggerall = RoundState = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
v = 7
value = 1

; ;===========================================================================
;----------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(7) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Triangle Jump]
type = ChangeState
value = 1002
trigger1 = command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 1
trigger1 = vel X <= 1
trigger1 = pos Y <= -40 && stateno = 50

;---------------------------------------------------------------------------
;Punch 1
[State -1, Punch 1]
type = ChangeState
value = 200
triggerall = var(7) != 1
triggerall = stateno != 100
triggerall = command = "a"
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Punch 2
[State -1, Punch 2]
type = ChangeState
value = 210
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = movecontact
trigger1 = statetype = S

;Punch 3
[State -1, Punch 3]
type = ChangeState
value = 220
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = movecontact
trigger1 = statetype = S
trigger2 = stateno = 100

;Punch 4
[State -1, Punch 4]
type = ChangeState
value = 400
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = p2bodydist x < 20
triggerall = movetype != H
trigger1 = (statetype = S) && ctrl

;Jump Punch
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Punch 2
[State -1, Jump Punch 2]
type = ChangeState
value = 610
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Counter
[State -1, Counter]
type = ChangeState
value = 300
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = power >= 500
triggerall = stateno != 300
triggerall = statetype != A
trigger1 = movetype = H && stateno = [5000,5001]
trigger2 = stateno = [120,155]

;---------------------------------------------------------------------------
;Throw Kunai/Shuriken
[State -1, Throw Kunai/Shuriken]
type = ChangeState
value = 350
triggerall = var(7) != 1
triggerall = var(0) < 15
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl

;Throw Kunai/Shuriken
[State -1, Throw Kunai/Shuriken]
type = ChangeState
value = 650
triggerall = var(7) != 1
triggerall = var(0) < 15
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Teleport ground
[State -1, Teleport Ground]
type = ChangeState
value = 1000
triggerall = var(7) != 1
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

;Teleport air
[State -1, Teleport Air]
type = ChangeState
value = 1001
triggerall = var(7) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chakra Charge
[State -1, Chakra Charge]
type = ChangeState
value = 1100
triggerall = var(7) != 1
triggerall = power < powermax
triggerall = command = "hold_c"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Special - Mushi Barrier
[State -1, Special - Mushi Barrier]
type = ChangeState
value = 2000
triggerall = var(7) != 1
triggerall = power >= 2000
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;Special 2 - Mushi Stun
[State -1, Special 2 - Mushi Stun]
type = ChangeState
value = 2100
triggerall = var(7) != 1
triggerall = power >= 1000
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl

;Special 3 - Mushi Barrage
[State -1, Special 3 - Mushi Barrage]
type = ChangeState
value = 2200
triggerall = var(7) != 1
triggerall = power >= 3000
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;Special 4 - Mushi Drill
[State -1, Special 4 - Mushi Drill]
type = ChangeState
value = 2300
triggerall = var(7) != 1
triggerall = power >= 1500
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl

;Special 5 - Mushi Hand
[State -1, Special 5 - Mushi Hand]
type = ChangeState
value = 2400
triggerall = var(7) != 1
triggerall = power >= 2000
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;Special 6 - Mushi Shield
[State -1, Special 6 - Mushi Shield]
type = ChangeState
value = 2500
triggerall = var(7) != 1
triggerall = power >= 1000
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl

;Special 7 - Mushi Bunshin
[State -1, Special 7 - Mushi Bunshin]
type = ChangeState
value = 2600
triggerall = var(7) != 1
triggerall = power >= 1000
triggerall = numhelper(2601) < 2
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;--------------------------- Artificial Inteligence ------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; AI Run Fwd
[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(7) = 1
triggerall = !WIn
triggerall = roundstate = 2
triggerall = random <= 60
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X > 10
trigger1 = ctrl = 1

; AI Run Back
[State -1, AI Run Back]
type = ChangeState
triggerall = var(7) = 1
triggerall = !WIn
triggerall = roundstate = 2
triggerall = random <= 150
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = Life = [100,400]
triggerall = P2bodydist X < 50
trigger1 = ctrl = 1
value = 105

;---------------------------------------------------------------------------
; AI Punch 1
[State -1, AI Punch 1]
type = ChangeState
value = 200
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 200
triggerall = p2Bodydist X <= 10
triggerall = statetype != A
triggerall = Movetype != H
trigger1 = ctrl

; AI Punch 4
[State -1, AI Punch 4]
type = ChangeState
value = 400
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 100
triggerall = p2Bodydist X <= 10
triggerall = statetype != A
triggerall = Movetype != H
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

; AI Throw
[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 50
triggerall = p2bodydist x < 10
triggerall = movetype != H
trigger1 = (statetype = S) && ctrl

; AI Jump Punch
[State -1, AI Jump Punch]
type = ChangeState
value = 600
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 200
triggerall = p2Bodydist X <= 10
triggerall = statetype = A
triggerall = Movetype != H
trigger1 = ctrl

; AI Jump Punch 2
[State -1, AI Jump Punch 2]
type = ChangeState
value = 610
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 200
triggerall = p2Bodydist X <= 10
triggerall = statetype = A
triggerall = Movetype != H
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; AI Counter
[State -1, AI Counter]
type = ChangeState
value = 300
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = P2Life > 0
triggerall = random <= 10
triggerall = p2Bodydist X <= 20
triggerall = StateType != A  && Power >= 500
triggerall = stateno != 300
trigger1 = movetype = H && stateno = [5000,5001]
trigger2 = stateno = [120,155]

;---------------------------------------------------------------------------
; AI Throw Kunai/Shuriken
[State -1, AI Throw Kunai/Shuriken]
type = ChangeState
value = 350
triggerall = var(7) = 1
triggerall = !WIn
triggerall = roundstate = 2
triggerall = var(0) < 15
triggerall = P2Life > 0 && p2bodydist X >= 100
triggerall = ctrl = 1
trigger1 = statetype != A
trigger1 = movetype != A
trigger1 = random <= 100

; AI Throw Kunai/Shuriken
[State -1, AI Throw Kunai/Shuriken]
type = ChangeState
value = 650
triggerall = var(7) = 1
triggerall = !WIn
triggerall = roundstate = 2
triggerall = var(0) < 15
triggerall = P2Life > 0 && p2bodydist X <= 100
triggerall = ctrl = 1
trigger1 = statetype = A
trigger1 = movetype != A
trigger1 = random <= 100

;---------------------------------------------------------------------------
; AI Teleport Ground
[State -1, AI Teleport Ground]
type = ChangeState
value = 1000
triggerall = var(7) = 1
triggerall = !WIn
triggerall = roundstate = 2
triggerall = P2Life > 0
trigger1 = p2dist X = [-1,50]
trigger1 = statetype != A
trigger1 = p2movetype = A
trigger1 = movetype != A
trigger1 = ctrl
trigger1 = random <= 50

; AI Teleport Air
[State -1, AI Teleport Air]
type = ChangeState
value = 1001
triggerall = var(7) = 1
triggerall = !WIn
triggerall = roundstate = 2
triggerall = P2Life > 0
trigger1 = p2dist X = [-1,50]
trigger1 = statetype = A
trigger1 = p2movetype = A
trigger1 = movetype != A
trigger1 = ctrl
trigger1 = random <= 50

;---------------------------------------------------------------------------
; AI Chakra Charge
[State -1, AI Chakra Charge]
type = ChangeState
value = 1100
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = power < powermax
triggerall = p2bodydist X > 150
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random <= 200

;---------------------------------------------------------------------------
; AI Special - Mushi Barrier
[State -1, AI Special - Mushi Barrier]
type = ChangeState
value = 2000
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = Power >= 2000
triggerall = p2bodydist X < 100
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random >= 75 && random <= 100

; AI Special 2 - Mushi Stun
[State -1, AI Special 2 - Mushi Stun]
type = ChangeState
value = 2100
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random >= 25 && random <= 50

; AI Special 3 - Mushi Barrage
[State -1, AI Special 3 - Mushi Barrage]
type = ChangeState
value = 2200
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = p2bodydist X < 200 && p2bodydist X > 50
triggerall = Power >= 3000
triggerall = statetype != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random >= 125 && random <= 100

; AI Special 4 - Mushi Drill
[State -1, AI Special 4 - Mushi Drill]
type = ChangeState
value = 2300
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = p2bodydist X > 100
triggerall = Power >= 1500
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random >= 50 && random <= 75

; AI Special 5 - Mushi Hand
[State -1, AI Special 5 - Mushi Hand]
type = ChangeState
value = 2400
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = p2bodydist X > 50
triggerall = power >= 2000
triggerall = statetype != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random >= 75 && random <= 100

; AI Special 6 - Mushi Shield
[State -1, AI Special 6 - Mushi Shield]
type = ChangeState
value = 2500
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = p2bodydist X > 50 && p2bodydist X < 150
triggerall = power >= 1000
triggerall = statetype != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random >= 25 && random <= 50

; AI Special 7 - Mushi Bunshin
[State -1, AI Special 7 - Mushi Bunshin]
type = ChangeState
value = 2600
triggerall = var(7) = 1
triggerall = !Win
triggerall = roundstate = 2
triggerall = p2bodydist X > 100
triggerall = power >= 1000
triggerall = numhelper(2601) < 2
triggerall = statetype != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = random >= 25 && random <= 50

;---------------------------------------------------------------------------
