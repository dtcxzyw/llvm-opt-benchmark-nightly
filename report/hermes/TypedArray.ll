inline.NumInlined: 3640
inline.NumDeleted: 1030
begin_hunk_0_@_ZN6hermes2vm20Int8ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.q:                                             ; preds = %bb.p
  %i.by = extractvalue { i32, i64 } %i.bv, 1
  %i.bz = bitcast i64 %i.by to double
  %i.ca = fptoui double %i.bz to i64              ; 2 uses
  %i.cb = add i64 %i.ca, %i.bg
  %i.cc = zext i32 %i.bk to i64
  %.not.i.i = icmp ugt i64 %i.cb, %i.cc
  br i1 %.not.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i28.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i28.pre.i.i, 281474976710655
  %.pre43.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.r

_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i:      ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.cd, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 117, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cf, align 8, !tbaa !12
  store ptr @.str.31, ptr %5, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.cg, align 8, !tbaa !14
  %i.ch = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.r:                                             ; preds = %._crit_edge.i.i.a, %bb.o
  %.pre-phi44.i.i = phi ptr [ %.pre43.i.i, %._crit_edge.i.i.a ], [ %i.bi, %bb.o ]
  %.123.i.i = phi i64 [ %i.ca, %._crit_edge.i.i.a ], [ %i.bu, %bb.o ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = trunc i64 %i.bg to i32
  %i.cl = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cj, ptr noundef %.pre-phi44.i.i, i32 noundef %i.ck, i32 noundef %i.cl, i8 noundef zeroext 1) #10
  %.sroa.0.0.copyload.i.i30.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cm = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.cn = extractvalue { i32, i64 } %i.cm, 0
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.s

bb.s:                                             ; preds = %.critedge19.i
  %i.cp = extractvalue { i32, i64 } %i.cm, 1
  %i.cq = or i64 %i.cp, -281474976710656          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 192 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !41 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50
  %i.cx = icmp ult ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.u, !prof !51

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !41
  store i64 %i.cq, ptr %i.cu, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.cz = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cs, i64 %i.cq) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.t ], [ %i.cz, %bb.u ] ; 4 uses
  %i.da = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.db = extractvalue { i32, i64 } %i.da, 0
  %i.dc = extractvalue { i32, i64 } %i.da, 1      ; 2 uses
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !50
  %i.dj = icmp ult ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.w, label %bb.x, !prof !51

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !41
  store i64 %i.dc, ptr %i.dg, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.dl = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.de, i64 %i.dc) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dg, %bb.w ], [ %i.dl, %bb.x ]
  %i.dm = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.dn = extractvalue { i32, i64 } %i.dm, 0
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.dp = extractvalue { i32, i64 } %i.dm, 1
  %i.dq = bitcast i64 %i.dp to double
  %i.dr = fptoui double %i.dq to i64              ; 3 uses
  %i.ds = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.dr) #10
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.cr, align 8, !tbaa !38
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !54
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.ea, align 4, !tbaa !55
  store ptr %i.dx, ptr %i.dy, align 8
  store i32 1, ptr %i.dz, align 8, !tbaa !56
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.dw, ptr %i.ec, align 8, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.ed, align 8, !tbaa !57
  store ptr %3, ptr %i.cr, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.dx, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ac
  %i.ef = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.dx, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.eg = extractvalue { i32, i64 } %i.ef, 0
  %i.eh = extractvalue { i32, i64 } %i.ef, 1      ; 2 uses
  %i.ei = icmp eq i32 %i.eg, 0
  br i1 %i.ei, label %.critedge.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.ej = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 192 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !41 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %bb.aa, label %bb.ab, !prof !51

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ep, ptr %i.ek, align 8, !tbaa !41
  store i64 %i.eh, ptr %i.el, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ej, i64 %i.eh) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.el, %bb.aa ], [ %i.eq, %bb.ab ]
  %i.er = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.dx, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.er, 255
  %i.es = icmp eq i32 %.mask.i.i, 0
  br i1 %i.es, label %.critedge.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.et = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  store i32 0, ptr %i.ed, align 8, !tbaa !57
  store ptr %i.ev, ptr %i.ec, align 8, !tbaa !50
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !41
  %i.ew = load double, ptr %i.dx, align 8, !tbaa !19
  %i.ex = fptoui double %i.ew to i64
  %i.ey = add i64 %i.ex, 1
  %i.ez = uitofp i64 %i.ey to double              ; 2 uses
  store double %i.ez, ptr %i.dx, align 8, !tbaa !21
  %i.fa = fptoui double %i.ez to i64
  %i.fb = icmp ult i64 %i.fa, %i.dr
  br i1 %i.fb, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !59

._crit_edge.i34.i:                                ; preds = %bb.ac, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIaLNS0_8CellKindE35EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %bb.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i, %bb.r, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.y, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.p ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.ch, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i ], [ %i.bt, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ 1, %bb.r ], [ 0, %bb.l ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.y ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.p ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %.sroa.0.0.copyload.i.i30.i, %bb.r ], [ undef, %bb.l ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.y ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21Int16ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 1
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 1
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm21Int16ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 1                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 2) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !61

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIsLNS0_8CellKindE36EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21Int32ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 3
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 3
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm21Int32ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 2                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 4) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !62

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIiLNS0_8CellKindE37EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21Uint8ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %6, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 4 uses
  %.sroa.0.0.copyload.i.i.i29.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i29.i, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !34 ; 2 uses
  %i.bl = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.bl, -140737488355328
  %i.bm = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bm, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bn = zext i32 %i.bk to i64                   ; 2 uses
  %i.bo = icmp ugt i64 %i.bg, %i.bn
  br i1 %i.bo, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, label %bb.o

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bp, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 94, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.br, align 8, !tbaa !12
  store ptr @.str.30, ptr %4, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bs, align 8, !tbaa !14
  %i.bt = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.o:                                             ; preds = %bb.n
  %i.bu = sub nuw nsw i64 %i.bn, %i.bg
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.bv = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i28.i) #10 ; 2 uses
  %i.bw = extractvalue { i32, i64 } %i.bv, 0
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = extractvalue { i32, i64 } %i.bv, 1
  %i.bz = bitcast i64 %i.by to double
  %i.ca = fptoui double %i.bz to i64              ; 2 uses
  %i.cb = add i64 %i.ca, %i.bg
  %i.cc = zext i32 %i.bk to i64
  %.not.i.i = icmp ugt i64 %i.cb, %i.cc
  br i1 %.not.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i28.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i28.pre.i.i, 281474976710655
  %.pre43.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.r

