  in a,($dc)
  ld hl,$c75e
  ld b,$03
  ld a,$eb
  out ($3e),a
  ld a,(hl)
  ld ($c000),a
  out ($3e),a
  exx
  call $c736
  call $c731
  call $c72c
  exx
  inc hl
  djnz $c707
  xor a
  ld ($c000),a
  ld a,$eb
  out ($3e),a
  ld a,$e3
  out ($3e),a
  ret
  ld hl,$1ff0
  jr $c739
  ld hl,$3ff0
  jr $c739
  ld hl,$7ff0
  ld de,$c260
  ld bc,$0010
  ldir
  ld hl,$c756
  ld de,$c260
  ld b,$08
  ld a,(de)
  cp (hl)
  ret nz
  inc hl
  inc de
  djnz $c749
  call $c761
  pop af
  jr $c723
  ld d,h
  ld c,l
  ld d,d
  jr nz,$c7ae
  ld b,l
  ld b,a
  ld b,c
  res 5,e
  ld l,e
  ld de,$0000
  ld a,($c26f)
  ld c,a
  and $f0
  cp $40
  jr z,$c776
  ld hl,($c270)
  inc hl
  ld ($c26a),hl
  ret
  ld a,c
  sub $0a
  and $0f
  push af
  ld hl,$c7c4
  ld c,a
  ld b,$00
  add hl,bc
  ld b,(hl)
  ld c,$f0
  ld hl,$0000
  call $c7b6
  ld ($c270),de
  pop af
  sub $04
  ret c
  ld c,a
  ld b,$00
  ld hl,$c7cd
  add hl,bc
  ld b,(hl)
  ld a,$02
  push bc
  ld ($ffff),a
  inc a
  push af
  call $c7b0
  pop af
  pop bc
  djnz $c79e
  ld ($c270),de
  ret
  ld bc,$4000
  ld hl,$8000
  ld a,e
  add a,(hl)
  ld e,a
  ld a,d
  adc a,$00
  ld d,a
  inc hl
  dec bc
  ld a,b
  or c
  jr nz,$c7b6
  ret
  rra
  ccf
  ld a,a
  cp a
  ld a,a
  ld a,a
  ld a,a
  ld a,a
  ld a,a
  ld (bc),a
  ld b,$0e
  ld e,$3e
  ex de,hl
  out ($3e),a
  ld a,($c000)
  out ($3e),a
  jp $0000
