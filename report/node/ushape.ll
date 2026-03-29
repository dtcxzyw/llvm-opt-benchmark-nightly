begin_hunk_0
  store i16 %i.el, ptr %i.ef, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.em = extractelement <8 x i1> %i.ei, i64 1
  br i1 %i.em, label %pred.store.if437, label %pred.store.continue438

end_hunk_0
begin_hunk_1
  store i16 %i.eq, ptr %i.eo, align 2
  br label %pred.store.continue438

pred.store.continue438:                           ; preds = %pred.store.continue, %pred.store.if437
  %i.er = extractelement <8 x i1> %i.ei, i64 2
  br i1 %i.er, label %pred.store.if439, label %pred.store.continue440

end_hunk_1
begin_hunk_2
  store i16 %i.ev, ptr %i.et, align 2
  br label %pred.store.continue440

pred.store.continue440:                           ; preds = %pred.store.continue438, %pred.store.if439
  %i.ew = extractelement <8 x i1> %i.ei, i64 3
  br i1 %i.ew, label %pred.store.if441, label %pred.store.continue442

end_hunk_2
begin_hunk_3
  store i16 %i.fa, ptr %i.ey, align 2
  br label %pred.store.continue442

pred.store.continue442:                           ; preds = %pred.store.continue440, %pred.store.if441
  %i.fb = extractelement <8 x i1> %i.ei, i64 4
  br i1 %i.fb, label %pred.store.if443, label %pred.store.continue444

end_hunk_3
begin_hunk_4
  store i16 %i.ff, ptr %i.fd, align 2
  br label %pred.store.continue444

pred.store.continue444:                           ; preds = %pred.store.continue442, %pred.store.if443
  %i.fg = extractelement <8 x i1> %i.ei, i64 5
  br i1 %i.fg, label %pred.store.if445, label %pred.store.continue446

end_hunk_4
begin_hunk_5
  store i16 %i.fk, ptr %i.fi, align 2
  br label %pred.store.continue446

pred.store.continue446:                           ; preds = %pred.store.continue444, %pred.store.if445
  %i.fl = extractelement <8 x i1> %i.ei, i64 6
  br i1 %i.fl, label %pred.store.if447, label %pred.store.continue448

end_hunk_5
begin_hunk_6
  store i16 %i.fp, ptr %i.fn, align 2
  br label %pred.store.continue448

pred.store.continue448:                           ; preds = %pred.store.continue446, %pred.store.if447
  %i.fq = extractelement <8 x i1> %i.ei, i64 7
  br i1 %i.fq, label %pred.store.if449, label %pred.store.continue450

end_hunk_6
begin_hunk_7
  store i16 %i.fu, ptr %i.fs, align 2
  br label %pred.store.continue450

pred.store.continue450:                           ; preds = %pred.store.continue448, %pred.store.if449
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !8
end_hunk_7
begin_hunk_8
  store i16 %i.gg, ptr %i.fy, align 2
  br label %pred.store.continue463

pred.store.continue463:                           ; preds = %vector.body458, %pred.store.if462
  %i.gh = extractelement <8 x i1> %i.gc, i64 1
  br i1 %i.gh, label %pred.store.if464, label %pred.store.continue465

end_hunk_8
begin_hunk_9
  store i16 %i.gl, ptr %i.gj, align 2
  br label %pred.store.continue465

pred.store.continue465:                           ; preds = %pred.store.continue463, %pred.store.if464
  %i.gm = extractelement <8 x i1> %i.gc, i64 2
  br i1 %i.gm, label %pred.store.if466, label %pred.store.continue467

end_hunk_9
begin_hunk_10
  store i16 %i.gq, ptr %i.go, align 2
  br label %pred.store.continue467

pred.store.continue467:                           ; preds = %pred.store.continue465, %pred.store.if466
  %i.gr = extractelement <8 x i1> %i.gc, i64 3
  br i1 %i.gr, label %pred.store.if468, label %pred.store.continue469

