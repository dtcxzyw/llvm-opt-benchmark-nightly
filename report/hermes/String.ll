inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vm20stringPrototypeMatchEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br i1 %i.h, label %.critedge, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, !prof !56

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.pre = load ptr, ptr %2, align 8
  br label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, %bb.a
  %i.i = phi ptr [ %.pre, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.l ; 4 uses
  %i.m = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !30
  %.mask.i = and i64 %i.m, -140737488355328
  switch i64 %.mask.i, label %bb.b [
    i64 -1688849860263936, label %bb.i
    i64 -1548112371908608, label %bb.i
  ]

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !12
  store i64 -1266637126761931, ptr %i.q, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

bb.d:                                             ; preds = %bb.b
  %i.v = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.o, i64 -1266637126761931) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.v, %bb.d ]
  %i.w = call { i32, i64 } @_ZN6hermes2vm9getMethodERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr %.0.i.i.i.i.i.i) #13 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = extractvalue { i32, i64 } %i.w, 1        ; 2 uses
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %.critedge, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit
  %.mask.i25 = and i64 %i.y, -140737488355328
  %i.aa = icmp eq i64 %.mask.i25, -1688849860263936
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %i.y, -281474976710656           ; 2 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !8   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !12
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ac, i64 %i.ab) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i26 = phi ptr [ %i.ae, %bb.g ], [ %i.aj, %bb.h ]
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ak = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr %.0.i.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 %.sroa.0.0.copyload.i27, i1 noundef zeroext false) #13 ; 2 uses
  %i.al = extractvalue { i32, i64 } %i.ak, 0
  %i.am = extractvalue { i32, i64 } %i.ak, 1
  br label %.critedge

bb.i:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.e
  %i.an = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #13 ; 2 uses
  %.not65 = icmp eq ptr %i.an, inttoptr (i64 -1 to ptr)
  br i1 %.not65, label %.critedge, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, -844424930131968          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !12
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ar, i64 %i.ap) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i28 = phi ptr [ %i.at, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = call ptr @_ZN6hermes2vm12regExpCreateERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E) #13 ; 4 uses
  %.not66 = icmp eq ptr %i.az, inttoptr (i64 -1 to ptr)
  br i1 %.not66, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ba = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.az, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 268436021, ptr %i.az, i32 0, ptr noundef null) #13 ; 2 uses
  %i.bb = extractvalue { i32, i64 } %i.ba, 0
  %i.bc = extractvalue { i32, i64 } %i.ba, 1      ; 3 uses
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %.critedge, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = icmp ult ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.p, !prof !23

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !12
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.p:                                             ; preds = %bb.n
  %i.bl = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.be, i64 %i.bc) #13 ; 2 uses
  %.sroa.0.0.copyload.i.i31.pr = load i64, ptr %i.bl, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.copyload.i.i31 = phi i64 [ %i.bc, %bb.o ], [ %.sroa.0.0.copyload.i.i31.pr, %bb.p ] ; 2 uses
  %.0.i.i.i.i.i.i30 = phi ptr [ %i.bg, %bb.o ], [ %i.bl, %bb.p ]
  %i.bm = icmp ugt i64 %.sroa.0.0.copyload.i.i31, -844424930131969
  br i1 %i.bm, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bn = and i64 %.sroa.0.0.copyload.i.i31, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, -1140850688
  %i.br = icmp ult i32 %i.bq, 150994944
  %spec.select.i = select i1 %i.br, ptr %.0.i.i.i.i.i.i30, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.bs = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !30 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, -844424930131969
  %i.bu = and i64 %i.bs, 281474976710655
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = and i1 %i.bt, %i.bv
  br i1 %i.bw, label %bb.q, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !23

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bx, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 43, ptr %i.by, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !43
  store ptr @.str.14, ptr %4, align 8, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ca, align 8, !tbaa !45
  %i.cb = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

bb.q:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %.sroa.0.0.copyload.i32 = load i64, ptr %.0.i.i.i.i.i.i28, align 8, !tbaa !24
  %i.cc = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.az, i64 %.sroa.0.0.copyload.i32, i1 noundef zeroext false) #13 ; 2 uses
  %i.cd = extractvalue { i32, i64 } %i.cc, 0
  %i.ce = extractvalue { i32, i64 } %i.cc, 1
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.q, %bb.m, %bb.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.063.6 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.cb, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %bb.m ], [ %i.cd, %bb.q ], [ %i.al, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ]
  %.sroa.9.6 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %bb.m ], [ %i.ce, %bb.q ], [ %i.am, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.063.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::CallResult.161", align 8 ; 11 uses
  %.not = icmp eq ptr %0, null
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !243 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.mask.i.i = and i64 %i.b, -140737488355328
  switch i64 %.mask.i.i, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread [
    i64 -1688849860263936, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
    i64 -1548112371908608, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  ], !prof !55

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 29, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store ptr @.str.20, ptr %4, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !45
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.i = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #13 ; 2 uses
  %.not84 = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not84, label %.thread, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = or i64 %i.j, -844424930131968            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.n, align 8, !tbaa !12
  store i64 %i.k, ptr %i.o, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.m, i64 %i.k) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.t, %bb.d ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %.not85 = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %2, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.02.0.i = select i1 %.not85, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.x
  %i.y = call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #13 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = extractvalue { i32, i64 } %i.y, 1
  %i.ac = bitcast i64 %i.ab to double
  %i.ad = fptosi double %i.ac to i64              ; 6 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !60
  %i.ai = and i32 %i.ah, 2147483647               ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %.not35 = icmp ugt i64 %i.ad, %i.aj
  br i1 %.not35, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !8   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !12
  store i64 -844424930131968, ptr %i.am, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ak, i64 -844424930131968) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i36 = phi ptr [ %i.am, %bb.g ], [ %i.ar, %bb.h ] ; 5 uses
  %i.as = load i32, ptr %i.u, align 8, !tbaa !26
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.au = load ptr, ptr %2, align 8, !tbaa !32, !noalias !246
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i37 = load i64, ptr %i.av, align 8, !tbaa !24
  %.mask.i = and i64 %.sroa.0.0.copyload.i37, -140737488355328
  %i.aw = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.aw, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %bb.i

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ay = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ax, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 16) #13
  br label %bb.j