_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i:      ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.cd, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 117, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cf, align 8, !tbaa !12
  store ptr @.str.31, ptr %5, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.cg, align 8, !tbaa !14
  %i.ch = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.r:                                             ; preds = %._crit_edge.i.i.a, %bb.o
  %.pre-phi44.i.i = phi ptr [ %.pre43.i.i, %._crit_edge.i.i.a ], [ %i.bi, %bb.o ]
  %.123.i.i = phi i64 [ %i.ca, %._crit_edge.i.i.a ], [ %i.bu, %bb.o ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = trunc i64 %i.bg to i32
  %i.cl = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cj, ptr noundef %.pre-phi44.i.i, i32 noundef %i.ck, i32 noundef %i.cl, i8 noundef zeroext 1) #10
  %.sroa.0.0.copyload.i.i30.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cm = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.cn = extractvalue { i32, i64 } %i.cm, 0
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.s

bb.s:                                             ; preds = %.critedge19.i
  %i.cp = extractvalue { i32, i64 } %i.cm, 1
  %i.cq = or i64 %i.cp, -281474976710656          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 192 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !41 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50
  %i.cx = icmp ult ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.u, !prof !51

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !41
  store i64 %i.cq, ptr %i.cu, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.cz = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cs, i64 %i.cq) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.t ], [ %i.cz, %bb.u ] ; 4 uses
  %i.da = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.db = extractvalue { i32, i64 } %i.da, 0
  %i.dc = extractvalue { i32, i64 } %i.da, 1      ; 2 uses
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !50
  %i.dj = icmp ult ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.w, label %bb.x, !prof !51

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !41
  store i64 %i.dc, ptr %i.dg, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.dl = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.de, i64 %i.dc) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dg, %bb.w ], [ %i.dl, %bb.x ]
  %i.dm = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.dn = extractvalue { i32, i64 } %i.dm, 0
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.dp = extractvalue { i32, i64 } %i.dm, 1
  %i.dq = bitcast i64 %i.dp to double
  %i.dr = fptoui double %i.dq to i64              ; 3 uses
  %i.ds = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.dr) #10
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.cr, align 8, !tbaa !38
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !54
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.ea, align 4, !tbaa !55
  store ptr %i.dx, ptr %i.dy, align 8
  store i32 1, ptr %i.dz, align 8, !tbaa !56
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.dw, ptr %i.ec, align 8, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.ed, align 8, !tbaa !57
  store ptr %3, ptr %i.cr, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.dx, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ac
  %i.ef = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.dx, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.eg = extractvalue { i32, i64 } %i.ef, 0
  %i.eh = extractvalue { i32, i64 } %i.ef, 1      ; 2 uses
  %i.ei = icmp eq i32 %i.eg, 0
  br i1 %i.ei, label %.critedge.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.ej = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 192 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !41 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %bb.aa, label %bb.ab, !prof !51

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ep, ptr %i.ek, align 8, !tbaa !41
  store i64 %i.eh, ptr %i.el, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ej, i64 %i.eh) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.el, %bb.aa ], [ %i.eq, %bb.ab ]
  %i.er = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.dx, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.er, 255
  %i.es = icmp eq i32 %.mask.i.i, 0
  br i1 %i.es, label %.critedge.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.et = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  store i32 0, ptr %i.ed, align 8, !tbaa !57
  store ptr %i.ev, ptr %i.ec, align 8, !tbaa !50
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !41
  %i.ew = load double, ptr %i.dx, align 8, !tbaa !19
  %i.ex = fptoui double %i.ew to i64
  %i.ey = add i64 %i.ex, 1
  %i.ez = uitofp i64 %i.ey to double              ; 2 uses
  store double %i.ez, ptr %i.dx, align 8, !tbaa !21
  %i.fa = fptoui double %i.ez to i64
  %i.fb = icmp ult i64 %i.fa, %i.dr
  br i1 %i.fb, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !63

._crit_edge.i34.i:                                ; preds = %bb.ac, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE38EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %bb.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i, %bb.r, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.y, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.p ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.ch, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i ], [ %i.bt, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ 1, %bb.r ], [ 0, %bb.l ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.y ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.p ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %.sroa.0.0.copyload.i.i30.i, %bb.r ], [ undef, %bb.l ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.y ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm28Uint8ClampedArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %6, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 4 uses
  %.sroa.0.0.copyload.i.i.i29.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i29.i, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !34 ; 2 uses
  %i.bl = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.bl, -140737488355328
  %i.bm = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bm, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bn = zext i32 %i.bk to i64                   ; 2 uses
  %i.bo = icmp ugt i64 %i.bg, %i.bn
  br i1 %i.bo, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, label %bb.o

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bp, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 94, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.br, align 8, !tbaa !12
  store ptr @.str.30, ptr %4, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bs, align 8, !tbaa !14
  %i.bt = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.o:                                             ; preds = %bb.n
  %i.bu = sub nuw nsw i64 %i.bn, %i.bg
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.bv = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i28.i) #10 ; 2 uses
  %i.bw = extractvalue { i32, i64 } %i.bv, 0
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = extractvalue { i32, i64 } %i.bv, 1
  %i.bz = bitcast i64 %i.by to double
  %i.ca = fptoui double %i.bz to i64              ; 2 uses
  %i.cb = add i64 %i.ca, %i.bg
  %i.cc = zext i32 %i.bk to i64
  %.not.i.i = icmp ugt i64 %i.cb, %i.cc
  br i1 %.not.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i28.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i28.pre.i.i, 281474976710655
  %.pre43.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.r

_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i:      ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.cd, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 117, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cf, align 8, !tbaa !12
  store ptr @.str.31, ptr %5, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.cg, align 8, !tbaa !14
  %i.ch = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.r:                                             ; preds = %._crit_edge.i.i.a, %bb.o
  %.pre-phi44.i.i = phi ptr [ %.pre43.i.i, %._crit_edge.i.i.a ], [ %i.bi, %bb.o ]
  %.123.i.i = phi i64 [ %i.ca, %._crit_edge.i.i.a ], [ %i.bu, %bb.o ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = trunc i64 %i.bg to i32
  %i.cl = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cj, ptr noundef %.pre-phi44.i.i, i32 noundef %i.ck, i32 noundef %i.cl, i8 noundef zeroext 1) #10
  %.sroa.0.0.copyload.i.i30.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cm = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.cn = extractvalue { i32, i64 } %i.cm, 0
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.s

