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
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = add i32 %i.z, -1157627904
  %i.ab = icmp ult i32 %i.aa, 67108864
  br i1 %i.ab, label %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit, label %.critedge.thread64

_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  %.not = icmp eq ptr %i.ad, @_ZN6hermes2vm4evalEPvRNS0_7RuntimeENS0_10NativeArgsE
  br i1 %.not, label %bb.j, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, !prof !23

.critedge.thread64:                               ; preds = %bb.c
  %i.ae = add i32 %i.z, -1140850688
  %i.af = icmp ult i32 %i.ae, 150994944
  br i1 %i.af, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, label %bb.g

_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit, %.critedge.thread64
  %i.ag = or i64 %i.u, -281474976710656           ; 2 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !8   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !12
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit
  %i.ao = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.ag) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.ao, %bb.e ]
  %.sroa.02.0.copyload = load i64, ptr %i.h, align 8, !tbaa !24
  %i.ap = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i64 %.sroa.02.0.copyload, i1 noundef zeroext false) #12 ; 2 uses
  %i.aq = extractvalue { i32, i64 } %i.ap, 0
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.thread, label %bb.f, !prof !7

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit
  %i.as = extractvalue { i32, i64 } %i.ap, 1
  store i64 %i.as, ptr %i.d, align 8, !tbaa !65
  br label %.thread

bb.g:                                             ; preds = %bb.b, %.critedge.thread64
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !8   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 192 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = icmp ult ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !12
  store i64 %i.u, ptr %i.av, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.at, i64 %i.u) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i44 = phi ptr [ %i.av, %bb.h ], [ %i.ba, %bb.i ]
  %i.bb = tail call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i44, ptr nonnull @.str, i64 18)
  br label %.thread

bb.j:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !65  ; 2 uses
  %.mask.i = and i64 %i.bc, -281474976710656
  %i.bd = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.bd, label %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.bc, ptr %i.d, align 8, !tbaa !65
  br label %.thread

_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null)
  %i.bg = call { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.k, i1 noundef zeroext false) #12 ; 2 uses
  %i.bh = extractvalue { i32, i64 } %i.bg, 0
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.bj = extractvalue { i32, i64 } %i.bg, 1
  store i64 %i.bj, ptr %i.d, align 8, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %bb.l
  %.2 = phi i32 [ 1, %bb.l ], [ 0, %_ZNSt6vectorIN6hermes14ScopeChainItemESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ]
  %i.bk = load ptr, ptr %3, align 8, !tbaa !67    ; 3 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i ], [ %i.bk, %bb.m ] ; 3 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #13
  br label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bl
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, %bb.m
  %i.bt = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i ], [ %i.bk, %bb.m ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes10ScopeChainD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !77
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #13
  br label %_ZN6hermes10ScopeChainD2Ev.exit

_ZN6hermes10ScopeChainD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.thread

.thread:                                          ; preds = %bb.f, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.k, %_ZN6hermes10ScopeChainD2Ev.exit, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %i.bb, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 1, %bb.k ], [ %.2, %_ZN6hermes10ScopeChainD2Ev.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEPS5_.exit ], [ 1, %bb.f ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.bz = zext i32 %i.q to i64
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !78
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !79
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  store i32 %i.q, ptr %i.p, align 8, !tbaa !62
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !22
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
end_hunk_0
