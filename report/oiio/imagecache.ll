begin_hunk_0
  store i16 -1, ptr %next.gep, align 8, !tbaa !43
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.al = extractelement <8 x i1> %i.aj, i64 1
  br i1 %i.al, label %pred.store.if10, label %pred.store.continue11

end_hunk_0
begin_hunk_1
  store i16 -1, ptr %next.gep3, align 8, !tbaa !43
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.am = extractelement <8 x i1> %i.aj, i64 2
  br i1 %i.am, label %pred.store.if12, label %pred.store.continue13

end_hunk_1
begin_hunk_2
  store i16 -1, ptr %next.gep4, align 8, !tbaa !43
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.an = extractelement <8 x i1> %i.aj, i64 3
  br i1 %i.an, label %pred.store.if14, label %pred.store.continue15

end_hunk_2
begin_hunk_3
  store i16 -1, ptr %next.gep5, align 8, !tbaa !43
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.ao = extractelement <8 x i1> %i.aj, i64 4
  br i1 %i.ao, label %pred.store.if16, label %pred.store.continue17

end_hunk_3
begin_hunk_4
  store i16 -1, ptr %next.gep6, align 8, !tbaa !43
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.ap = extractelement <8 x i1> %i.aj, i64 5
  br i1 %i.ap, label %pred.store.if18, label %pred.store.continue19

end_hunk_4
begin_hunk_5
  store i16 -1, ptr %next.gep7, align 8, !tbaa !43
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.aq = extractelement <8 x i1> %i.aj, i64 6
  br i1 %i.aq, label %pred.store.if20, label %pred.store.continue21

end_hunk_5
begin_hunk_6
  store i16 -1, ptr %next.gep8, align 8, !tbaa !43
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.ar = extractelement <8 x i1> %i.aj, i64 7
  br i1 %i.ar, label %pred.store.if22, label %pred.store.continue23

end_hunk_6
begin_hunk_7
  store i16 -1, ptr %next.gep9, align 8, !tbaa !43
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !58
end_hunk_7
begin_hunk_8
  store i16 -1, ptr %i.kh, align 4, !tbaa !872
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.lh = extractelement <8 x i1> %i.lf, i64 1
  br i1 %i.lh, label %pred.store.if468, label %pred.store.continue469

end_hunk_8
begin_hunk_9
  store i16 -1, ptr %i.ki, align 4, !tbaa !872
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %pred.store.continue
  %i.li = extractelement <8 x i1> %i.lf, i64 2
  br i1 %i.li, label %pred.store.if470, label %pred.store.continue471

end_hunk_9
begin_hunk_10
  store i16 -1, ptr %i.kj, align 4, !tbaa !872
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.lj = extractelement <8 x i1> %i.lf, i64 3
  br i1 %i.lj, label %pred.store.if472, label %pred.store.continue473

end_hunk_10
begin_hunk_11
  store i16 -1, ptr %i.kk, align 4, !tbaa !872
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.if472, %pred.store.continue471
  %i.lk = extractelement <8 x i1> %i.lf, i64 4
  br i1 %i.lk, label %pred.store.if474, label %pred.store.continue475

end_hunk_11
begin_hunk_12
  store i16 -1, ptr %i.kl, align 4, !tbaa !872
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.if474, %pred.store.continue473
  %i.ll = extractelement <8 x i1> %i.lf, i64 5
  br i1 %i.ll, label %pred.store.if476, label %pred.store.continue477

end_hunk_12
begin_hunk_13
  store i16 -1, ptr %i.km, align 4, !tbaa !872
  br label %pred.store.continue477

pred.store.continue477:                           ; preds = %pred.store.if476, %pred.store.continue475
  %i.lm = extractelement <8 x i1> %i.lf, i64 6
  br i1 %i.lm, label %pred.store.if478, label %pred.store.continue479

end_hunk_13
begin_hunk_14
  store i16 -1, ptr %i.kn, align 4, !tbaa !872
  br label %pred.store.continue479

pred.store.continue479:                           ; preds = %pred.store.if478, %pred.store.continue477
  %i.ln = extractelement <8 x i1> %i.lf, i64 7
  br i1 %i.ln, label %pred.store.if480, label %pred.store.continue481

end_hunk_14
begin_hunk_15
  store i16 -1, ptr %i.ko, align 4, !tbaa !872
  br label %pred.store.continue481

pred.store.continue481:                           ; preds = %pred.store.if480, %pred.store.continue479
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %middle.block, label %vector.body, !llvm.loop !904
end_hunk_15
begin_hunk_16
  store i16 -1, ptr %i.cb, align 4, !tbaa !658
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.db = extractelement <8 x i1> %i.cz, i64 1
  br i1 %i.db, label %pred.store.if49, label %pred.store.continue50

