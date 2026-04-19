inline.NumInlined: 358
inline.NumDeleted: 68
begin_hunk_0_@get_localsplus_counts:bb.a
  %i.p = icmp eq <4 x i32> %i.o, splat (i32 64)   ; 3 uses
  %i.q = lshr <4 x i8> %wide.load, splat (i8 7)
  %i.r = zext nneg <4 x i8> %i.q to <4 x i32>
  %4 = or <4 x i1> %i.p, %i.l
  %predphi = select <4 x i1> %4, <4 x i32> zeroinitializer, <4 x i32> %i.r
  %predphi12 = add <4 x i32> %vec.phi11, %predphi ; 2 uses
  %i.s = select <4 x i1> %i.l, <4 x i32> %i.n, <4 x i32> zeroinitializer
  %predphi14.v = select <4 x i1> %i.p, <4 x i32> splat (i32 1), <4 x i32> %i.s
  %predphi14 = add <4 x i32> %vec.phi10, %predphi14.v ; 2 uses
  %5 = lshr exact <4 x i32> %i.k, splat (i32 5)
  %predphi15 = select <4 x i1> %i.p, <4 x i32> zeroinitializer, <4 x i32> %5
  %predphi16 = add <4 x i32> %vec.phi, %predphi15 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
end_hunk_0
begin_hunk_1_@get_localsplus_counts:bb.a

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.05.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.u, %middle.block ]
  %.0224.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.h, %middle.block ]
  %.0233.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.v, %middle.block ]
  %.0252.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %i.x = phi i64 [ %i.aj, %bb.f ], [ %.ph, %scalar.ph.preheader ]
  %.05 = phi i32 [ %.1, %bb.f ], [ %.05.ph, %scalar.ph.preheader ] ; 3 uses
  %.0224 = phi i32 [ %i.ai, %bb.f ], [ %.0224.ph, %scalar.ph.preheader ]
  %.0233 = phi i32 [ %.124, %bb.f ], [ %.0233.ph, %scalar.ph.preheader ] ; 3 uses
  %.0252 = phi i32 [ %.126, %bb.f ], [ %.0252.ph, %scalar.ph.preheader ] ; 3 uses
  %i.y = getelementptr i8, ptr %i.b, i64 %i.x
end_hunk_1
begin_hunk_2_@get_localsplus_counts:bb.a
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ac = add i32 %.05, 1
  %i.ad = lshr i32 %i.aa, 6
  %i.ae = and i32 %i.ad, 1
  %spec.select = add i32 %i.ae, %.0233
end_hunk_2
begin_hunk_3_@get_localsplus_counts:bb.a
bb.e:                                             ; preds = %bb.c
  %.lobit = lshr i8 %i.z, 7
  %i.ah = zext nneg i8 %.lobit to i32
  %spec.select35 = add i32 %.0252, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d
  %.126 = phi i32 [ %.0252, %bb.b ], [ %spec.select35, %bb.e ], [ %.0252, %bb.d ] ; 2 uses
  %.124 = phi i32 [ %spec.select, %bb.b ], [ %.0233, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.ac, %bb.b ], [ %.05, %bb.e ], [ %.05, %bb.d ] ; 2 uses
  %i.ai = add i32 %.0224, 1                       ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = icmp sgt i64 %.16.val, %i.aj
  br i1 %i.ak, label %scalar.ph, label %._crit_edge, !llvm.loop !135
end_hunk_3
begin_hunk_4_@get_localsplus_counts:bb.a
  %.025.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %middle.block ], [ %.126, %bb.f ]
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %.124, %bb.f ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.1, %bb.f ]
  store i32 %.0.lcssa, ptr %1, align 4, !tbaa !7
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

