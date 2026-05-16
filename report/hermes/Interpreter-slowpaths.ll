inline.NumInlined: 948
inline.NumDeleted: 439
begin_hunk_0_@_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doIncEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !12
  store i64 %i.c, ptr %i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.c) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fadd double %i.s, 1.000000e+00           ; 2 uses
  %i.u = fcmp uno double %i.t, 0.000000e+00
  %i.v = bitcast double %i.t to i64
  %.sroa.0.0.i = select i1 %i.u, i64 9221120237041090560, i64 %i.v, !prof !7
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.w, ptr %i.h, align 8, !tbaa !12
  store i64 %i.c, ptr %i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.c) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i10 = phi ptr [ %i.i, %bb.h ], [ %i.x, %bb.i ]
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive3incERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i10) #12 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = extractvalue { i32, i64 } %i.y, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit, %bb.f
  %.sroa.017.0 = phi i32 [ 1, %bb.f ], [ %i.z, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ], [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.5.0 = phi i64 [ %.sroa.0.0.i, %bb.f ], [ %i.aa, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ], [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.017.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive3incERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i32, i64 } @_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doDecEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef 2) #12 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = extractvalue { i32, i64 } %i.a, 1        ; 5 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.j, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.c, -281474976710656
  %i.e = icmp eq i64 %.mask.i, -562949953421312
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = icmp ult ptr %i.i, %i.k                  ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !12
  store i64 %i.c, ptr %i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.c) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double
  %i.t = fadd double %i.s, -1.000000e+00          ; 2 uses
  %i.u = fcmp uno double %i.t, 0.000000e+00
  %i.v = bitcast double %i.t to i64
  %.sroa.0.0.i = select i1 %i.u, i64 9221120237041090560, i64 %i.v, !prof !7
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.w, ptr %i.h, align 8, !tbaa !12
  store i64 %i.c, ptr %i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.c) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i10 = phi ptr [ %i.i, %bb.h ], [ %i.x, %bb.i ]
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive3decERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i10) #12 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = extractvalue { i32, i64 } %i.y, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.a, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit, %bb.f
  %.sroa.017.0 = phi i32 [ 1, %bb.f ], [ %i.z, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ], [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.5.0 = phi i64 [ %.sroa.0.0.i, %bb.f ], [ %i.aa, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ], [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.017.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive3decERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm11Interpreter13saveGeneratorERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -56
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !24
  %i.b = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  tail call void @_ZN6hermes2vm22GeneratorInnerFunction9saveStackERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %0) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24
  %i.h = xor i64 %i.g, %i.e
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.o, ptr %i.p, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 1, ptr %i.q, align 4, !tbaa !61
  ret void
}

declare void @_ZN6hermes2vm22GeneratorInnerFunction9saveStackERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm11Interpreter14caseDirectEvalERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.hermes::ScopeChain", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !31
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = icmp ne i8 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 208 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %i.r = tail call ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #12 ; 2 uses
  %i.s = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.r, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 44, ptr %i.r, i32 0, ptr noundef null) #12 ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  %i.u = extractvalue { i32, i64 } %i.s, 1        ; 5 uses
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %.thread, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %i.u, -844424930131969
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.u, 281474976710655
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %4 = load i32, ptr %i.y, align 4                ; 2 uses
  %5 = add i32 %4, -1157627904
  %i.z = icmp ult i32 %5, 67108864
  br i1 %i.z, label %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit, label %.critedge.thread64

_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  %.not = icmp eq ptr %i.ab, @_ZN6hermes2vm4evalEPvRNS0_7RuntimeENS0_10NativeArgsE
  br i1 %.not, label %bb.j, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, !prof !23

.critedge.thread64:                               ; preds = %bb.c
  %6 = add i32 %4, -1140850688
  %i.ac = icmp ult i32 %6, 150994944
  br i1 %i.ac, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, label %bb.g

_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit, %.critedge.thread64
  %i.ad = or i64 %i.u, -281474976710656           ; 2 uses
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !8   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !12
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit
  %i.al = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ae, i64 %i.ad) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.al, %bb.e ]
  %.sroa.02.0.copyload = load i64, ptr %i.h, align 8, !tbaa !24
  %i.am = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i64 %.sroa.02.0.copyload, i1 noundef zeroext false) #12 ; 2 uses
  %i.an = extractvalue { i32, i64 } %i.am, 0
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit
  %i.ap = extractvalue { i32, i64 } %i.am, 1
  store i64 %i.ap, ptr %i.d, align 8, !tbaa !65
  br label %.thread

bb.g:                                             ; preds = %bb.b, %.critedge.thread64
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !8   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !12 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !12
  store i64 %i.u, ptr %i.as, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aq, i64 %i.u) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i44 = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = tail call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i44, ptr nonnull @.str, i64 18)
  br label %.thread