bb.i:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.az = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.av) #13 ; 2 uses
  %.not86 = icmp eq ptr %i.az, inttoptr (i64 -1 to ptr)
  br i1 %.not86, label %.thread, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %storemerge.in.in = phi ptr [ %i.ay, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread ], [ %i.az, %bb.i ]
  %storemerge.in = ptrtoint ptr %storemerge.in.in to i64 ; 2 uses
  %storemerge = or i64 %storemerge.in, -844424930131968
  store i64 %storemerge, ptr %.0.i.i.i.i.i.i36, align 8, !tbaa !30
  %i.ba = and i64 %storemerge.in, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !60
  %i.be = and i32 %i.bd, 2147483647
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i40 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bg = sub i64 %i.ad, %i.aj
  %i.bh = icmp ugt i64 %i.bg, 268435456
  br i1 %i.bh, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %7

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 31, ptr %i.bj, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !43
  store ptr @.str.15, ptr %5, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !45
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.thread

7:                                                ; preds = %bb.l
  %8 = icmp ult i64 %i.ad, 4294967296
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  br i1 %8, label %14, label %bb.m, !prof !252

bb.m:                                             ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !249
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %9, align 8, !tbaa !39, !noalias !249
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %10, align 8, !tbaa !42, !noalias !249
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %11, align 8, !tbaa !43, !noalias !249
  store ptr @.str.19, ptr %3, align 8, !tbaa !44, !noalias !249
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %12, align 8, !tbaa !45, !noalias !249
  %13 = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13, !noalias !249 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !249
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

14:                                               ; preds = %7
  %15 = trunc nuw i64 %i.ad to i32                ; 2 uses
  %16 = icmp samesign ugt i64 %i.ad, 65535
  br i1 %16, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %14
  %i.bn = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %15) #13, !noalias !249
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.o:                                             ; preds = %14
  %i.bo = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %15) #13, !noalias !249
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.o, %bb.n
  %.pn.i.i = phi { i32, i64 } [ %i.bo, %bb.o ], [ %i.bn, %bb.n ] ; 2 uses
  %i.bp = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.p, !prof !7

bb.p:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.br = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.bs = and i64 %i.br, 281474976710655
  %i.bt = or disjoint i64 %i.bs, -844424930131968 ; 2 uses
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !8, !noalias !249 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 192 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !12, !noalias !249 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !22, !noalias !249
  %i.bz = icmp ult ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.q, label %bb.r, !prof !23

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !12, !noalias !249
  store i64 %i.bt, ptr %i.bw, align 8, !tbaa !24, !noalias !249
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bu, i64 %i.bt) #13, !noalias !249
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %bb.q ], [ %i.cb, %bb.r ]
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.cc, align 8, !tbaa !107, !alias.scope !249
  %i.cd = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.cd, ptr %6, align 8, !alias.scope !249
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ce, align 8, !alias.scope !249
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !249
  %17 = trunc nuw i64 %i.ad to i32                ; 2 uses
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = sub i32 %17, %i.ai                      ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i36, align 8, !tbaa !24
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !60
  %i.ck = and i32 %i.cj, 2147483647
  %.not8.i = icmp eq i32 %i.cf, 0
  br i1 %.not8.i, label %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.09.i = phi i32 [ %i.cl, %.lr.ph.i ], [ %i.cf, %bb.t ] ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.ck, i32 %.09.i) ; 2 uses
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i36, i32 noundef %.sroa.speculated.i)
  %i.cl = sub i32 %.09.i, %.sroa.speculated.i     ; 2 uses
  %.not.i42 = icmp eq i32 %i.cl, 0
  br i1 %.not.i42, label %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit", label %.lr.ph.i, !llvm.loop !253

