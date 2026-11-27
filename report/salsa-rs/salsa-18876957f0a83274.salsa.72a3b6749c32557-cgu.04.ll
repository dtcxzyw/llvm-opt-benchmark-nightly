Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.04?download=true
inline.NumInlined: 176
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa5cycle14IterationStampNtB6_5Debug3fmtBA_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !554 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !align !19, !noundef !17 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !555
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store ptr %i.d, ptr %i.a, align 8, !noalias !555
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 18, ptr noundef nonnull align 4 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !555
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsC8CapfvpQ1_5salsa8function4memoNtB5_22TryClaimCycleHeadsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !558 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !559, !nonnull !17, !noundef !17
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !559
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 7 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !559
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.k = load atomic i8, ptr %i.j monotonic, align 1, !noalias !559
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %bb.b

_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.c
  %.sroa.03.0.copyload = load i32, ptr %i.g, align 4 ; 2 uses
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa.0.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa.0.0..sroa_idx, align 4
  %i.m = load ptr, ptr %1, align 8, !nonnull !17, !align !24, !noundef !17 ; 5 uses
  %i.n = zext i32 %.sroa.6.0.copyload to i64      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !17 ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  store i16 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.t, %bb.d
  ret void

bb.f:                                             ; preds = %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !17, !noundef !17
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.n ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !17, !noundef !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !17, !align !24, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !17, !nonnull !17
  %i.z = tail call { ptr, ptr } %i.y(ptr noundef nonnull %i.u) ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %.not29 = icmp eq ptr %i.aa, null
  br i1 %.not29, label %bb.i, label %bb.h, !prof !29

bb.g:                                             ; preds = %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  store ptr %i.aa, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = call noundef nonnull align 8 ptr @_RNvMNtCsC8CapfvpQ1_5salsa8functionNtB2_21FunctionIngredientRef10sync_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @_RNvMNtNtCsC8CapfvpQ1_5salsa8function4syncNtB2_9SyncTable10peek_claim(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull align 8 %i.m, i32 noundef %.sroa.03.0.copyload, i32 noundef %.sroa.5.0.copyload, i1 noundef zeroext true)
  %i.ae = load i8, ptr %i.b, align 8, !range !560, !noundef !17
  switch i8 %i.ae, label %default.unreachable39 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.s
  ]

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #25
  unreachable

default.unreachable39:                            ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  store i16 1, ptr %0, align 8
  br label %bb.t

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !17, !align !24, !noundef !17 ; 4 uses
  store i16 2, ptr %0, align 8
  %.val.i.i = load ptr, ptr %i.ag, align 8, !nonnull !17, !align !24, !noundef !17 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val1.i.i = load ptr, ptr %i.ah, align 8       ; 6 uses
  %i.ai = cmpxchg ptr %.val.i.i, i8 1, i8 0 release monotonic, align 1
  %i.aj = extractvalue { i8, i1 } %i.ai, 1
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i, label %bb.l, !prof !26

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val.i.i, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.al = cmpxchg ptr %.val1.i.i, i8 1, i8 0 release monotonic, align 1
  %i.am = extractvalue { i8, i1 } %i.al, 1
  br i1 %i.am, label %bb.r, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.an = cmpxchg ptr %.val1.i.i, i8 1, i8 0 release monotonic, align 1
  %i.ao = extractvalue { i8, i1 } %i.an, 1
  br i1 %i.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit, label %bb.o, !prof !26

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 48, i64 noundef 8) #26
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i, %bb.o
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 48, i64 noundef 8) #26
  br label %bb.t

bb.s:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsC8CapfvpQ1_5salsa8functionNtB2_21FunctionIngredientRef18provisional_status(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %i.m, i32 noundef %.sroa.03.0.copyload, i32 noundef %.sroa.5.0.copyload)
  %i.ar = load i16, ptr %i.a, align 8, !range !27, !noundef !17 ; 2 uses
  %.not30 = icmp eq i16 %i.ar, -1
  br i1 %.not30, label %bb.v, label %bb.u, !prof !29