bb.j:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit
  %i.az = load i64, ptr %i.h, align 8, !tbaa !65  ; 2 uses
  %.mask.i = and i64 %i.az, -281474976710656
  %i.ba = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.ba, label %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.az, ptr %i.d, align 8, !tbaa !65
  br label %.thread

_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null)
  %i.bd = call { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.k, i1 noundef zeroext false) #12 ; 2 uses
  %i.be = extractvalue { i32, i64 } %i.bd, 0
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.bg = extractvalue { i32, i64 } %i.bd, 1
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %bb.l
  %.2 = phi i32 [ 1, %bb.l ], [ 0, %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ]
  %i.bh = load ptr, ptr %3, align 8, !tbaa !67    ; 3 uses
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i ], [ %i.bh, %bb.m ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #13
  br label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.bi
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, %bb.m
  %i.bq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i ], [ %i.bh, %bb.m ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes10ScopeChainD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i
  %i.br = load ptr, ptr %i.bc, align 8, !tbaa !77
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #13
  br label %_ZN6hermes10ScopeChainD2Ev.exit

_ZN6hermes10ScopeChainD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.thread

.thread:                                          ; preds = %bb.f, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.k, %_ZN6hermes10ScopeChainD2Ev.exit, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %i.ay, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 1, %bb.k ], [ %.2, %_ZN6hermes10ScopeChainD2Ev.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit ], [ 1, %bb.f ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.bw = zext i32 %i.q to i64
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !78
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !79
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  store i32 %i.q, ptr %i.p, align 8, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !22
  store ptr %i.o, ptr %i.n, align 8, !tbaa !12
  ret i32 %.4
}

declare ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare { i32, i64 } @_ZN6hermes2vm4evalEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return) #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
_ZN6hermes2vm11TwineChar16C2EPKc.exit:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 6 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %3, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !30
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  store ptr %2, ptr %5, align 8, !tbaa !31
  br label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit

_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.a
  %.sink.i = phi i32 [ 3, %bb.a ], [ 1, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sink.i, ptr %i.h, align 8, !tbaa !32
  %i.i = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %i.i
}

declare { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -128, 128) i32 @_ZN6hermes2vm11Interpreter15casePutOwnByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !31
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %.not = icmp eq i8 %i.j, 0
  %spec.select = select i1 %.not, i32 318, i32 319
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = tail call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.d, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.h, i32 %spec.select, ptr %i.n, i32 0) #12
  %i.p = shl i32 %i.o, 24
  %i.q = ashr exact i32 %i.p, 24
  ret i32 %i.q
}

declare i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -128, 128) i32 @_ZN6hermes2vm11Interpreter27casePutOwnGetterSetterByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  %i.c = and i8 %i.b, 1
  %i.d = or disjoint i8 %i.c, 44
  %i.e = zext nneg i8 %i.d to i16                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !12
  store i64 -281474976710656, ptr %i.i, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 -281474976710656) #12
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !8   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre37 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre39 = load ptr, ptr %.phi.trans.insert38, align 8, !tbaa !22
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.k, %bb.b ], [ %.pre39, %bb.c ]
  %i.p = phi ptr [ %i.m, %bb.b ], [ %.pre37, %bb.c ] ; 4 uses
  %i.q = phi ptr [ %i.g, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = icmp ult ptr %i.p, %i.o
  br i1 %i.r, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.s, align 8, !tbaa !12
  store i64 -281474976710656, ptr %i.p, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25

bb.e:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.u = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.q, i64 -281474976710656) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25

_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i24 = phi ptr [ %i.p, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !31
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  %.mask.i = and i64 %i.z, -140737488355328
  %i.aa = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.aa, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25
  %i.ab = or disjoint i16 %i.e, 64
  %i.ac = or i64 %i.z, -281474976710656
  store i64 %i.ac, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25
  %.sroa.034.0 = phi i16 [ %i.e, %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit25 ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %.mask.i26 = and i64 %i.ah, -140737488355328
  %i.ai = icmp eq i64 %.mask.i26, -1688849860263936
  br i1 %i.ai, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aj = or i16 %.sroa.034.0, 128
  %i.ak = or i64 %i.ah, -281474976710656
  store i64 %i.ak, ptr %.0.i.i.i.i.i.i24, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.034.1 = phi i16 [ %.sroa.034.0, %bb.g ], [ %i.aj, %bb.h ]
  %i.al = tail call i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, ptr %.0.i.i.i.i.i.i24) #12
  %i.am = or i64 %i.al, -281474976710656          ; 2 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !8   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = icmp ult ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !12
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.k:                                             ; preds = %bb.i
  %i.au = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.an, i64 %i.am) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i27 = phi ptr [ %i.ap, %bb.j ], [ %i.au, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !31
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !31
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bb
  %.sroa.034.0.insert.ext = zext nneg i16 %.sroa.034.1 to i32
  %i.bd = tail call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bc, i32 %.sroa.034.0.insert.ext, ptr %.0.i.i.i.i.i.i27, i32 0) #12
  %i.be = shl i32 %i.bd, 24
  %i.bf = ashr exact i32 %i.be, 24
  ret i32 %i.bf
}

