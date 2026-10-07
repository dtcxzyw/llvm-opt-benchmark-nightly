Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm18regExpSourceGetterEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24regExpFlagPropertyGetterEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !17, !noalias !123
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16 ; 4 uses
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
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !14 ; 2 uses
  %.pre28 = and i64 %.pre, 281474976710655        ; 2 uses
  %i.g = icmp ugt i64 %.pre, -844424930131969
  %i.h = icmp ne i64 %.pre28, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i.i

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35: ; preds = %bb.a
  %.pre36 = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !14 ; 2 uses
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
  %.sroa.0.0.copyload.i.i.pre.i = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !16
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
  store i32 1, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 34, ptr %i.x, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !22
  store ptr @.str.5, ptr %3, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !24
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.k

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit
  %.pre-phi30 = phi i64 [ %i.c, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread ], [ %.pre28, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit ], [ %.pre2837, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSRegExpEEENS0_6HandleIT_EEv.exit.thread35 ]
  %i.ab = inttoptr i64 %.pre-phi30 to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %.sroa.0.0.copyload.i19 = load i8, ptr %i.ac, align 4, !tbaa !23 ; 7 uses
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
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.e, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 6 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.g, 4
  br i1 %i.h, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  %i.i = zext i32 %i.g to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.c, i64 noundef %i.i, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !41
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge, %bb.b
  %i.j = phi ptr [ %.pre, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.c, %bb.b ]
  %i.k = phi i32 [ %.pre.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.g, %bb.b ]
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !41
  %gepdiff.i.i = mul nuw nsw i64 %i.l, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 4 %i.m, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !43
  %4 = zext i32 %i.g to i64
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit: ; preds = %bb.a, %.sink.split.i.i
  %5 = phi i64 [ 0, %bb.a ], [ %4, %.sink.split.i.i ]
  %i.n = add i64 %i.a, 1
  %.not = icmp ugt i64 %i.n, %5
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.o, align 8, !tbaa !16 ; 2 uses
  %i.p = icmp ugt i64 %.sroa.06.0.copyload, -844424930131969
  br i1 %i.p, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %.critedge

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.q = and i64 %.sroa.06.0.copyload, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, -50331648
  %i.u = icmp ult i32 %i.t, 134217728
  br i1 %i.u, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.a ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !68, !range !69, !noundef !70
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !71
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !72
  %i.ae = zext i32 %i.ad to i64
  %i.af = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.o, i64 noundef %i.ab, i64 noundef %i.ae) #12 ; 2 uses
  %i.ag = extractvalue { i32, i64 } %i.af, 0
  %i.ah = extractvalue { i32, i64 } %i.af, 1
  %i.ai = icmp ne i32 %i.ag, 0                    ; 2 uses
  %spec.select = zext i1 %i.ai to i32
  %spec.select18 = select i1 %i.ai, i64 %i.ah, i64 undef, !prof !38
  br label %bb.f

.critedge:                                        ; preds = %bb.c, %bb.d, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2ERKS6_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ak = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = or i64 %i.al, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sroa.016.1 = phi i32 [ 1, %.critedge ], [ %spec.select, %bb.e ]
  %.sroa.417.1 = phi i64 [ %i.am, %.critedge ], [ %spec.select18, %bb.e ]
  %i.an = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.an) #12
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
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 5 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.f, 4
  br i1 %i.g, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !41
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge, %bb.b
  %i.i = phi ptr [ %.pre, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.b, %bb.b ]
  %i.j = phi i32 [ %.pre.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.f, %bb.b ]
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !41
  %gepdiff.i.i = mul nuw nsw i64 %i.k, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 4 %i.l, i64 %gepdiff.i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.m, align 8, !tbaa !16 ; 2 uses
  %i.n = icmp ugt i64 %.sroa.04.0.copyload, -844424930131969
  br i1 %i.n, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.o = and i64 %.sroa.04.0.copyload, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, -50331648
  %i.s = icmp ult i32 %i.r, 134217728
  br i1 %i.s, label %bb.d, label %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !41
  %i.u = load i32, ptr %i.t, align 4, !tbaa !71
  %i.v = zext i32 %i.u to i64
  %i.w = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.m, i64 noundef 0, i64 noundef %i.v) #12 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = extractvalue { i32, i64 } %i.w, 1
  %i.z = icmp ne i32 %i.x, 0                      ; 2 uses
  %spec.select = zext i1 %i.z to i32
  %spec.select12 = select i1 %i.z, i64 %i.y, i64 undef, !prof !38
  br label %bb.e

_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %bb.c, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ab = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aa, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #12
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = or i64 %i.ac, -844424930131968
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread
  %.sroa.010.1 = phi i32 [ 1, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread ], [ %spec.select, %bb.d ]
  %.sroa.411.1 = phi i64 [ %i.ad, %_ZN6hermes2vm5vmisaINS0_15StringPrimitiveEEEbNS0_11HermesValueE.exit.thread ], [ %spec.select12, %bb.d ]
  %i.ae = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ae) #12
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
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 5 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.f, 4
  br i1 %i.g, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.b
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 12) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !41
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge, %bb.b
  %i.i = phi ptr [ %.pre, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.b, %bb.b ]
  %i.j = phi i32 [ %.pre.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i._ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i_crit_edge ], [ %i.f, %bb.b ]
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !41
  %gepdiff.i.i = mul nuw nsw i64 %i.k, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 4 %i.l, i64 %gepdiff.i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.thread.i, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
end_hunk_0