end_hunk_4
begin_hunk_5_@get_localsplus_counts:bb.a
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.025.lcssa, ptr %3, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_5
begin_hunk_6_@_PyCode_New:bb.a
  %wide.load = load <4 x i8>, ptr %i.ef, align 1, !tbaa !106 ; 2 uses
  %i.eg = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.eh = and <4 x i32> %i.eg, splat (i32 32)     ; 2 uses
  %1 = icmp eq <4 x i32> %i.eh, zeroinitializer   ; 2 uses
  %i.ei = lshr <4 x i32> %i.eg, splat (i32 6)
  %i.ej = and <4 x i32> %i.ei, splat (i32 1)
  %i.ek = and <4 x i32> %i.eg, splat (i32 96)
  %2 = icmp ne <4 x i32> %i.ek, splat (i32 64)    ; 2 uses
  %i.el = lshr <4 x i8> %wide.load, splat (i8 7)
  %i.em = zext nneg <4 x i8> %i.el to <4 x i32>
  %3 = and <4 x i1> %1, %2
  %predphi = select <4 x i1> %3, <4 x i32> %i.em, <4 x i32> zeroinitializer
  %predphi87 = add <4 x i32> %vec.phi86, %predphi ; 2 uses
  %not. = xor <4 x i1> %2, splat (i1 true)
  %i.en = zext <4 x i1> %not. to <4 x i32>
  %predphi89.v = select <4 x i1> %1, <4 x i32> %i.en, <4 x i32> %i.ej
  %predphi89 = add <4 x i32> %vec.phi85, %predphi89.v ; 2 uses
  %4 = lshr exact <4 x i32> %i.eh, splat (i32 5)
  %predphi90.a = add <4 x i32> %vec.phi, %4       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !142
