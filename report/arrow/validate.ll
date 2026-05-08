inline.NumInlined: 3472
inline.NumDeleted: 1065
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %.not61127.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit79.lr.ph.i.i.i.i, label %.critedge.i.i.i.i

_ZN5arrow6StatusD2Ev.exit79.lr.ph.i.i.i.i:        ; preds = %.preheader116.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !237
  %.val.i.promoted.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !82, !noalias !250
  %scevgep.i.i.i = getelementptr i8, ptr %.026.i.i.i, i64 -4
  %i.ba = shl nuw nsw i64 %i.ay, 2                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.bc = add i64 %.val.i.promoted.i.i.i.i, %i.ay
  %i.bd = add i64 %.054136.i.i.i.i, %i.ay
  store i64 %i.bc, ptr %i.e, align 8, !tbaa !82, !noalias !250
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit90.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

_ZN5arrow6StatusD2Ev.exit80.lr.ph.i.i.i.i:        ; preds = %.preheader8.i.i.i.i
  %i.ev = zext nneg i32 %i.df to i64              ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !295
  %.val74.val.promoted.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !308
  %i.ew = add i64 %.val74.val.promoted.i.i.i.i, %i.ev
  %i.ex = add i64 %.05428.i.i.i.i, %i.ev
  store i64 %i.ew, ptr %i.c, align 8, !tbaa !82, !noalias !308
  br label %.critedge.i.i.i.i115

.lr.ph.i.i.i.i118:                                ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %.lr.ph.preheader.i.i.i.i117
end_hunk_2
begin_hunk_3_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br i1 %.not61127.i.i.i.i164, label %_ZN5arrow6StatusD2Ev.exit79.i.preheader.i.i.i, label %.critedge.i.i.i.i166

_ZN5arrow6StatusD2Ev.exit79.i.preheader.i.i.i:    ; preds = %.preheader116.i.i.i.i188
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !345
  %.val.i.i.promoted.i.i.i = load i64, ptr %i.b, align 8, !tbaa !82, !noalias !358 ; 3 uses
  %min.iters.check = icmp ult i16 %.sroa.0.0.extract.trunc.i.i.i.i161, 4
  br i1 %min.iters.check, label %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i.preheader, label %vector.memcheck
end_hunk_3
begin_hunk_4_@_ZN5arrow15VisitTypeInlineINS_8internal12_GLOBAL__N_117UTF8DataValidatorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.ki = shl nuw nsw i64 %i.il, 3
  %scevgep.i.i.i189 = getelementptr i8, ptr %.026.i.i.i155, i64 %i.ki
  %i.kj = add i64 %.054136.i.i.i.i157, %i.il
  br label %.critedge.i.i.i.i166

.critedge.i.i.i.i166:                             ; preds = %_ZN5arrow6StatusD2Ev.exit90.i.i.i.i177, %_ZN5arrow6StatusD2Ev.exit77.i.i.i.i207, %..critedge.loopexit117_crit_edge.i.i.i.i, %.preheader116.i.i.i.i188, %.preheader118.i.i.i.i165, %.preheader.i.i.i.i190
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_13Decimal32TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit82.lr.ph.i.i.i.i:        ; preds = %.preheader8.i.i.i.i
  %i.cg = zext nneg i32 %i.an to i64              ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !643
  %i.ch = mul nsw i64 %i.cg, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ch
  %i.ci = add i64 %.05436.i.i.i.i, %i.cg
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit107.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_13Decimal64TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit82.lr.ph.i.i.i.i:        ; preds = %.preheader8.i.i.i.i
  %i.cg = zext nneg i32 %i.an to i64              ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !693
  %i.ch = mul nsw i64 %i.cg, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ch
  %i.ci = add i64 %.05436.i.i.i.i, %i.cg
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit107.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14Decimal128TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit82.lr.ph.i.i.i.i:        ; preds = %.preheader8.i.i.i.i
  %i.cf = zext nneg i32 %i.an to i64              ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !743
  %i.cg = mul nsw i64 %i.cf, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cg
  %i.ch = add i64 %.05436.i.i.i.i, %i.cf
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit107.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14Decimal256TypeE:bb.a

_ZN5arrow6StatusD2Ev.exit82.lr.ph.i.i.i.i:        ; preds = %.preheader8.i.i.i.i
  %i.cf = zext nneg i32 %i.an to i64              ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !149, !alias.scope !793
  %i.cg = mul nsw i64 %i.cf, %i.x
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cg
  %i.ch = add i64 %.05436.i.i.i.i, %i.cf
  br label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit107.i.i.i.i, %.lr.ph.preheader.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i.i.i:    ; preds = %.preheader8.i.i.i.i.i.i
  %i.dn = zext nneg i32 %i.cm to i64              ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1112
  %.val80.promoted.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !82, !noalias !1126
  %i.do = add i64 %.val80.promoted.i.i.i.i.i.i, %i.dn
  %i.dp = add i64 %.05429.i.i.i.i.i.i, %i.dn
  store i64 %i.do, ptr %i.x, align 8, !tbaa !82, !noalias !1126
  br label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i142.i.i: ; preds = %.preheader8.i.i.i.i141.i.i
  %i.gw = zext nneg i32 %i.fv to i64              ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1162
  %.val80.promoted.i.i.i.i143.i.i = load i64, ptr %i.u, align 8, !tbaa !82, !noalias !1175
  %i.gx = add i64 %.val80.promoted.i.i.i.i143.i.i, %i.gw
  %i.gy = add i64 %.05429.i.i.i.i110.i.i, %i.gw
  store i64 %i.gx, ptr %i.u, align 8, !tbaa !82, !noalias !1175
  br label %.critedge.i.i.i.i119.i.i