end_hunk_16
begin_hunk_17
  store i16 -1, ptr %i.cc, align 4, !tbaa !658
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue
  %i.dc = extractelement <8 x i1> %i.cz, i64 2
  br i1 %i.dc, label %pred.store.if51, label %pred.store.continue52

end_hunk_17
begin_hunk_18
  store i16 -1, ptr %i.cd, align 4, !tbaa !658
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.dd = extractelement <8 x i1> %i.cz, i64 3
  br i1 %i.dd, label %pred.store.if53, label %pred.store.continue54

end_hunk_18
begin_hunk_19
  store i16 -1, ptr %i.ce, align 4, !tbaa !658
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.de = extractelement <8 x i1> %i.cz, i64 4
  br i1 %i.de, label %pred.store.if55, label %pred.store.continue56

end_hunk_19
begin_hunk_20
  store i16 -1, ptr %i.cf, align 4, !tbaa !658
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.df = extractelement <8 x i1> %i.cz, i64 5
  br i1 %i.df, label %pred.store.if57, label %pred.store.continue58

end_hunk_20
begin_hunk_21
  store i16 -1, ptr %i.cg, align 4, !tbaa !658
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.dg = extractelement <8 x i1> %i.cz, i64 6
  br i1 %i.dg, label %pred.store.if59, label %pred.store.continue60

end_hunk_21
begin_hunk_22
  store i16 -1, ptr %i.ch, align 4, !tbaa !658
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.dh = extractelement <8 x i1> %i.cz, i64 7
  br i1 %i.dh, label %pred.store.if61, label %pred.store.continue62

end_hunk_22
begin_hunk_23
  store i16 -1, ptr %i.ci, align 4, !tbaa !658
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1655
end_hunk_23
begin_hunk_24
  store i16 -1, ptr %i.t, align 4, !tbaa !872
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.at = extractelement <8 x i1> %i.ar, i64 1
  br i1 %i.at, label %pred.store.if10, label %pred.store.continue11

end_hunk_24
begin_hunk_25
  store i16 -1, ptr %i.u, align 4, !tbaa !872
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.au = extractelement <8 x i1> %i.ar, i64 2
  br i1 %i.au, label %pred.store.if12, label %pred.store.continue13

end_hunk_25
begin_hunk_26
  store i16 -1, ptr %i.v, align 4, !tbaa !872
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.av = extractelement <8 x i1> %i.ar, i64 3
  br i1 %i.av, label %pred.store.if14, label %pred.store.continue15

end_hunk_26
begin_hunk_27
  store i16 -1, ptr %i.w, align 4, !tbaa !872
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.aw = extractelement <8 x i1> %i.ar, i64 4
  br i1 %i.aw, label %pred.store.if16, label %pred.store.continue17

end_hunk_27
begin_hunk_28
  store i16 -1, ptr %i.x, align 4, !tbaa !872
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.ax = extractelement <8 x i1> %i.ar, i64 5
  br i1 %i.ax, label %pred.store.if18, label %pred.store.continue19

end_hunk_28
begin_hunk_29
  store i16 -1, ptr %i.y, align 4, !tbaa !872
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ay = extractelement <8 x i1> %i.ar, i64 6
  br i1 %i.ay, label %pred.store.if20, label %pred.store.continue21

end_hunk_29
begin_hunk_30
  store i16 -1, ptr %i.z, align 4, !tbaa !872
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.az = extractelement <8 x i1> %i.ar, i64 7
  br i1 %i.az, label %pred.store.if22, label %pred.store.continue23

end_hunk_30
begin_hunk_31
  store i16 -1, ptr %i.aa, align 4, !tbaa !872
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1659
end_hunk_31
begin_hunk_32
  store i16 -1, ptr %i.be, align 4, !tbaa !872
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ce = extractelement <8 x i1> %i.cc, i64 1
  br i1 %i.ce, label %pred.store.if43, label %pred.store.continue44

end_hunk_32
begin_hunk_33
  store i16 -1, ptr %i.bf, align 4, !tbaa !872
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue
  %i.cf = extractelement <8 x i1> %i.cc, i64 2
  br i1 %i.cf, label %pred.store.if45, label %pred.store.continue46

end_hunk_33
begin_hunk_34
  store i16 -1, ptr %i.bg, align 4, !tbaa !872
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.cg = extractelement <8 x i1> %i.cc, i64 3
  br i1 %i.cg, label %pred.store.if47, label %pred.store.continue48

