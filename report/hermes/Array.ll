inline.NumInlined: 3514
inline.NumDeleted: 769
begin_hunk_0_@_ZN6hermes2vm16arrayPrototypeAtEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.v:                                             ; preds = %bb.q, %bb.q
  %i.eh = ashr i32 %.sroa.0.0.i.i, 3
  %i.ei = sitofp i32 %i.eh to double
  %i.ej = bitcast double %i.ei to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.w:                                             ; preds = %bb.q, %bb.q
  %i.ek = lshr i32 %.sroa.0.0.i.i, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = or disjoint i64 %i.el, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.x:                                             ; preds = %bb.q
  %i.en = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.eo = zext i1 %i.en to i64
  %i.ep = or disjoint i64 %i.eo, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.y:                                             ; preds = %bb.q
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.z:                                             ; preds = %bb.q
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %bb.q
  unreachable

.critedge:                                        ; preds = %bb.n, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %bb.m
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 192 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !21 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 200
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !30
  %i.ev = icmp ult ptr %i.es, %i.eu
  br i1 %i.ev, label %bb.aa, label %bb.ab, !prof !31

bb.aa:                                            ; preds = %.critedge
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !21
  store double %.029, ptr %i.es, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.ab:                                            ; preds = %.critedge
  %i.ex = bitcast double %.029 to i64
  %i.ey = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.eq, i64 %i.ex) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i.i.i.i35 = phi ptr [ %i.es, %bb.aa ], [ %i.ey, %bb.ab ]
  %i.ez = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %.0.i.i.i.i.i.i56, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i35, ptr nonnull %.0.i.i.i.i.i.i56) #9 ; 2 uses
  %i.fa = extractvalue { i32, i64 } %i.ez, 0
  %i.fb = extractvalue { i32, i64 } %i.ez, 1
  %i.fc = icmp ne i32 %i.fa, 0                    ; 2 uses
  %spec.select = zext i1 %i.fc to i32
  %spec.select62 = select i1 %i.fc, i64 %i.fb, i64 undef, !prof !31
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.f, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.a
  %.sroa.051.3 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i ], [ 0, %bb.f ], [ 0, %bb.k ], [ 1, %bb.z ], [ 1, %bb.l ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ %spec.select, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.8.3 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i ], [ undef, %bb.f ], [ undef, %bb.k ], [ -1548112371908608, %bb.z ], [ -1688849860263936, %bb.l ], [ -1688849860263936, %bb.q ], [ %i.dq, %bb.r ], [ %i.du, %bb.s ], [ %i.dy, %bb.t ], [ %.sroa.0.0.i.i34, %bb.u ], [ %i.ej, %bb.v ], [ %i.em, %bb.w ], [ %i.ep, %bb.x ], [ -1970324836974592, %bb.y ], [ %spec.select62, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.051.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm20arrayPrototypeConcatEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 5 uses
  %6 = alloca %"class.hermes::vm::MutableHandle.176", align 8 ; 5 uses
  %7 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 6 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.c, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !36
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 5 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 4 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 5 uses
  store i32 0, ptr %i.k, align 8, !tbaa !38
  store ptr %3, ptr %i.b, align 8, !tbaa !18
  %i.l = load ptr, ptr %2, align 8, !tbaa !11, !noalias !103
  %i.m = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.l) #9 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.bi, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { i32, i64 } %i.m, 1
  %i.q = or i64 %i.p, -281474976710656            ; 3 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !21
  store i64 %i.q, ptr %i.t, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #9 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.y, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.q, %bb.c ], [ %.sroa.0.0.copyload.i.i.pre, %bb.d ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.y, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !101 ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.ae, -16777216
  %.not = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 536870912
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0.0.copyload.i.i160 = load i32, ptr %i.af, align 4, !tbaa !3 ; 3 uses
  %i.ag = and i32 %.sroa.0.0.copyload.i.i160, 7
  %i.ah = icmp eq i32 %i.ag, 4
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.ai = ashr i32 %.sroa.0.0.copyload.i.i160, 3
  %i.aj = sitofp i32 %i.ai to double
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = and i32 %.sroa.0.0.copyload.i.i160, -8
  %i.al = ptrtoint ptr %1 to i64
  %i.am = zext i32 %i.ak to i64
  %i.an = add i64 %i.am, %i.al
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !98
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi double [ %i.aj, %bb.f ], [ %i.aq, %bb.g ]
  %i.ar = fptoui double %.0.i.i to i32
  %i.as = zext i32 %i.ar to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit
  %.sroa.0253.0 = phi i64 [ %i.as, %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit ], [ 1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ] ; 2 uses
  %.not317 = icmp eq i32 %i.aa, 0
  br i1 %.not317, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.at = ptrtoint ptr %1 to i64
  %i.au = load ptr, ptr %2, align 8, !tbaa !11, !noalias !106
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

