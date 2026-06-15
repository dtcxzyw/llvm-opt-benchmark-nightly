inline.NumInlined: 2505
inline.NumDeleted: 964
begin_hunk_0_@_ZN6hermes2vm18regExpSourceGetterEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  store i32 3, ptr %i.aq, align 8, !tbaa !28
  %i.ar = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.as = insertvalue { i32, i64 } poison, i32 %i.ar, 0
  %i.at = insertvalue { i32, i64 } %i.as, i64 undef, 1
  br label %bb.e

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread: ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i
  %.pre-phi30 = phi i64 [ %.pre-phi, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i ], [ %i.o, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit.thread22 ]
  %i.au = inttoptr i64 %.pre-phi30 to ptr
  %i.av = tail call ptr @_ZN6hermes2vm8JSRegExp10getPatternEPS1_RNS0_11PointerBaseE(ptr noundef nonnull %i.au, ptr noundef nonnull align 1 dereferenceable(1) %1) #12
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = or i64 %i.aw, -844424930131968          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 192 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.be = icmp ult ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !32
  store i64 %i.ax, ptr %i.bb, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread
  %i.bg = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.az, i64 %i.ax) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.c ], [ %i.bg, %bb.d ]
  %i.bh = tail call { i32, i64 } @_ZN6hermes2vm8JSRegExp13escapePatternENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit13, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.x, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.bh, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %i.am, %bb.b ], [ %i.at, %_ZN6hermes2vm11TwineChar16C2EPKc.exit13 ]
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24regExpFlagPropertyGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !18, !noalias !94
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !17 ; 4 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35

_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.e, -16777216
  %i.f = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 1040187392
  br i1 %i.f, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre28 = and i64 %.pre, 281474976710655        ; 2 uses
  %i.g = icmp ugt i64 %.pre, -844424930131969
  %i.h = icmp ne i64 %.pre28, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35: ; preds = %bb.a
  %.pre36 = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre2837 = and i64 %.pre36, 281474976710655    ; 2 uses
  %i.j = icmp ugt i64 %.pre36, -844424930131969
  %i.k = icmp ne i64 %.pre2837, 0
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %.thread38

.thread38:                                        ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.val39 = load i64, ptr %i.m, align 8
  br label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i.i

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i, label %bb.b

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i: ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.val = load i64, ptr %i.n, align 8             ; 2 uses
  %i.o = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, -436207616
  %i.s = icmp ult i32 %i.r, 855638016
  br i1 %i.s, label %_ZN6hermes2vmL17thisIsRegExpProtoERNS0_7RuntimeENS0_10NativeArgsE.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i.i: ; preds = %.thread38, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i
  %.val32 = phi i64 [ %.val, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i ], [ %.val39, %.thread38 ]
  %.sroa.0.0.copyload.i.i.pre.i = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !17
  br label %_ZN6hermes2vmL17thisIsRegExpProtoERNS0_7RuntimeENS0_10NativeArgsE.exit

