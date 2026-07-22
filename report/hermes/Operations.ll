inline.NumInlined: 2743
inline.NumDeleted: 1013
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm22instanceOfOperator_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_:bb.a
_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.f, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ad, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 35, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !32
  store ptr @.str.26, ptr %4, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ag, align 8, !tbaa !34
  %i.ah = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  %i.ai = and i32 %i.ah, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

bb.g:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.i18 = load i64, ptr %1, align 8, !tbaa !10
  %i.aj = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %2, i64 %.sroa.0.0.copyload.i.i.i18, i1 noundef zeroext false) #18
  %.fr47 = freeze { i32, i64 } %i.aj              ; 2 uses
  %i.ak = extractvalue { i32, i64 } %.fr47, 0
  %i.al = extractvalue { i32, i64 } %.fr47, 1     ; 5 uses
  %i.am = icmp eq i32 %i.ak, 0
  br i1 %i.am, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.an = ashr i64 %i.al, 47
  switch i64 %i.an, label %bb.k [
    i64 -5, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit
    i64 -6, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit
    i64 -3, label %bb.j
    i64 -12, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread
    i64 -11, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread
    i64 -10, label %bb.i
    i64 -9, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42
    i64 -2, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42
    i64 -1, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42
    i64 -4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = trunc i64 %i.al to i1
  br i1 %i.ao, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.ap = and i64 %i.al, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49
  %i.au = tail call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl(ptr nonnull %i.ar, i32 %i.at, i64 noundef 0) #18
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42

bb.k:                                             ; preds = %bb.h
  %i.av = bitcast i64 %i.al to double
  %or.cond = fcmp ueq double %i.av, 0.000000e+00
  br i1 %or.cond, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42

_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit:  ; preds = %bb.h, %bb.h
  %i.aw = and i64 %i.al, 281474976710655
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !60
  %.fr48 = freeze i32 %i.az
  %i.ba = and i32 %.fr48, 2147483647
  %.not49 = icmp eq i32 %i.ba, 0
  br i1 %.not49, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42

_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42: ; preds = %bb.k, %bb.h, %bb.h, %bb.h, %bb.j, %bb.i, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit
  br label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.0.0.copyload.i.i.i19 = load i64, ptr %2, align 8, !tbaa !10 ; 2 uses
  %i.bb = icmp ugt i64 %.sroa.0.0.copyload.i.i.i19, -844424930131969
  br i1 %i.bb, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20.thread

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20: ; preds = %bb.l
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i19, 281474976710655
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, -1140850688
  %i.bg = icmp ult i32 %i.bf, 150994944
  br i1 %i.bg, label %bb.m, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20.thread

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20.thread: ; preds = %bb.l, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bh, align 8, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 45, ptr %i.bi, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bj, align 8, !tbaa !32
  store ptr @.str.27, ptr %5, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.bk, align 8, !tbaa !34
  %i.bl = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #18
  %i.bm = and i32 %i.bl, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

bb.m:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20
  %i.bn = tail call i32 @_ZN6hermes2vm19ordinaryHasInstanceERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %2, ptr %1)
  br label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread: ; preds = %bb.k, %bb.h, %bb.h, %bb.b, %bb.g, %bb.j, %bb.i, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42, %bb.m, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20.thread, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.033.3 = phi i32 [ %i.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.b ], [ %i.bn, %bb.m ], [ %i.bm, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit20.thread ], [ %i.ai, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread ], [ 0, %bb.g ], [ 257, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread42 ], [ 1, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.h ]
  ret i32 %.sroa.033.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 258) i32 @_ZN6hermes2vm8isRegExpERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7
  %i.b = icmp ugt i64 %i.a, -281474976710657
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 268436021, ptr nonnull %1, i32 0, ptr noundef null) #18
  %.fr24 = freeze { i32, i64 } %i.c               ; 2 uses
  %i.d = extractvalue { i32, i64 } %.fr24, 0
  %i.e = extractvalue { i32, i64 } %.fr24, 1      ; 6 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %.mask.i = and i64 %i.e, -140737488355328
  %i.g = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ashr i64 %i.e, 47
  switch i64 %i.h, label %bb.g [
    i64 -5, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit
    i64 -6, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit
    i64 -3, label %bb.f
    i64 -12, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread
    i64 -11, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread
    i64 -10, label %bb.e
    i64 -9, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17
    i64 -2, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17
    i64 -1, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17
    i64 -4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = trunc i64 %i.e to i1
  br i1 %i.i, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.j = and i64 %i.e, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49
  %i.o = tail call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl(ptr nonnull %i.l, i32 %i.n, i64 noundef 0) #18
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17

bb.g:                                             ; preds = %bb.d
  %i.p = bitcast i64 %i.e to double
  %or.cond = fcmp ueq double %i.p, 0.000000e+00
  br i1 %or.cond, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17

_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit:  ; preds = %bb.d, %bb.d
  %i.q = and i64 %i.e, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %.fr25 = freeze i32 %i.t
  %i.u = and i32 %.fr25, 2147483647
  %.not26 = icmp eq i32 %i.u, 0
  br i1 %.not26, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17

_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17: ; preds = %bb.g, %bb.d, %bb.d, %bb.d, %bb.f, %bb.e, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit
  br label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

bb.h:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !10 ; 2 uses
  %i.v = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.v, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit: ; preds = %bb.h
  %i.w = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i32, ptr %i.x, align 4
  %.fr = freeze i32 %i.y
  %.mask.i.i.i.i.i.i.i = and i32 %.fr, -16777216
  %i.z = icmp eq i32 %.mask.i.i.i.i.i.i.i, 1040187392
  %i.aa = select i1 %i.z, i32 257, i32 1
  br label %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread

_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit, %bb.h, %bb.g, %bb.d, %bb.d, %bb.b, %bb.f, %bb.e, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17, %bb.a
  %.sroa.010.1 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 257, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit.thread17 ], [ 1, %_ZN6hermes2vm9toBooleanENS0_11HermesValueE.exit ], [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.h ], [ %i.aa, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit ], [ 1, %bb.d ]
  ret i32 %.sroa.010.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm23symbolDescriptiveStringERNS0_7RuntimeENS0_6HandleINS0_8SymbolIDEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.hermes::vm::CallResult.260", align 8 ; 9 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !10
  %i.a = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.a) #18
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #18 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.n, align 8, !tbaa !10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.e, %bb.b ], [ %.sroa.0.0.copyload.i.i.pre, %bb.c ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.o = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !60
  %i.s = and i32 %i.r, 2147483647                 ; 2 uses
  %narrow = add nuw i32 %i.s, 8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.t = icmp samesign ugt i32 %i.s, 65527
  br i1 %i.t, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.u = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %narrow) #18, !noalias !157
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.v = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %narrow) #18, !noalias !157
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i32, i64 } [ %i.v, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.w = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.f, !prof !11

bb.f:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.y = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.z = and i64 %i.y, 281474976710655
  %i.aa = or disjoint i64 %i.z, -844424930131968  ; 2 uses
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !12, !noalias !157 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16, !noalias !157 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26, !noalias !157
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !16, !noalias !157
  store i64 %i.aa, ptr %i.ad, align 8, !tbaa !10, !noalias !157
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ab, i64 %i.aa) #18, !noalias !157
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.aj, align 8, !tbaa !160, !alias.scope !157
  %i.ak = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.ak, ptr %2, align 8, !alias.scope !157
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !157
  %.sroa.0.0.copyload.i.i.i6 = load i64, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !10
  %i.al = and i64 %.sroa.0.0.copyload.i.i.i6, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr               ; 7 uses
  %i.an = load i32, ptr %i.am, align 4            ; 4 uses
  %i.ao = and i32 %i.an, 16777216
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp ugt i32 %i.an, 150994943           ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.o, !prof !27