end_hunk_6
begin_hunk_7_@_PyCode_New:bb.a

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i.i24, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %n.vec, %middle.block ]
  %.05.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.ep, %middle.block ]
  %.0224.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.ee, %middle.block ]
  %.0233.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.eq, %middle.block ]
  %.0252.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.er, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ah
  %i.es = phi i64 [ %i.fe, %bb.ah ], [ %.ph, %scalar.ph.preheader ]
  %.05.i.i = phi i32 [ %.1.i.i, %bb.ah ], [ %.05.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0224.i.i = phi i32 [ %i.fd, %bb.ah ], [ %.0224.i.i.ph, %scalar.ph.preheader ]
  %.0233.i.i = phi i32 [ %.124.i.i, %bb.ah ], [ %.0233.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0252.i.i = phi i32 [ %.126.i.i, %bb.ah ], [ %.0252.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.et = getelementptr i8, ptr %i.dy, i64 %i.es
end_hunk_7
begin_hunk_8_@_PyCode_New:bb.a
  br i1 %.not31.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph
  %i.ex = add i32 %.05.i.i, 1
  %i.ey = lshr i32 %i.ev, 6
  %i.ez = and i32 %i.ey, 1
  %spec.select.i.i = add i32 %i.ez, %.0233.i.i
end_hunk_8
begin_hunk_9_@_PyCode_New:bb.a
bb.ag:                                            ; preds = %bb.ae
  %.lobit.i.i = lshr i8 %i.eu, 7
  %i.fc = zext nneg i8 %.lobit.i.i to i32
  %spec.select35.i.i = add i32 %.0252.i.i, %i.fc
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.126.i.i = phi i32 [ %.0252.i.i, %bb.ad ], [ %spec.select35.i.i, %bb.ag ], [ %.0252.i.i, %bb.af ] ; 2 uses
  %.124.i.i = phi i32 [ %spec.select.i.i, %bb.ad ], [ %.0233.i.i, %bb.ag ], [ %i.fb, %bb.af ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ex, %bb.ad ], [ %.05.i.i, %bb.ag ], [ %.05.i.i, %bb.af ] ; 2 uses
  %i.fd = add i32 %.0224.i.i, 1                   ; 2 uses
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = icmp sgt i64 %.val76.i, %i.fe
  br i1 %i.ff, label %scalar.ph, label %get_localsplus_counts.exit.i, !llvm.loop !143
end_hunk_9
begin_hunk_10_@_PyCode_New:bb.a
  %i.hs = getelementptr i8, ptr %i.dm, i64 72
  store i32 %i.du, ptr %i.hs, align 8, !tbaa !158
  %i.ht = getelementptr i8, ptr %i.dm, i64 80
  store i32 %.0.lcssa.i.i, ptr %i.ht, align 8, !tbaa !159
  %i.hu = add i32 %i.du, 10
  %i.hv = add i32 %i.hu, %i.hq
  %i.hw = getelementptr i8, ptr %i.dm, i64 76
end_hunk_10
begin_hunk_11_@_PyCode_New:bb.a
  %i.hx = getelementptr i8, ptr %i.dm, i64 84
  store i32 %.023.lcssa.i.i, ptr %i.hx, align 4, !tbaa !161
  %i.hy = getelementptr i8, ptr %i.dm, i64 88
  store i32 %.025.lcssa.i.i, ptr %i.hy, align 8, !tbaa !162
  %i.hz = getelementptr i8, ptr %i.fj, i64 14336  ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !163 ; 3 uses
  %i.ib = getelementptr i8, ptr %i.dm, i64 92
end_hunk_11
begin_hunk_12_@PyUnstable_Code_NewWithPosOnlyArgs:bb.a
  br i1 %niter.ncmp.1, label %.preheader168.loopexit.unr-lcssa, label %bb.i, !llvm.loop !173

.preheader:                                       ; preds = %bb.o, %.preheader168
  %.1115.lcssa = phi i32 [ %.0114.lcssa, %.preheader168 ], [ %.2116, %bb.o ]
  %.0109.lcssa = phi i32 [ %i.x, %.preheader168 ], [ %.1110, %bb.o ] ; 2 uses
  %i.bj = icmp sgt i32 %i.v, 0
  br i1 %i.bj, label %.lr.ph185, label %._crit_edge186

end_hunk_12
begin_hunk_13_@PyUnstable_Code_NewWithPosOnlyArgs:bb.a

bb.l:                                             ; preds = %.lr.ph180, %bb.o
  %indvars.iv201 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next202, %bb.o ] ; 2 uses
  %.0109179 = phi i32 [ %i.x, %.lr.ph180 ], [ %.1110, %bb.o ] ; 2 uses
  %.1115178 = phi i32 [ %.0114.lcssa, %.lr.ph180 ], [ %.2116, %bb.o ] ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv201
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 4 uses
  br i1 %i.ad, label %.lr.ph173, label %._crit_edge.thread
end_hunk_13
begin_hunk_14_@PyUnstable_Code_NewWithPosOnlyArgs:bb.a
  br i1 %exitcond200.not, label %._crit_edge.thread, label %.lr.ph173, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph173
  %i.bs = add i32 %.0109179, -1
  %i.bt = and i64 %indvars.iv196, 4294967295
  %i.bu = getelementptr i8, ptr %i.au, i64 %i.bt  ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !106
end_hunk_14
begin_hunk_15_@PyUnstable_Code_NewWithPosOnlyArgs:bb.a
  br label %_Py_set_localsplus_info.exit150

_Py_set_localsplus_info.exit150:                  ; preds = %._crit_edge.thread, %bb.n
  %i.ca = sext i32 %.1115178 to i64               ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.as, i64 %i.ca
  store ptr %i.bo, ptr %i.cb, align 8, !tbaa !105
  %i.cc = getelementptr i8, ptr %i.at, i64 %i.ca
  store i8 64, ptr %i.cc, align 1, !tbaa !106
  %i.cd = add i32 %.1115178, 1
  br label %bb.o

bb.o:                                             ; preds = %_Py_set_localsplus_info.exit150, %._crit_edge
  %.2116 = phi i32 [ %.1115178, %._crit_edge ], [ %i.cd, %_Py_set_localsplus_info.exit150 ] ; 2 uses
  %.1110 = phi i32 [ %i.bs, %._crit_edge ], [ %.0109179, %_Py_set_localsplus_info.exit150 ] ; 2 uses
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %.preheader, label %bb.l, !llvm.loop !175
end_hunk_15
begin_hunk_16_@PyUnstable_Code_NewWithPosOnlyArgs:bb.a

bb.p:                                             ; preds = %.lr.ph185, %_Py_set_localsplus_info.exit151
  %indvars.iv206 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next207, %_Py_set_localsplus_info.exit151 ] ; 2 uses
  %.3117184 = phi i32 [ %.1115.lcssa, %.lr.ph185 ], [ %i.cn, %_Py_set_localsplus_info.exit151 ] ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv206
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !105 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !106 ; 2 uses
end_hunk_16
begin_hunk_17_@PyUnstable_Code_NewWithPosOnlyArgs:bb.a
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !106
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd            ; 3 uses
  %.not135 = icmp slt i32 %i.de, %.0109.lcssa
  br i1 %.not135, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.t
end_hunk_17
begin_hunk_18_@PyUnstable_Code_NewWithPosOnlyArgs:bb.a
  br label %bb.ac

.thread163:                                       ; preds = %bb.u, %bb.r, %._crit_edge186
  %i.du = sext i32 %.0109.lcssa to i64            ; 3 uses
  %i.dv = getelementptr i8, ptr %i.z, i64 16
  %.val145 = load i64, ptr %i.dv, align 8, !tbaa !125
  %.not136 = icmp eq i64 %.val145, %i.du
end_hunk_18
begin_hunk_19_@_PyCode_SetUnboundVarCounts:bb.a
  br label %bb.l

bb.l:                                             ; preds = %.thread139.i, %.lr.ph.i
  %.sroa.027.0191.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.027.4154.i, %.thread139.i ] ; 7 uses
  %.sroa.8.0190.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.8.3153.i, %.thread139.i ] ; 8 uses
  %.sroa.10.0189.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.10.4152.i, %.thread139.i ] ; 10 uses
  %.sroa.12.0188.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.12.4151.i, %.thread139.i ] ; 10 uses
  %.sroa.14.0187.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.14.4150.i, %.thread139.i ] ; 10 uses
  %.sroa.16.0186.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.16.3149.i, %.thread139.i ] ; 8 uses
  %.062185.i = phi i32 [ 0, %.lr.ph.i ], [ %.668148.i, %.thread139.i ] ; 9 uses
  %.073184.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bj, %.thread139.i ] ; 3 uses
  %i.r = tail call i16 @_Py_GetBaseCodeUnit(ptr noundef %1, i32 noundef %.073184.i) #15 ; 3 uses
  %trunc.i = trunc i16 %i.r to i8
  switch i8 %trunc.i, label %.thread139.i [
    i8 80, label %bb.m
end_hunk_19
begin_hunk_20_@_PyCode_SetUnboundVarCounts:bb.a
  br i1 %.not91.i, label %.thread139.i, label %identify_unbound_names.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.aa = add i32 %.sroa.027.0191.i, 1            ; 2 uses
  %i.ab = add i32 %.sroa.16.0186.i, 1             ; 2 uses
  %i.ac = tail call i32 @PySet_Add(ptr noundef nonnull %.032, ptr noundef %i.w) #15
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %identify_unbound_names.exit.thread, label %bb.p
end_hunk_20
begin_hunk_21_@_PyCode_SetUnboundVarCounts:bb.a
  br i1 %.not90.i, label %_PyErr_Occurred.exit102.thread.i, label %identify_unbound_names.exit.thread

_PyErr_Occurred.exit102.thread.i:                 ; preds = %_PyErr_Occurred.exit102.i, %bb.q
  %i.ah = add i32 %.062185.i, 1
  br label %.thread139.i

bb.r:                                             ; preds = %bb.l
end_hunk_21
begin_hunk_22_@_PyCode_SetUnboundVarCounts:bb.a
  br i1 %.not87.i, label %.thread139.i, label %identify_unbound_names.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.ar = add i32 %.sroa.027.0191.i, 1            ; 2 uses
  %i.as = add i32 %.sroa.8.0190.i, 1              ; 2 uses
  br i1 %.not79.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_22
begin_hunk_23_@_PyCode_SetUnboundVarCounts:bb.a
  br i1 %.not84.i, label %_PyErr_Occurred.exit108.thread.i, label %identify_unbound_names.exit.thread

_PyErr_Occurred.exit108.thread.i:                 ; preds = %_PyErr_Occurred.exit108.i, %bb.v
  %i.aw = add i32 %.sroa.10.0189.i, 1
  br label %bb.aa

bb.w:                                             ; preds = %bb.u, %bb.t
end_hunk_23
begin_hunk_24_@_PyCode_SetUnboundVarCounts:bb.a
  br i1 %.not83.i, label %_PyErr_Occurred.exit111.thread.i, label %identify_unbound_names.exit.thread

_PyErr_Occurred.exit111.thread.i:                 ; preds = %_PyErr_Occurred.exit111.i, %bb.y
  %i.ba = add i32 %.sroa.12.0188.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.bb = add i32 %.sroa.14.0187.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_PyErr_Occurred.exit111.thread.i, %_PyErr_Occurred.exit108.thread.i
  %.sroa.14.1.i.a = phi i32 [ %.sroa.14.0187.i, %_PyErr_Occurred.exit108.thread.i ], [ %.sroa.14.0187.i, %_PyErr_Occurred.exit111.thread.i ], [ %i.bb, %bb.z ] ; 2 uses
  %.sroa.12.1.i = phi i32 [ %.sroa.12.0188.i, %_PyErr_Occurred.exit108.thread.i ], [ %i.ba, %_PyErr_Occurred.exit111.thread.i ], [ %.sroa.12.0188.i, %bb.z ] ; 2 uses
  %.sroa.10.1.i = phi i32 [ %i.aw, %_PyErr_Occurred.exit108.thread.i ], [ %.sroa.10.0189.i, %_PyErr_Occurred.exit111.thread.i ], [ %.sroa.10.0189.i, %bb.z ] ; 2 uses
  %i.bc = tail call i32 @PySet_Add(ptr noundef nonnull %.0, ptr noundef %i.an) #15
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %identify_unbound_names.exit.thread, label %bb.ab
end_hunk_24
begin_hunk_25_@_PyCode_SetUnboundVarCounts:bb.a
  br i1 %.not86.i, label %_PyErr_Occurred.exit114.thread.i, label %identify_unbound_names.exit.thread

_PyErr_Occurred.exit114.thread.i:                 ; preds = %_PyErr_Occurred.exit114.i, %bb.ac
  %i.bh = add i32 %.062185.i, 1
  br label %.thread139.i

.thread139.i:                                     ; preds = %_PyErr_Occurred.exit114.thread.i, %bb.ab, %_PyErr_Occurred.exit105.i, %bb.s, %_PyErr_Occurred.exit102.thread.i, %bb.p, %_PyErr_Occurred.exit.i, %bb.n, %bb.l
  %.sroa.027.4154.i = phi i32 [ %.sroa.027.0191.i, %bb.l ], [ %i.aa, %_PyErr_Occurred.exit102.thread.i ], [ %i.ar, %_PyErr_Occurred.exit114.thread.i ], [ %i.ar, %bb.ab ], [ %i.aa, %bb.p ], [ %.sroa.027.0191.i, %_PyErr_Occurred.exit.i ], [ %.sroa.027.0191.i, %_PyErr_Occurred.exit105.i ], [ %.sroa.027.0191.i, %bb.n ], [ %.sroa.027.0191.i, %bb.s ] ; 2 uses
  %.sroa.8.3153.i = phi i32 [ %.sroa.8.0190.i, %bb.l ], [ %.sroa.8.0190.i, %_PyErr_Occurred.exit102.thread.i ], [ %i.as, %_PyErr_Occurred.exit114.thread.i ], [ %i.as, %bb.ab ], [ %.sroa.8.0190.i, %bb.p ], [ %.sroa.8.0190.i, %_PyErr_Occurred.exit.i ], [ %.sroa.8.0190.i, %_PyErr_Occurred.exit105.i ], [ %.sroa.8.0190.i, %bb.n ], [ %.sroa.8.0190.i, %bb.s ] ; 2 uses
  %.sroa.10.4152.i = phi i32 [ %.sroa.10.0189.i, %bb.l ], [ %.sroa.10.0189.i, %_PyErr_Occurred.exit102.thread.i ], [ %.sroa.10.1.i, %_PyErr_Occurred.exit114.thread.i ], [ %.sroa.10.1.i, %bb.ab ], [ %.sroa.10.0189.i, %bb.p ], [ %.sroa.10.0189.i, %_PyErr_Occurred.exit.i ], [ %.sroa.10.0189.i, %_PyErr_Occurred.exit105.i ], [ %.sroa.10.0189.i, %bb.n ], [ %.sroa.10.0189.i, %bb.s ] ; 2 uses
  %.sroa.12.4151.i = phi i32 [ %.sroa.12.0188.i, %bb.l ], [ %.sroa.12.0188.i, %_PyErr_Occurred.exit102.thread.i ], [ %.sroa.12.1.i, %_PyErr_Occurred.exit114.thread.i ], [ %.sroa.12.1.i, %bb.ab ], [ %.sroa.12.0188.i, %bb.p ], [ %.sroa.12.0188.i, %_PyErr_Occurred.exit.i ], [ %.sroa.12.0188.i, %_PyErr_Occurred.exit105.i ], [ %.sroa.12.0188.i, %bb.n ], [ %.sroa.12.0188.i, %bb.s ] ; 2 uses
  %.sroa.14.4150.i = phi i32 [ %.sroa.14.0187.i, %bb.l ], [ %.sroa.14.0187.i, %_PyErr_Occurred.exit102.thread.i ], [ %.sroa.14.1.i.a, %_PyErr_Occurred.exit114.thread.i ], [ %.sroa.14.1.i.a, %bb.ab ], [ %.sroa.14.0187.i, %bb.p ], [ %.sroa.14.0187.i, %_PyErr_Occurred.exit.i ], [ %.sroa.14.0187.i, %_PyErr_Occurred.exit105.i ], [ %.sroa.14.0187.i, %bb.n ], [ %.sroa.14.0187.i, %bb.s ] ; 2 uses
  %.sroa.16.3149.i = phi i32 [ %.sroa.16.0186.i, %bb.l ], [ %i.ab, %_PyErr_Occurred.exit102.thread.i ], [ %.sroa.16.0186.i, %_PyErr_Occurred.exit114.thread.i ], [ %.sroa.16.0186.i, %bb.ab ], [ %i.ab, %bb.p ], [ %.sroa.16.0186.i, %_PyErr_Occurred.exit.i ], [ %.sroa.16.0186.i, %_PyErr_Occurred.exit105.i ], [ %.sroa.16.0186.i, %bb.n ], [ %.sroa.16.0186.i, %bb.s ] ; 2 uses
  %.668148.i = phi i32 [ %.062185.i, %bb.l ], [ %i.ah, %_PyErr_Occurred.exit102.thread.i ], [ %i.bh, %_PyErr_Occurred.exit114.thread.i ], [ %.062185.i, %bb.ab ], [ %.062185.i, %bb.p ], [ %.062185.i, %_PyErr_Occurred.exit.i ], [ %.062185.i, %_PyErr_Occurred.exit105.i ], [ %.062185.i, %bb.n ], [ %.062185.i, %bb.s ] ; 2 uses
  %i.bi = tail call i32 @_PyInstruction_GetLength(ptr noundef %1, i32 noundef %.073184.i) #15
  %i.bj = add i32 %i.bi, %.073184.i               ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.not92.i = icmp sgt i64 %.val.i, %i.bk
  br i1 %.not92.i, label %bb.l, label %identify_unbound_names.exit, !llvm.loop !212

identify_unbound_names.exit:                      ; preds = %.thread139.i, %bb.k
  %.sroa.0.0 = phi i32 [ 0, %bb.k ], [ %.sroa.027.4154.i, %.thread139.i ]
  %.sroa.5.0 = phi i32 [ 0, %bb.k ], [ %.sroa.8.3153.i, %.thread139.i ]
  %.sroa.6.0 = phi i32 [ 0, %bb.k ], [ %.sroa.10.4152.i, %.thread139.i ]
  %.sroa.7.0 = phi i32 [ 0, %bb.k ], [ %.sroa.12.4151.i, %.thread139.i ]
  %.sroa.8.0 = phi i32 [ 0, %bb.k ], [ %.sroa.14.4150.i, %.thread139.i ]
  %.sroa.9.0 = phi i32 [ 0, %bb.k ], [ %.sroa.16.3149.i, %.thread139.i ]
  %.052 = phi i32 [ 0, %bb.k ], [ %.668148.i, %.thread139.i ] ; 2 uses
  %i.bl = getelementptr i8, ptr %2, i64 64        ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !213
  %i.bn = add i32 %i.bm, %.052                    ; 2 uses
end_hunk_25
begin_hunk_26_@_PyCode_ConstantKey:bb.a
  br label %Py_DECREF.exit150

Py_DECREF.exit150:                                ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.0112 = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ %i.bz, %bb.an ], [ %i.bz, %bb.ao ], [ %i.bz, %bb.ap ], [ %i.bz, %bb.aq ], [ %i.bz, %bb.ar ]
  %.0111 = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.an ], [ %i.cd, %bb.ao ], [ %i.cd, %bb.ap ], [ %i.cd, %bb.aq ], [ %i.cd, %bb.ar ]
  %.3108 = phi ptr [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.ao ], [ %i.ch, %bb.ap ], [ %i.ch, %bb.aq ], [ %i.ch, %bb.ar ]
  tail call fastcc void @Py_XDECREF(ptr noundef %i.bv)
  tail call fastcc void @Py_XDECREF(ptr noundef %.0112)
  tail call fastcc void @Py_XDECREF(ptr noundef %.0111)
  br label %Py_DECREF.exit158