.lr.ph.i.i.i.i123.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i126.i.i, %.lr.ph.preheader.i.i.i.i121.i.i
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i214.i.i: ; preds = %.preheader8.i.i.i.i213.i.i
  %i.kf = zext nneg i32 %i.je to i64              ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1211
  %.val80.promoted.i.i.i.i215.i.i = load i64, ptr %i.r, align 8, !tbaa !82, !noalias !1225
  %i.kg = add i64 %.val80.promoted.i.i.i.i215.i.i, %i.kf
  %i.kh = add i64 %.05429.i.i.i.i182.i.i, %i.kf
  store i64 %i.kg, ptr %i.r, align 8, !tbaa !82, !noalias !1225
  br label %.critedge.i.i.i.i191.i.i

.lr.ph.i.i.i.i195.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i198.i.i, %.lr.ph.preheader.i.i.i.i193.i.i
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i286.i.i: ; preds = %.preheader8.i.i.i.i285.i.i
  %i.no = zext nneg i32 %i.mn to i64              ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1261
  %.val80.promoted.i.i.i.i287.i.i = load i64, ptr %i.o, align 8, !tbaa !82, !noalias !1274
  %i.np = add i64 %.val80.promoted.i.i.i.i287.i.i, %i.no
  %i.nq = add i64 %.05429.i.i.i.i254.i.i, %i.no
  store i64 %i.np, ptr %i.o, align 8, !tbaa !82, !noalias !1274
  br label %.critedge.i.i.i.i263.i.i

.lr.ph.i.i.i.i267.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i270.i.i, %.lr.ph.preheader.i.i.i.i265.i.i
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i358.i.i: ; preds = %.preheader8.i.i.i.i357.i.i
  %i.qx = zext nneg i32 %i.pw to i64              ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1310
  %.val80.promoted.i.i.i.i359.i.i = load i64, ptr %i.l, align 8, !tbaa !82, !noalias !1323
  %i.qy = add i64 %.val80.promoted.i.i.i.i359.i.i, %i.qx
  %i.qz = add i64 %.05429.i.i.i.i326.i.i, %i.qx
  store i64 %i.qy, ptr %i.l, align 8, !tbaa !82, !noalias !1323
  br label %.critedge.i.i.i.i335.i.i

.lr.ph.i.i.i.i339.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i342.i.i, %.lr.ph.preheader.i.i.i.i337.i.i
end_hunk_13
begin_hunk_14_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i430.i.i: ; preds = %.preheader8.i.i.i.i429.i.i
  %i.ug = zext nneg i32 %i.tf to i64              ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1359
  %.val80.promoted.i.i.i.i431.i.i = load i64, ptr %i.i, align 8, !tbaa !82, !noalias !1372
  %i.uh = add i64 %.val80.promoted.i.i.i.i431.i.i, %i.ug
  %i.ui = add i64 %.05429.i.i.i.i398.i.i, %i.ug
  store i64 %i.uh, ptr %i.i, align 8, !tbaa !82, !noalias !1372
  br label %.critedge.i.i.i.i407.i.i

.lr.ph.i.i.i.i411.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i414.i.i, %.lr.ph.preheader.i.i.i.i409.i.i
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i502.i.i: ; preds = %.preheader8.i.i.i.i501.i.i
  %i.xo = zext nneg i32 %i.wo to i64              ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1408
  %.val80.promoted.i.i.i.i503.i.i = load i64, ptr %i.f, align 8, !tbaa !82, !noalias !1421
  %i.xp = add i64 %.val80.promoted.i.i.i.i503.i.i, %i.xo
  %i.xq = add i64 %.05429.i.i.i.i470.i.i, %i.xo
  store i64 %i.xp, ptr %i.f, align 8, !tbaa !82, !noalias !1421
  br label %.critedge.i.i.i.i479.i.i

.lr.ph.i.i.i.i483.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i486.i.i, %.lr.ph.preheader.i.i.i.i481.i.i
end_hunk_15
begin_hunk_16_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl5VisitERKNS_14DictionaryTypeE:bb.a

_ZN5arrow6StatusD2Ev.exit86.lr.ph.i.i.i.i574.i.i: ; preds = %.preheader8.i.i.i.i573.i.i
  %i.aav = zext nneg i32 %i.zv to i64             ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !149, !alias.scope !1457
  %.val80.promoted.i.i.i.i575.i.i = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !1470
  %i.aaw = add i64 %.val80.promoted.i.i.i.i575.i.i, %i.aav
  %i.aax = add i64 %.05429.i.i.i.i542.i.i, %i.aav
  store i64 %i.aaw, ptr %i.c, align 8, !tbaa !82, !noalias !1470
  br label %.critedge.i.i.i.i551.i.i

.lr.ph.i.i.i.i555.i.i:                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i.i558.i.i, %.lr.ph.preheader.i.i.i.i553.i.i
end_hunk_16
