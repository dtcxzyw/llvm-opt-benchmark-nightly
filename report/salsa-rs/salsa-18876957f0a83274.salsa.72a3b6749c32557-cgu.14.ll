Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.14?download=true
begin_hunk_0_@_RNvMs_NtNtCsC8CapfvpQ1_5salsa8function4syncNtB4_10ClaimGuard9drop_impl:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ab, ptr %i.ad, align 8, !noalias !363
  br i1 %i.w, label %bb.s, label %bb.l, !prof !225

bb.l:                                             ; preds = %.noexc2, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !363
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 160 ; 6 uses
  %i.af = cmpxchg weak ptr %i.ae, i8 0, i8 1 acquire monotonic, align 1, !noalias !364
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %.noexc6, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.ah = invoke noundef zeroext i1 @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ae, i64 undef, i32 noundef -1)
          to label %.noexc6 unwind label %bb.g    ; 0 uses

.noexc6:                                          ; preds = %bb.m, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  invoke void @_RNvMNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graphNtB2_15DependencyGraph27unblock_runtimes_blocked_on(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i8 noundef 0)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %.noexc6
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = cmpxchg ptr %i.ae, i8 1, i8 0 release monotonic, align 1, !noalias !364
  %i.al = extractvalue { i8, i1 } %i.ak, 1
  br i1 %i.al, label %.body, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false)
          to label %.body unwind label %bb.r, !noalias !364

bb.p:                                             ; preds = %.noexc6
  %i.am = cmpxchg ptr %i.ae, i8 1, i8 0 release monotonic, align 1, !noalias !364
  %i.an = extractvalue { i8, i1 } %i.am, 1
  br i1 %i.an, label %.noexc, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.g

bb.r:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !364
  unreachable

.noexc:                                           ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !363
  br i1 %i.v, label %bb.t, label %.noexc3, !prof !225

bb.s:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !363
  invoke fastcc void @_RNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB5_7Runtime18undo_transfer_lock(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.b)
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !363
  br label %bb.l

.noexc3:                                          ; preds = %bb.t, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !363
  br label %_RNvMs_NtNtCsC8CapfvpQ1_5salsa8function4syncNtB4_10ClaimGuard7release.exit

bb.t:                                             ; preds = %.noexc
  invoke fastcc void @_RNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB5_7Runtime36unblock_transferred_queries_owned_by(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.c, i8 noundef 0)
          to label %.noexc3 unwind label %bb.g

bb.u:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
          to label %bb.v unwind label %bb.g

bb.v:                                             ; preds = %bb.u
  unreachable

_RNvMs_NtNtCsC8CapfvpQ1_5salsa8function4syncNtB4_10ClaimGuard7release.exit: ; preds = %.noexc3, %bb.j
  %i.ap = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit8, label %bb.w, !prof !13

bb.w:                                             ; preds = %_RNvMs_NtNtCsC8CapfvpQ1_5salsa8function4syncNtB4_10ClaimGuard7release.exit
  call void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit8: ; preds = %bb.w, %_RNvMs_NtNtCsC8CapfvpQ1_5salsa8function4syncNtB4_10ClaimGuard7release.exit, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.c ], [ false, %_RNvMs_NtNtCsC8CapfvpQ1_5salsa8function4syncNtB4_10ClaimGuard7release.exit ], [ false, %bb.w ]
  ret i1 %.sroa.0.0