"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit": ; preds = %.lr.ph.i, %bb.t
  %.sroa.0.0.copyload.i.i.i43 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i43, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !60
  %i.cq = and i32 %i.cp, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i, i32 noundef %i.cq)
  br label %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52"

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload.i.i.i44 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  %i.cr = and i64 %.sroa.0.0.copyload.i.i.i44, 281474976710655
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !60
  %i.cv = and i32 %i.cu, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i, i32 noundef %i.cv)
  %i.cw = sub i32 %17, %i.ai                      ; 2 uses
  %.sroa.0.0.copyload.i.i.i45 = load i64, ptr %.0.i.i.i.i.i.i36, align 8, !tbaa !24
  %i.cx = and i64 %.sroa.0.0.copyload.i.i.i45, 281474976710655
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !60
  %i.db = and i32 %i.da, 2147483647
  %.not8.i46 = icmp eq i32 %i.cw, 0
  br i1 %.not8.i46, label %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52", label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.u, %.lr.ph.i47
  %.09.i48 = phi i32 [ %i.dc, %.lr.ph.i47 ], [ %i.cw, %bb.u ] ; 2 uses
  %.sroa.speculated.i49 = call i32 @llvm.umin.i32(i32 %i.db, i32 %.09.i48) ; 2 uses
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i36, i32 noundef %.sroa.speculated.i49)
  %i.dc = sub i32 %.09.i48, %.sroa.speculated.i49 ; 2 uses
  %.not.i51 = icmp eq i32 %i.dc, 0
  br i1 %.not.i51, label %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52", label %.lr.ph.i47, !llvm.loop !253

"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52": ; preds = %.lr.ph.i47, %bb.u, %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit"
  %i.dd = load i64, ptr %6, align 8, !tbaa !101
  %i.de = inttoptr i64 %i.dd to ptr
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.de, align 8, !tbaa !24
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i, %bb.m, %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52"
  %.sroa.076.1 = phi i32 [ 1, %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52" ], [ 0, %bb.m ], [ 0, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  %.sroa.11.0 = phi i64 [ %.sroa.0.0.copyload.i53, %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52" ], [ undef, %bb.m ], [ undef, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.thread

.thread:                                          ; preds = %bb.i, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.076.6 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 1, %bb.e ], [ 1, %bb.k ], [ %i.bm, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.076.1, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ 0, %bb.i ]
  %.sroa.11.5 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %.sroa.0.0.copyload.i.i, %bb.e ], [ %.sroa.0.0.copyload.i40, %bb.k ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.11.0, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ undef, %bb.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.076.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.11.5, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22stringPrototypeReplaceEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.209", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::StringView::const_iterator", align 8 ; 5 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::SmallXString", align 8 ; 11 uses
  %7 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %8 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %9 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !254 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.mask.i.i = and i64 %i.b, -140737488355328
  switch i64 %.mask.i.i, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread [
    i64 -1688849860263936, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
    i64 -1548112371908608, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  ], !prof !55

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 29, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store ptr @.str.20, ptr %5, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !45
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge73, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, !prof !56

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.pre = load ptr, ptr %2, align 8
  br label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, %bb.a
  %i.i = phi ptr [ %.pre, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %.not316 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.02.0.i = select i1 %.not316, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.l ; 4 uses
  %i.m = icmp ugt i32 %i.k, 1
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.02.0.i74 = select i1 %i.m, ptr %i.n, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 4 uses
  %i.o = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !30
  %.mask.i = and i64 %i.o, -140737488355328
  switch i64 %.mask.i, label %bb.b [
    i64 -1688849860263936, label %bb.i
    i64 -1548112371908608, label %bb.i
  ]

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !12
  store i64 -1266637126761928, ptr %i.s, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

bb.d:                                             ; preds = %bb.b
  %i.x = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.q, i64 -1266637126761928) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %i.x, %bb.d ]
  %i.y = call { i32, i64 } @_ZN6hermes2vm9getMethodERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr %.0.i.i.i.i.i.i) #13 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = extractvalue { i32, i64 } %i.y, 1       ; 3 uses
  %i.ab = icmp eq i32 %i.z, 0
  br i1 %i.ab, label %.critedge73, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit
  %.mask.i76 = and i64 %i.aa, -140737488355328
  %i.ac = icmp eq i64 %.mask.i76, -1688849860263936
  br i1 %i.ac, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !8   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !12
  store i64 %i.aa, ptr %i.af, align 8, !tbaa !24
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.aa) #13
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i78 = phi ptr [ %i.af, %bb.g ], [ %i.ak, %bb.h ]
  %.sroa.0.0.copyload.i79 = load i64, ptr %i.a, align 8, !tbaa !24
  %.sroa.0.0.copyload.i80 = load i64, ptr %.sroa.02.0.i74, align 8, !tbaa !24
  %i.al = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr %.0.i.i.i.i.i.i78, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 %.sroa.0.0.copyload.i79, i64 %.sroa.0.0.copyload.i80, i1 noundef zeroext false) #13 ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 0
  %i.an = extractvalue { i32, i64 } %i.al, 1
  br label %.critedge73

bb.i:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.e
  %i.ao = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #13 ; 2 uses
  %.not317 = icmp eq ptr %i.ao, inttoptr (i64 -1 to ptr)
  br i1 %.not317, label %.critedge73, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = or i64 %i.ap, -844424930131968          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 192 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22
  %i.ax = icmp ult ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !12
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.az = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.as, i64 %i.aq) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i81 = phi ptr [ %i.au, %bb.k ], [ %i.az, %bb.l ] ; 5 uses
  %i.ba = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #13 ; 2 uses
  %.not318 = icmp eq ptr %i.ba, inttoptr (i64 -1 to ptr)
  br i1 %.not318, label %.critedge73, label %bb.m, !prof !7

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = or i64 %i.bb, -844424930131968          ; 2 uses
  %i.bd = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.o, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !12
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit83