._crit_edge:                                      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.av = icmp eq i32 %.sroa.13.2, 0
  br i1 %i.av, label %._crit_edge.thread, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, %.lr.ph
  %.0131305 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ] ; 2 uses
  %.sroa.13.1304 = phi i32 [ 0, %.lr.ph ], [ %.sroa.13.2, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ]
  %.sroa.0253.1303 = phi i64 [ %.sroa.0253.0, %.lr.ph ], [ %i.br, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ]
  %i.aw = sub nsw i64 0, %.0131305
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.az = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.az, label %bb.i, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.i:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.ba = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.bc, -16777216
  %i.bd = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 536870912
  br i1 %i.bd, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSArrayEEEPT_NS0_11HermesValueE.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_7JSArrayEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.0.0.copyload.i.i161 = load i32, ptr %i.be, align 4, !tbaa !3 ; 3 uses
  %i.bf = and i32 %.sroa.0.0.copyload.i.i161, 7
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.j, label %bb.k, !prof !31

bb.j:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSArrayEEEPT_NS0_11HermesValueE.exit
  %i.bh = ashr i32 %.sroa.0.0.copyload.i.i161, 3
  %i.bi = sitofp i32 %i.bh to double
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit163

bb.k:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSArrayEEEPT_NS0_11HermesValueE.exit
  %i.bj = and i32 %.sroa.0.0.copyload.i.i161, -8
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add i64 %i.bk, %i.at
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !98
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit163

_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit163: ; preds = %bb.j, %bb.k
  %.0.i.i162 = phi double [ %i.bi, %bb.j ], [ %i.bo, %bb.k ]
  %i.bp = fptoui double %.0.i.i162 to i32
  %i.bq = zext i32 %i.bp to i64
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.i, %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit163
  %.sink = phi i64 [ %i.bq, %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit163 ], [ 1, %bb.i ], [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %i.br = add i64 %.sroa.0253.1303, %.sink        ; 3 uses
  %.pn.in = lshr i64 %i.br, 32
  %.pn = trunc nuw i64 %.pn.in to i32
  %.sroa.13.2 = or i32 %.sroa.13.1304, %.pn       ; 2 uses
  %i.bs = add nuw nsw i64 %.0131305, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, !llvm.loop !109

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bt, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 42, ptr %i.bu, align 8, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bv, align 8, !tbaa !53
  store ptr @.str.3, ptr %4, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bw, align 8, !tbaa !55
  %i.bx = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.bi

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge
  %.sroa.0253.1.lcssa379 = phi i64 [ %i.br, %._crit_edge ], [ %.sroa.0253.0, %bb.h ]
  %i.by = trunc i64 %.sroa.0253.1.lcssa379 to i32 ; 2 uses
  %i.bz = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.by, i32 noundef %i.by) #9 ; 10 uses
  %.not291 = icmp eq ptr %i.bz, inttoptr (i64 -1 to ptr)
  br i1 %.not291, label %bb.bi, label %bb.l, !prof !7

bb.l:                                             ; preds = %._crit_edge.thread
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 192 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 200
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30 ; 2 uses
  %i.cf = icmp ult ptr %i.cc, %i.ce
  br i1 %i.cf, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !21
  store i64 -281474976710656, ptr %i.cc, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.ch = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ca, i64 -281474976710656) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre322 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  %.phi.trans.insert323 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre324 = load ptr, ptr %.phi.trans.insert323, align 8, !tbaa !30
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.m, %bb.n
  %i.ci = phi ptr [ %i.ce, %bb.m ], [ %.pre324, %bb.n ] ; 2 uses
  %i.cj = phi ptr [ %i.cg, %bb.m ], [ %.pre322, %bb.n ] ; 4 uses
  %i.ck = phi ptr [ %i.ca, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  %.0.i.i.i.i.i.i164 = phi ptr [ %i.cc, %bb.m ], [ %i.ch, %bb.n ] ; 5 uses
  %i.cl = icmp ult ptr %i.cj, %i.ci
  br i1 %i.cl, label %bb.o, label %bb.p, !prof !31

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 192
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !21
  store i64 -281474976710656, ptr %i.cj, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_7JSArrayEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.p:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.co = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ck, i64 -281474976710656) #9
  %.pre325 = load ptr, ptr %i.b, align 8, !tbaa !18 ; 3 uses
  %.phi.trans.insert326 = getelementptr inbounds nuw i8, ptr %.pre325, i64 192
  %.pre327 = load ptr, ptr %.phi.trans.insert326, align 8, !tbaa !21
  %.phi.trans.insert328 = getelementptr inbounds nuw i8, ptr %.pre325, i64 200
  %.pre329 = load ptr, ptr %.phi.trans.insert328, align 8, !tbaa !30
  br label %_ZN6hermes2vm13MutableHandleINS0_7JSArrayEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_7JSArrayEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.o, %bb.p
  %i.cp = phi ptr [ %i.ci, %bb.o ], [ %.pre329, %bb.p ] ; 2 uses
  %i.cq = phi ptr [ %i.cn, %bb.o ], [ %.pre327, %bb.p ] ; 4 uses
  %i.cr = phi ptr [ %i.ck, %bb.o ], [ %.pre325, %bb.p ] ; 3 uses
  %.0.i.i.i.i.i.i165 = phi ptr [ %i.cj, %bb.o ], [ %i.co, %bb.p ] ; 3 uses
  %i.cs = icmp ult ptr %i.cq, %i.cp
  br i1 %i.cs, label %bb.q, label %bb.r, !prof !31

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_7JSArrayEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 192
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !21
  store i64 -1688849860263936, ptr %i.cq, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.r:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_7JSArrayEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.cv = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cr, i64 -1688849860263936) #9
  %.pre330 = load ptr, ptr %i.b, align 8, !tbaa !18 ; 3 uses
  %.phi.trans.insert331 = getelementptr inbounds nuw i8, ptr %.pre330, i64 192
  %.pre332 = load ptr, ptr %.phi.trans.insert331, align 8, !tbaa !21
  %.phi.trans.insert333 = getelementptr inbounds nuw i8, ptr %.pre330, i64 200
  %.pre334 = load ptr, ptr %.phi.trans.insert333, align 8, !tbaa !30
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.q, %bb.r
  %i.cw = phi ptr [ %i.cp, %bb.q ], [ %.pre334, %bb.r ] ; 2 uses
  %i.cx = phi ptr [ %i.cu, %bb.q ], [ %.pre332, %bb.r ] ; 4 uses
  %i.cy = phi ptr [ %i.cr, %bb.q ], [ %.pre330, %bb.r ] ; 3 uses
  %.0.i.i.i.i.i.i166 = phi ptr [ %i.cq, %bb.q ], [ %i.cv, %bb.r ] ; 3 uses
  %i.cz = icmp ult ptr %i.cx, %i.cw
  br i1 %i.cz, label %bb.s, label %bb.t, !prof !31