end_hunk_10
begin_hunk_11
  store i16 %i.gv, ptr %i.gt, align 2
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.continue467, %pred.store.if468
  %i.gw = extractelement <8 x i1> %i.gc, i64 4
  br i1 %i.gw, label %pred.store.if470, label %pred.store.continue471

end_hunk_11
begin_hunk_12
  store i16 %i.ha, ptr %i.gy, align 2
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.continue469, %pred.store.if470
  %i.hb = extractelement <8 x i1> %i.gc, i64 5
  br i1 %i.hb, label %pred.store.if472, label %pred.store.continue473

end_hunk_12
begin_hunk_13
  store i16 %i.hf, ptr %i.hd, align 2
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.continue471, %pred.store.if472
  %i.hg = extractelement <8 x i1> %i.gc, i64 6
  br i1 %i.hg, label %pred.store.if474, label %pred.store.continue475

end_hunk_13
begin_hunk_14
  store i16 %i.hk, ptr %i.hi, align 2
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.continue473, %pred.store.if474
  %i.hl = extractelement <8 x i1> %i.gc, i64 7
  br i1 %i.hl, label %pred.store.if476, label %pred.store.continue477

end_hunk_14
begin_hunk_15
  store i16 %i.hp, ptr %i.hn, align 2
  br label %pred.store.continue477

pred.store.continue477:                           ; preds = %pred.store.continue475, %pred.store.if476
  %i.hq = extractelement <8 x i1> %i.gd, i64 0
  br i1 %i.hq, label %pred.store.if478, label %pred.store.continue479

end_hunk_15
begin_hunk_16
  store i16 %i.hu, ptr %i.hs, align 2
  br label %pred.store.continue479

pred.store.continue479:                           ; preds = %pred.store.continue477, %pred.store.if478
  %i.hv = extractelement <8 x i1> %i.gd, i64 1
  br i1 %i.hv, label %pred.store.if480, label %pred.store.continue481

end_hunk_16
begin_hunk_17
  store i16 %i.hz, ptr %i.hx, align 2
  br label %pred.store.continue481

pred.store.continue481:                           ; preds = %pred.store.continue479, %pred.store.if480
  %i.ia = extractelement <8 x i1> %i.gd, i64 2
  br i1 %i.ia, label %pred.store.if482, label %pred.store.continue483

end_hunk_17
begin_hunk_18
  store i16 %i.ie, ptr %i.ic, align 2
  br label %pred.store.continue483

pred.store.continue483:                           ; preds = %pred.store.continue481, %pred.store.if482
  %i.if = extractelement <8 x i1> %i.gd, i64 3
  br i1 %i.if, label %pred.store.if484, label %pred.store.continue485

end_hunk_18
begin_hunk_19
  store i16 %i.ij, ptr %i.ih, align 2
  br label %pred.store.continue485

pred.store.continue485:                           ; preds = %pred.store.continue483, %pred.store.if484
  %i.ik = extractelement <8 x i1> %i.gd, i64 4
  br i1 %i.ik, label %pred.store.if486, label %pred.store.continue487

end_hunk_19
begin_hunk_20
  store i16 %i.io, ptr %i.im, align 2
  br label %pred.store.continue487

pred.store.continue487:                           ; preds = %pred.store.continue485, %pred.store.if486
  %i.ip = extractelement <8 x i1> %i.gd, i64 5
  br i1 %i.ip, label %pred.store.if488, label %pred.store.continue489

end_hunk_20
begin_hunk_21
  store i16 %i.it, ptr %i.ir, align 2
  br label %pred.store.continue489

pred.store.continue489:                           ; preds = %pred.store.continue487, %pred.store.if488
  %i.iu = extractelement <8 x i1> %i.gd, i64 6
  br i1 %i.iu, label %pred.store.if490, label %pred.store.continue491

end_hunk_21
begin_hunk_22
  store i16 %i.iy, ptr %i.iw, align 2
  br label %pred.store.continue491