bb.j:                                             ; preds = %bb.i
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.l:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.an, 234881024
  %i.at = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i: ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i = phi ptr [ %i.as, %bb.k ], [ %i.au, %bb.m ], [ %i.av, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.0.i.i, ptr noundef nonnull align 1 dereferenceable(7) @.str.28, i64 7, i1 false)
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.o:                                             ; preds = %bb.i
  br i1 %i.aq, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.q:                                             ; preds = %bb.o
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.an, 251658240
  %i.ay = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i, 117440512
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i4.i = phi ptr [ %i.ax, %bb.p ], [ %i.az, %bb.r ], [ %i.ba, %bb.s ] ; 4 uses
  store <4 x i16> <i16 83, i16 121, i16 109, i16 98>, ptr %.0.i4.i, align 2, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8
  store i16 111, ptr %i.bb, align 2, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 10
  store i16 108, ptr %i.bc, align 2, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 12
  store i16 40, ptr %i.bd, align 2, !tbaa !46
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 7, ptr %i.be, align 8, !tbaa !164
  %.sroa.0.0.copyload.i.i.i7 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !10
  %i.bf = and i64 %.sroa.0.0.copyload.i.i.i7, 281474976710655
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !60
  %i.bj = and i32 %i.bi, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %.0.i.i.i.i.i.i, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %2, align 8, !tbaa !170
  %.sroa.0.0.copyload.i.i.i8 = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i8, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr               ; 7 uses
  %i.bn = load i32, ptr %i.bm, align 4            ; 4 uses
  %i.bo = and i32 %i.bn, 16777216
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = icmp ugt i32 %i.bn, 150994943           ; 2 uses
  br i1 %i.bp, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
  br i1 %i.bq, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i13