bb.as:                                            ; preds = %bb.ak
end_hunk_26
begin_hunk_27_@_PyCode_ConstantKey:bb.a
  br label %Py_DECREF.exit158

Py_DECREF.exit158:                                ; preds = %bb.at, %bb.au, %bb.av, %bb.aa, %bb.z, %._crit_edge207, %bb.v, %bb.w, %bb.x, %Py_DECREF.exit150, %bb.f, %bb.j, %bb.i, %bb.o, %bb.r, %bb.q, %bb.m, %bb.c, %bb.d, %bb.as, %bb.t, %Py_DECREF.exit152
  %.7 = phi ptr [ null, %bb.as ], [ null, %bb.t ], [ %.5, %Py_DECREF.exit152 ], [ %0, %bb.d ], [ %i.ae, %bb.r ], [ %i.j, %bb.f ], [ %i.at, %bb.aa ], [ %i.p, %bb.j ], [ null, %bb.v ], [ %.3108, %Py_DECREF.exit150 ], [ %i.o, %bb.i ], [ %i.ab, %bb.m ], [ %i.ac, %bb.o ], [ %i.ad, %bb.q ], [ %0, %bb.c ], [ null, %bb.x ], [ null, %bb.w ], [ %i.at, %._crit_edge207 ], [ %i.at, %bb.z ], [ %i.cm, %bb.av ], [ %i.cm, %bb.au ], [ %i.cm, %bb.at ]
  ret ptr %.7
}

