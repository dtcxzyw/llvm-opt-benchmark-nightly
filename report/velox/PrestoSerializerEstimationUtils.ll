inline.NumInlined: 10226
inline.NumDeleted: 2145
begin_hunk_0_@_ZN8facebook5velox14ConstantVectorIfED2Ev:bb.a
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8: ; preds = %bb.g, %bb.h, %.noexc.i5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !507 ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i9, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !508
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !510
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !211
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32, !inline_history !511
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32, !inline_history !511
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ay, label %bb.o, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !448

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  tail call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIfED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox14ConstantVectorIfED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox14ConstantVectorIfE12mayHaveNullsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i8, ptr %i.a, align 4, !tbaa !162, !range !116, !noundef !117
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox14ConstantVectorIfE21mayHaveNullsRecursiveEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i8, ptr %i.a, align 4, !tbaa !162, !range !116, !noundef !117
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(94) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox14ConstantVectorIfE14containsNullAtEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i8, ptr %i.a, align 4, !tbaa !162, !range !116, !noundef !117
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox14ConstantVectorIfE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.492, align 8            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.f = load i8, ptr %i.e, align 4, !tbaa !162, !range !116, !noundef !117 ; 2 uses
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.i = load i8, ptr %i.h, align 4, !tbaa !162, !range !116, !noundef !117
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.37.0.extract.shift.i = lshr i64 %4, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.k [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %4, 65536
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.f, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.53) #40
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.m = load i8, ptr %i.l, align 4, !tbaa !162, !range !116, !noundef !117
  %i.n = and i8 %i.m, %i.f
  %or.cond.i.not = icmp eq i8 %i.n, 0
  br i1 %or.cond.i.not, label %bb.h, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.h:                                             ; preds = %bb.g
  %i.o = trunc i64 %4 to i1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = select i1 %i.g, i32 -1, i32 1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.j:                                             ; preds = %bb.h
  %i.q = select i1 %i.g, i32 1, i32 -1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.54) #40
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !tbaa !517, !range !116, !noundef !117
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !210
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.a, align 8, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.a, ptr %5, align 8, !tbaa !519
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !2583
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.x, ptr %i.z, align 8, !tbaa !2583
  %i.aa = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIfE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKfS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8facebook5velox12SimpleVectorIfE19comparePrimitiveAscERKfS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ad = load float, ptr %i.ab, align 8, !tbaa !2585 ; 4 uses
  %6 = fcmp uno float %i.ad, 0.000000e+00
  %i.ae = load float, ptr %i.ac, align 4, !tbaa !2585
  %.fr = freeze float %i.ae                       ; 4 uses
  %i.af = fcmp ord float %.fr, 0.000000e+00
  %i.ag = zext i1 %i.af to i32
  %.010.i = select i1 %6, i32 %i.ag, i32 -1
  %.0.i = fcmp ord float %i.ad, %.fr
  br i1 %.0.i, label %bb.o, label %_ZN8facebook5velox12SimpleVectorIfE19comparePrimitiveAscERKfS4_.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = fcmp olt float %i.ad, %.fr
  %i.ai = fcmp une float %i.ad, %.fr
  %i.aj = zext i1 %i.ai to i32
  %i.ak = select i1 %i.ah, i32 -1, i32 %i.aj
  br label %_ZN8facebook5velox12SimpleVectorIfE19comparePrimitiveAscERKfS4_.exit