bb.s:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 192
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !21
  store i64 -1688849860263936, ptr %i.cx, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit168

bb.t:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.dc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cy, i64 -1688849860263936) #9
  %.pre335 = load ptr, ptr %i.b, align 8, !tbaa !18 ; 3 uses
  %.phi.trans.insert336 = getelementptr inbounds nuw i8, ptr %.pre335, i64 192
  %.pre337 = load ptr, ptr %.phi.trans.insert336, align 8, !tbaa !21
  %.phi.trans.insert338 = getelementptr inbounds nuw i8, ptr %.pre335, i64 200
  %.pre339 = load ptr, ptr %.phi.trans.insert338, align 8, !tbaa !30
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit168

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit168: ; preds = %bb.s, %bb.t
  %i.dd = phi ptr [ %i.cw, %bb.s ], [ %.pre339, %bb.t ] ; 2 uses
  %i.de = phi ptr [ %i.db, %bb.s ], [ %.pre337, %bb.t ] ; 4 uses
  %i.df = phi ptr [ %i.cy, %bb.s ], [ %.pre335, %bb.t ] ; 3 uses
  %.0.i.i.i.i.i.i167 = phi ptr [ %i.cx, %bb.s ], [ %i.dc, %bb.t ] ; 4 uses
  %i.dg = icmp ult ptr %i.de, %i.dd
  br i1 %i.dg, label %bb.u, label %bb.v, !prof !31

bb.u:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit168
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !21
  store i64 -1688849860263936, ptr %i.de, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit170

bb.v:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit168
  %i.dj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 -1688849860263936) #9
  %.pre340 = load ptr, ptr %i.b, align 8, !tbaa !18 ; 3 uses
  %.phi.trans.insert341 = getelementptr inbounds nuw i8, ptr %.pre340, i64 192
  %.pre342 = load ptr, ptr %.phi.trans.insert341, align 8, !tbaa !21
  %.phi.trans.insert343 = getelementptr inbounds nuw i8, ptr %.pre340, i64 200
  %.pre344 = load ptr, ptr %.phi.trans.insert343, align 8, !tbaa !30
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit170

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit170: ; preds = %bb.u, %bb.v
  %i.dk = phi ptr [ %i.dd, %bb.u ], [ %.pre344, %bb.v ] ; 2 uses
  %i.dl = phi ptr [ %i.di, %bb.u ], [ %.pre342, %bb.v ] ; 4 uses
  %i.dm = phi ptr [ %i.df, %bb.u ], [ %.pre340, %bb.v ] ; 3 uses
  %.0.i.i.i.i.i.i169 = phi ptr [ %i.de, %bb.u ], [ %i.dj, %bb.v ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.dn = icmp ult ptr %i.dl, %i.dk
  br i1 %i.dn, label %bb.w, label %bb.x, !prof !31

bb.w:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit170
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 192
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !21
  store i64 -281474976710656, ptr %i.dl, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit172

bb.x:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit170
  %i.dq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dm, i64 -281474976710656) #9
end_hunk_0
