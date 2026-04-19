inline.NumInlined: 2965
inline.NumDeleted: 1136
begin_hunk_0_@_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE:bb.a
  br label %bb.bm

bb.bj:                                            ; preds = %.lr.ph309, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180
  %.0100307 = phi i32 [ %.7, %.lr.ph309 ], [ %i.mf, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180 ]
  %.0101306 = phi i32 [ %i.ma, %.lr.ph309 ], [ %i.mg, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180 ]
  %i.mf = add i32 %.0100307, -1                   ; 5 uses
  %i.mg = add i32 %.0101306, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %.sroa.0.0.copyload.i.i171 = load i64, ptr %i.ar, align 8, !tbaa !40
  %i.mh = and i64 %.sroa.0.0.copyload.i.i171, 281474976710655
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE:bb.a
  br i1 %.not111, label %._crit_edge310, label %bb.bj, !llvm.loop !359

bb.bm:                                            ; preds = %.lr.ph316, %bb.bu
  %.197314 = phi i32 [ %.096, %.lr.ph316 ], [ %.3, %bb.bu ] ; 3 uses
  %.0102313 = phi i32 [ %i.mc, %.lr.ph316 ], [ %.2104, %bb.bu ] ; 4 uses
  %.0105312 = phi i32 [ %i.md, %.lr.ph316 ], [ %i.ph, %bb.bu ]
  %.not113 = icmp eq i32 %.197314, 0
  br i1 %.not113, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0.0.copyload.i.i181 = load i64, ptr %i.ar, align 8, !tbaa !40
  %i.nj = and i64 %.sroa.0.0.copyload.i.i181, 281474976710655
  %i.nk = inttoptr i64 %i.nj to ptr               ; 3 uses
  %i.nl = add i32 %.197314, -1                    ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !356 ; 2 uses
  %.not.i182 = icmp uge i32 %i.nl, %i.nn
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE:bb.a
_ZNK6hermes2vm13HermesValue329getNumberERNS0_11PointerBaseE.exit: ; preds = %bb.bq, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190.thread
  %.0.i = phi double [ %i.on, %bb.bq ], [ %i.ot, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190.thread ]
  %i.ou = fptoui double %.0.i to i32              ; 2 uses
  %.not114 = icmp eq i32 %.0102313, 0
  br i1 %.not114, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNK6hermes2vm13HermesValue329getNumberERNS0_11PointerBaseE.exit
  %i.ov = add i32 %.0102313, -1                   ; 2 uses
  %i.ow = zext i32 %i.ov to i64
  %i.ox = load ptr, ptr %5, align 8, !tbaa !329
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ow
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE:bb.a
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bm
  %i.pb = add i32 %.0102313, -1                   ; 2 uses
  %i.pc = zext i32 %i.pb to i64
  %i.pd = load ptr, ptr %5, align 8, !tbaa !329
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pc
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE:bb.a

bb.bu:                                            ; preds = %bb.br, %bb.bs, %bb.bt
  %.sink372 = phi i32 [ %i.pf, %bb.bt ], [ %i.ou, %bb.bs ], [ %i.oz, %bb.br ]
  %.2104 = phi i32 [ %i.pb, %bb.bt ], [ %.0102313, %bb.bs ], [ %i.ov, %bb.br ]
  %.3 = phi i32 [ 0, %bb.bt ], [ %i.nl, %bb.bs ], [ %.197314, %bb.br ]
  %i.pg = uitofp i32 %.sink372 to double
  store double %i.pg, ptr %.0.i.i.i.i.i.i121, align 8, !tbaa !326
  %i.ph = add i32 %.0105312, -1                   ; 3 uses
  %i.pi = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ph, ptr nonnull %.0.i.i.i.i.i.i121) #18 ; 0 uses
  %.not112 = icmp eq i32 %i.ph, 0
  br i1 %.not112, label %.loopexit, label %bb.bm, !llvm.loop !361
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE:bb.a