_ZN8facebook5velox12SimpleVectorIfE19comparePrimitiveAscERKfS4_.exit: ; preds = %bb.o, %bb.n, %bb.m
  %i.al = phi i32 [ %i.aa, %bb.m ], [ %i.ak, %bb.o ], [ %.010.i, %bb.n ] ; 2 uses
  %i.am = and i64 %4, 256
  %.not = icmp eq i64 %i.am, 0
  %i.an = sub nsw i32 0, %i.al
  %i.ao = select i1 %.not, i32 %i.an, i32 %i.al
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.p:                                             ; preds = %bb.a
  %i.ap = tail call i64 @_ZNK8facebook5velox12SimpleVectorIfE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i64 %4) ; 2 uses
  %.sroa.0.0.extract.trunc25 = trunc i64 %i.ap to i32
  %i.aq = and i64 %i.ap, -4294967296
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.j, %bb.i, %bb.e, %bb.g, %_ZN8facebook5velox12SimpleVectorIfE19comparePrimitiveAscERKfS4_.exit, %bb.p
  %.sroa.4.0 = phi i64 [ %i.aq, %bb.p ], [ 4294967296, %_ZN8facebook5velox12SimpleVectorIfE19comparePrimitiveAscERKfS4_.exit ], [ 4294967296, %bb.g ], [ 0, %bb.e ], [ 4294967296, %bb.i ], [ 4294967296, %bb.j ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc25, %bb.p ], [ %i.ao, %_ZN8facebook5velox12SimpleVectorIfE19comparePrimitiveAscERKfS4_.exit ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.p, %bb.i ], [ %i.q, %bb.j ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox12SimpleVectorIfE11hashValueAtEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %class.anon.497, align 8            ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %1)
  br i1 %i.e, label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.i = load i8, ptr %i.h, align 1, !tbaa !523, !range !116, !noundef !117
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %0, align 8, !tbaa !211
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef float %i.m(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) ; 4 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.n, ptr %i.a, align 4, !tbaa !2585
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.f, ptr %2, align 8, !tbaa !527
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !2583
  %i.p = call noundef i64 @_ZZN8facebook5velox12SimpleVectorIfE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEEfENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKf.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f, !prof !2586

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #32
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i

_ZNK5folly6detail12float_hasherIfEclERKf.exit.i:  ; preds = %bb.e
  store i64 7476675141552221795, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !84
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash) #32
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly6detail12float_hasherIfEclERKf.exit.i, %bb.e, %bb.d
  %i.u = fcmp uno float %i.n, 0.000000e+00
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKfE8kNanHash, align 8, !tbaa !84
  br label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKf.exit

bb.h:                                             ; preds = %bb.f
  %i.w = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.w, label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = bitcast float %i.n to i32
  %.0.insert.ext.i2.i = zext i32 %i.x to i64      ; 2 uses
  %i.y = xor i64 %.0.insert.ext.i2.i, -1
  %i.z = shl nuw nsw i64 %.0.insert.ext.i2.i, 21
  %i.aa = add nsw i64 %i.z, %i.y                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 24
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul nsw i64 %i.ac, 265                  ; 2 uses
  %i.ae = lshr i64 %i.ad, 14
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 21                       ; 2 uses
  %i.ah = lshr i64 %i.ag, 28
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 2147483649
  br label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKf.exit

_ZNK8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEclERKf.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.a, %bb.c
  %.0 = phi i64 [ 1, %bb.a ], [ %i.p, %bb.c ], [ %i.v, %bb.g ], [ %i.aj, %bb.i ], [ 0, %bb.h ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox14ConstantVectorIfE7hashAllEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %3 = alloca %"class.std::shared_ptr.118", align 16 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.facebook::velox::SimpleVectorStats.121", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.118") align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = invoke noundef i64 @_ZNK8facebook5velox12SimpleVectorIfE11hashValueAtEi(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.b, ptr %i.a, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !530
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !530
  %i.f = load i32, ptr %i.c, align 8, !tbaa !516  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #42
          to label %.noexc unwind label %bb.r, !inline_history !532 ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.h = sext i32 %i.f to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !533, !noalias !2587
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load <2 x ptr>, ptr %3, align 16, !tbaa !446, !noalias !2587
  store ptr null, ptr %i.l, align 8, !tbaa !507, !noalias !2587
  store <2 x ptr> %i.m, ptr %2, align 16, !tbaa !446, !noalias !2587
  store ptr null, ptr %3, align 16, !tbaa !537, !noalias !2587
  %.sroa.09.0.insert.ext.i = and i64 %i.i, 4294967288
  %.sroa.09.0.insert.insert.i = or disjoint i64 %.sroa.09.0.insert.ext.i, 4294967296
  invoke void @_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.g, ptr noundef %i.k, i32 noundef %i.f, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %.sroa.09.0.insert.insert.i, i64 0)
          to label %bb.c unwind label %bb.j, !noalias !2587, !inline_history !532