_ZN6hermes2vmL17thisIsRegExpProtoERNS0_7RuntimeENS0_10NativeArgsE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i.i
  %.val33 = phi i64 [ %.val32, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i.i ], [ %.val, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pre.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i.i ], [ %.sroa.0.0.copyload.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i ]
  %i.t = xor i64 %.sroa.0.0.copyload.i.i.i, %.val33
  %i.u = and i64 %i.t, 281474976710655
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vmL17thisIsRegExpProtoERNS0_7RuntimeENS0_10NativeArgsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 34, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !26
  store ptr @.str.5, ptr %3, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !28
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.k

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit
  %.pre-phi30 = phi i64 [ %i.c, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread ], [ %.pre28, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit ], [ %.pre2837, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35 ]
  %i.ab = inttoptr i64 %.pre-phi30 to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %.sroa.0.0.copyload.i19 = load i8, ptr %i.ac, align 4, !tbaa !27 ; 7 uses
  %i.ad = ptrtoint ptr %0 to i64
  switch i64 %i.ad, label %bb.j [
    i64 105, label %bb.c
    i64 109, label %bb.d
    i64 103, label %bb.e
    i64 117, label %bb.f
    i64 121, label %bb.g
    i64 115, label %bb.h
    i64 100, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = and i8 %.sroa.0.0.copyload.i19, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.af, -1407374883553280
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.ah = lshr i8 %.sroa.0.0.copyload.i19, 2
  %.lobit27 = and i8 %i.ah, 1
  %i.ai = zext nneg i8 %.lobit27 to i64
  %i.aj = or disjoint i64 %i.ai, -1407374883553280
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.ak = lshr i8 %.sroa.0.0.copyload.i19, 1
  %.lobit26 = and i8 %i.ak, 1
  %i.al = zext nneg i8 %.lobit26 to i64
  %i.am = or disjoint i64 %i.al, -1407374883553280
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.an = lshr i8 %.sroa.0.0.copyload.i19, 3
  %.lobit25 = and i8 %i.an, 1
  %i.ao = zext nneg i8 %.lobit25 to i64
  %i.ap = or disjoint i64 %i.ao, -1407374883553280
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.aq = lshr i8 %.sroa.0.0.copyload.i19, 5
  %.lobit24 = and i8 %i.aq, 1
  %i.ar = zext nneg i8 %.lobit24 to i64
  %i.as = or disjoint i64 %i.ar, -1407374883553280
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.at = lshr i8 %.sroa.0.0.copyload.i19, 4
  %.lobit23 = and i8 %i.at, 1
  %i.au = zext nneg i8 %.lobit23 to i64
  %i.av = or disjoint i64 %i.au, -1407374883553280
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.aw = lshr i8 %.sroa.0.0.copyload.i19, 6
  %.lobit = and i8 %i.aw, 1
  %i.ax = zext nneg i8 %.lobit to i64
  %i.ay = or disjoint i64 %i.ax, -1407374883553280
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  unreachable

bb.k:                                             ; preds = %_ZN6hermes2vmL17thisIsRegExpProtoERNS0_7RuntimeENS0_10NativeArgsE.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.022.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ %i.aa, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vmL17thisIsRegExpProtoERNS0_7RuntimeENS0_10NativeArgsE.exit ]
  %.sroa.10.0 = phi i64 [ %i.ag, %bb.c ], [ %i.aj, %bb.d ], [ %i.am, %bb.e ], [ %i.ap, %bb.f ], [ %i.as, %bb.g ], [ %i.av, %bb.h ], [ %i.ay, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ -1688849860263936, %_ZN6hermes2vmL17thisIsRegExpProtoERNS0_7RuntimeENS0_10NativeArgsE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.022.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24regExpDollarNumberGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 11 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.e, align 4, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 6 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.h = icmp eq ptr %3, %i.b
  %or.cond.i = or i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %i.g, 4
  br i1 %i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  %i.j = zext i32 %i.g to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.c, i64 noundef %i.j, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !45
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge, %bb.b
  %i.k = phi ptr [ %.pre, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.c, %bb.b ]
  %i.l = phi i32 [ %.pre.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.g, %bb.b ]
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !45
  %gepdiff.i.i = mul nuw nsw i64 %i.m, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 4 %i.n, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !47
  %i.o = zext i32 %i.g to i64
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.p = phi i64 [ 0, %bb.a ], [ %i.o, %.sink.split.i.i ]
  %i.q = add i64 %i.a, 1
  %.not = icmp ugt i64 %i.q, %i.p
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.r, align 8, !tbaa !17 ; 2 uses
  %i.s = icmp ugt i64 %.sroa.06.0.copyload, -844424930131969
  br i1 %i.s, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %.critedge

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.t = and i64 %.sroa.06.0.copyload, 281474976710655
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add i32 %i.v, -50331648
  %i.x = icmp ult i32 %i.w, 134217728
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.y = load ptr, ptr %3, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.a ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !97, !range !101, !noundef !102
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !103
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !104
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.r, i64 noundef %i.ae, i64 noundef %i.ah) #12 ; 2 uses
  %i.aj = extractvalue { i32, i64 } %i.ai, 0
  %i.ak = extractvalue { i32, i64 } %i.ai, 1
  %i.al = icmp ne i32 %i.aj, 0                    ; 2 uses
  %spec.select = zext i1 %i.al to i32
  %spec.select18 = select i1 %i.al, i64 %i.ak, i64 undef, !prof !42
  br label %bb.f