bb.s:                                             ; preds = %.critedge19.i
  %i.cp = extractvalue { i32, i64 } %i.cm, 1
  %i.cq = or i64 %i.cp, -281474976710656          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 192 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !41 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50
  %i.cx = icmp ult ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.u, !prof !51

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !41
  store i64 %i.cq, ptr %i.cu, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.cz = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cs, i64 %i.cq) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.t ], [ %i.cz, %bb.u ] ; 4 uses
  %i.da = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.db = extractvalue { i32, i64 } %i.da, 0
  %i.dc = extractvalue { i32, i64 } %i.da, 1      ; 2 uses
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !50
  %i.dj = icmp ult ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.w, label %bb.x, !prof !51

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !41
  store i64 %i.dc, ptr %i.dg, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.dl = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.de, i64 %i.dc) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dg, %bb.w ], [ %i.dl, %bb.x ]
  %i.dm = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.dn = extractvalue { i32, i64 } %i.dm, 0
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.dp = extractvalue { i32, i64 } %i.dm, 1
  %i.dq = bitcast i64 %i.dp to double
  %i.dr = fptoui double %i.dq to i64              ; 3 uses
  %i.ds = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.dr) #10
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.cr, align 8, !tbaa !38
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !54
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.ea, align 4, !tbaa !55
  store ptr %i.dx, ptr %i.dy, align 8
  store i32 1, ptr %i.dz, align 8, !tbaa !56
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.dw, ptr %i.ec, align 8, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.ed, align 8, !tbaa !57
  store ptr %3, ptr %i.cr, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.dx, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ac
  %i.ef = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.dx, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.eg = extractvalue { i32, i64 } %i.ef, 0
  %i.eh = extractvalue { i32, i64 } %i.ef, 1      ; 2 uses
  %i.ei = icmp eq i32 %i.eg, 0
  br i1 %i.ei, label %.critedge.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.ej = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 192 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !41 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %bb.aa, label %bb.ab, !prof !51

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ep, ptr %i.ek, align 8, !tbaa !41
  store i64 %i.eh, ptr %i.el, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ej, i64 %i.eh) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.el, %bb.aa ], [ %i.eq, %bb.ab ]
  %i.er = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.dx, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.er, 255
  %i.es = icmp eq i32 %.mask.i.i, 0
  br i1 %i.es, label %.critedge.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.et = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  store i32 0, ptr %i.ed, align 8, !tbaa !57
  store ptr %i.ev, ptr %i.ec, align 8, !tbaa !50
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !41
  %i.ew = load double, ptr %i.dx, align 8, !tbaa !19
  %i.ex = fptoui double %i.ew to i64
  %i.ey = add i64 %i.ex, 1
  %i.ez = uitofp i64 %i.ey to double              ; 2 uses
  store double %i.ez, ptr %i.dx, align 8, !tbaa !21
  %i.fa = fptoui double %i.ez to i64
  %i.fb = icmp ult i64 %i.fa, %i.dr
  br i1 %i.fb, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !64

._crit_edge.i34.i:                                ; preds = %bb.ac, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIhLNS0_8CellKindE39EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %bb.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i, %bb.r, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.y, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.p ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.ch, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i ], [ %i.bt, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ 1, %bb.r ], [ 0, %bb.l ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.y ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.p ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit27.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %.sroa.0.0.copyload.i.i30.i, %bb.r ], [ undef, %bb.l ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.y ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22Uint16ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 1
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 1
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm22Uint16ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 1                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 2) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !65

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorItLNS0_8CellKindE40EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22Uint32ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 3
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 3
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm22Uint32ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 2                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 4) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !66

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIjLNS0_8CellKindE41EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23Float32ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 3
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 3
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm23Float32ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 2                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 4) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !67

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIfLNS0_8CellKindE42EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23Float64ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 7
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 7
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm23Float64ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 3                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 8) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !68

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIdLNS0_8CellKindE43EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24BigInt64ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 7
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 7
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_6
begin_hunk_7_@_ZN6hermes2vm24BigInt64ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 3                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 8) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !69

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorIlLNS0_8CellKindE44EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25BigUint64ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.8.copyload = load i32, ptr %i.b, align 8 ; 3 uses
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.42.8.copyload = load ptr, ptr %.sroa.42.8..sroa_idx, align 8
  %i.c = load i64, ptr %.sroa.42.8.copyload, align 8, !tbaa !19
  %.mask.i.i.i.i = and i64 %i.c, -140737488355328
  %.not.i = icmp eq i64 %.mask.i.i.i.i, -1688849860263936
  br i1 %.not.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.b

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 64, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !12
  store ptr @.str.27, ptr %8, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %.sroa.2.8.copyload, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i64 noundef 0) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fptoui double %i.s to i64
  %i.u = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.t) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %bb.e
  %i.w = and i64 %i.m, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = add i32 %i.y, -587202560
  %i.aa = icmp ult i32 %i.z, 184549376
  %spec.select.i.i = select i1 %i.aa, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.ab = load i64, ptr %spec.select.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, -844424930131969
  %i.ad = and i64 %i.ab, 281474976710655          ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = and i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

bb.i:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !21
  %i.am = and i64 %.sroa.0.0.copyload.i.i3.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i32 noundef 0, ptr nonnull %spec.select.i.i, i32 noundef 0, i32 noundef %i.ap) #10
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i21.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.y, -16777216
  %i.as = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 553648128
  %spec.select.i26.i = select i1 %i.as, ptr %i.l, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E ; 3 uses
  %i.at = load i64, ptr %spec.select.i26.i, align 8, !tbaa !19 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %.critedge19.i

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %.not8.i = icmp eq i32 %.sroa.2.8.copyload, 1
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  %.sroa.02.0.i27.i = select i1 %.not8.i, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ay
  %i.az = icmp ugt i32 %.sroa.2.8.copyload, 2
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 -24
  %.sroa.02.0.i28.i = select i1 %i.az, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.bb = tail call { i32, i64 } @_ZN6hermes2vm7toIndexERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i27.i) #10 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = extractvalue { i32, i64 } %i.bb, 1
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fptoui double %i.bf to i64              ; 5 uses
  %i.bh = and i64 %i.bg, 7
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i:        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 123, ptr %i.bj, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.28, ptr %4, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !14
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i31.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i31.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34 ; 2 uses
  %i.br = load i64, ptr %.sroa.02.0.i28.i, align 8, !tbaa !19
  %.mask.i.i.i = and i64 %i.br, -140737488355328
  %i.bs = icmp eq i64 %.mask.i.i.i, -1688849860263936
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = zext i32 %i.bq to i64                   ; 3 uses
  %i.bu = and i64 %i.bt, 7
  %.not26.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not26.i.i, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i:      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bv, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 106, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bx, align 8, !tbaa !12
  store ptr @.str.29, ptr %5, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.by, align 8, !tbaa !14
  %i.bz = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i64 %i.bg, %i.bt
  br i1 %i.ca, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_7