bb.b:                                             ; preds = %bb.x, %bb.a
  %.sroa.04.0.copyload = phi ptr [ %.sroa.04.0.copyload.pre, %bb.a ], [ %i.dn, %bb.x ] ; 7 uses
  %.sroa.060.0 = phi i32 [ 536870911, %bb.a ], [ %.sroa.060.3170176, %bb.x ] ; 5 uses
  %.sroa.0103.0 = phi i16 [ undef, %bb.a ], [ %.sroa.0103.7171175, %bb.x ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !40 ; 2 uses
  %i.n = icmp ult i64 %.sroa.0.0.copyload.i.i.i, -1970324836974592
  br i1 %i.n, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE:bb.a
bb.g:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %i.ay = tail call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #18 ; 2 uses
  %.not139 = icmp eq ptr %i.ay, inttoptr (i64 -1 to ptr)
  br i1 %.not139, label %6, label %.thread119, !prof !39

.thread119:                                       ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i36 = load i64, ptr %i.ay, align 8, !tbaa !40
  %i.az = trunc i64 %.sroa.0.0.copyload.i.i.i36 to i32
  br label %bb.h

6:                                                ; preds = %bb.g
  %7 = and i16 %.sroa.0103.0, -256
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

bb.h:                                             ; preds = %.thread119, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %.sroa.060.1 = phi i32 [ %i.az, %.thread119 ], [ %.sroa.060.0, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread ] ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
end_hunk_6
begin_hunk_7_@_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE:bb.a
  store i32 %i.dj, ptr %i.bx, align 4
  tail call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1) #18
  %i.dk = tail call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.dl = trunc nuw i32 %i.dk to i16
  br label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit: ; preds = %bb.t, %6
  %.sroa.060.3 = phi i32 [ %.sroa.060.1, %bb.t ], [ %.sroa.060.0, %6 ]
  %.sroa.0103.7 = phi i16 [ %i.dl, %bb.t ], [ %7, %6 ] ; 3 uses
  %.mask = and i16 %.sroa.0103.7, 255
  %8 = icmp eq i16 %.mask, 0
  br i1 %8, label %.thread126, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread, !prof !360

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread: ; preds = %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit
  %i.dm = and i16 %.sroa.0103.7, 256
  %.not157 = icmp eq i16 %i.dm, 0
  br i1 %.not157, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %.thread126

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread: ; preds = %bb.f, %bb.d, %bb.i, %bb.p, %bb.o, %bb.q, %bb.s, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread
  %.sroa.060.3170176 = phi i32 [ %.sroa.060.3, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ %.sroa.060.0, %bb.f ], [ %.sroa.060.0, %bb.d ], [ %.sroa.060.1, %bb.i ], [ %.sroa.060.1, %bb.p ], [ %.sroa.060.1, %bb.o ], [ %.sroa.060.1, %bb.q ], [ %.sroa.060.1, %bb.s ] ; 5 uses
  %.sroa.0103.7171175 = phi i16 [ %.sroa.0103.7, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.i ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.s ]
  %i.dn = load ptr, ptr %3, align 8, !tbaa !316   ; 3 uses
  %.sroa.0.0.copyload.i.i49 = load i64, ptr %i.dn, align 8, !tbaa !40
  %i.do = and i64 %.sroa.0.0.copyload.i.i49, 281474976710655
end_hunk_7
begin_hunk_8_@_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE:bb.a
  %.not165 = icmp eq i64 %i.en, 0
  br i1 %.not165, label %.thread126, label %bb.b, !llvm.loop !371