bb.o:                                             ; preds = %bb.m
  %i.bk = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.bc) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit83

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit83: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i.i82 = phi ptr [ %i.bf, %bb.n ], [ %i.bk, %bb.o ] ; 5 uses
  %.sroa.0.0.copyload.i.i84 = load i64, ptr %.sroa.02.0.i74, align 8, !tbaa !24 ; 2 uses
  %i.bl = icmp ugt i64 %.sroa.0.0.copyload.i.i84, -844424930131969
  br i1 %i.bl, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit83
  %i.bm = and i64 %.sroa.0.0.copyload.i.i84, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, -1140850688
  %i.bq = icmp ult i32 %i.bp, 150994944
  %spec.select.i = select i1 %i.bq, ptr %.sroa.02.0.i74, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit83, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit83 ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 192 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !12 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 200
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !22
  %i.bw = icmp ult ptr %i.bt, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.q, !prof !23

bb.p:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !12
  store i64 -844424930131968, ptr %i.bt, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.q:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.by = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.br, i64 -844424930131968) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i.i.i.i85 = phi ptr [ %i.bt, %bb.p ], [ %i.by, %bb.q ] ; 2 uses
  %i.bz = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !30 ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, -844424930131969
  %i.cb = and i64 %i.bz, 281474976710655
  %i.cc = icmp ne i64 %i.cb, 0
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm22stringPrototypeReplaceEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ko = and i64 %.sroa.0.0.copyload.i.i177, 281474976710655
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !60
  %i.ks = and i32 %i.kr, 2147483647
  %.not = icmp eq i32 %i.ks, 0
  br i1 %.not, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload.i178 = load i64, ptr %.0.i.i.i.i.i.i81, align 8, !tbaa !24
  br label %.critedge73

bb.cz:                                            ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit173, %bb.cx
  %.171 = phi i32 [ 0, %bb.cx ], [ %i.kn, %_ZNK6hermes2vm10StringView5beginEv.exit173 ] ; 4 uses
  %i.kt = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 192 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !12 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 200
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !22
  %i.ky = icmp ult ptr %i.kv, %i.kx
  br i1 %i.ky, label %bb.da, label %bb.db, !prof !23

bb.da:                                            ; preds = %bb.cz
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store ptr %i.kz, ptr %i.ku, align 8, !tbaa !12
  store i64 -844424930131968, ptr %i.kv, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit180

bb.db:                                            ; preds = %bb.cz
  %i.la = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.kt, i64 -844424930131968) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit180

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit180: ; preds = %bb.da, %bb.db
  %.0.i.i.i.i.i.i179 = phi ptr [ %i.kv, %bb.da ], [ %i.la, %bb.db ] ; 2 uses
  br i1 %i.cd, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit180
  %.sroa.0.0.copyload.i181 = load i64, ptr %.0.i.i.i.i.i.i82, align 8, !tbaa !24
  %i.lb = uitofp i32 %.171 to double
  %i.lc = bitcast double %i.lb to i64
  %.sroa.0.0.copyload.i182 = load i64, ptr %.0.i.i.i.i.i.i81, align 8, !tbaa !24
  %i.ld = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i64 %.sroa.0.0.copyload.i181, i64 %i.lc, i64 %.sroa.0.0.copyload.i182, i1 noundef zeroext false) #13 ; 2 uses
  %i.le = extractvalue { i32, i64 } %i.ld, 0
  %i.lf = extractvalue { i32, i64 } %i.ld, 1      ; 2 uses
  %i.lg = icmp eq i32 %i.le, 0
  br i1 %i.lg, label %.critedge73, label %bb.dd, !prof !7

bb.dd:                                            ; preds = %bb.dc
  %i.lh = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 192 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !12 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 200
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !22
  %i.lm = icmp ult ptr %i.lj, %i.ll
  br i1 %i.lm, label %bb.de, label %bb.df, !prof !23

bb.de:                                            ; preds = %bb.dd
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store ptr %i.ln, ptr %i.li, align 8, !tbaa !12
  store i64 %i.lf, ptr %i.lj, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.df:                                            ; preds = %bb.dd
  %i.lo = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.lh, i64 %i.lf) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.de, %bb.df
  %.0.i.i.i.i.i.i184 = phi ptr [ %i.lj, %bb.de ], [ %i.lo, %bb.df ]
  %i.lp = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i184) #13 ; 2 uses
  %.not320 = icmp eq ptr %i.lp, inttoptr (i64 -1 to ptr)
  br i1 %.not320, label %.critedge73, label %.thread312, !prof !7

.thread312:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.lq = ptrtoint ptr %i.lp to i64
  br label %bb.di

bb.dg:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit180
  %i.lr = ptrtoint ptr %.0.i.i.i.i.i.i85 to i64
  %i.ls = call { i32, i64 } @_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i82, ptr %.0.i.i.i.i.i.i81, i32 noundef %.171, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, i64 %i.lr) #13 ; 2 uses
  %i.lt = extractvalue { i32, i64 } %i.ls, 0
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %.critedge73, label %bb.dh, !prof !7