begin_hunk_8_@_ZN6hermes2vm25BigUint64ArrayConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ck = extractvalue { i32, i64 } %i.ch, 1
  %i.cl = bitcast i64 %i.ck to double
  %i.cm = fptoui double %i.cl to i64
  %i.cn = shl i64 %i.cm, 3                        ; 2 uses
  %i.co = add i64 %i.cn, %i.bg
  %i.cp = zext i32 %i.bq to i64
  %.not47.i.i = icmp ugt i64 %i.co, %i.cp
  br i1 %.not47.i.i, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, label %._crit_edge.i.i.a

._crit_edge.i.i.a:                                ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i33.pre.i.i = load i64, ptr %spec.select.i26.i, align 8, !tbaa !21
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i.i.i33.pre.i.i, 281474976710655
  %.pre49.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i:      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cq, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 117, ptr %i.cr, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !12
  store ptr @.str.31, ptr %7, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !14
  %i.cu = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

bb.t:                                             ; preds = %._crit_edge.i.i.a, %bb.q
  %.pre-phi50.i.i = phi ptr [ %.pre49.i.i, %._crit_edge.i.i.a ], [ %i.bo, %bb.q ]
  %.123.i.i = phi i64 [ %i.cn, %._crit_edge.i.i.a ], [ %i.cg, %bb.q ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = trunc i64 %i.bg to i32
  %i.cy = trunc i64 %.123.i.i to i32
  tail call void @_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.cw, ptr noundef %.pre-phi50.i.i, i32 noundef %i.cx, i32 noundef %i.cy, i8 noundef zeroext 8) #10
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

.critedge19.i:                                    ; preds = %_ZN6hermes2vm6HandleINS0_13JSArrayBufferEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.cz = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.l) #10 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.u

bb.u:                                             ; preds = %.critedge19.i
  %i.dc = extractvalue { i32, i64 } %i.cz, 1
  %i.dd = or i64 %i.dc, -281474976710656          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dk = icmp ult ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !41
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 %i.dd) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.v ], [ %i.dm, %bb.w ] ; 4 uses
  %i.dn = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i.i, i32 0, ptr noundef null) #10 ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dn, 0
  %i.dp = extractvalue { i32, i64 } %i.dn, 1      ; 2 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.y, label %bb.z, !prof !51

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !41
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.dy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dr, i64 %i.dp) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i31.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.dy, %bb.z ]
  %i.dz = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i31.i.i) #10 ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i
  %i.ec = extractvalue { i32, i64 } %i.dz, 1
  %i.ed = bitcast i64 %i.ec to double
  %i.ee = fptoui double %i.ed to i64              ; 3 uses
  %i.ef = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a, i64 noundef %i.ee) #10
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !38
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.en, align 4, !tbaa !55
  store ptr %i.ek, ptr %i.el, align 8
  store i32 1, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %3, ptr %i.de, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !21
  %.not.i33.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i33.i, label %._crit_edge.i34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i, %bb.ae
  %i.es = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i.i.i) #10 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0
  %i.eu = extractvalue { i32, i64 } %i.es, 1      ; 2 uses
  %i.ev = icmp eq i32 %i.et, 0
  br i1 %i.ev, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !38 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 192 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ac, label %bb.ad, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !41
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ew, i64 %i.eu) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i34.i.i = phi ptr [ %i.ey, %bb.ac ], [ %i.fd, %bb.ad ]
  %i.fe = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ek, ptr %.0.i.i.i.i.i.i34.i.i, ptr %i.a, i32 0) #10
  %.mask.i.i = and i32 %i.fe, 255
  %i.ff = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ff, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  store i32 0, ptr %i.eq, align 8, !tbaa !57
  store ptr %i.fi, ptr %i.ep, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !41
  %i.fj = load double, ptr %i.ek, align 8, !tbaa !19
  %i.fk = fptoui double %i.fj to i64
  %i.fl = add i64 %i.fk, 1
  %i.fm = uitofp i64 %i.fl to double              ; 2 uses
  store double %i.fm, ptr %i.ek, align 8, !tbaa !21
  %i.fn = fptoui double %i.fm to i64
  %i.fo = icmp ult i64 %i.fn, %i.ee
  br i1 %i.fo, label %.lr.ph.i.i, label %._crit_edge.i34.i, !llvm.loop !70

._crit_edge.i34.i:                                ; preds = %bb.ae, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i.i
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i, %.lr.ph.i.i, %._crit_edge.i34.i
  %.sroa.054.0.i.i = phi i32 [ 1, %._crit_edge.i34.i ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %._crit_edge.i34.i ], [ undef, %.lr.ph.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit35.i.i ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vm12_GLOBAL__N_121typedArrayConstructorImLNS0_8CellKindE45EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i, %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i, %bb.t, %.critedge19.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i, %bb.aa, %.critedge.i.i
  %.sroa.07.2.i = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.r ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ 1, %bb.t ], [ %i.bz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ 0, %bb.l ], [ %i.cu, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ 0, %.critedge19.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.054.0.i.i, %.critedge.i.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ 0, %bb.aa ]
  %.sroa.8.2.i = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ undef, %bb.g ], [ undef, %bb.j ], [ undef, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ undef, %bb.f ], [ %.sroa.0.0.copyload.i.i21.i, %bb.k ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30.i.i ], [ %.sroa.0.0.copyload.i.i32.i, %bb.t ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit28.i.i ], [ undef, %bb.l ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit32.i.i ], [ undef, %.critedge19.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.i.i ], [ %.sroa.7.0.i.i, %.critedge.i.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i.i ], [ undef, %bb.aa ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.8.2.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14typedArrayFromEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %.sroa.029.0.copyload = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = tail call i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %.sroa.029.0.copyload) #10 ; 2 uses
  %.mask = and i32 %i.e, 255
  %i.f = icmp eq i32 %.mask, 0
  br i1 %i.f, label %.loopexit, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.e, 256
  %.not103 = icmp eq i32 %i.g, 0
  br i1 %.not103, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 48, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !12
  store ptr @.str.1, ptr %3, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.k, align 8, !tbaa !14
  %i.l = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !15, !noalias !74
  %.sroa.025.0.copyload = load i64, ptr %i.m, align 8, !tbaa !21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !51

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !41
  store i64 %.sroa.025.0.copyload, ptr %i.q, align 8, !tbaa !21
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit

bb.e:                                             ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.o, i64 %.sroa.025.0.copyload) #10
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.v, %bb.e ]
  %i.w = load i32, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.x = icmp ugt i32 %i.w, 1                     ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %.sroa.02.0.i46 = select i1 %i.x, ptr %i.z, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.02.0.i46, align 8, !tbaa !21 ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.aa, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -1140850688
  %i.af = icmp ult i32 %i.ae, 150994944
  %spec.select.i = select i1 %i.af, ptr %.sroa.02.0.i46, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %i.ag = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !19 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, -844424930131969
  %i.ai = and i64 %i.ag, 281474976710655
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = and i1 %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  br i1 %i.x, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !21 ; 2 uses
  %i.al = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.al, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.am = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, -1140850688
  %i.aq = icmp ult i32 %i.ap, 150994944
  br i1 %i.aq, label %bb.g, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ar, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 51, ptr %i.as, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !12
  store ptr @.str.2, ptr %4, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.au, align 8, !tbaa !14
  %i.av = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.loopexit

bb.g:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.aw = icmp ugt i32 %i.w, 2
  %i.ax = getelementptr inbounds i8, ptr %i.y, i64 -24
  %spec.select = select i1 %i.aw, ptr %i.ax, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %.sroa.023.0 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, %bb.f ], [ %spec.select, %bb.g ]
  %i.ay = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %i.az = extractvalue { i32, i64 } %i.ay, 0
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.bb = extractvalue { i32, i64 } %i.ay, 1
  %i.bc = or i64 %i.bb, -281474976710656          ; 2 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !38  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.j, !prof !51

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !41
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.bc) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i51 = phi ptr [ %i.bf, %bb.i ], [ %i.bk, %bb.j ] ; 4 uses
  %i.bl = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i51, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i51, i32 0, ptr noundef null) #10 ; 2 uses
  %i.bm = extractvalue { i32, i64 } %i.bl, 0
  %i.bn = extractvalue { i32, i64 } %i.bl, 1      ; 2 uses
  %i.bo = icmp eq i32 %i.bm, 0
  br i1 %i.bo, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !38  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 192 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !41 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bu = icmp ult ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.l, label %bb.m, !prof !51

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !41
  store i64 %i.bn, ptr %i.br, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bp, i64 %i.bn) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.br, %bb.l ], [ %i.bw, %bb.m ]
  %i.bx = tail call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i53) #10 ; 2 uses
  %i.by = extractvalue { i32, i64 } %i.bx, 0
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ca = extractvalue { i32, i64 } %i.bx, 1
  %i.cb = bitcast i64 %i.ca to double
  %i.cc = fptoui double %i.cb to i64              ; 3 uses
  %i.cd = tail call fastcc ptr @_ZN6hermes2vm12_GLOBAL__N_116typedArrayCreateERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, i64 noundef %i.cc) ; 4 uses
  %.not104 = icmp eq ptr %i.cd, inttoptr (i64 -1 to ptr)
  br i1 %.not104, label %.loopexit, label %bb.o

end_hunk_8
begin_hunk_9_@_ZN6hermes2vm28typedArrayPrototypeMapFilterEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.aw = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ap, i64 -1688849860263936) #10
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 192
  %.pre63.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !41
  %.phi.trans.insert64.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 200
  %.pre65.i = load ptr, ptr %.phi.trans.insert64.i, align 8, !tbaa !50
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i: ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ %i.at, %bb.g ], [ %.pre65.i, %bb.h ]
  %i.ay = phi ptr [ %i.av, %bb.g ], [ %.pre63.i, %bb.h ] ; 4 uses
  %i.az = phi ptr [ %i.ap, %bb.g ], [ %.pre.i, %bb.h ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %i.ba = icmp ult ptr %i.ay, %i.ax
  br i1 %i.ba, label %bb.i, label %bb.j, !prof !51

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.ay, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.i

bb.j:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.bd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.az, i64 -1688849860263936) #10
  %.pre66.i = load ptr, ptr %i.b, align 8, !tbaa !38 ; 2 uses
  %.phi.trans.insert67.i = getelementptr inbounds nuw i8, ptr %.pre66.i, i64 192
  %.pre68.i = load ptr, ptr %.phi.trans.insert67.i, align 8, !tbaa !41
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.i: ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.bc, %bb.i ], [ %.pre68.i, %bb.j ] ; 4 uses
  %i.bf = phi ptr [ %i.az, %bb.i ], [ %.pre66.i, %bb.j ] ; 10 uses
  %.0.i.i.i.i.i.i31.i = phi ptr [ %i.ay, %bb.i ], [ %i.bd, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 192 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 208 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !57 ; 6 uses
  %.not60.not.i = icmp eq i32 %i.s, 0
  br i1 %.not60.not.i, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.._crit_edge_crit_edge.i, label %.lr.ph.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.._crit_edge_crit_edge.i: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.i
  %.pre70.i = zext i32 %i.bi to i64
  br label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.i
  %i.bj = ptrtoint ptr %1 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bl = zext i32 %i.bi to i64                   ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 200
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i
  %.062.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cr, %bb.m ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.o, align 8, !tbaa !21
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !100 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i, label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i: ; preds = %bb.k
  %i.br = zext i32 %i.bq to i64
  %i.bs = add i64 %i.br, %i.bj
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 37
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !101, !range !102, !noundef !103
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit

bb.l:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i
  %i.bx = load i32, ptr %i.bo, align 4
  %i.by = lshr i32 %i.bx, 24
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !382
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !384
  %i.ce = call i64 %i.cd(ptr nonnull %i.bo, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.062.i) #10, !inline_history !443 ; 2 uses
  store i64 %i.ce, ptr %.0.i.i.i.i.i.i31.i, align 8, !tbaa !19
  %i.cf = uitofp i32 %.062.i to double
  %i.cg = bitcast double %i.cf to i64
  %.sroa.0.0.copyload.i.i44 = load i64, ptr %i.o, align 8, !tbaa !21
  %i.ch = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 %i.ce, i64 %i.cg, i64 %.sroa.0.0.copyload.i.i44, i1 noundef zeroext false) #10 ; 2 uses
  %i.ci = extractvalue { i32, i64 } %i.ch, 0
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread112, label %bb.m

