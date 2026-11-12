Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Object?download=true
inline.NumInlined: 1775
inline.NumDeleted: 700
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm20objectSetPrototypeOfEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  store i32 3, ptr %i.s, align 8, !tbaa !58
  %i.t = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ugt i64 %i.e, -844424930131969
  br i1 %i.u, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %bb.c
  %i.v = and i64 %i.e, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, -436207616
  %i.z = icmp ult i32 %i.y, 855638016
  br i1 %i.z, label %bb.d, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

bb.d:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.aa = icmp samesign ugt i64 %i.m, -844424930131969
  br i1 %i.aa, label %bb.e, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i64 %i.m, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -436207616
  %i.af = icmp ult i32 %i.ae, 855638016
  %spec.select.i.i.i = select i1 %i.af, ptr %i.ac, ptr null
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.d ]
  %i.ah = tail call i32 @_ZN6hermes2vm8JSObject9setParentEPS1_RNS0_7RuntimeES2_NS0_11PropOpFlagsE(ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.ag, i32 1) #9
  %.mask = and i32 %i.ah, 255
  %i.ai = icmp eq i32 %.mask, 0
  br i1 %i.ai, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, label %bb.f, !prof !50

bb.f:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.i16 = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !29
  br label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.c, %bb.f, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.027.1 = phi i32 [ %i.j, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ %i.t, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12 ], [ 0, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ 1, %bb.f ], [ 1, %bb.c ]
  %.sroa.6.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.e, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit12 ], [ undef, %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit ], [ %.sroa.0.0.copyload.i.i.i16, %bb.f ], [ %i.e, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.027.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm14getPrototypeOfERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 !guid !238 {
bb.a:
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %1, align 8, !tbaa !29
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call ptr @_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %0) #9
  %magicptr = ptrtoint ptr %i.c to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %.fold.split
  ], !prof !64

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %magicptr, -281474976710656
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split, %bb.b
  %.sroa.07.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %.fold.split ]
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.d, %bb.b ], [ -1548112371908608, %.fold.split ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24getOwnPropertyDescriptorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2) local_unnamed_addr #0 !guid !239 {
bb.a:
  %3 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 9 uses
  %4 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 6 uses
  %5 = alloca %"class.hermes::vm::MutableHandle.151", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !47
  store i64 -1688849860263936, ptr %i.e, align 8, !tbaa !29
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.c, i64 -1688849860263936) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre27 = load ptr, ptr %.phi.trans.insert26, align 8, !tbaa !48
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.g, %bb.b ], [ %.pre27, %bb.c ]
  %i.l = phi ptr [ %i.i, %bb.b ], [ %.pre25, %bb.c ] ; 4 uses
  %i.m = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.c ]
  store ptr %.0.i.i.i.i.i.i, ptr %4, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.n = icmp ult ptr %i.l, %i.k
  br i1 %i.n, label %bb.d, label %bb.e, !prof !51

bb.d:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.o, align 8, !tbaa !47
  store i64 -1266636858327041, ptr %i.l, align 8, !tbaa !29
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.q = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.m, i64 -1266636858327041) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i16 = phi ptr [ %i.l, %bb.d ], [ %i.q, %bb.e ]
  store ptr %.0.i.i.i.i.i.i16, ptr %5, align 8, !tbaa !63
  %i.r = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9 ; 2 uses
  %.mask = and i32 %i.r, 255
  %i.s = icmp eq i32 %.mask, 0
  br i1 %i.s, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.t = and i32 %i.r, 256
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre28 = load i16, ptr %3, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !29
  %i.u = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 32
  %.not24 = icmp eq i32 %i.y, 0
  br i1 %.not24, label %.critedge, label %bb.h, !prof !51

bb.h:                                             ; preds = %bb.g
  %i.z = load i16, ptr %3, align 4
  %i.aa = or i16 %i.z, 262                        ; 2 uses
  store i16 %i.aa, ptr %3, align 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.ab = phi i16 [ %.pre28, %._crit_edge ], [ %i.aa, %bb.h ] ; 2 uses
  %i.ac = and i16 %i.ab, 272
  %i.ad = icmp eq i16 %i.ac, 256
  br i1 %i.ad, label %bb.j, label %bb.l, !prof !50

