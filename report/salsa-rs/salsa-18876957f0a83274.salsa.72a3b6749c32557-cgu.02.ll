Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.02?download=true
inline.NumInlined: 266
inline.NumDeleted: 104
begin_hunk_0_@_RNvXs5_NtCsC8CapfvpQ1_5salsa5tableNtB5_11ErasedSlotsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !258
  store ptr %i.k, ptr %i.a, align 8
  store i64 %i.ae, ptr %.sroa.55.0..sroa_idx6, align 8
  store i64 0, ptr %i.b, align 8
  store i64 %i.ag, ptr %i.c, align 8
  br label %bb.b

bb.j:                                             ; preds = %bb.e
  store ptr null, ptr %i.a, align 8
  store i64 0, ptr %i.b, align 8
  store i32 0, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs7_NtCsUsIPftNhTL_8lock_api5mutexINtB5_5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1F_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load atomic i8, ptr %0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i = phi i8 [ %i.d, %bb.a ], [ %i.j, %bb.c ] ; 3 uses
  %i.e = and i8 %.sroa.03.0.i, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i8 %.sroa.03.0.i, 1
  %i.h = cmpxchg weak ptr %0, i8 %.sroa.03.0.i, i8 %i.g acquire monotonic, align 1 ; 2 uses
  %i.i = extractvalue { i8, i1 } %i.h, 1
  %i.j = extractvalue { i8, i1 } %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5)
  %i.k = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.l = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5)
          to label %bb.g unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4: ; preds = %bb.j, %bb.i, %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit
  %.sroa.0.0.in = phi i1 [ %i.l, %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.j ]
  ret i1 %.sroa.0.0.in

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.b, align 8
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtCsC8CapfvpQ1_5salsa5tableNtB5_4PageNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void %i.f(ptr noundef nonnull %i.g, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs9_NtCsC8CapfvpQ1_5salsa5tableNtB5_9DummySlotNtB5_4Slot5memos(ptr nofree noundef readnone captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXs9_NtCsC8CapfvpQ1_5salsa5tableNtB5_9DummySlotNtB5_4Slot9memos_mut(ptr noalias nofree noundef nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsC_Csa3bo7ChGFM8_8thin_vecINtB5_8IntoIterNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !range !259, !noundef !3
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i64 %.idx, -8                    ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 24
  br i1 %min.iters.check, label %.lr.ph.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 4611686018427387900      ; 3 uses
  %3 = shl i64 %n.vec, 3
  %4 = getelementptr i8, ptr %0, i64 %3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %5 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %5    ; 2 uses
  %i.f = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.f, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader5

.lr.ph.preheader5:                                ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.01.04.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %4, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader5, %.lr.ph
  %.sroa.01.04 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.01.04.ph, %.lr.ph.preheader5 ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 8 ; 2 uses
  store i64 %2, ptr %.sroa.01.04, align 8
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !261

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsC8CapfvpQ1_5salsa4sync4shimNtB4_7CondvarNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 7)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCs4NRVxsYgnAr_4core5arrayANtNtCsC8CapfvpQ1_5salsa8revision8Revisionj3_NtNtB7_3fmt5Debug3fmtBB_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !268
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa8revision8RevisionINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %0, ptr noundef nonnull readonly %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCsC8CapfvpQ1_5salsa5tableNtB5_9SlotIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXsn_Csa3bo7ChGFM8_8thin_vecRINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBM_2id2IdEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBM_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !271, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !noundef !3
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.c
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjvLTWb8VeNU_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @34, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_Csa3bo7ChGFM8_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #13

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCsa3bo7ChGFM8_8thin_vec17capacity_overflow() unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8, ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsC8CapfvpQ1_5salsa5cycleNtB4_9CycleHeadNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsjvLTWb8VeNU_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsdyr9GQQDC9w_7tracing15___macro_support12___is_enabled(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsjvLTWb8VeNU_12tracing_core5fieldNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjvLTWb8VeNU_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 1, 0) i64 @_RNvMs8_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsC8CapfvpQ1_5salsa(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E3getB1g_(ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E7get_mutB1g_(ptr noalias noundef align 8 dereferenceable(464), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare noundef i64 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar15notify_all_slow(ptr noundef nonnull align 8, ptr noundef) unnamed_addr #22

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar15notify_one_slow(ptr noundef nonnull align 8, ptr noundef) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEE14insert_no_growBT_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growBT_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs8_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB19_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_B1P_EE9from_iterINtNtNtB3k_8adapters10filter_map9FilterMapINtB7_8IntoIterB15_INtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB19_5tableNtB6e_5Table10page_infos0EEB19_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5table9PageIndexENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB13_5table9PageIndexENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsksLH4kKx6iM_15crossbeam_utils(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs7_NtCsC8CapfvpQ1_5salsa12active_queryNtB5_9Backtrace7capture() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceNtB6_7Display3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs7_NtCsUsIPftNhTL_8lock_api5mutexINtB8_5MutexppENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtNtB2_17LockedPlaceholderBR_3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCscHkFMvyoPQb_11parking_lot7condvarNtB5_7CondvarNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!60 = distinct !{!60, !59, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!61 = distinct !{null}
!62 = distinct !{!62, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_"}
!63 = distinct !{!63, !62, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!64 = distinct !{null, null, null}
!65 = distinct !{!65, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!66 = distinct !{!66, !65, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!67 = distinct !{!67, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_"}
!68 = distinct !{!68, !67, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!69 = distinct !{!69, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_"}
!70 = distinct !{!70, !69, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!71 = !{!60}
!72 = !{!63}
!73 = !{!66}
!74 = !{!68}
!75 = !{!70}
!76 = distinct !{!76, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!77 = distinct !{!77, !76, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!78 = distinct !{null}
!79 = distinct !{!79, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!80 = distinct !{!80, !79, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!81 = distinct !{null, null, null}
!82 = distinct !{!82, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!83 = distinct !{!83, !82, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!84 = distinct !{!84, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!85 = distinct !{!85, !84, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!86 = distinct !{!86, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!87 = distinct !{!87, !86, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!88 = !{!77}
!89 = !{!80}
!90 = !{!83}
!91 = !{!85}
!92 = !{!87}
!93 = distinct !{!93, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!94 = distinct !{!94, !93, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!95 = distinct !{null}
!96 = distinct !{!96, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!97 = distinct !{!97, !96, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!98 = distinct !{null, null, null}
!99 = distinct !{!99, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!100 = distinct !{!100, !99, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!101 = distinct !{!101, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!102 = distinct !{!102, !101, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!103 = distinct !{!103, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!104 = distinct !{!104, !103, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!105 = !{!94}
!106 = !{!97}
!107 = !{!100}
!108 = !{!102}
!109 = !{!104}
!110 = distinct !{!110, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!111 = distinct !{!111, !110, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!112 = distinct !{null}
!113 = distinct !{!113, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!114 = distinct !{!114, !113, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!115 = distinct !{null, null, null}
!116 = distinct !{!116, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!117 = distinct !{!117, !116, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!118 = distinct !{!118, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!119 = distinct !{!119, !118, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!120 = distinct !{!120, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!121 = distinct !{!121, !120, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!122 = !{!111}
!123 = !{!114}
!124 = !{!117}
!125 = !{!119}
!126 = !{!121}
!127 = distinct !{!127, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!128 = distinct !{!128, !127, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!129 = distinct !{null}
!130 = distinct !{!130, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!131 = distinct !{!131, !130, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!132 = distinct !{null, null, null}
!133 = distinct !{!133, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!134 = distinct !{!134, !133, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!135 = distinct !{!135, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!136 = distinct !{!136, !135, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!137 = distinct !{!137, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!138 = distinct !{!138, !137, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!139 = !{!128}
!140 = !{!131}
!141 = !{!134}
!142 = !{!136}
!143 = !{!138}
!144 = distinct !{!144, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!145 = distinct !{!145, !144, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!146 = distinct !{null}
!147 = distinct !{!147, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!148 = distinct !{!148, !147, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!149 = distinct !{null, null, null}
!150 = distinct !{!150, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!151 = distinct !{!151, !150, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!152 = distinct !{!152, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!153 = distinct !{!153, !152, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!154 = distinct !{!154, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!155 = distinct !{!155, !154, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!156 = !{!145}
!157 = !{!148}
!158 = !{!151}
!159 = !{!153}
!160 = !{!155}
!161 = distinct !{!161, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!162 = distinct !{!162, !161, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!163 = distinct !{null}
!164 = distinct !{!164, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!165 = distinct !{!165, !164, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!166 = distinct !{null, null, null}
!167 = distinct !{!167, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!168 = distinct !{!168, !167, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!169 = distinct !{!169, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!170 = distinct !{!170, !169, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!171 = distinct !{!171, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!172 = distinct !{!172, !171, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!173 = !{!162}
!174 = !{!165}
!175 = !{!168}
!176 = !{!170}
!177 = !{!172}
!178 = distinct !{!178, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_"}
!179 = distinct !{!179, !178, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_: argument 0"}
!180 = !{!179}
!181 = distinct !{!181, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE14push_uncheckedBK_"}
!182 = distinct !{!182, !181, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE14push_uncheckedBK_: argument 0"}
!183 = !{!182}
!184 = distinct !{!184, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE10reallocateBK_"}
!185 = distinct !{!185, !184, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE10reallocateBK_: argument 0"}
!186 = !{!185}
!187 = distinct !{!187, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE7reserveBL_"}
!188 = distinct !{!188, !187, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE7reserveBL_: argument 0"}
!189 = distinct !{!189, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE14push_uncheckedBL_"}
!190 = distinct !{!190, !189, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE14push_uncheckedBL_: argument 0"}
!191 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!192 = !{!188}
!193 = !{!190}
!194 = distinct !{!194, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE4iterBN_"}
!195 = distinct !{!195, !194, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE4iterBN_: argument 0"}
!196 = distinct !{!196, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEE10or_defaultB16_"}
!197 = distinct !{!197, !196, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEE10or_defaultB16_: argument 0"}
!198 = distinct !{!198, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8push_mutCsC8CapfvpQ1_5salsa"}
!199 = distinct !{!199, !198, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8push_mutCsC8CapfvpQ1_5salsa: argument 0"}
!200 = !{!195}
!201 = !{!197}
!202 = !{!199}
!203 = distinct !{!203, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB16_5table9PageIndexEE10or_defaultB16_"}
!204 = distinct !{!204, !203, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB16_5table9PageIndexEE10or_defaultB16_: argument 0"}
!205 = distinct !{!205, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexE8push_mutBI_"}
!206 = distinct !{!206, !205, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexE8push_mutBI_: argument 0"}
!207 = !{!204}
!208 = !{!206}
!209 = distinct !{!209, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_"}
!210 = distinct !{!210, !209, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_: argument 0"}
!211 = !{!210}
!212 = distinct !{!212, !"_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_"}
!213 = distinct !{!213, !212, !"_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_: argument 0"}
!214 = distinct !{!214, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_"}
!215 = distinct !{!215, !214, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_: argument 0"}
!216 = distinct !{!216, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!217 = distinct !{!217, !216, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!218 = distinct !{!218, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_"}
!219 = distinct !{!219, !218, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_: argument 0"}
!220 = distinct !{null}
!221 = distinct !{!221, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_"}
!222 = distinct !{!222, !221, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_: argument 0"}
!223 = distinct !{null}
!224 = !{!213}
!225 = !{!215}
!226 = !{!217}
!227 = !{!217, !213}
!228 = !{!219}
!229 = !{!219, !213}
!230 = !{!222}
!231 = distinct !{!231, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_"}
!232 = distinct !{!232, !231, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_: argument 0"}
!233 = distinct !{!233, !"_RNvXsd_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBK_"}
!234 = distinct !{!234, !233, !"_RNvXsd_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBK_: argument 0"}
!235 = !{!232}
!236 = !{!234}
!237 = distinct !{!237, !"_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!238 = distinct !{!238, !237, !"_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!239 = distinct !{!239, !237, !"_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!240 = !{!238}
!241 = !{!239, !238}
!242 = !{!239}
!243 = distinct !{!243, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_"}
!244 = distinct !{!244, !243, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_: argument 1"}
!245 = distinct !{!245, !243, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_: argument 2"}
!246 = distinct !{!246, !243, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_: argument 0"}
!247 = distinct !{!247, !"_RNvXs8_NtCs36qfJazsBC0_6boxcar3vecINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_"}
!248 = distinct !{!248, !247, !"_RNvXs8_NtCs36qfJazsBC0_6boxcar3vecINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_: argument 0"}
!249 = distinct !{!249, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCsC8CapfvpQ1_5salsa5table4PageETNtB1l_9PageIndexB1i_INtNtNtBe_3ops5range5RangejEENCNvXs5_B1l_NtB1l_11ErasedSlotsB6_4next0E0B1n_"}
!250 = distinct !{!250, !249, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCsC8CapfvpQ1_5salsa5table4PageETNtB1l_9PageIndexB1i_INtNtNtBe_3ops5range5RangejEENCNvXs5_B1l_NtB1l_11ErasedSlotsB6_4next0E0B1n_: argument 0"}
!251 = distinct !{!251, !"_RNCNvXs5_NtCsC8CapfvpQ1_5salsa5tableNtB7_11ErasedSlotsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0B9_"}
!252 = distinct !{!252, !251, !"_RNCNvXs5_NtCsC8CapfvpQ1_5salsa5tableNtB7_11ErasedSlotsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0B9_: argument 0"}
!253 = !{!244}
!254 = !{!245}
!255 = !{!246, !244}
!256 = !{!246, !245}
!257 = !{!248, !244}
!258 = !{!252, !250, !246, !245}
!259 = !{i64 1, i64 0}
!260 = distinct !{!260, !262, !263}
!261 = distinct !{!261, !263, !262}
!262 = !{!"llvm.loop.isvectorized", i32 1}
!263 = !{!"llvm.loop.unroll.runtime.disable"}
!264 = distinct !{!264, !"_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB5_5Debug3fmtBz_"}
!265 = distinct !{!265, !264, !"_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB5_5Debug3fmtBz_: argument 1"}
!266 = distinct !{!266, !264, !"_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB5_5Debug3fmtBz_: argument 0"}
!267 = !{!266, !265}
!268 = !{!266}
!269 = distinct !{!269, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_"}
!270 = distinct !{!270, !269, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_: argument 0"}
!271 = !{!270}
end_hunk_1