declare i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm11Interpreter17caseIteratorBeginERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 7 uses
  %4 = alloca %"class.hermes::vm::CallResult.176", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.04.0.copyload, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread, !prof !80

_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit: ; preds = %bb.a
  %i.f = and i64 %.sroa.04.0.copyload, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %5 = load i32, ptr %i.g, align 4
  %.mask.i.i.i.i.i.i.i = and i32 %5, -16777216
  %i.h = icmp eq i32 %.mask.i.i.i.i.i.i.i, 536870912
  br i1 %i.h, label %bb.b, label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread, !prof !81

bb.b:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 0, ptr %3, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.i, align 4, !tbaa !82
  %i.j = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 268436017, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %3) #12 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread46, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %i.k = call { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE(ptr nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(9816) %0, i64 %.sroa.0.0.copyload) ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i32, i64 } %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.p = load i64, ptr %i.o, align 8, !tbaa !65
  %.not49 = icmp eq i64 %i.n, %i.p
  br i1 %.not49, label %bb.e, label %.thread46, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  store i64 0, ptr %i.t, align 8, !tbaa !65
  br label %bb.f

.thread46:                                        ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pre = load i8, ptr %i.a, align 1, !tbaa !31
  %.pre50 = zext i8 %.pre to i64
  br label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.124.ph = phi i32 [ 1, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.i

_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %.thread46, %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit
  %.pre-phi = phi i64 [ %i.c, %bb.a ], [ %.pre50, %.thread46 ], [ %i.c, %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 208 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !62   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi
  call void @_ZN6hermes2vm11getIteratorERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh8OptionalINS3_INS0_8CallableEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.176") align 8 %4, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.aa, i64 undef, i8 0) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !84, !range !89, !noundef !90
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.af, align 8, !tbaa !24
  %i.ag = load i8, ptr %i.a, align 1, !tbaa !31
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ah
  store i64 %.sroa.0.0.copyload.i27, ptr %i.ai, align 8, !tbaa !65
  %i.aj = load ptr, ptr %4, align 8, !tbaa !91
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !31
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  store i64 %.sroa.0.0.copyload.i29, ptr %i.an, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread, %bb.g
  %.4 = phi i32 [ 1, %bb.g ], [ 0, %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ap = zext i32 %i.z to i64
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store i32 %i.z, ptr %i.y, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  store ptr %i.at, ptr %i.au, align 8, !tbaa !22
  store ptr %i.x, ptr %i.w, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.5 = phi i32 [ %.4, %bb.h ], [ %.124.ph, %bb.f ]
  ret i32 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.410.0.extract.shift = lshr i64 %2, 32    ; 3 uses
  %.sroa.410.0.extract.trunc = trunc nuw i64 %.sroa.410.0.extract.shift to i32
  %i.a = and i64 %2, 1280
  %or.cond = icmp eq i64 %i.a, 0
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = or i64 %i.b, -281474976710656            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !12
  store i64 %i.c, ptr %i.g, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.e, i64 %i.c) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %i.m = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sroa.410.0.extract.trunc, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = extractvalue { i32, i64 } %i.m, 1
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.e:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %2, 21474836480
  br i1 %i.p, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !3
  %i.s = ptrtoint ptr %1 to i64
  %i.t = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = add nuw nsw i64 %.sroa.410.0.extract.shift, 4294967291
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = and i64 %i.w, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.f, %bb.g
  %.sink6.i.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.410.0.extract.shift, %bb.f ]
  %.sink.i.i = phi ptr [ %i.x, %bb.g ], [ %i.q, %bb.f ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %.sink6.i.i
  %.sroa.0.0.i.i = load i32, ptr %i.z, align 4, !tbaa !3 ; 9 uses
  %i.aa = trunc i32 %.sroa.0.0.i.i to i8
  %i.ab = and i8 %i.aa, 15
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.h
    i8 8, label %bb.h
    i8 1, label %bb.i
    i8 9, label %bb.i
    i8 2, label %bb.j
    i8 10, label %bb.j
    i8 3, label %bb.k
    i8 11, label %bb.k
    i8 4, label %bb.l
    i8 12, label %bb.l
    i8 5, label %bb.m
    i8 13, label %bb.m
    i8 6, label %bb.n
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %bb.o
    i8 15, label %bb.p
  ]

bb.h:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = zext i32 %.sroa.0.0.i.i to i64
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = or i64 %i.ae, -281474976710656
  %i.ag = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.af
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.i:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.ah = and i32 %.sroa.0.0.i.i, -8
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = zext i32 %i.ah to i64
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = or i64 %i.ak, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.j:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.am = and i32 %.sroa.0.0.i.i, -8
end_hunk_0