bb.c:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !507, !noalias !2587 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox14ConstantVectorImEESt14default_deleteIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8, !noalias !2587 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !508, !noalias !2587
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !510, !noalias !2587
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !211, !noalias !2587
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2587
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #32, !noalias !2587, !inline_history !540
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !211, !noalias !2587
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2587
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #32, !noalias !2587, !inline_history !540
  br label %_ZNSt10unique_ptrIN8facebook5velox14ConstantVectorImEESt14default_deleteIS3_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2587
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3, !noalias !2587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4, !noalias !2587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt10unique_ptrIN8facebook5velox14ConstantVectorImEESt14default_deleteIS3_EED2Ev.exit, !prof !448

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #32, !noalias !2587, !inline_history !532
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox14ConstantVectorIdED2Ev:bb.a
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8: ; preds = %bb.g, %bb.h, %.noexc.i5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !507 ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i9, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !508
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !510
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !211
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32, !inline_history !511
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32, !inline_history !511
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ay, label %bb.o, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !448

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #32
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit8, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  tail call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIdED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox14ConstantVectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox14ConstantVectorIdE12mayHaveNullsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i8, ptr %i.a, align 8, !tbaa !173, !range !116, !noundef !117
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox14ConstantVectorIdE21mayHaveNullsRecursiveEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i8, ptr %i.a, align 8, !tbaa !173, !range !116, !noundef !117
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(94) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox14ConstantVectorIdE14containsNullAtEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i8, ptr %i.a, align 8, !tbaa !173, !range !116, !noundef !117
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook5velox14ConstantVectorIdE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.519, align 8            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load i8, ptr %i.e, align 8, !tbaa !173, !range !116, !noundef !117 ; 2 uses
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load i8, ptr %i.h, align 8, !tbaa !173, !range !116, !noundef !117
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.37.0.extract.shift.i = lshr i64 %4, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.k [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %4, 65536
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.f, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.53) #40
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.m = load i8, ptr %i.l, align 8, !tbaa !173, !range !116, !noundef !117
  %i.n = and i8 %i.m, %i.f
  %or.cond.i.not = icmp eq i8 %i.n, 0
  br i1 %or.cond.i.not, label %bb.h, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.h:                                             ; preds = %bb.g
  %i.o = trunc i64 %4 to i1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = select i1 %i.g, i32 -1, i32 1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.j:                                             ; preds = %bb.h
  %i.q = select i1 %i.g, i32 1, i32 -1
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.54) #40
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !tbaa !517, !range !116, !noundef !117
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !210
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.a, align 8, !tbaa !518
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.a, ptr %5, align 8, !tbaa !519
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !2799
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.x, ptr %i.z, align 8, !tbaa !2799
  %i.aa = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIdE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKdS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8facebook5velox12SimpleVectorIdE19comparePrimitiveAscERKdS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !2801 ; 4 uses
  %6 = fcmp uno double %i.ad, 0.000000e+00
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !2801
  %.fr = freeze double %i.ae                      ; 4 uses
  %i.af = fcmp ord double %.fr, 0.000000e+00
  %i.ag = zext i1 %i.af to i32
  %.010.i = select i1 %6, i32 %i.ag, i32 -1
  %.0.i = fcmp ord double %i.ad, %.fr
  br i1 %.0.i, label %bb.o, label %_ZN8facebook5velox12SimpleVectorIdE19comparePrimitiveAscERKdS4_.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = fcmp olt double %i.ad, %.fr
  %i.ai = fcmp une double %i.ad, %.fr
  %i.aj = zext i1 %i.ai to i32
  %i.ak = select i1 %i.ah, i32 -1, i32 %i.aj
  br label %_ZN8facebook5velox12SimpleVectorIdE19comparePrimitiveAscERKdS4_.exit