end_hunk_27
begin_hunk_28_@code_getlnotab:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.0881.i = phi i32 [ %.210.i, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.01280.i = phi i32 [ %.214.i, %bb.v ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %.079.i = phi i32 [ %.1.i, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.6.078.i = phi i32 [ %i.ak, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.1637.077.i = phi ptr [ %.lcssa61, %bb.v ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.1134.076.i = phi i32 [ %i.ag, %bb.v ], [ %i.n, %.lr.ph.preheader.i ]
  %i.o = load i8, ptr %.sroa.1637.077.i, align 1, !tbaa !106 ; 2 uses
  %i.p = lshr i8 %i.o, 3
  %i.q = and i8 %i.p, 15
  switch i8 %i.q, label %bb.f [
end_hunk_28
begin_hunk_29_@code_getlnotab:bb.a
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.r = getelementptr i8, ptr %.sroa.1637.077.i, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !106
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = and i32 %i.t, 63                         ; 2 uses
end_hunk_29
begin_hunk_30_@code_getlnotab:bb.a

get_line_delta.exit.i.i.i:                        ; preds = %bb.f, %bb.e, %scan_signed_varint.exit.i.i.i.i, %.lr.ph.i
  %.0.i.i.i.i = phi i32 [ 0, %bb.f ], [ 2, %bb.e ], [ %.0.i.i.i.i.i, %scan_signed_varint.exit.i.i.i.i ], [ 1, %.lr.ph.i ]
  %i.ag = add i32 %.0.i.i.i.i, %.sroa.1134.076.i  ; 4 uses
  %i.ah = shl i8 %i.o, 1
  %narrow.i.i.i.i = and i8 %i.ah, 14
  %i.ai = add nuw nsw i8 %narrow.i.i.i.i, 2
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = add i32 %.sroa.6.078.i, %i.aj
  %i.al = getelementptr i8, ptr %.sroa.1637.077.i, i64 1 ; 3 uses
  %i.am = icmp ult ptr %i.al, %i.m
  br i1 %i.am, label %.lr.ph, label %._crit_edge72

end_hunk_30
begin_hunk_31_@code_getlnotab:bb.a
._crit_edge72:                                    ; preds = %bb.g, %._crit_edge, %get_line_delta.exit.i.i.i
  %.lcssa61 = phi ptr [ %i.ap, %._crit_edge ], [ %i.al, %get_line_delta.exit.i.i.i ], [ %i.an, %bb.g ]
  %.lcssa60 = phi i1 [ true, %._crit_edge ], [ false, %get_line_delta.exit.i.i.i ], [ false, %bb.g ]
  %.not16.i = icmp eq i32 %i.ag, %.01280.i
  br i1 %.not16.i, label %bb.v, label %bb.h

bb.h:                                             ; preds = %._crit_edge72
  %i.as = sub i32 %.sroa.6.078.i, %.0881.i        ; 3 uses
  %i.at = sub i32 %i.ag, %.01280.i                ; 7 uses
  %i.au = icmp sgt i32 %i.as, 255
  br i1 %i.au, label %.lr.ph.i.i, label %.preheader50.i.i

end_hunk_31
begin_hunk_32_@code_getlnotab:bb.a

bb.v:                                             ; preds = %Py_DECREF.exit.i, %._crit_edge72
  %.1.i = phi i32 [ %.079.i, %._crit_edge72 ], [ %i.dt, %Py_DECREF.exit.i ] ; 2 uses
  %.214.i = phi i32 [ %.01280.i, %._crit_edge72 ], [ %i.ag, %Py_DECREF.exit.i ]
  %.210.i = phi i32 [ %.0881.i, %._crit_edge72 ], [ %.sroa.6.078.i, %Py_DECREF.exit.i ]
  br i1 %.lcssa60, label %.lr.ph.i, label %_PyLineTable_NextAddressRange.exit.loopexit.i, !llvm.loop !281

_PyLineTable_NextAddressRange.exit.loopexit.i:    ; preds = %bb.v
end_hunk_32