_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread112: ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.bl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 128
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !57
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 200
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !50
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !41
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.cq = extractvalue { i32, i64 } %i.ch, 1
  store i64 %i.cq, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.cr = add nuw i32 %.062.i, 1                  ; 2 uses
  %i.cs = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.062.i, ptr nonnull %.0.i.i.i.i.i.i.i) #10 ; 0 uses
  %i.ct = load ptr, ptr %i.bk, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.bl
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !57
  store ptr %i.cw, ptr %i.bm, align 8, !tbaa !50
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !41
  %exitcond.not.i = icmp eq i32 %i.cr, %i.s
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.k, !llvm.loop !444

._crit_edge.loopexit.i:                           ; preds = %bb.m
  %i.cx = uitofp i32 %i.s to double
  br label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread

_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread: ; preds = %._crit_edge.loopexit.i, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.._crit_edge_crit_edge.i
  %.pre-phi.i.ph = phi i64 [ %.pre70.i, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.._crit_edge_crit_edge.i ], [ %i.bl, %._crit_edge.loopexit.i ]
  %.ph = phi double [ 0.000000e+00, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit32.._crit_edge_crit_edge.i ], [ %i.cx, %._crit_edge.loopexit.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.pre-phi.i.ph
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 128
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 200
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !50
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !41
  br label %bb.x

_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit: ; preds = %bb.k, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.de, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 39, ptr %i.df, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.dg, align 8, !tbaa !12
  store ptr @.str.9, ptr %4, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.dh, align 8, !tbaa !14
  %i.di = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !54
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.bl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !58
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 128
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !57
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bf, i64 200
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !50
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !41
  br i1 %i.dj, label %.loopexit, label %bb.x

bb.n:                                             ; preds = %bb.e
  br i1 %i.au, label %bb.o, label %bb.p, !prof !51

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.aq, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.ar, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i47

bb.p:                                             ; preds = %bb.n
  %i.dr = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ap, i64 -1688849860263936) #10
  %.pre.i45 = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 192
  %.pre67.i = load ptr, ptr %.phi.trans.insert.i46, align 8, !tbaa !41
  %.phi.trans.insert68.i = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 200
  %.pre69.i = load ptr, ptr %.phi.trans.insert68.i, align 8, !tbaa !50
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i47

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i47: ; preds = %bb.p, %bb.o
  %i.ds = phi ptr [ %i.at, %bb.o ], [ %.pre69.i, %bb.p ]
  %i.dt = phi ptr [ %i.dq, %bb.o ], [ %.pre67.i, %bb.p ] ; 4 uses
  %i.du = phi ptr [ %i.ap, %bb.o ], [ %.pre.i45, %bb.p ] ; 3 uses
  %.0.i.i.i.i.i.i.i48 = phi ptr [ %i.ar, %bb.o ], [ %i.dr, %bb.p ] ; 2 uses
  %i.dv = icmp ult ptr %i.dt, %i.ds
  br i1 %i.dv, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i47
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 192
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.dt, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.i

bb.r:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i47
  %i.dy = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.du, i64 -1688849860263936) #10
  %.pre70.i49 = load ptr, ptr %i.b, align 8, !tbaa !38 ; 2 uses
  %.phi.trans.insert71.i = getelementptr inbounds nuw i8, ptr %.pre70.i49, i64 192
  %.pre72.i = load ptr, ptr %.phi.trans.insert71.i, align 8, !tbaa !41
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.i: ; preds = %bb.r, %bb.q
  %i.dz = phi ptr [ %i.dx, %bb.q ], [ %.pre72.i, %bb.r ] ; 4 uses
  %i.ea = phi ptr [ %i.du, %bb.q ], [ %.pre70.i49, %bb.r ] ; 8 uses
  %.0.i.i.i.i.i.i33.i = phi ptr [ %i.dt, %bb.q ], [ %i.dy, %bb.r ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 192 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 208 ; 5 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !57 ; 6 uses
  %.not64.not.i = icmp eq i32 %i.s, 0
  br i1 %.not64.not.i, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.._crit_edge_crit_edge.i, label %.lr.ph.i50

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.._crit_edge_crit_edge.i: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.i
  %.pre74.i = zext i32 %i.ed to i64
  br label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread

.lr.ph.i50:                                       ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.i
  %i.ee = ptrtoint ptr %1 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 144 ; 2 uses
  %i.eg = zext i32 %i.ed to i64                   ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 200 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i50
  %.066.i = phi i32 [ 0, %.lr.ph.i50 ], [ %.1.i, %bb.w ] ; 3 uses
  %.03065.i = phi i32 [ 0, %.lr.ph.i50 ], [ %i.fn, %bb.w ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i51 = load i64, ptr %i.o, align 8, !tbaa !21
  %i.ei = and i64 %.sroa.0.0.copyload.i.i.i51, 281474976710655
  %i.ej = inttoptr i64 %i.ei to ptr               ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !100 ; 2 uses
  %.not.i.i52 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i52, label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i53

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i53: ; preds = %bb.s
  %i.em = zext i32 %i.el to i64
  %i.en = add i64 %i.em, %i.ee
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 37
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !101, !range !102, !noundef !103
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.t, label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit

bb.t:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i53
  %i.es = load i32, ptr %i.ej, align 4
  %i.et = lshr i32 %i.es, 24
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !382
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !384
  %i.ez = call i64 %i.ey(ptr nonnull %i.ej, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.03065.i) #10, !inline_history !445 ; 2 uses
  store i64 %i.ez, ptr %.0.i.i.i.i.i.i33.i, align 8, !tbaa !19
  %i.fa = uitofp i32 %.03065.i to double
  %i.fb = bitcast double %i.fa to i64
  %.sroa.0.0.copyload.i.i58 = load i64, ptr %i.o, align 8, !tbaa !21
  %i.fc = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 %i.ez, i64 %i.fb, i64 %.sroa.0.0.copyload.i.i58, i1 noundef zeroext false) #10 ; 2 uses
  %i.fd = extractvalue { i32, i64 } %i.fc, 0
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %.critedge90, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = extractvalue { i32, i64 } %i.fc, 1
  %i.fg = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.ff) #10
  br i1 %i.fg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i37.i = load i64, ptr %.0.i.i.i.i.i.i33.i, align 8, !tbaa !21
  store i64 %.sroa.0.0.copyload.i.i.i37.i, ptr %.0.i.i.i.i.i.i.i48, align 8, !tbaa !19
  %i.fh = add i32 %.066.i, 1
  %i.fi = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.066.i, ptr nonnull %.0.i.i.i.i.i.i.i48) #10 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i = phi i32 [ %i.fh, %bb.v ], [ %.066.i, %bb.u ] ; 2 uses
  %i.fj = load ptr, ptr %i.ef, align 8, !tbaa !54
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.eg
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !58
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  store i32 %i.ed, ptr %i.ec, align 8, !tbaa !57
  store ptr %i.fm, ptr %i.eh, align 8, !tbaa !50
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !41
  %i.fn = add nuw i32 %.03065.i, 1                ; 2 uses
  %exitcond.not.i59 = icmp eq i32 %i.fn, %i.s
  br i1 %exitcond.not.i59, label %._crit_edge.loopexit.i60, label %bb.s, !llvm.loop !446