bb.dh:                                            ; preds = %bb.dg
  %i.lv = extractvalue { i32, i64 } %i.ls, 1
  %i.lw = and i64 %i.lv, 281474976710655
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.thread312
  %storemerge.in = phi i64 [ %i.lw, %bb.dh ], [ %i.lq, %.thread312 ]
  %storemerge = or i64 %storemerge.in, -844424930131968
  store i64 %storemerge, ptr %.0.i.i.i.i.i.i179, align 8, !tbaa !30
  %.sroa.0.0.copyload.i.i185 = load i64, ptr %.0.i.i.i.i.i.i82, align 8, !tbaa !24
  %i.lx = and i64 %.sroa.0.0.copyload.i.i185, 281474976710655
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !60
  %i.mb = and i32 %i.ma, 2147483647
  %i.mc = add i32 %i.mb, %.171                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.md, ptr %6, align 8, !tbaa !48
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.me, align 8, !tbaa !50
  %i.mf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 32, ptr %i.mf, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %.sroa.2.8.extract.trunc.i = trunc i64 %i.cj to i32 ; 2 uses
  %i.mg = and i32 %.sroa.2.8.extract.trunc.i, -1073741824
  %.sroa.2.8.insert.ext.i = and i64 %i.cj, 4294967295
  %.sroa.2.12.insert.ext.i = zext i32 %.171 to i64
  %.sroa.2.12.insert.shift.i = shl nuw i64 %.sroa.2.12.insert.ext.i, 32
  %.sroa.2.12.insert.insert.i = or disjoint i64 %.sroa.2.12.insert.shift.i, %.sroa.2.8.insert.ext.i
  store ptr %i.ci, ptr %7, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %i.mh, align 8
  %i.mi = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.mj = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i179) #13 ; 2 uses
  %i.mk = extractvalue { ptr, i64 } %i.mj, 0
  store ptr %i.mk, ptr %8, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mm = extractvalue { ptr, i64 } %i.mj, 1
  store i64 %i.mm, ptr %i.ml, align 8
  %i.mn = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.mo = sub i32 %.sroa.13.12.extract.trunc, %i.mc
  %i.mp = add i32 %i.mc, %.sroa.2.8.extract.trunc.i
  %i.mq = and i32 %i.mp, 1073741823
  %i.mr = or disjoint i32 %i.mq, %i.mg
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.mr to i64
  %.sroa.2.12.insert.ext.i.i = zext i32 %i.mo to i64
  %.sroa.2.12.insert.shift.i.i = shl nuw i64 %.sroa.2.12.insert.ext.i.i, 32
  %.sroa.2.12.insert.insert.i.i = or disjoint i64 %.sroa.2.12.insert.shift.i.i, %.sroa.2.8.insert.ext.i.i
  store ptr %i.ci, ptr %9, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.2.12.insert.insert.i.i, ptr %i.ms, align 8
  %i.mt = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.mu = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.mv = load i32, ptr %i.me, align 8, !tbaa !50 ; 2 uses
  %i.mw = zext i32 %i.mv to i64                   ; 2 uses
  %.not.i190 = icmp ult i32 %i.mv, 65536
  br i1 %.not.i190, label %bb.dj, label %bb.dk, !prof !23

bb.dj:                                            ; preds = %bb.di
  %i.mx = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.mu, i64 %i.mw) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.209") align 8 %3, ptr %i.mu, i64 %i.mw)
  %i.my = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %i.mz = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dk
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !44
  %i.nd = shl i64 %i.nc, 1
  %i.ne = add i64 %i.nd, 2
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.ne) #15
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.dj, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.mx, %bb.dj ], [ %i.my, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.nf = extractvalue { i32, i64 } %.pn.i, 0
  %i.ng = extractvalue { i32, i64 } %.pn.i, 1
  %i.nh = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.md
  br i1 %i.ni, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  call void @free(ptr noundef %i.nh) #13
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.critedge73

.critedge73:                                      ; preds = %bb.dg, %bb.r, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.cy, %bb.cw, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.dc, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, %bb.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit, %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.0278.13 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %bb.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ], [ 1, %bb.cw ], [ 1, %bb.cy ], [ 0, %bb.r ], [ %i.nf, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ 0, %bb.dc ], [ %i.am, %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit ], [ 0, %bb.dg ]
  %.sroa.13279.9 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ], [ %.sroa.0.0.copyload.i176, %bb.cw ], [ %.sroa.0.0.copyload.i178, %bb.cy ], [ undef, %bb.r ], [ %i.ng, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ undef, %bb.dc ], [ %i.an, %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit ], [ undef, %bb.dg ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0278.13, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.13279.9, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21stringPrototypeSearchEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !257 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.mask.i.i = and i64 %i.b, -140737488355328
  switch i64 %.mask.i.i, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread [
    i64 -1688849860263936, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
    i64 -1548112371908608, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  ], !prof !55

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 29, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store ptr @.str.20, ptr %3, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !45
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, !prof !56

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.pre = load ptr, ptr %2, align 8
  br label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, %bb.a
  %i.i = phi ptr [ %.pre, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.l ; 4 uses
  %i.m = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !30
  %.mask.i = and i64 %i.m, -140737488355328
  switch i64 %.mask.i, label %bb.b [
    i64 -1688849860263936, label %bb.i
    i64 -1548112371908608, label %bb.i
  ]

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !12
  store i64 -1266637126761929, ptr %i.q, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

bb.d:                                             ; preds = %bb.b
  %i.v = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.o, i64 -1266637126761929) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.v, %bb.d ]
  %i.w = call { i32, i64 } @_ZN6hermes2vm9getMethodERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr %.0.i.i.i.i.i.i) #13 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = extractvalue { i32, i64 } %i.w, 1        ; 3 uses
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %.critedge, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit
  %.mask.i28 = and i64 %i.y, -140737488355328
  %i.aa = icmp eq i64 %.mask.i28, -1688849860263936
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !8   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !12
  store i64 %i.y, ptr %i.ad, align 8, !tbaa !24
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ab, i64 %i.y) #13
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i30 = phi ptr [ %i.ad, %bb.g ], [ %i.ai, %bb.h ]
  %.sroa.0.0.copyload.i31 = load i64, ptr %i.a, align 8, !tbaa !24
  %i.aj = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr %.0.i.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 %.sroa.0.0.copyload.i31, i1 noundef zeroext false) #13 ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.aj, 0
  %i.al = extractvalue { i32, i64 } %i.aj, 1
  br label %.critedge