bb.t:                                             ; preds = %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa7runtime7RunningEBF_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.u:                                             ; preds = %bb.s
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.59.0.copyload = load i16, ptr %.sroa.59.0..sroa_idx, align 2 ; 2 uses
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.812.0.copyload = load i64, ptr %.sroa.812.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = icmp eq i16 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !range !25, !noundef !17
  %i.av = icmp ne i64 %.sroa.812.0.copyload, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %.sroa.812.0.copyload, %i.au
  br i1 %i.aw, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ay = load atomic i16, ptr %i.ax monotonic, align 4
  store i16 0, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.ay, ptr %.sroa.419.0..sroa_idx, align 2
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.sroa.59.0.copyload, ptr %.sroa.520.0..sroa_idx, align 4
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.812.0.copyload, ptr %.sroa.622.0..sroa_idx, align 8
  br label %bb.t

bb.y:                                             ; preds = %bb.w
  %.sroa.3.0.extract.shift = lshr i16 %.sroa.59.0.copyload, 8
  %.sroa.3.0.extract.trunc = trunc nuw i16 %.sroa.3.0.extract.shift to i8
  %i.az = call noundef i8 @_RNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB5_7Runtime18cancellation_count(ptr noundef nonnull align 8 %i.at)
  %i.ba = icmp eq i8 %i.az, %.sroa.3.0.extract.trunc
  br i1 %i.ba, label %bb.aa, label %bb.z, !prof !29

bb.z:                                             ; preds = %bb.y, %bb.w
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.aa:                                            ; preds = %bb.y
  call void @_RNvMNtCsC8CapfvpQ1_5salsa9cancelledNtB2_9Cancelled5throw(i8 noundef 2) #25
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 4 ptr @_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 !guid !561 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %.promoted = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi ptr [ %i.e, %bb.c ], [ %.promoted, %bb.a ] ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.g = load atomic i8, ptr %i.f monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 4 ptr @_RNvXs8_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 !guid !562 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %.promoted = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi ptr [ %i.e, %bb.c ], [ %.promoted, %bb.a ] ; 3 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %.split.loop.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -2
  %i.g = load atomic i8, ptr %i.f monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.split.loop.exit5, label %bb.b

.split.loop.exit5:                                ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs9_NtCsC8CapfvpQ1_5salsa5cycleRNtB5_10CycleHeadsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 !guid !565 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !566, !nonnull !17, !noundef !17
  %i.c = load i64, ptr %i.b, align 8, !noundef !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !567 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtCsC8CapfvpQ1_5salsa5cycleNtB4_9CycleHeadNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 15)) %0, ptr nofree noundef nonnull align 4 captures(none) %1) unnamed_addr #5 !guid !568 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load atomic i16, ptr %i.a monotonic, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.d = load atomic i8, ptr %i.c monotonic, align 2
  %i.e = icmp ne i8 %i.d, 0
  %i.f = zext i1 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.b, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.f, ptr %i.h, align 2
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 !guid !569 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !align !24, !noundef !17
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsa_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeadsINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9CycleHeadE4from(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !574 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef 1)
  store i64 %i.b, ptr %i.a, align 8
  invoke void @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE4pushBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !575, !nonnull !17, !noundef !17
  %i.e = icmp eq ptr %i.d, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.01.0.copyload

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define { i32, i32 } @_RNvXsb_NtCsC8CapfvpQ1_5salsa5cycleNtB5_20CycleHeadIdsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 !guid !578 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !579, !nonnull !17, !noundef !17
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !579
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = phi ptr [ %i.e, %bb.c ], [ %.promoted.i, %bb.a ] ; 5 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !579
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.g = load atomic i8, ptr %i.f monotonic, align 1, !noalias !579
  %i.h = icmp eq i8 %i.g, 0
end_hunk_0