.thread126:                                       ; preds = %bb.h, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit, %bb.x, %bb.r, %bb.e, %bb.w, %bb.u
  %.2 = phi i32 [ 1, %bb.w ], [ 1, %bb.u ], [ 1, %bb.r ], [ 1, %bb.e ], [ 1, %bb.h ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit ], [ 1, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ 1, %bb.x ]
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.l
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !351
end_hunk_8
begin_hunk_9_@_ZN6hermes2vmplERKNS0_11TwineChar16ES3_:bb.a
  %i.r = load i32, ptr %i.q, align 8, !noalias !377
  %i.s = icmp eq i32 %i.r, 1                      ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !377
  %.015.i = select i1 %i.s, i32 %i.e, i32 2
  %.sroa.03.0.i = select i1 %i.s, ptr %.sroa.03.0.copyload.i, ptr %2
  store ptr %.sroa.06.0.i, ptr %0, align 8, !tbaa !41, !alias.scope !377
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.i, ptr %i.t, align 8, !tbaa !310, !alias.scope !377
end_hunk_9
begin_hunk_10_@_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE:bb.a
  %i.af = load i32, ptr %i.ae, align 8, !noalias !407
  %i.ag = icmp eq i32 %i.af, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %6, align 8, !noalias !407
  %.015.i.i = select i1 %i.ag, i32 %i.v, i32 2
  %.sroa.03.0.i.i = select i1 %i.ag, ptr %.sroa.03.0.copyload.i.i, ptr %6
  store ptr @.str.35, ptr %5, align 8, !tbaa !41, !alias.scope !407
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !310, !alias.scope !407
end_hunk_10
begin_hunk_11_@_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE:bb.a
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !427
  %i.cc = icmp eq i32 %i.cb, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i32 = load ptr, ptr %9, align 8, !noalias !427
  %.015.i.i33 = select i1 %i.cc, i32 %i.br, i32 2
  %.sroa.03.0.i.i34 = select i1 %i.cc, ptr %.sroa.03.0.copyload.i.i32, ptr %9
  store ptr @.str.35, ptr %8, align 8, !tbaa !41, !alias.scope !427
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.cd, align 8, !tbaa !310, !alias.scope !427
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.03.0.i.i34, ptr %i.ce, align 8, !tbaa !41, !alias.scope !427
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.015.i.i33, ptr %i.cf, align 8, !tbaa !305, !alias.scope !427
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 49, ptr %i.cg, align 8, !tbaa !308, !alias.scope !427
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 40
end_hunk_11
begin_hunk_12_@_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE:bb.a
  %i.dl = load i32, ptr %i.dk, align 8, !noalias !447
  %i.dm = icmp eq i32 %i.dl, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i50 = load ptr, ptr %14, align 8, !noalias !447
  %.015.i.i51 = select i1 %i.dm, i32 %i.db, i32 2
  %.sroa.03.0.i.i52 = select i1 %i.dm, ptr %.sroa.03.0.copyload.i.i50, ptr %14
  store ptr @.str.35, ptr %13, align 8, !tbaa !41, !alias.scope !447
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %i.dn, align 8, !tbaa !310, !alias.scope !447
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.03.0.i.i52, ptr %i.do, align 8, !tbaa !41, !alias.scope !447
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.015.i.i51, ptr %i.dp, align 8, !tbaa !305, !alias.scope !447
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 49, ptr %i.dq, align 8, !tbaa !308, !alias.scope !447
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 40
end_hunk_12
begin_hunk_13_@_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE:bb.a
  %i.ff = load i32, ptr %i.fe, align 8, !noalias !467
  %i.fg = icmp eq i32 %i.ff, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i67 = load ptr, ptr %15, align 8, !noalias !467
  %.015.i.i68 = select i1 %i.fg, i32 %i.er, i32 2
  %.sroa.03.0.i.i69 = select i1 %i.fg, ptr %.sroa.03.0.copyload.i.i67, ptr %15
  store ptr %.sroa.06.0.i.i66, ptr %11, align 8, !tbaa !41, !alias.scope !467
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.0.i.i65, ptr %i.fh, align 8, !tbaa !310, !alias.scope !467
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.sroa.03.0.i.i69, ptr %i.fi, align 8, !tbaa !41, !alias.scope !467
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.015.i.i68, ptr %i.fj, align 8, !tbaa !305, !alias.scope !467
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.ey, ptr %i.fk, align 8, !tbaa !308, !alias.scope !467
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 40
end_hunk_13