.critedge:                                        ; preds = %bb.c, %bb.d, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.an = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.am, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sroa.016.1 = phi i32 [ 1, %.critedge ], [ %spec.select, %bb.e ]
  %.sroa.417.1 = phi i64 [ %i.ap, %.critedge ], [ %spec.select18, %bb.e ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.c
  br i1 %i.ar, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.aq) #12
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.016.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.417.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23regExpLeftContextGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.g = icmp eq ptr %3, %i.a
  %or.cond.i = or i1 %i.g, %.not.i.i
  br i1 %or.cond.i, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.f, 4
  br i1 %i.h, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !45
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge, %bb.b
  %i.j = phi ptr [ %.pre, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.b, %bb.b ]
  %i.k = phi i32 [ %.pre.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.f, %bb.b ]
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !45
  %gepdiff.i.i = mul nuw nsw i64 %i.l, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 4 %i.m, i64 %gepdiff.i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.n, align 8, !tbaa !17 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.04.0.copyload, -844424930131969
  br i1 %i.o, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.p = and i64 %.sroa.04.0.copyload, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -50331648
  %i.t = icmp ult i32 %i.s, 134217728
  br i1 %i.t, label %bb.d, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !45
  %i.v = load i32, ptr %i.u, align 4, !tbaa !103
  %i.w = zext i32 %i.v to i64
  %i.x = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.n, i64 noundef 0, i64 noundef %i.w) #12 ; 2 uses
  %i.y = extractvalue { i32, i64 } %i.x, 0
  %i.z = extractvalue { i32, i64 } %i.x, 1
  %i.aa = icmp ne i32 %i.y, 0                     ; 2 uses
  %spec.select = zext i1 %i.aa to i32
  %spec.select12 = select i1 %i.aa, i64 %i.z, i64 undef, !prof !42
  br label %bb.e

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %bb.c, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ac = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ab, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = or i64 %i.ad, -844424930131968
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread
  %.sroa.010.1 = phi i32 [ 1, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread ], [ %spec.select, %bb.d ]
  %.sroa.411.1 = phi i64 [ %i.ae, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread ], [ %spec.select12, %bb.d ]
  %i.af = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.af) #12
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.010.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.411.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24regExpRightContextGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.g = icmp eq ptr %3, %i.a
  %or.cond.i = or i1 %i.g, %.not.i.i
  br i1 %or.cond.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.f, 4
  br i1 %i.h, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !45
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge, %bb.b
  %i.j = phi ptr [ %.pre, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.b, %bb.b ]
  %i.k = phi i32 [ %.pre.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.f, %bb.b ]
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !45
  %gepdiff.i.i = mul nuw nsw i64 %i.l, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 4 %i.m, i64 %gepdiff.i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.n, align 8, !tbaa !17 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.05.0.copyload, -844424930131969
  br i1 %i.o, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %.critedge

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.p = and i64 %.sroa.05.0.copyload, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -50331648
  %i.t = icmp ult i32 %i.s, 134217728
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104
  %i.y = add i32 %i.x, %i.v                       ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !105
  %i.ab = and i32 %i.aa, 2147483647               ; 2 uses
  %.not10 = icmp ult i32 %i.y, %i.ab
  br i1 %.not10, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = sub nuw nsw i32 %i.ab, %i.y
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.n, i64 noundef %i.ac, i64 noundef %i.ae) #12 ; 2 uses
  %i.ag = extractvalue { i32, i64 } %i.af, 0
  %i.ah = extractvalue { i32, i64 } %i.af, 1
  %i.ai = icmp ne i32 %i.ag, 0                    ; 2 uses
  %spec.select = zext i1 %i.ai to i32
  %spec.select17 = select i1 %i.ai, i64 %i.ah, i64 undef, !prof !42
  br label %bb.f

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.d, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ak = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = or i64 %i.al, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sroa.015.1 = phi i32 [ 1, %.critedge ], [ %spec.select, %bb.e ]
  %.sroa.416.1 = phi i64 [ %i.am, %.critedge ], [ %spec.select17, %bb.e ]
  %i.an = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.b
  br i1 %i.ao, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.an) #12
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.015.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.416.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm17regExpInputGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.sroa.02.0.copyload = load i64, ptr %i.a, align 8, !tbaa !17 ; 3 uses
  %i.b = icmp ugt i64 %.sroa.02.0.copyload, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.a
  %i.c = and i64 %.sroa.02.0.copyload, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -50331648
  %i.g = icmp ult i32 %i.f, 134217728
  br i1 %i.g, label %bb.b, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.i = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = or i64 %i.j, -844424930131968
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread
  %.sroa.3.0 = phi i64 [ %i.k, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread ], [ %.sroa.02.0.copyload, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21regExpLastMatchGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.g = icmp eq ptr %3, %i.a
  %or.cond.i = or i1 %i.g, %.not.i.i
  br i1 %or.cond.i, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.f, 4
  br i1 %i.h, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !45
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge, %bb.b
  %i.j = phi ptr [ %.pre, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.b, %bb.b ]
  %i.k = phi i32 [ %.pre.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.f, %bb.b ]
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !45
  %gepdiff.i.i = mul nuw nsw i64 %i.l, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 4 %i.m, i64 %gepdiff.i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.n, align 8, !tbaa !17 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.04.0.copyload, -844424930131969
  br i1 %i.o, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.p = and i64 %.sroa.04.0.copyload, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -50331648
  %i.t = icmp ult i32 %i.s, 134217728
  br i1 %i.t, label %bb.d, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !103
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104
  %i.z = zext i32 %i.y to i64
  %i.aa = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.n, i64 noundef %i.w, i64 noundef %i.z) #12 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = extractvalue { i32, i64 } %i.aa, 1
  %i.ad = icmp ne i32 %i.ab, 0                    ; 2 uses
  %spec.select = zext i1 %i.ad to i32
  %spec.select12 = select i1 %i.ad, i64 %i.ac, i64 undef, !prof !42
  br label %bb.e

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %bb.c, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.af = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = or i64 %i.ag, -844424930131968
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread
  %.sroa.010.1 = phi i32 [ 1, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread ], [ %spec.select, %bb.d ]
  %.sroa.411.1 = phi i64 [ %i.ah, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread ], [ %spec.select12, %bb.d ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ai) #12
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.010.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.411.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21regExpLastParenGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 7 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.g = icmp eq ptr %3, %i.a
  %or.cond.i = or i1 %i.g, %.not.i.i
  br i1 %or.cond.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.f, 4
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  br i1 %i.h, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit.thread20

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit.thread20: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !45
  %i.j = zext i32 %.pre.i to i64
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !45
  %gepdiff.i.i21 = mul nuw nsw i64 %i.j, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre, ptr align 4 %i.k, i64 %gepdiff.i.i21, i1 false)
  br label %.sink.split

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !45
  %gepdiff.i.i = mul nuw nsw i64 %i.i, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 4 %i.l, i64 %gepdiff.i.i, i1 false)
  store i32 %i.f, ptr %i.c, align 8, !tbaa !47
  %4 = icmp samesign ugt i32 %i.f, 1
  br i1 %4, label %bb.c, label %.critedge