_ZN8facebook5velox12SimpleVectorIdE19comparePrimitiveAscERKdS4_.exit: ; preds = %bb.o, %bb.n, %bb.m
  %i.al = phi i32 [ %i.aa, %bb.m ], [ %i.ak, %bb.o ], [ %.010.i, %bb.n ] ; 2 uses
  %i.am = and i64 %4, 256
  %.not = icmp eq i64 %i.am, 0
  %i.an = sub nsw i32 0, %i.al
  %i.ao = select i1 %.not, i32 %i.an, i32 %i.al
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.p:                                             ; preds = %bb.a
  %i.ap = tail call i64 @_ZNK8facebook5velox12SimpleVectorIdE7compareEPKNS0_10BaseVectorEiiNS0_12CompareFlagsE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i64 %4) ; 2 uses
  %.sroa.0.0.extract.trunc25 = trunc i64 %i.ap to i32
  %i.aq = and i64 %i.ap, -4294967296
  br label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.j, %bb.i, %bb.e, %bb.g, %_ZN8facebook5velox12SimpleVectorIdE19comparePrimitiveAscERKdS4_.exit, %bb.p
  %.sroa.4.0 = phi i64 [ %i.aq, %bb.p ], [ 4294967296, %_ZN8facebook5velox12SimpleVectorIdE19comparePrimitiveAscERKdS4_.exit ], [ 4294967296, %bb.g ], [ 0, %bb.e ], [ 4294967296, %bb.i ], [ 4294967296, %bb.j ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc25, %bb.p ], [ %i.ao, %_ZN8facebook5velox12SimpleVectorIdE19comparePrimitiveAscERKdS4_.exit ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.p, %bb.i ], [ %i.q, %bb.j ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox12SimpleVectorIdE11hashValueAtEi(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %class.anon.525, align 8            ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %1)
  br i1 %i.e, label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.i = load i8, ptr %i.h, align 1, !tbaa !523, !range !116, !noundef !117
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %0, align 8, !tbaa !211
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef double %i.m(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) ; 4 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.n, ptr %i.a, align 8, !tbaa !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.f, ptr %2, align 8, !tbaa !527
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !2799
  %i.p = call noundef i64 @_ZZN8facebook5velox12SimpleVectorIdE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEEdENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKd.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load atomic i8, ptr @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f, !prof !2586

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #32
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i

_ZNK5folly6detail12float_hasherIdEclERKd.exit.i:  ; preds = %bb.e
  store i64 1573955859343395728, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !84
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash) #32
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly6detail12float_hasherIdEclERKd.exit.i, %bb.e, %bb.d
  %i.u = fcmp uno double %i.n, 0.000000e+00
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr @_ZZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKdE8kNanHash, align 8, !tbaa !84
  br label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKd.exit

bb.h:                                             ; preds = %bb.f
  %i.w = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.w, label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = bitcast double %i.n to i64               ; 2 uses
  %i.y = xor i64 %i.x, -1
  %i.z = shl i64 %i.x, 21
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 24
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 265                      ; 2 uses
  %i.ae = lshr i64 %i.ad, 14
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 21                       ; 2 uses
  %i.ah = lshr i64 %i.ag, 28
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 2147483649
  br label %_ZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKd.exit

_ZNK8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEclERKd.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.a, %bb.c
  %.0 = phi i64 [ 1, %bb.a ], [ %i.p, %bb.c ], [ %i.v, %bb.g ], [ %i.aj, %bb.i ], [ 0, %bb.h ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox14ConstantVectorIdE7hashAllEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %3 = alloca %"class.std::shared_ptr.118", align 16 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.facebook::velox::SimpleVectorStats.121", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.118") align 8 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = invoke noundef i64 @_ZNK8facebook5velox12SimpleVectorIdE11hashValueAtEi(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.b, ptr %i.a, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !530
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !530
  %i.f = load i32, ptr %i.c, align 8, !tbaa !516  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #42
          to label %.noexc unwind label %bb.r, !inline_history !532 ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.h = sext i32 %i.f to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !533, !noalias !2802
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load <2 x ptr>, ptr %3, align 16, !tbaa !446, !noalias !2802
  store ptr null, ptr %i.l, align 8, !tbaa !507, !noalias !2802
  store <2 x ptr> %i.m, ptr %2, align 16, !tbaa !446, !noalias !2802
  store ptr null, ptr %3, align 16, !tbaa !537, !noalias !2802
  %.sroa.09.0.insert.ext.i = and i64 %i.i, 4294967288
  %.sroa.09.0.insert.insert.i = or disjoint i64 %.sroa.09.0.insert.ext.i, 4294967296
  invoke void @_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.g, ptr noundef %i.k, i32 noundef %i.f, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %.sroa.09.0.insert.insert.i, i64 0)
          to label %bb.c unwind label %bb.j, !noalias !2802, !inline_history !532

bb.c:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !507, !noalias !2802 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox14ConstantVectorImEESt14default_deleteIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8, !noalias !2802 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !508, !noalias !2802
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !510, !noalias !2802
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !211, !noalias !2802
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2802
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #32, !noalias !2802, !inline_history !540
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !211, !noalias !2802
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2802
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #32, !noalias !2802, !inline_history !540
  br label %_ZNSt10unique_ptrIN8facebook5velox14ConstantVectorImEESt14default_deleteIS3_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2802
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3, !noalias !2802
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4, !noalias !2802
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt10unique_ptrIN8facebook5velox14ConstantVectorImEESt14default_deleteIS3_EED2Ev.exit, !prof !448

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #32, !noalias !2802, !inline_history !532
  br label %_ZNSt10unique_ptrIN8facebook5velox14ConstantVectorImEESt14default_deleteIS3_EED2Ev.exit
end_hunk_1