bb.v:                                             ; preds = %bb.t
  %.mask.i.i.i.i.i.i.i.i.i12 = and i32 %i.bn, 234881024
  %i.bt = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i12, 134217728
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i13

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i13

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i13: ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i14 = phi ptr [ %i.bs, %bb.u ], [ %i.bu, %bb.w ], [ %i.bv, %bb.x ]
  %i.bw = load i32, ptr %i.be, align 8, !tbaa !164
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 %i.bx
  store i8 41, ptr %i.by, align 1, !tbaa !33
  br label %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit

bb.y:                                             ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
  br i1 %i.bq, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i10

bb.aa:                                            ; preds = %bb.y
  %.mask.i.i.i.i.i.i.i.i3.i9 = and i32 %i.bn, 251658240
  %i.cb = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i9, 117440512
  br i1 %i.cb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i10

bb.ac:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i10

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i10: ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i4.i11 = phi ptr [ %i.ca, %bb.z ], [ %i.cc, %bb.ab ], [ %i.cd, %bb.ac ]
  %i.ce = load i32, ptr %i.be, align 8, !tbaa !164
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i11, i64 %i.cf
  store i16 41, ptr %i.cg, align 2, !tbaa !46
  br label %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit

_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit: ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i13, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i10
  %i.ch = load i64, ptr %2, align 8, !tbaa !59
  %i.ci = inttoptr i64 %i.ch to ptr
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i, %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit
  %.sroa.020.0 = phi ptr [ %i.ci, %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %.sroa.020.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = and i32 %i.d, 16777216
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp ugt i32 %i.d, 150994943             ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.j, !prof !27

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.d, 234881024
  %i.j = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !164
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.o ; 2 uses
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !27

bb.g:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %1, align 1, !tbaa !33
  store i8 %i.s, ptr %i.p, align 1, !tbaa !33
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.l:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i3 = and i32 %i.d, 251658240
  %i.v = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3, 117440512
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.n:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit: ; preds = %bb.k, %bb.m, %bb.n
  %.0.i4 = phi ptr [ %i.u, %bb.k ], [ %i.w, %bb.m ], [ %i.x, %bb.n ] ; 2 uses
  %i.y = icmp sgt i64 %2, 0
  br i1 %i.y, label %iter.check, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

iter.check:                                       ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !164
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr [2 x i8], ptr %.0.i4, i64 %i.ab ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add nuw i64 %2, %i.ab
  %i.ae = shl i64 %i.ad, 1
  %scevgep = getelementptr i8, ptr %.0.i4, i64 %i.ae
  %scevgep12 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %i.ac, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %2, 16
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.af = and i64 %2, 15
  %i.ag = shl nuw i64 %n.vec, 1
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