bb.x:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtB37_8function4sync9SyncStateNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEEEB37_.exit: ; preds = %.body, %bb.h
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef nonnull align 8 ptr @_RNvMsb_NtCsC8CapfvpQ1_5salsa7storageNtB5_21CancellationFlagGuard3new(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  store atomic i8 1, ptr %i.a release, align 8
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 1, 0) i64 @_RNvNtCsC8CapfvpQ1_5salsa7runtime22never_changed_revision() unnamed_addr #7 {
bb.a:
  ret i64 1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsC8CapfvpQ1_5salsa8function31flatten_cycle_head_dependencies(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %3, i8 noundef range(i8 0, 3) %4, ptr noalias noundef align 8 dereferenceable(56) %5, ptr noalias noundef align 8 dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 9 uses
  %i.b = alloca [12 x i8], align 4                ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [12 x i8], align 8                ; 9 uses
  %i.e = alloca [12 x i8], align 4                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [12 x i8], align 4                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = load i32, ptr %3, align 4, !range !227, !noundef !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load i32, ptr %i.n, align 4, !noundef !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !9, !nonnull !9
  call void %i.q(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noundef nonnull %0, ptr noundef nonnull align 8 %2, i32 noundef %i.m, i32 noundef %i.o)
  %i.r = load ptr, ptr %i.l, align 8, !noundef !9 ; 3 uses
  %.not = icmp eq ptr %i.r, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 30
  %i.t = load atomic i8, ptr %i.s monotonic, align 1
  %.not20 = icmp eq i8 %i.t, 0
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 4, !noundef !9
  %i.w = add i32 %i.m, -1
  store i32 %i.w, ptr %i.k, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.o, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.v, ptr %i.y, align 4
  %i.z = call { i64, i1 } @_RNvMs2_NtCsffXo9NmvYC7_8indexmap3mapINtB5_8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %5, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.aa = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %6, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %3)
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.ab)
  %i.ac = load i32, ptr %i.j, align 8, !range !356, !noundef !9
  switch i32 %i.ac, label %default.unreachable137 [
    i32 0, label %bb.i
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.a, %.loopexit75, %.loopexit80, %bb.c, %bb.d
  ret void

default.unreachable137:                           ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.055.0.copyload = load i64, ptr %i.ad, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.657.0.copyload = load ptr, ptr %.sroa.657.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.055.0.copyload56 = load i64, ptr %i.ae, align 8
  %.sroa.657.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.657.0.copyload59 = load ptr, ptr %.sroa.657.0..sroa_idx58, align 8
  %.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.8.0.copyload61 = load i64, ptr %.sroa.8.0..sroa_idx60, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %.sroa.055.0.a = phi i64 [ %.sroa.055.0.copyload56, %bb.h ], [ %.sroa.055.0.copyload, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %.sroa.657.0 = phi ptr [ %.sroa.657.0.copyload59, %bb.h ], [ %.sroa.657.0.copyload, %bb.g ], [ inttoptr (i64 4 to ptr), %bb.e ] ; 6 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload61, %bb.h ], [ %.sroa.8.0.copyload, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.af = trunc nuw i64 %.sroa.055.0.a to i1
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %.sroa.657.0, i64 %.sroa.8.0
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.657.0, i64 %.sroa.8.0
  %.sroa.5.0.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ai = icmp eq i8 %4, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.055.0.a, ptr %i.g, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %.sroa.657.0, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.055.0.a, ptr %i.i, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %.sroa.657.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %.sroa.5.0.i, ptr %.sroa.3.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.516.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.614.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.q

bb.l:                                             ; preds = %bb.o, %bb.j
  %.promoted.i = phi ptr [ %.promoted.i.pre, %bb.o ], [ %.sroa.657.0, %bb.j ] ; 3 uses
  %i.ap = phi ptr [ %.pre121, %bb.o ], [ %.sroa.5.0.i, %bb.j ] ; 3 uses
  %i.aq = phi i64 [ %.pre120, %bb.o ], [ %.sroa.055.0.a, %bb.j ]
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.aj, ptr %i.f, align 8, !noalias !370
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = icmp eq ptr %.promoted.i, %i.ap         ; 2 uses
  br i1 %i.ar, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.l
  br i1 %i.as, label %.loopexit75, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.split.us.i, %bb.m
  %i.at = phi ptr [ %i.au, %bb.m ], [ %.promoted.i, %.split.us.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 3 uses
  %.sroa.12.4..sroa_idx6.us.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.12.4.copyload7.us.i = load i32, ptr %.sroa.12.4..sroa_idx6.us.i, align 4, !noalias !376
  %i.av = load <2 x i32>, ptr %i.at, align 4, !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !377
  store <2 x i32> %i.av, ptr %i.d, align 8, !noalias !382
  store i32 %.sroa.12.4.copyload7.us.i, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !382
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBW_14QueryOriginRef6inputs0INtB7_5FnMutTNtBW_9QueryEdgeEE8call_mutBY_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.d), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !377
  %i.aw = load i32, ptr %i.e, align 4, !noalias !377, !noundef !9 ; 2 uses
  %.not.i.us.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.us.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !377
  %i.ax = icmp eq ptr %i.au, %i.ap
  br i1 %i.ax, label %.loopexit75, label %.lr.ph39.i

.split.i:                                         ; preds = %bb.l
  br i1 %i.as, label %.loopexit75, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %bb.n
  %i.ay = phi ptr [ %i.az, %bb.n ], [ %.promoted.i, %.split.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !384, !noundef !9
  %i.bc = load <2 x i32>, ptr %i.ay, align 4, !noalias !376
  %i.bd = lshr i32 %i.bb, 20
  %i.be = and <2 x i32> %i.bc, <i32 -1, i32 1048575>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !377
  store <2 x i32> %i.be, ptr %i.d, align 8, !noalias !382
  store i32 %i.bd, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !382
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBW_14QueryOriginRef6inputs0INtB7_5FnMutTNtBW_9QueryEdgeEE8call_mutBY_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.d), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !377
  %i.bf = load i32, ptr %i.e, align 4, !noalias !377, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !377
  %i.bg = icmp eq ptr %i.az, %i.ap
  br i1 %i.bg, label %.loopexit75, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph39.i
  %storemerge97 = phi ptr [ %i.au, %.lr.ph39.i ], [ %i.az, %.lr.ph.i ]
  %.us-phi.i = phi i32 [ %i.aw, %.lr.ph39.i ], [ %i.bf, %.lr.ph.i ]
  store ptr %storemerge97, ptr %.sroa.549.0..sroa_idx, align 8, !alias.scope !386, !noalias !387
  %.sroa.614.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx.i, align 4, !noalias !388 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.665.8.extract.shift = lshr i64 %.sroa.614.0.copyload.i, 32 ; 3 uses
  %i.bh = load i64, ptr %i.ak, align 8, !noundef !9 ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, %.sroa.665.8.extract.shift
  br i1 %i.bi, label %bb.o, label %bb.p

.loopexit75:                                      ; preds = %.split.i, %.split.us.i, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.o:                                             ; preds = %.loopexit
  %.sroa.665.4.extract.trunc = trunc i64 %.sroa.614.0.copyload.i to i32
  %i.bj = load ptr, ptr %i.al, align 8, !nonnull !9, !noundef !9
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.sroa.665.8.extract.shift ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !9, !noundef !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !9, !align !126, !noundef !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !9, !nonnull !9
  call void %i.bp(ptr noundef nonnull %i.bl, ptr noundef nonnull align 8 %2, i32 noundef %.us-phi.i, i32 noundef %.sroa.665.4.extract.trunc, ptr noalias noundef nonnull align 8 dereferenceable(56) %5, ptr noalias noundef nonnull align 8 dereferenceable(32) %6)
  %.pre120 = load i64, ptr %i.g, align 8, !range !389, !alias.scope !386, !noalias !387
  %.pre121 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !386, !noalias !387
  %.promoted.i.pre = load ptr, ptr %.sroa.549.0..sroa_idx, align 8, !alias.scope !386, !noalias !387
  br label %bb.l

bb.p:                                             ; preds = %.loopexit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.665.8.extract.shift, i64 noundef %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.q:                                             ; preds = %bb.x, %bb.k
  %.pre115117 = phi ptr [ %.sroa.5.0.i, %bb.k ], [ %.pre115, %bb.x ] ; 4 uses
  %.promoted.i23 = phi ptr [ %.sroa.657.0, %bb.k ], [ %.promoted.i23.pre, %bb.x ] ; 3 uses
  %i.bq = phi i64 [ %.sroa.055.0.a, %bb.k ], [ %i.cx, %bb.x ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.k ], [ %.sroa.0.1, %bb.x ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.am, ptr %i.c, align 8, !noalias !393
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = icmp eq ptr %.promoted.i23, %.pre115117 ; 2 uses
  br i1 %i.br, label %.split.us.i36, label %.split.i26

.split.us.i36:                                    ; preds = %bb.q
  br i1 %i.bs, label %.loopexit80, label %.lr.ph39.i37

.lr.ph39.i37:                                     ; preds = %.split.us.i36, %bb.r
  %i.bt = phi ptr [ %i.bu, %bb.r ], [ %.promoted.i23, %.split.us.i36 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 3 uses
  %.sroa.12.4..sroa_idx6.us.i40 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.12.4.copyload7.us.i41 = load i32, ptr %.sroa.12.4..sroa_idx6.us.i40, align 4, !noalias !399
  %i.bv = load <2 x i32>, ptr %i.bt, align 4, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store <2 x i32> %i.bv, ptr %i.a, align 8, !noalias !405
  store i32 %.sroa.12.4.copyload7.us.i41, ptr %.sroa.516.0..sroa_idx.i25, align 8, !noalias !405
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBW_14QueryOriginRef6inputs0INtB7_5FnMutTNtBW_9QueryEdgeEE8call_mutBY_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  %i.bw = load i32, ptr %i.b, align 4, !noalias !400, !noundef !9 ; 2 uses
  %.not.i.us.i43 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.us.i43, label %bb.r, label %.loopexit76

bb.r:                                             ; preds = %.lr.ph39.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400
  %i.bx = icmp eq ptr %i.bu, %.pre115117
  br i1 %i.bx, label %.loopexit80, label %.lr.ph39.i37

.split.i26:                                       ; preds = %bb.q
  br i1 %i.bs, label %.loopexit80, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.split.i26, %bb.s
  %i.by = phi ptr [ %i.bz, %bb.s ], [ %.promoted.i23, %.split.i26 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !407, !noundef !9
  %i.cc = load <2 x i32>, ptr %i.by, align 4, !noalias !399
  %i.cd = lshr i32 %i.cb, 20
  %i.ce = and <2 x i32> %i.cc, <i32 -1, i32 1048575>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store <2 x i32> %i.ce, ptr %i.a, align 8, !noalias !405
  store i32 %i.cd, ptr %.sroa.516.0..sroa_idx.i25, align 8, !noalias !405
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBW_14QueryOriginRef6inputs0INtB7_5FnMutTNtBW_9QueryEdgeEE8call_mutBY_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  %i.cf = load i32, ptr %i.b, align 4, !noalias !400, !noundef !9 ; 2 uses
  %.not.i.i29 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i29, label %bb.s, label %.loopexit76

bb.s:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400
  %i.cg = icmp eq ptr %i.bz, %.pre115117
  br i1 %i.cg, label %.loopexit80, label %.lr.ph.i27

.loopexit76:                                      ; preds = %.lr.ph.i27, %.lr.ph39.i37
  %storemerge = phi ptr [ %i.bu, %.lr.ph39.i37 ], [ %i.bz, %.lr.ph.i27 ] ; 2 uses
  %.us-phi.i31 = phi i32 [ %i.bw, %.lr.ph39.i37 ], [ %i.cf, %.lr.ph.i27 ]
  store ptr %storemerge, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !409, !noalias !410
  %.sroa.614.0.copyload.i33 = load i64, ptr %.sroa.614.0..sroa_idx.i32, align 4, !noalias !411 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.663.4.extract.trunc = trunc i64 %.sroa.614.0.copyload.i33 to i32
  %.sroa.663.8.extract.shift = lshr i64 %.sroa.614.0.copyload.i33, 32
  %.sroa.663.8.extract.trunc = trunc nuw i64 %.sroa.663.8.extract.shift to i32
  %i.ch = add i32 %.us-phi.i31, -1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.ch, ptr %i.h, align 4
  store i64 %.sroa.614.0.copyload.i33, ptr %.sroa.4.sroa.5.0..sroa_idx, align 4
  %i.ci = load i64, ptr %i.an, align 8, !noundef !9
  %i.cj = icmp ult i64 %.sroa.0.0, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.w

.loopexit80:                                      ; preds = %.split.i26, %.split.us.i36, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.f

bb.t:                                             ; preds = %.loopexit76
  %i.ck = load ptr, ptr %i.ao, align 8, !nonnull !9, !noundef !9
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.sroa.0.0 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !noundef !9
  %i.co = icmp eq i32 %i.cn, %i.ch
  br i1 %i.co, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !noundef !9
  %i.cr = icmp eq i32 %i.cq, %.sroa.663.4.extract.trunc
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !9
  %i.cu = icmp eq i32 %i.ct, %.sroa.663.8.extract.trunc
  br i1 %i.cu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.t, %.loopexit76, %bb.v
  %i.cv = call { i64, i1 } @_RNvMs2_NtCsffXo9NmvYC7_8indexmap3mapINtB5_8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %5, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.h)
  %i.cw = extractvalue { i64, i1 } %i.cv, 0
  %.pre = load i64, ptr %i.i, align 8, !range !389, !alias.scope !409, !noalias !410
  %.pre115.pre = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !409, !noalias !410
  %.promoted.i23.pre.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !409, !noalias !410
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.promoted.i23.pre = phi ptr [ %.promoted.i23.pre.pre, %bb.w ], [ %storemerge, %bb.v ]
  %.pre115 = phi ptr [ %.pre115.pre, %bb.w ], [ %.pre115117, %bb.v ]
  %i.cx = phi i64 [ %.pre, %bb.w ], [ %i.bq, %bb.v ]
  %.sroa.0.1.in = phi i64 [ %i.cw, %bb.w ], [ %.sroa.0.0, %bb.v ]
  %.sroa.0.1 = add i64 %.sroa.0.1.in, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsC8CapfvpQ1_5salsa8function32collect_minimum_serialized_edges(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %3, ptr noalias noundef align 8 dereferenceable(56) %4, ptr noalias noundef align 8 dereferenceable(32) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 8 uses
  %i.b = alloca [12 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load i32, ptr %3, align 4, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !9
  %i.j = add i32 %i.g, 1                          ; 2 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !nonnull !9
  call void %i.m(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull %0, ptr noundef nonnull align 8 %2, i32 noundef %i.j, i32 noundef %i.i)
  %i.n = load ptr, ptr %i.f, align 8, !noundef !9 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE6insertBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %5, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.p)
  %i.q = load i32, ptr %i.c, align 8, !range !356, !noundef !9
  switch i32 %i.q, label %default.unreachable42 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

default.unreachable42:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsr_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10QueryEdgesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx7, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.t = trunc nuw i64 %.sroa.0.0.copyload to i1
  %.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.w = icmp eq ptr %.sroa.4.0.copyload, %.sroa.7.0.copyload ; 2 uses
  br i1 %i.t, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f
  br i1 %i.w, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph27

end_hunk_0