bb.i:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.e
  %i.am = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #13 ; 2 uses
  %.not69 = icmp eq ptr %i.am, inttoptr (i64 -1 to ptr)
  br i1 %.not69, label %.critedge, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = or i64 %i.an, -844424930131968          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !12 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !12
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aq, i64 %i.ao) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i32 = phi ptr [ %i.as, %bb.k ], [ %i.ax, %bb.l ]
  %i.ay = call ptr @_ZN6hermes2vm12regExpCreateERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E) #13 ; 4 uses
  %.not70 = icmp eq ptr %i.ay, inttoptr (i64 -1 to ptr)
  br i1 %.not70, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.az = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 268436023, ptr %i.ay, i32 0, ptr noundef null) #13 ; 2 uses
  %i.ba = extractvalue { i32, i64 } %i.az, 0
  %i.bb = extractvalue { i32, i64 } %i.az, 1      ; 4 uses
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %.critedge, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bd = icmp ugt i64 %i.bb, -844424930131969
  br i1 %i.bd, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !252

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit: ; preds = %bb.n
  %i.be = and i64 %i.bb, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = add i32 %i.bg, -1140850688
  %i.bi = icmp ult i32 %i.bh, 150994944
  br i1 %i.bi, label %bb.o, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !97

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.n, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bj, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 44, ptr %i.bk, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bl, align 8, !tbaa !43
  store ptr @.str.16, ptr %4, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bm, align 8, !tbaa !45
  %i.bn = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