pred.store.continue491:                           ; preds = %pred.store.continue489, %pred.store.if490
  %i.iz = extractelement <8 x i1> %i.gd, i64 7
  br i1 %i.iz, label %pred.store.if492, label %pred.store.continue493

end_hunk_22
begin_hunk_23
  store i16 %i.jd, ptr %i.jb, align 2
  br label %pred.store.continue493

pred.store.continue493:                           ; preds = %pred.store.continue491, %pred.store.if492
  %index.next494 = add nuw i64 %index459, 16      ; 2 uses
  %i.je = icmp eq i64 %index.next494, %n.vec457
  br i1 %i.je, label %middle.block495, label %vector.body458, !llvm.loop !11
end_hunk_23
begin_hunk_24
  store i16 %i.jk, ptr %i.jf, align 2
  br label %pred.store.continue502

pred.store.continue502:                           ; preds = %vec.epilog.vector.body, %pred.store.if501
  %i.jl = extractelement <4 x i1> %i.jh, i64 1
  br i1 %i.jl, label %pred.store.if503, label %pred.store.continue504

end_hunk_24
begin_hunk_25
  store i16 %i.jp, ptr %i.jn, align 2
  br label %pred.store.continue504

pred.store.continue504:                           ; preds = %pred.store.continue502, %pred.store.if503
  %i.jq = extractelement <4 x i1> %i.jh, i64 2
  br i1 %i.jq, label %pred.store.if505, label %pred.store.continue506

end_hunk_25
begin_hunk_26
  store i16 %i.ju, ptr %i.js, align 2
  br label %pred.store.continue506

pred.store.continue506:                           ; preds = %pred.store.continue504, %pred.store.if505
  %i.jv = extractelement <4 x i1> %i.jh, i64 3
  br i1 %i.jv, label %pred.store.if507, label %pred.store.continue508

end_hunk_26
begin_hunk_27
  store i16 %i.jz, ptr %i.jx, align 2
  br label %pred.store.continue508

pred.store.continue508:                           ; preds = %pred.store.continue506, %pred.store.if507
  %index.next509 = add nuw i64 %index499, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next509, %n.vec498
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13
end_hunk_27
begin_hunk_28
  store i16 32, ptr %i.jc, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.jh = extractelement <8 x i1> %i.je, i64 1
  br i1 %i.jh, label %pred.store.if4, label %pred.store.continue5

end_hunk_28
begin_hunk_29
  store i16 32, ptr %i.jj, align 2
  br label %pred.store.continue5

pred.store.continue5:                             ; preds = %pred.store.continue, %pred.store.if4
  %i.jk = extractelement <8 x i1> %i.je, i64 2
  br i1 %i.jk, label %pred.store.if6, label %pred.store.continue7

end_hunk_29
begin_hunk_30
  store i16 32, ptr %i.jm, align 2
  br label %pred.store.continue7

pred.store.continue7:                             ; preds = %pred.store.continue5, %pred.store.if6
  %i.jn = extractelement <8 x i1> %i.je, i64 3
  br i1 %i.jn, label %pred.store.if8, label %pred.store.continue9

end_hunk_30
begin_hunk_31
  store i16 32, ptr %i.jp, align 2
  br label %pred.store.continue9

pred.store.continue9:                             ; preds = %pred.store.continue7, %pred.store.if8
  %i.jq = extractelement <8 x i1> %i.je, i64 4
  br i1 %i.jq, label %pred.store.if10, label %pred.store.continue11

end_hunk_31
begin_hunk_32
  store i16 32, ptr %i.js, align 2
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.continue9, %pred.store.if10
  %i.jt = extractelement <8 x i1> %i.je, i64 5
  br i1 %i.jt, label %pred.store.if12, label %pred.store.continue13

end_hunk_32
begin_hunk_33
  store i16 32, ptr %i.jv, align 2
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.continue11, %pred.store.if12
  %i.jw = extractelement <8 x i1> %i.je, i64 6
  br i1 %i.jw, label %pred.store.if14, label %pred.store.continue15