.sink.split:                                      ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit.thread20
  store i32 %i.f, ptr %i.c, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit
  %i.m = zext i32 %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.n, align 8, !tbaa !17 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.06.0.copyload, -844424930131969
  br i1 %i.o, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %.critedge

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.p = and i64 %.sroa.06.0.copyload, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -50331648
  %i.t = icmp ult i32 %i.s, 134217728
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.m ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !97, !range !101, !noundef !102
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !103
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !104
  %i.ae = zext i32 %i.ad to i64
  %i.af = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.n, i64 noundef %i.ab, i64 noundef %i.ae) #12 ; 2 uses
  %i.ag = extractvalue { i32, i64 } %i.af, 0
  %i.ah = extractvalue { i32, i64 } %i.af, 1
  %i.ai = icmp ne i32 %i.ag, 0                    ; 2 uses
  %spec.select = zext i1 %i.ai to i32
  %spec.select15 = select i1 %i.ai, i64 %i.ah, i64 undef, !prof !42
  br label %bb.f

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.d, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ak = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = or i64 %i.al, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sroa.013.1 = phi i32 [ 1, %.critedge ], [ %spec.select, %bb.e ]
  %.sroa.414.1 = phi i64 [ %i.am, %.critedge ], [ %spec.select15, %bb.e ]
  %i.an = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.b
  br i1 %i.ao, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.an) #12
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.013.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.414.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23regExpPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.248", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::SmallXString", align 8 ; 15 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !18, !noalias !108 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -436207616
  %i.g = icmp ult i32 %i.f, 855638016
  br i1 %i.g, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !13 ; 2 uses
  %.pre48 = and i64 %.pre, 281474976710655
  %i.h = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre48, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.i = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.h, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ] ; 4 uses
  %i.j = icmp ne i64 %.pre-phi, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 48, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !26
  store ptr @.str.7, ptr %4, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.o, align 8, !tbaa !28
  %i.p = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.t

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  %i.q = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 332, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0
  %i.s = extractvalue { i32, i64 } %i.q, 1        ; 2 uses
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %bb.t, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !32
  store i64 %i.s, ptr %i.x, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.v, i64 %i.s) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.d ], [ %i.ac, %bb.e ]
  %i.ad = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not = icmp eq ptr %i.ad, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.t, label %bb.f, !prof !16

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = or i64 %i.ae, -844424930131968          ; 2 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !29  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 192 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = icmp ult ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !32
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.an = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ag, i64 %i.af) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i15 = phi ptr [ %i.ai, %bb.g ], [ %i.an, %bb.h ] ; 2 uses
  %i.ao = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 331, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.ap = extractvalue { i32, i64 } %i.ao, 0
  %i.aq = extractvalue { i32, i64 } %i.ao, 1      ; 2 uses
  %i.ar = icmp eq i32 %i.ap, 0
  br i1 %i.ar, label %bb.t, label %bb.i, !prof !16

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !29  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 192 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41
  %i.ax = icmp ult ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !32
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit18

bb.k:                                             ; preds = %bb.i
  %i.az = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.as, i64 %i.aq) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit18

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit18: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i17 = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.k ]
  %i.ba = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i17) #12 ; 2 uses
end_hunk_0