bb.o:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 192 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !12 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.bt = icmp ult ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.p, label %bb.q, !prof !23

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !12
  store i64 %i.bb, ptr %i.bq, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.q:                                             ; preds = %bb.o
  %i.bv = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bo, i64 %i.bb) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i.i.i.i35 = phi ptr [ %i.bq, %bb.p ], [ %i.bv, %bb.q ]
  %.sroa.0.0.copyload.i36 = load i64, ptr %.0.i.i.i.i.i.i32, align 8, !tbaa !24
  %i.bw = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr %.0.i.i.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ay, i64 %.sroa.0.0.copyload.i36, i1 noundef zeroext false) #13 ; 2 uses
  %i.bx = extractvalue { i32, i64 } %i.bw, 0
  %i.by = extractvalue { i32, i64 } %i.bw, 1
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.m, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, %bb.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit, %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.067.5 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 0, %bb.m ], [ 0, %bb.i ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %i.bn, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %i.bx, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %i.ak, %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ]
  %.sroa.9.5 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ undef, %bb.m ], [ undef, %bb.i ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ %i.by, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %i.al, %_ZN6hermes2vm6HandleINS0_8CallableEE6vmcastERNS0_15HandleRootOwnerENS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.067.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.5, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21stringPrototypeCharAtEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !260 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.mask.i.i = and i64 %i.b, -140737488355328
  switch i64 %.mask.i.i, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread [
    i64 -1688849860263936, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
    i64 -1548112371908608, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  ], !prof !55

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 29, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store ptr @.str.20, ptr %3, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !45
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.y, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.i = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #13 ; 2 uses
  %.not = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.y, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = or i64 %i.j, -844424930131968            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.n, align 8, !tbaa !12
  store i64 %i.k, ptr %i.o, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.m, i64 %i.k) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %.not31 = icmp eq i32 %i.v, 0
  br i1 %.not31, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !32, !noalias !263
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 8, !tbaa !24
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.e ], [ -1688849860263936, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !12
  store i64 %.sroa.0.0.i, ptr %i.aa, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.af = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i64 %.sroa.0.0.i) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i18 = phi ptr [ %i.aa, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i18) #13 ; 2 uses
  %i.ah = extractvalue { i32, i64 } %i.ag, 0
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.y, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.aj = extractvalue { i32, i64 } %i.ag, 1
  %i.ak = bitcast i64 %i.aj to double             ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  %i.al = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !60
  %i.ap = and i32 %i.ao, 2147483647
  %i.aq = fcmp uge double %i.ak, 0.000000e+00
  %i.ar = uitofp nneg i32 %i.ap to double
  %i.as = fcmp ult double %i.ak, %i.ar
  %or.cond = and i1 %i.aq, %i.as
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.au = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.at, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #13
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = or i64 %i.av, -844424930131968
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.ax = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #13 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 3 uses
  %i.ba = fptoui double %i.ak to i32              ; 2 uses
  %.sroa.5.8.extract.trunc = trunc i64 %i.az to i32 ; 3 uses
  %i.bb = icmp slt i32 %.sroa.5.8.extract.trunc, 0
  br i1 %i.bb, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.bc = and i32 %.sroa.5.8.extract.trunc, 1073741824
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr               ; 5 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, 150994943
  br i1 %i.bg, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.or.v4i16
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!54 = distinct !{!54, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!55 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!56 = !{!"branch_weights", !"expected", i32 1074010025, i32 1073473623}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!59 = distinct !{!59, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!60 = !{!61, !4, i64 4}
!61 = !{!"_ZTSN6hermes2vm15StringPrimitiveE", !62, i64 0, !4, i64 4}
!62 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !63, i64 0}
!63 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!66 = distinct !{!66, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!69 = distinct !{!69, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!70 = !{!71, !73, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !72, i64 0, !25, i64 8, !5, i64 16}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !73, i64 0}
!73 = !{!"p1 omnipotent char", !11, i64 0}
!74 = !{!75, !77, i64 0}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !76, i64 0, !25, i64 8, !5, i64 16}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !77, i64 0}
!77 = !{!"p1 char16_t", !11, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"char16_t", !5, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!82 = distinct !{!82, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!85 = distinct !{!85, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!88 = distinct !{!88, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!91 = distinct !{!91, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!92 = !{!93, !73, i64 16}
!93 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !94, i64 0, !73, i64 16, !73, i64 24}
!94 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !73, i64 0, !95, i64 8}
!95 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !11, i64 0}
!96 = !{!93, !73, i64 24}
!97 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!98 = !{!94, !73, i64 0}
!99 = !{!100, !4, i64 0}
!100 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!101 = !{!21, !21, i64 0}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb: argument 0"}
!106 = distinct !{!106, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb"}
!107 = !{!108, !111, i64 24}
!108 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes2vm13StringBuilderELb0EEE", !109, i64 0, !111, i64 24}
!109 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes2vm13StringBuilderEcccccccccEE", !110, i64 0}
!110 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm24EEE", !5, i64 0}
!111 = !{!"bool", !5, i64 0}
!112 = distinct !{!112, !103}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!115 = distinct !{!115, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!118 = distinct !{!118, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!121 = distinct !{!121, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!124 = distinct !{!124, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!127 = distinct !{!127, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!130 = distinct !{!130, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!133 = distinct !{!133, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!136 = distinct !{!136, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!139 = distinct !{!139, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!142 = distinct !{!142, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!145 = distinct !{!145, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!148 = distinct !{!148, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!151 = distinct !{!151, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!154 = distinct !{!154, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!157 = distinct !{!157, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!160 = distinct !{!160, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!161 = distinct !{!161, !103}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!164 = distinct !{!164, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!167 = distinct !{!167, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!170 = distinct !{!170, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!171 = !{!172, !73, i64 0}
!172 = !{!"_ZTSN4llvh8ArrayRefIcEE", !73, i64 0, !25, i64 8}
!173 = !{!172, !25, i64 8}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!176 = distinct !{!176, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!179 = distinct !{!179, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!180 = !{!178, !175}
!181 = !{!182, !178, !175}
!182 = distinct !{!182, !183, !"_ZN6hermes2vm11TwineChar1610createNullEv: argument 0"}
!183 = distinct !{!183, !"_ZN6hermes2vm11TwineChar1610createNullEv"}
!184 = !{!41, !41, i64 0}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!187 = distinct !{!187, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb: argument 0"}
!190 = distinct !{!190, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb"}
!191 = distinct !{!191, !103}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!194 = distinct !{!194, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!197 = distinct !{!197, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!200 = distinct !{!200, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!203 = distinct !{!203, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!206 = distinct !{!206, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!207 = !{!208, !111, i64 24}
!208 = !{!"_ZTSN4llvh8OptionalIN6hermes2vm13StringBuilderEEE", !108, i64 0}
!209 = !{i8 0, i8 2}
!210 = !{}
!211 = distinct !{!211, !103}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!214 = distinct !{!214, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!215 = !{!216, !218}
!216 = distinct !{!216, !217, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!217 = distinct !{!217, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!218 = distinct !{!218, !219, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!219 = distinct !{!219, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!220 = !{!221, !223}
!221 = distinct !{!221, !222, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!222 = distinct !{!222, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!223 = distinct !{!223, !224, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!224 = distinct !{!224, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!225 = distinct !{!225, !103}
!226 = !{!"branch_weights", i32 1, i32 127}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!229 = distinct !{!229, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!230 = !{!"branch_weights", i32 127, i32 255873}
!231 = distinct !{!231, !103}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!234 = distinct !{!234, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!237 = distinct !{!237, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!238 = distinct !{!238, !103}
!239 = distinct !{!239, !103}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!242 = distinct !{!242, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!245 = distinct !{!245, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!248 = distinct !{!248, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb: argument 0"}
!251 = distinct !{!251, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb"}
!252 = !{!"branch_weights", i32 2146410443, i32 1073205}
!253 = distinct !{!253, !103}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!256 = distinct !{!256, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!259 = distinct !{!259, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!262 = distinct !{!262, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!265 = distinct !{!265, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!268 = distinct !{!268, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!271 = distinct !{!271, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!274 = distinct !{!274, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!277 = distinct !{!277, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!280 = distinct !{!280, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!283 = distinct !{!283, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!286 = distinct !{!286, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!289 = distinct !{!289, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!292 = distinct !{!292, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!295 = distinct !{!295, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!298 = distinct !{!298, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!299 = !{!300, !21, i64 0}
!300 = !{!"_ZTSN6hermes2vm10HandleBaseE", !21, i64 0}
!301 = !{!302, !4, i64 8}
!302 = !{!"_ZTSN6hermes2vm13StringBuilderE", !303, i64 0, !4, i64 8, !305, i64 16}
!303 = !{!"_ZTSN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEE", !304, i64 0}
!304 = !{!"_ZTSN6hermes2vm6HandleINS0_15StringPrimitiveEEE", !300, i64 0}
!305 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !11, i64 0}
!306 = distinct !{!306, !307, !308}
!307 = !{!"llvm.loop.isvectorized", i32 1}
!308 = !{!"llvm.loop.unroll.runtime.disable"}
!309 = !{!"branch_weights", i32 4, i32 12}
!310 = distinct !{!310, !307, !308}
!311 = distinct !{!311, !308, !307}
!312 = distinct !{!312, !307, !308}
!313 = distinct !{!313, !307, !308}
!314 = distinct !{!314, !308, !307}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb: argument 0"}
!317 = distinct !{!317, !"_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb"}
!318 = !{!319, !4, i64 12}
!319 = !{!"_ZTSN6hermes2vm10StringViewE", !5, i64 0, !4, i64 8, !4, i64 11, !4, i64 11, !4, i64 12}
!320 = !{!73, !73, i64 0}
!321 = distinct !{!321, !103}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZNK6hermes2vm10StringView6rbeginEv: argument 0"}
!324 = distinct !{!324, !"_ZNK6hermes2vm10StringView6rbeginEv"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZNK6hermes2vm10StringView4rendEv: argument 0"}
!327 = distinct !{!327, !"_ZNK6hermes2vm10StringView4rendEv"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZNK6hermes2vm10StringView6rbeginEv: argument 0"}
!330 = distinct !{!330, !"_ZNK6hermes2vm10StringView6rbeginEv"}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZNK6hermes2vm10StringView4rendEv: argument 0"}
!333 = distinct !{!333, !"_ZNK6hermes2vm10StringView4rendEv"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZSt6searchISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES5_ET_S6_S6_T0_S7_: argument 0"}
!336 = distinct !{!336, !"_ZSt6searchISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES5_ET_S6_S6_T0_S7_"}
!337 = !{!77, !77, i64 0}
!338 = !{!339}
!339 = distinct !{!339, !340, !"_ZNK6hermes2vm10StringView4rendEv: argument 0"}
!340 = distinct !{!340, !"_ZNK6hermes2vm10StringView4rendEv"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"_ZNK6hermes2vm10StringView4rendEv: argument 0"}
!343 = distinct !{!343, !"_ZNK6hermes2vm10StringView4rendEv"}
!344 = !{!302, !305, i64 16}
!345 = !{!346}
!346 = distinct !{!346, !347}
!347 = distinct !{!347, !"LVerDomain"}
!348 = !{!349}
!349 = distinct !{!349, !347}
!350 = distinct !{!350, !103, !307, !308}
!351 = distinct !{!351, !103, !307, !308}
!352 = distinct !{!352, !103, !307}
!353 = !{!354}
!354 = distinct !{!354, !355}
!355 = distinct !{!355, !"LVerDomain"}
!356 = !{!357}
!357 = distinct !{!357, !355}
!358 = distinct !{!358, !103, !307, !308}
!359 = distinct !{!359, !103, !307, !308}
!360 = distinct !{!360, !103, !307}
!361 = !{!362}
!362 = distinct !{!362, !363}
!363 = distinct !{!363, !"LVerDomain"}
!364 = !{!365}
!365 = distinct !{!365, !363}
!366 = distinct !{!366, !103, !307, !308}
!367 = distinct !{!367, !103, !307, !308}
!368 = distinct !{!368, !103, !307}
!369 = !{!76, !77, i64 0}
!370 = !{!75, !25, i64 8}
!371 = !{i64 0, i64 8, !320, i64 8, i64 8, !337}
!372 = distinct !{!372, !103}
!373 = !{!374, !73, i64 0}
!374 = !{!"_ZTSN6hermes2vm10StringView14const_iteratorE", !73, i64 0, !77, i64 8}
!375 = distinct !{!375, !103}
!376 = !{!374, !77, i64 8}
!377 = distinct !{!377, !103}
!378 = distinct !{!378, !103}
!379 = distinct !{!379, !103}
!380 = distinct !{!380, !103}
end_hunk_2