end_hunk_34
begin_hunk_35
  store i16 -1, ptr %i.bh, align 4, !tbaa !872
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.ch = extractelement <8 x i1> %i.cc, i64 4
  br i1 %i.ch, label %pred.store.if49, label %pred.store.continue50

end_hunk_35
begin_hunk_36
  store i16 -1, ptr %i.bi, align 4, !tbaa !872
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.ci = extractelement <8 x i1> %i.cc, i64 5
  br i1 %i.ci, label %pred.store.if51, label %pred.store.continue52

end_hunk_36
begin_hunk_37
  store i16 -1, ptr %i.bj, align 4, !tbaa !872
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.cj = extractelement <8 x i1> %i.cc, i64 6
  br i1 %i.cj, label %pred.store.if53, label %pred.store.continue54

end_hunk_37
begin_hunk_38
  store i16 -1, ptr %i.bk, align 4, !tbaa !872
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.ck = extractelement <8 x i1> %i.cc, i64 7
  br i1 %i.ck, label %pred.store.if55, label %pred.store.continue56

end_hunk_38
begin_hunk_39
  store i16 -1, ptr %i.bl, align 4, !tbaa !872
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1667
end_hunk_39
begin_hunk_40
  store i16 -1, ptr %i.bd, align 4, !tbaa !658
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cd = extractelement <8 x i1> %i.cb, i64 1
  br i1 %i.cd, label %pred.store.if18, label %pred.store.continue19

end_hunk_40
begin_hunk_41
  store i16 -1, ptr %i.be, align 4, !tbaa !658
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue
  %i.ce = extractelement <8 x i1> %i.cb, i64 2
  br i1 %i.ce, label %pred.store.if20, label %pred.store.continue21

end_hunk_41
begin_hunk_42
  store i16 -1, ptr %i.bf, align 4, !tbaa !658
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.cf = extractelement <8 x i1> %i.cb, i64 3
  br i1 %i.cf, label %pred.store.if22, label %pred.store.continue23

end_hunk_42
begin_hunk_43
  store i16 -1, ptr %i.bg, align 4, !tbaa !658
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.cg = extractelement <8 x i1> %i.cb, i64 4
  br i1 %i.cg, label %pred.store.if24, label %pred.store.continue25

end_hunk_43
begin_hunk_44
  store i16 -1, ptr %i.bh, align 4, !tbaa !658
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.ch = extractelement <8 x i1> %i.cb, i64 5
  br i1 %i.ch, label %pred.store.if26, label %pred.store.continue27

end_hunk_44
begin_hunk_45
  store i16 -1, ptr %i.bi, align 4, !tbaa !658
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.ci = extractelement <8 x i1> %i.cb, i64 6
  br i1 %i.ci, label %pred.store.if28, label %pred.store.continue29

end_hunk_45
begin_hunk_46
  store i16 -1, ptr %i.bj, align 4, !tbaa !658
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.cj = extractelement <8 x i1> %i.cb, i64 7
  br i1 %i.cj, label %pred.store.if30, label %pred.store.continue31

end_hunk_46
begin_hunk_47
  store i16 -1, ptr %i.bk, align 4, !tbaa !658
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !1725
end_hunk_47
begin_hunk_48
  store i16 -1, ptr %next.gep, align 8, !tbaa !43
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bu = extractelement <8 x i1> %i.bs, i64 1
  br i1 %i.bu, label %pred.store.if37, label %pred.store.continue38

end_hunk_48
begin_hunk_49
  store i16 -1, ptr %next.gep30, align 8, !tbaa !43
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue
  %i.bv = extractelement <8 x i1> %i.bs, i64 2
  br i1 %i.bv, label %pred.store.if39, label %pred.store.continue40

end_hunk_49
begin_hunk_50
  store i16 -1, ptr %next.gep31, align 8, !tbaa !43
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.bw = extractelement <8 x i1> %i.bs, i64 3
  br i1 %i.bw, label %pred.store.if41, label %pred.store.continue42

end_hunk_50
begin_hunk_51
  store i16 -1, ptr %next.gep32, align 8, !tbaa !43
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.bx = extractelement <8 x i1> %i.bs, i64 4
  br i1 %i.bx, label %pred.store.if43, label %pred.store.continue44

end_hunk_51
begin_hunk_52
  store i16 -1, ptr %next.gep33, align 8, !tbaa !43
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.by = extractelement <8 x i1> %i.bs, i64 5
  br i1 %i.by, label %pred.store.if45, label %pred.store.continue46

end_hunk_52
begin_hunk_53
  store i16 -1, ptr %next.gep34, align 8, !tbaa !43
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.bz = extractelement <8 x i1> %i.bs, i64 6
  br i1 %i.bz, label %pred.store.if47, label %pred.store.continue48