._crit_edge.loopexit.i60:                         ; preds = %bb.w
  %i.fo = uitofp i32 %.1.i to double
  br label %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread

_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread: ; preds = %._crit_edge.loopexit.i60, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.._crit_edge_crit_edge.i
  %.pre-phi.i55.ph = phi i64 [ %.pre74.i, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.._crit_edge_crit_edge.i ], [ %i.eg, %._crit_edge.loopexit.i60 ]
  %.ph115 = phi double [ 0.000000e+00, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit34.._crit_edge_crit_edge.i ], [ %i.fo, %._crit_edge.loopexit.i60 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !54
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.pre-phi.i55.ph
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !58
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 128
  store i32 %i.ed, ptr %i.ec, align 8, !tbaa !57
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !50
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !41
  br label %bb.x

_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit: ; preds = %bb.s, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.fv, align 8, !tbaa !7
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 39, ptr %i.fw, align 8, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.fx, align 8, !tbaa !12
  store ptr @.str.9, ptr %3, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.fy, align 8, !tbaa !14
  %i.fz = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.eg
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !58
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  store i32 %i.ed, ptr %i.ec, align 8, !tbaa !57
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !50
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !41
  br i1 %i.ga, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit
  %i.gh = phi double [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ %.ph, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread ], [ %.ph115, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread ]
  %i.gi = fptoui double %i.gh to i32              ; 3 uses
  %i.gj = call ptr @_ZN6hermes2vm16JSTypedArrayBase15allocateSpeciesERNS0_7RuntimeENS0_6HandleIS1_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.o, i32 noundef %i.gi) #10 ; 4 uses
  %.not89 = icmp eq ptr %i.gj, inttoptr (i64 -1 to ptr)
  br i1 %.not89, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 192 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !41 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 200
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !50
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.z, label %bb.aa, !prof !51