bb.j:                                             ; preds = %bb.i
  %i.ae = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %2, ptr %1) #9 ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.ae, 0
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = extractvalue { i32, i64 } %i.ae, 1
  %i.ai = load ptr, ptr %4, align 8, !tbaa !71
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !27
  %.pre29 = load i16, ptr %3, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aj = phi i16 [ %.pre29, %bb.k ], [ %i.ab, %bb.i ] ; 4 uses
  %i.ak = lshr i16 %i.aj, 1
  %i.al = and i16 %i.ak, 7
  %i.am = shl i16 %i.aj, 2
  %i.an = and i16 %i.am, 64
  %6 = or disjoint i16 %i.al, %i.an
  %i.ao = shl i16 %i.aj, 3
  %i.ap = and i16 %i.ao, 128
  %i.aq = or disjoint i16 %6, %i.ap
  %7 = shl i16 %i.aj, 4
  %8 = and i16 %7, 256
  %i.ar = or disjoint i16 %i.aq, %8
  %i.as = xor i16 %i.ar, 312
  %.sroa.0.0.insert.ext = zext nneg i16 %i.as to i32
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %i.at = call { i32, i64 } @_ZN6hermes2vm28objectFromPropertyDescriptorERNS0_7RuntimeENS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.insert.ext, ptr %.sroa.0.0.copyload) #9 ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 0
  %i.av = extractvalue { i32, i64 } %i.at, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.g, %bb.l
  %.sroa.023.2 = phi i32 [ %i.au, %bb.l ], [ 1, %bb.g ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ 0, %bb.j ]
  %.sroa.5.1 = phi i64 [ %i.av, %bb.l ], [ -1688849860263936, %bb.g ], [ -1688849860263936, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ undef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.023.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm28objectFromPropertyDescriptorERNS0_7RuntimeENS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm27getOwnPropertyKeysAsStringsENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #0 !guid !241 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %i.a = tail call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #9 ; 5 uses
  %.not = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !47
  store i64 -1688849860263936, ptr %i.e, align 8, !tbaa !29
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.c, i64 -1688849860263936) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !35
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.e, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.q, align 4, !tbaa !45
  store ptr %i.n, ptr %i.o, align 8
  store i32 1, ptr %i.p, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.n, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.m, ptr %i.s, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !49
  store ptr %3, ptr %i.b, align 8, !tbaa !35
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %i.u = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %.not43 = icmp eq i32 %i.x, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.y = ptrtoint ptr %1 to i64                   ; 6 uses
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.t
  %.sroa.0.0.copyload.i.pre = load i64, ptr %i.a, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i.pre, %._crit_edge.loopexit ], [ %.sroa.0.0.copyload.i.i, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.u

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.042 = phi i32 [ 0, %.lr.ph ], [ %i.cv, %bb.t ] ; 5 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store i32 0, ptr %i.t, align 8, !tbaa !49
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !48
  store ptr %i.n, ptr %i.r, align 8, !tbaa !47
  %.sroa.0.0.copyload.i.i23 = load i64, ptr %i.a, align 8, !tbaa !29
  %i.ac = and i64 %.sroa.0.0.copyload.i.i23, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !81 ; 2 uses
  %.not.i = icmp uge i32 %.042, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp ult i32 %.042, %i.ah
  %or.cond.i = select i1 %.not.i, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !6
  %i.ak = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.al = add i64 %i.ak, %i.y
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = sub nuw i32 %.042, %i.af                ; 4 uses
  %i.ao = icmp ult i32 %i.an, 4096
  br i1 %i.ao, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add i32 %i.an, -4096
  %i.aq = lshr i32 %i.ap, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16392
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !83
  %i.av = zext i32 %i.au to i64
  %i.aw = add i64 %i.av, %i.y
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = and i32 %i.an, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %bb.f, %bb.g
  %.sink8.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.am, %bb.f ]
  %.sink7.i.i = phi i32 [ %i.ay, %bb.g ], [ %i.an, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.ba = zext nneg i32 %.sink7.i.i to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %.sroa.0.0.i.i = load i32, ptr %i.bb, align 4, !tbaa !6 ; 9 uses
  %i.bc = trunc i32 %.sroa.0.0.i.i to i8
  %i.bd = and i8 %i.bc, 15
  switch i8 %i.bd, label %default.unreachable [
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
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
    i8 15, label %bb.o
  ]

bb.h:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.be = zext i32 %.sroa.0.0.i.i to i64
  %i.bf = add i64 %i.be, %i.y
  %i.bg = or i64 %i.bf, -281474976710656
  %i.bh = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.bg
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.i:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.bi = and i32 %.sroa.0.0.i.i, -8
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add i64 %i.bj, %i.y
  %i.bl = or i64 %i.bk, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.j:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.bm = and i32 %.sroa.0.0.i.i, -8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add i64 %i.bn, %i.y
  %i.bp = or i64 %i.bo, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.k:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.bq = and i32 %.sroa.0.0.i.i, -8
  %i.br = zext i32 %i.bq to i64
end_hunk_0