end_hunk_53
begin_hunk_54
  store i16 -1, ptr %next.gep35, align 8, !tbaa !43
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.ca = extractelement <8 x i1> %i.bs, i64 7
  br i1 %i.ca, label %pred.store.if49, label %pred.store.continue50

end_hunk_54
begin_hunk_55
  store i16 -1, ptr %next.gep36, align 8, !tbaa !43
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !2399
end_hunk_55
begin_hunk_56
  store i16 -1, ptr %i.w, align 4, !tbaa !658
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %vector.body40
  %i.aw = extractelement <8 x i1> %i.au, i64 1
  br i1 %i.aw, label %pred.store.if53, label %pred.store.continue54

end_hunk_56
begin_hunk_57
  store i16 -1, ptr %i.x, align 4, !tbaa !658
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.ax = extractelement <8 x i1> %i.au, i64 2
  br i1 %i.ax, label %pred.store.if55, label %pred.store.continue56

end_hunk_57
begin_hunk_58
  store i16 -1, ptr %i.y, align 4, !tbaa !658
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.ay = extractelement <8 x i1> %i.au, i64 3
  br i1 %i.ay, label %pred.store.if57, label %pred.store.continue58

end_hunk_58
begin_hunk_59
  store i16 -1, ptr %i.z, align 4, !tbaa !658
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.az = extractelement <8 x i1> %i.au, i64 4
  br i1 %i.az, label %pred.store.if59, label %pred.store.continue60

end_hunk_59
begin_hunk_60
  store i16 -1, ptr %i.aa, align 4, !tbaa !658
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.ba = extractelement <8 x i1> %i.au, i64 5
  br i1 %i.ba, label %pred.store.if61, label %pred.store.continue62

end_hunk_60
begin_hunk_61
  store i16 -1, ptr %i.ab, align 4, !tbaa !658
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.bb = extractelement <8 x i1> %i.au, i64 6
  br i1 %i.bb, label %pred.store.if63, label %pred.store.continue64

end_hunk_61
begin_hunk_62
  store i16 -1, ptr %i.ac, align 4, !tbaa !658
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.bc = extractelement <8 x i1> %i.au, i64 7
  br i1 %i.bc, label %pred.store.if65, label %pred.store.continue66

end_hunk_62
begin_hunk_63
  store i16 -1, ptr %i.ad, align 4, !tbaa !658
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %index.next67 = add nuw i64 %index41, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next67, %n.vec39
  br i1 %i.bd, label %middle.block68, label %vector.body40, !llvm.loop !2402
end_hunk_63
begin_hunk_64
  store i16 -1, ptr %i.cj, align 4, !tbaa !658
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dj = extractelement <8 x i1> %i.dh, i64 1
  br i1 %i.dj, label %pred.store.if21, label %pred.store.continue22

end_hunk_64
begin_hunk_65
  store i16 -1, ptr %i.ck, align 4, !tbaa !658
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue
  %i.dk = extractelement <8 x i1> %i.dh, i64 2
  br i1 %i.dk, label %pred.store.if23, label %pred.store.continue24

end_hunk_65
begin_hunk_66
  store i16 -1, ptr %i.cl, align 4, !tbaa !658
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.dl = extractelement <8 x i1> %i.dh, i64 3
  br i1 %i.dl, label %pred.store.if25, label %pred.store.continue26

end_hunk_66
begin_hunk_67
  store i16 -1, ptr %i.cm, align 4, !tbaa !658
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.dm = extractelement <8 x i1> %i.dh, i64 4
  br i1 %i.dm, label %pred.store.if27, label %pred.store.continue28

end_hunk_67
begin_hunk_68
  store i16 -1, ptr %i.cn, align 4, !tbaa !658
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.dn = extractelement <8 x i1> %i.dh, i64 5
  br i1 %i.dn, label %pred.store.if29, label %pred.store.continue30

end_hunk_68
begin_hunk_69
  store i16 -1, ptr %i.co, align 4, !tbaa !658
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.do = extractelement <8 x i1> %i.dh, i64 6
  br i1 %i.do, label %pred.store.if31, label %pred.store.continue32

end_hunk_69
begin_hunk_70
  store i16 -1, ptr %i.cp, align 4, !tbaa !658
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.dp = extractelement <8 x i1> %i.dh, i64 7
  br i1 %i.dp, label %pred.store.if33, label %pred.store.continue34

end_hunk_70
begin_hunk_71
  store i16 -1, ptr %i.cq, align 4, !tbaa !658
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2404
end_hunk_71