bb.z:                                             ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gq, ptr %i.gl, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.gm, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.gr = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gk, i64 -1688849860263936) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.z, %bb.aa
  %.0.i.i.i.i.i.i = phi ptr [ %i.gm, %bb.z ], [ %i.gr, %bb.aa ] ; 2 uses
  %i.gs = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.gt = load i32, ptr %i.k, align 8, !tbaa !57  ; 2 uses
  %.not4390.not = icmp eq i32 %i.gi, 0
  br i1 %.not4390.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.gu = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.gv = zext i32 %i.gt to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.am
  %.04291 = phi i32 [ 0, %.lr.ph ], [ %i.jq, %bb.am ] ; 5 uses
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.gw = and i64 %.sroa.0.0.copyload.i.i63, 281474976710655
  %i.gx = inttoptr i64 %i.gw to ptr               ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 20
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !447 ; 2 uses
  %.not.i = icmp uge i32 %.04291, %i.gz
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = icmp ult i32 %.04291, %i.hb
  %or.cond.i = select i1 %.not.i, i1 %i.hc, i1 false
  br i1 %or.cond.i, label %bb.ac, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.he = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.hf = add i64 %i.he, %i.gu
  %i.hg = inttoptr i64 %i.hf to ptr               ; 2 uses
  %i.hh = sub nuw i32 %.04291, %i.gz              ; 4 uses
  %i.hi = icmp ult i32 %i.hh, 4096
  br i1 %i.hi, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hj = add i32 %i.hh, -4096
  %i.hk = lshr i32 %i.hj, 10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 16392
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !450
  %i.hp = zext i32 %i.ho to i64
  %i.hq = add i64 %i.hp, %i.gu
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = and i32 %i.hh, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %bb.ac, %bb.ad
  %.sink8.i.i = phi ptr [ %i.hr, %bb.ad ], [ %i.hg, %bb.ac ]
  %.sink7.i.i = phi i32 [ %i.hs, %bb.ad ], [ %i.hh, %bb.ac ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.hu = zext nneg i32 %.sink7.i.i to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hu
  %.sroa.0.0.i.i = load i32, ptr %i.hv, align 4, !tbaa !3 ; 9 uses
  %i.hw = trunc i32 %.sroa.0.0.i.i to i8
  %i.hx = and i8 %i.hw, 15
  switch i8 %i.hx, label %default.unreachable [
    i8 0, label %bb.ae
    i8 8, label %bb.ae
    i8 1, label %bb.af
    i8 9, label %bb.af
    i8 2, label %bb.ag
    i8 10, label %bb.ag
    i8 3, label %bb.ah
    i8 11, label %bb.ah
    i8 4, label %bb.ai
    i8 12, label %bb.ai
    i8 5, label %bb.aj
    i8 13, label %bb.aj
    i8 6, label %bb.ak
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
    i8 15, label %bb.al
  ]

bb.ae:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.hy = zext i32 %.sroa.0.0.i.i to i64
  %i.hz = add i64 %i.hy, %i.gu
  %i.ia = or i64 %i.hz, -281474976710656
  %i.ib = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.ia
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.af:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ic = and i32 %.sroa.0.0.i.i, -8
  %i.id = zext i32 %i.ic to i64
  %i.ie = add i64 %i.id, %i.gu
  %i.if = or i64 %i.ie, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ag:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ig = and i32 %.sroa.0.0.i.i, -8
  %i.ih = zext i32 %i.ig to i64
  %i.ii = add i64 %i.ih, %i.gu
  %i.ij = or i64 %i.ii, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ah:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ik = and i32 %.sroa.0.0.i.i, -8
  %i.il = zext i32 %i.ik to i64
  %i.im = add i64 %i.il, %i.gu
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load double, ptr %i.io, align 8, !tbaa !452 ; 2 uses
  %i.iq = fcmp uno double %i.ip, 0.000000e+00
  %i.ir = bitcast double %i.ip to i64
  %.sroa.0.0.i.i64 = select i1 %i.iq, i64 9221120237041090560, i64 %i.ir, !prof !73
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ai:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.is = ashr i32 %.sroa.0.0.i.i, 3
  %i.it = sitofp i32 %i.is to double
  %i.iu = bitcast double %i.it to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.aj:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.iv = lshr i32 %.sroa.0.0.i.i, 3
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = or disjoint i64 %i.iw, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ak:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.iy = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.iz = zext i1 %i.iy to i64
  %i.ja = or disjoint i64 %i.iz, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread: ; preds = %bb.ab, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.al:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread, %bb.al
  %.sroa.05.0.i = phi i64 [ %i.ib, %bb.ae ], [ %i.if, %bb.af ], [ %i.ij, %bb.ag ], [ %.sroa.0.0.i.i64, %bb.ah ], [ %i.iu, %bb.ai ], [ %i.ix, %bb.aj ], [ %i.ja, %bb.ak ], [ -1548112371908608, %bb.al ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread ], [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit ]
  store i64 %.sroa.05.0.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %i.gj, align 8, !tbaa !21
  %i.jb = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = lshr i32 %i.jd, 24
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !382
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !396
  %i.jk = call i32 %i.jj(ptr nonnull %i.gj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.04291, ptr nonnull %.0.i.i.i.i.i.i) #10, !inline_history !397
  %.mask = and i32 %i.jk, 255
  %i.jl = icmp eq i32 %.mask, 0
  br i1 %i.jl, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %i.jm = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.gv
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !58
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 128
  store i32 %i.gt, ptr %i.k, align 8, !tbaa !57
  store ptr %i.jp, ptr %i.j, align 8, !tbaa !50
  store ptr %i.gs, ptr %i.i, align 8, !tbaa !41
  %i.jq = add nuw i32 %.04291, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.jq, %i.gi
  br i1 %exitcond.not, label %.critedge, label %bb.ab, !llvm.loop !454

.critedge:                                        ; preds = %bb.am, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i66 = load i64, ptr %i.gj, align 8, !tbaa !21
  br label %.loopexit

.critedge90:                                      ; preds = %bb.t
  %7 = load ptr, ptr %i.ef, align 8, !tbaa !54
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.eg
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 %i.ed, ptr %i.ec, align 8, !tbaa !57
  store ptr %10, ptr %i.eh, align 8, !tbaa !50
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread112, %.critedge90, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit, %.critedge, %bb.x, %bb.d, %bb.a
  %.sroa.085.5 = phi i32 [ 0, %bb.a ], [ %i.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.d ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ 0, %bb.x ], [ 1, %.critedge ], [ 0, %.critedge90 ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread112 ], [ 0, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ]
  %.sroa.9.5 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.d ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ undef, %bb.x ], [ %.sroa.0.0.copyload.i66, %.critedge ], [ undef, %.critedge90 ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread112 ], [ undef, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.085.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.5, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_ZN6hermes2vm16JSTypedArrayBase15allocateSpeciesERNS0_7RuntimeENS0_6HandleIS1_EEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25typedArrayPrototypeLengthEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !455
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i1 noundef zeroext false) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !15, !noalias !458
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !100  ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.b
  %i.i = ptrtoint ptr %1 to i64
  %i.j = zext i32 %i.h to i64
  %i.k = add i64 %i.j, %i.i
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 37
  %i.n = load i8, ptr %i.m, align 1, !tbaa !101, !range !102, !noundef !103
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22
  %i.r = uitofp i32 %i.q to double
  %i.s = bitcast double %i.r to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.c, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %bb.b, %bb.a
  %.sroa.05.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ 1, %bb.c ]
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ 0, %bb.b ], [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.s, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23typedArrayPrototypeJoinEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %6 = alloca %"class.hermes::vm::CallResult.184", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !461
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i1 noundef zeroext true) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !15, !noalias !464 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71
  %.not109 = icmp eq i32 %i.j, 0
  br i1 %.not109, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !21
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.l = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.l, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.b, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.n = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.m, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 15) #10
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = or i64 %i.o, -844424930131968            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d, !prof !51

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !41
  store i64 %i.p, ptr %i.t, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.y = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.p) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.d, %bb.c
  %.sroa.022.0 = phi ptr [ %i.y, %bb.d ], [ %i.t, %bb.c ], [ %i.k, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %i.z = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.022.0) #10 ; 2 uses
  %.not110 = icmp eq ptr %i.z, inttoptr (i64 -1 to ptr)
  br i1 %.not110, label %bb.af, label %bb.e, !prof !73

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = or i64 %i.aa, -844424930131968          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !51

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !41
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ab) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.af, %bb.f ], [ %i.ak, %bb.g ] ; 3 uses
  %i.al = icmp eq i32 %i.h, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.an = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.am, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #10
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, -844424930131968
  br label %bb.af

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.0.0.copyload.i.i54 = load i64, ptr %.0.i.i.i.i.i.i53, align 8, !tbaa !21
  %i.aq = and i64 %.sroa.0.0.copyload.i.i54, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !467
  %i.au = and i32 %i.at, 2147483647               ; 2 uses
  %i.av = uitofp nneg i32 %i.au to double
  %i.aw = uitofp i32 %i.h to double
  %i.ax = fdiv double f0x41B0000000000000, %i.aw
  %i.ay = fcmp olt double %i.ax, %i.av
  br i1 %i.ay, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.j

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.az, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 44, ptr %i.ba, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !12
  store ptr @.str.10, ptr %4, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bc, align 8, !tbaa !14
  %i.bd = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.af

bb.j:                                             ; preds = %bb.i
  %i.be = add i32 %i.h, -1
  %i.bf = mul i32 %i.au, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = tail call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.h, i32 noundef 0) #10 ; 4 uses
  %.not111 = icmp eq ptr %i.bh, inttoptr (i64 -1 to ptr)
  br i1 %.not111, label %bb.af, label %bb.k, !prof !73

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = icmp ult ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !51

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.bk, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

end_hunk_9