end_hunk_33
begin_hunk_34
  store i16 32, ptr %i.jy, align 2
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.continue13, %pred.store.if14
  %i.jz = extractelement <8 x i1> %i.je, i64 7
  br i1 %i.jz, label %pred.store.if16, label %pred.store.continue17

end_hunk_34
begin_hunk_35
  store i16 32, ptr %i.kb, align 2
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.continue15, %pred.store.if16
  %i.kc = extractelement <8 x i1> %i.jf, i64 0
  br i1 %i.kc, label %pred.store.if18, label %pred.store.continue19

end_hunk_35
begin_hunk_36
  store i16 32, ptr %i.ke, align 2
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.continue17, %pred.store.if18
  %i.kf = extractelement <8 x i1> %i.jf, i64 1
  br i1 %i.kf, label %pred.store.if20, label %pred.store.continue21

end_hunk_36
begin_hunk_37
  store i16 32, ptr %i.kh, align 2
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.continue19, %pred.store.if20
  %i.ki = extractelement <8 x i1> %i.jf, i64 2
  br i1 %i.ki, label %pred.store.if22, label %pred.store.continue23

end_hunk_37
begin_hunk_38
  store i16 32, ptr %i.kk, align 2
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.continue21, %pred.store.if22
  %i.kl = extractelement <8 x i1> %i.jf, i64 3
  br i1 %i.kl, label %pred.store.if24, label %pred.store.continue25

end_hunk_38
begin_hunk_39
  store i16 32, ptr %i.kn, align 2
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.continue23, %pred.store.if24
  %i.ko = extractelement <8 x i1> %i.jf, i64 4
  br i1 %i.ko, label %pred.store.if26, label %pred.store.continue27

end_hunk_39
begin_hunk_40
  store i16 32, ptr %i.kq, align 2
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.continue25, %pred.store.if26
  %i.kr = extractelement <8 x i1> %i.jf, i64 5
  br i1 %i.kr, label %pred.store.if28, label %pred.store.continue29

end_hunk_40
begin_hunk_41
  store i16 32, ptr %i.kt, align 2
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.continue27, %pred.store.if28
  %i.ku = extractelement <8 x i1> %i.jf, i64 6
  br i1 %i.ku, label %pred.store.if30, label %pred.store.continue31

end_hunk_41
begin_hunk_42
  store i16 32, ptr %i.kw, align 2
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.continue29, %pred.store.if30
  %i.kx = extractelement <8 x i1> %i.jf, i64 7
  br i1 %i.kx, label %pred.store.if32, label %pred.store.continue33

end_hunk_42
begin_hunk_43
  store i16 32, ptr %i.kz, align 2
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.continue31, %pred.store.if32
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.la = icmp eq i64 %index.next, %n.vec
  br i1 %i.la, label %middle.block, label %vector.body, !llvm.loop !26
end_hunk_43
begin_hunk_44
  store i16 32, ptr %i.lb, align 2
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %vec.epilog.vector.body, %pred.store.if38
  %i.le = extractelement <4 x i1> %i.lc, i64 1
  br i1 %i.le, label %pred.store.if40, label %pred.store.continue41

end_hunk_44
begin_hunk_45
  store i16 32, ptr %i.lg, align 2
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.continue39, %pred.store.if40
  %i.lh = extractelement <4 x i1> %i.lc, i64 2
  br i1 %i.lh, label %pred.store.if42, label %pred.store.continue43

end_hunk_45
begin_hunk_46
  store i16 32, ptr %i.lj, align 2
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.continue41, %pred.store.if42
  %i.lk = extractelement <4 x i1> %i.lc, i64 3
  br i1 %i.lk, label %pred.store.if44, label %pred.store.continue45

end_hunk_46
begin_hunk_47
  store i16 32, ptr %i.lm, align 2
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.continue43, %pred.store.if44
  %index.next46 = add nuw i64 %index36, 4         ; 2 uses
  %i.ln = icmp eq i64 %index.next46, %n.vec35
  br i1 %i.ln, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27
end_hunk_47
