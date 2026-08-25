Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenCLOptions?download=true
begin_hunk_0_@_ZN5clang13OpenCLOptionsC2Ev:bb.a
  %i.aui = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  store i8 0, ptr %i.aui, align 8, !tbaa !34
  %.sroa.5871.0..sroa_idx872 = getelementptr inbounds nuw i8, ptr %i.atz, i64 12
  store i32 300, ptr %.sroa.5871.0..sroa_idx872, align 4, !tbaa !35
  %.sroa.6874.0..sroa_idx875 = getelementptr inbounds nuw i8, ptr %i.atz, i64 16
  store i32 0, ptr %.sroa.6874.0..sroa_idx875, align 8, !tbaa !35
  %.sroa.7877.0..sroa_idx878 = getelementptr inbounds nuw i8, ptr %i.atz, i64 20
  store i32 16, ptr %.sroa.7877.0..sroa_idx878, align 4, !tbaa !35
  %.sroa.8880.0..sroa_idx881 = getelementptr inbounds nuw i8, ptr %i.atz, i64 24
  store i8 0, ptr %.sroa.8880.0..sroa_idx881, align 8, !tbaa !34
  %.sroa.9883.0..sroa_idx884 = getelementptr inbounds nuw i8, ptr %i.atz, i64 25
  store i8 0, ptr %.sroa.9883.0..sroa_idx884, align 1, !tbaa !34
  br label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit814

_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit814: ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE11try_emplaceIJS3_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i813, %bb.ce
  %i.auj = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.82, i64 15) #11
  %i.auk = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr nonnull @.str.82, i64 15, i32 noundef %i.auj) #11 ; 2 uses
  %i.aul = load ptr, ptr %0, align 8, !tbaa !13
  %i.aum = zext i32 %i.auk to i64
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %i.aul, i64 %i.aum ; 2 uses
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !14 ; 7 uses
  %.not.i.i.i815 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i.i815, label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE11try_emplaceIJS3_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i821, label %bb.cf

_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE11try_emplaceIJS3_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i821: ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit814
  %i.aup = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 48, i64 noundef 8) #11 ; 10 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.auq, ptr noundef nonnull align 1 dereferenceable(15) @.str.82, i64 15, i1 false)
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aup, i64 47
  store i8 0, ptr %i.aur, align 1, !tbaa !29
  store i64 15, ptr %i.aup, align 8, !tbaa !30
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aup, i64 8
  store i8 0, ptr %i.aus, align 8, !tbaa !34
  %.sroa.5849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aup, i64 12
  store i32 300, ptr %.sroa.5849.0..sroa_idx, align 4, !tbaa !35
  %.sroa.6852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aup, i64 16
  store i32 0, ptr %.sroa.6852.0..sroa_idx, align 8, !tbaa !35
  %.sroa.7855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aup, i64 20
  store i32 16, ptr %.sroa.7855.0..sroa_idx, align 4, !tbaa !35
  %.sroa.8858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aup, i64 24
  store i8 0, ptr %.sroa.8858.0..sroa_idx, align 8, !tbaa !34
  %.sroa.9861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aup, i64 25
  store i8 0, ptr %.sroa.9861.0..sroa_idx, align 1, !tbaa !34
  store ptr %i.aup, ptr %i.aun, align 8, !tbaa !14
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !31
  %i.auv = add i32 %i.auu, 1
  store i32 %i.auv, ptr %i.aut, align 4, !tbaa !31
  %i.auw = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.auk) #11 ; 0 uses
  br label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit822

bb.cf:                                            ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit814
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auo, i64 8
  store i8 0, ptr %i.aux, align 8, !tbaa !34
  %.sroa.5849.0..sroa_idx850 = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  store i32 300, ptr %.sroa.5849.0..sroa_idx850, align 4, !tbaa !35
  %.sroa.6852.0..sroa_idx853 = getelementptr inbounds nuw i8, ptr %i.auo, i64 16
  store i32 0, ptr %.sroa.6852.0..sroa_idx853, align 8, !tbaa !35
  %.sroa.7855.0..sroa_idx856 = getelementptr inbounds nuw i8, ptr %i.auo, i64 20
  store i32 16, ptr %.sroa.7855.0..sroa_idx856, align 4, !tbaa !35
  %.sroa.8858.0..sroa_idx859 = getelementptr inbounds nuw i8, ptr %i.auo, i64 24
  store i8 0, ptr %.sroa.8858.0..sroa_idx859, align 8, !tbaa !34
  %.sroa.9861.0..sroa_idx862 = getelementptr inbounds nuw i8, ptr %i.auo, i64 25
  store i8 0, ptr %.sroa.9861.0..sroa_idx862, align 1, !tbaa !34
  br label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit822

_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit822: ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE11try_emplaceIJS3_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i821, %bb.cf
  %i.auy = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.83, i64 20) #11
  %i.auz = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr nonnull @.str.83, i64 20, i32 noundef %i.auy) #11 ; 2 uses
  %i.ava = load ptr, ptr %0, align 8, !tbaa !13
  %i.avb = zext i32 %i.auz to i64
  %i.avc = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %i.avb ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !14 ; 7 uses
  %.not.i.i.i823 = icmp eq ptr %i.avd, null
  br i1 %.not.i.i.i823, label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE11try_emplaceIJS3_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i829, label %bb.cg

_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE11try_emplaceIJS3_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i829: ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit822
  %i.ave = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 53, i64 noundef 8) #11 ; 10 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.avf, ptr noundef nonnull align 1 dereferenceable(20) @.str.83, i64 20, i1 false)
  %i.avg = getelementptr inbounds nuw i8, ptr %i.ave, i64 52
  store i8 0, ptr %i.avg, align 1, !tbaa !29
  store i64 20, ptr %i.ave, align 8, !tbaa !30
  %i.avh = getelementptr inbounds nuw i8, ptr %i.ave, i64 8
  store i8 0, ptr %i.avh, align 8, !tbaa !34
  %.sroa.5833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ave, i64 12
  store i32 300, ptr %.sroa.5833.0..sroa_idx, align 4, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ave, i64 16
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !35
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ave, i64 20
  store i32 16, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !35
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ave, i64 24
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !34
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ave, i64 25
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !34
  store ptr %i.ave, ptr %i.avc, align 8, !tbaa !14
  %i.avi = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !31
  %i.avk = add i32 %i.avj, 1
  store i32 %i.avk, ptr %i.avi, align 4, !tbaa !31
  %i.avl = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.auz) #11 ; 0 uses
  br label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit830

bb.cg:                                            ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit822
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  store i8 0, ptr %i.avm, align 8, !tbaa !34
  %.sroa.5833.0..sroa_idx834 = getelementptr inbounds nuw i8, ptr %i.avd, i64 12
  store i32 300, ptr %.sroa.5833.0..sroa_idx834, align 4, !tbaa !35
  %.sroa.6.0..sroa_idx836 = getelementptr inbounds nuw i8, ptr %i.avd, i64 16
  store i32 0, ptr %.sroa.6.0..sroa_idx836, align 8, !tbaa !35
  %.sroa.7.0..sroa_idx838 = getelementptr inbounds nuw i8, ptr %i.avd, i64 20
  store i32 16, ptr %.sroa.7.0..sroa_idx838, align 4, !tbaa !35
  %.sroa.8.0..sroa_idx840 = getelementptr inbounds nuw i8, ptr %i.avd, i64 24
  store i8 0, ptr %.sroa.8.0..sroa_idx840, align 8, !tbaa !34
  %.sroa.9.0..sroa_idx842 = getelementptr inbounds nuw i8, ptr %i.avd, i64 25
  store i8 0, ptr %.sroa.9.0..sroa_idx842, align 1, !tbaa !34
  br label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit830

_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE16insert_or_assignIS3_EESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEOT_.exit830: ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE11try_emplaceIJS3_EEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit.thread.i829, %bb.cg
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13OpenCLOptions10addSupportERKN4llvm9StringMapIbNS1_15MallocAllocatorEEERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(1136) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE5beginEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.lr.ph.i.i.i, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.a, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE5beginEv.exit, !llvm.loop !36

_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.g, %.lr.ph.i.i.i ] ; 3 uses
  %i.j = zext i32 %i.c to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %.not24 = icmp eq ptr %.sroa.0.0.i, %i.k
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE5beginEv.exit
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.pre = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !14
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm17StringMapIterBaseIbLb1EEppEv.exit, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE5beginEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm17StringMapIterBaseIbLb1EEppEv.exit
  %i.m = phi ptr [ %.pre, %.lr.ph ], [ %i.bv, %_ZN4llvm17StringMapIterBaseIbLb1EEppEv.exit ] ; 3 uses
  %.sroa.017.025 = phi ptr [ %.sroa.0.0.i, %.lr.ph ], [ %.sroa.017.1, %_ZN4llvm17StringMapIterBaseIbLb1EEppEv.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 8 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !30   ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !34, !range !22, !noundef !23
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull %i.n, i64 %i.o) #11
  %i.t = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.n, i64 %i.o, i32 noundef %i.s) #11 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread, label %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit

_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit: ; preds = %bb.d
  %i.v = sext i32 %i.t to i64
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !8
  %.pre4.i.i = zext i32 %.pre.i.i to i64
  %.not21 = icmp eq i64 %i.v, %.pre4.i.i
  br i1 %.not21, label %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit
  %i.w = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull %i.n, i64 %i.o) #11
  %i.x = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr nonnull %i.n, i64 %i.o, i32 noundef %i.w) #11 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !13
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEEixENS_9StringRefE.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = add i64 %i.o, 33
  %i.ad = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ac, i64 noundef 8) #11 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.n, i64 %i.o, i1 false)
  br label %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.o
  store i8 0, ptr %i.af, align 1, !tbaa !29
  store i64 %i.o, ptr %i.ad, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, i8 0, i64 20, i1 false)
  store i32 100, ptr %i.ah, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ai, i8 0, i64 10, i1 false)
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !14
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !31
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.l, align 4, !tbaa !31
  %i.al = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.x) #11
  %i.am = load ptr, ptr %0, align 8, !tbaa !13
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !14
  br label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEEixENS_9StringRefE.exit

_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEEixENS_9StringRefE.exit: ; preds = %bb.e, %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.ap = phi ptr [ %.pre.i, %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i ], [ %i.ab, %bb.e ]
  %i.aq = tail call noundef i32 @_ZNK5clang11LangOptions26getOpenCLCompatibleVersionEv(ptr noundef nonnull align 8 dereferenceable(1136) %2) #11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %.not22 = icmp ult i32 %i.aq, %i.as
  br i1 %.not22, label %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEEixENS_9StringRefE.exit
  %i.at = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull %i.n, i64 %i.o) #11
  %i.au = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.n, i64 %i.o, i32 noundef %i.at) #11 ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !13
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN5clang13OpenCLOptions7supportEN4llvm9StringRefEb.exit

bb.i:                                             ; preds = %bb.h
  %i.az = add i64 %i.o, 33
  %i.ba = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.az, i64 noundef 8) #11 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.n, i64 %i.o, i1 false)
  br label %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i

_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.o
  store i8 0, ptr %i.bc, align 1, !tbaa !29
  store i64 %i.o, ptr %i.ba, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, i8 0, i64 20, i1 false)
  store i32 100, ptr %i.be, align 4, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bf, i8 0, i64 10, i1 false)
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !14
  %i.bg = load i32, ptr %i.l, align 4, !tbaa !31
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.l, align 4, !tbaa !31
  %i.bi = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.au) #11
  %i.bj = load ptr, ptr %0, align 8, !tbaa !13
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i.i16 = load ptr, ptr %i.bl, align 8, !tbaa !14
  br label %_ZN5clang13OpenCLOptions7supportEN4llvm9StringRefEb.exit

_ZN5clang13OpenCLOptions7supportEN4llvm9StringRefEb.exit: ; preds = %bb.h, %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i
  %i.bm = phi ptr [ %.pre.i.i16, %_ZN4llvm14StringMapEntryIN5clang13OpenCLOptions16OpenCLOptionInfoEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i ], [ %i.ay, %bb.h ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i8 1, ptr %i.bn, align 4, !tbaa !21
  br label %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread

_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread: ; preds = %bb.d, %_ZN5clang13OpenCLOptions7supportEN4llvm9StringRefEb.exit, %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEEixENS_9StringRefE.exit, %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit, %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !14 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIbLb1EEppEv.exit

.lr.ph.i.i:                                       ; preds = %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread, %.lr.ph.i.i
  %i.br = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.bo, %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !14 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIbLb1EEppEv.exit, !llvm.loop !36

_ZN4llvm17StringMapIterBaseIbLb1EEppEv.exit:      ; preds = %.lr.ph.i.i, %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread
  %i.bv = phi ptr [ %i.bp, %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread ], [ %i.bt, %.lr.ph.i.i ]
  %.sroa.017.1 = phi ptr [ %i.bo, %_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE.exit.thread ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.017.1, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5clang13OpenCLOptions10disableAllEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE5beginEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.lr.ph.i.i.i, label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.a, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE5beginEv.exit, !llvm.loop !38

_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.g, %.lr.ph.i.i.i ] ; 3 uses
  %i.j = zext i32 %i.c to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %.not8 = icmp eq ptr %.sroa.0.0.i, %i.k
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE5beginEv.exit
  %.pre = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !14
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm17StringMapIterBaseIN5clang13OpenCLOptions16OpenCLOptionInfoELb0EEppEv.exit, %_ZN4llvm9StringMapIN5clang13OpenCLOptions16OpenCLOptionInfoENS_15MallocAllocatorEE5beginEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm17StringMapIterBaseIN5clang13OpenCLOptions16OpenCLOptionInfoELb0EEppEv.exit
  %i.l = phi ptr [ %i.u, %_ZN4llvm17StringMapIterBaseIN5clang13OpenCLOptions16OpenCLOptionInfoELb0EEppEv.exit ], [ %.pre, %.lr.ph.preheader ]
  %.sroa.04.09 = phi ptr [ %.sroa.04.1, %_ZN4llvm17StringMapIterBaseIN5clang13OpenCLOptions16OpenCLOptionInfoELb0EEppEv.exit ], [ %.sroa.0.0.i, %.lr.ph.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 25
  store i8 0, ptr %i.m, align 1, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIN5clang13OpenCLOptions16OpenCLOptionInfoELb0EEppEv.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.q = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.n, %.lr.ph ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIN5clang13OpenCLOptions16OpenCLOptionInfoELb0EEppEv.exit, !llvm.loop !38

_ZN4llvm17StringMapIterBaseIN5clang13OpenCLOptions16OpenCLOptionInfoELb0EEppEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph
  %i.u = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %.lr.ph.i.i ]
  %.sroa.04.1 = phi ptr [ %i.n, %.lr.ph ], [ %i.r, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.04.1, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang13OpenCLOptions38diagnoseUnsupportedFeatureDependenciesERKNS_10TargetInfoERNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(15256) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringMap.28", align 8 ; 23 uses
  %3 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 316 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  call void @_ZN4llvm13StringMapImpl4initEj(ptr noundef nonnull align 8 dereferenceable(20) %2, i32 noundef %i.i) #11
  %i.j = load ptr, ptr %2, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.e, align 4, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !31
  %.not20.i = icmp eq i32 %i.l, 0
  br i1 %.not20.i, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.b ] ; 5 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 4 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = add i64 %i.x, 17
  %i.aa = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.z, i64 noundef 8) #11 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.ac, i64 %i.x, i1 false)
  br label %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i

_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i: ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load i8, ptr %i.y, align 8, !tbaa !34, !range !22, !noundef !23
  store i8 %i.af, ptr %i.ae, align 8, !tbaa !74
  %i.ag = load ptr, ptr %2, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  store ptr %i.aa, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %.not.i, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.al = load ptr, ptr %0, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.61, i64 28) #11
  br i1 %i.ao, label %bb.i, label %bb.k

bb.f:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !8  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.aq, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.f, %bb.h
  %.012.i = phi ptr [ %i.aw, %bb.h ], [ %.pre13.i, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %.012.i, align 8, !tbaa !14 ; 3 uses
  %.not10.i = icmp eq ptr %i.at, null
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i13
  %i.au = load i64, ptr %i.at, align 8, !tbaa !30
  %i.av = add i64 %i.au, 17
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 noundef %i.av, i64 noundef 8) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i13
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.aw, %i.as
  br i1 %.not.i14, label %.loopexit.loopexit.i, label %.lr.ph.i13

.loopexit.loopexit.i:                             ; preds = %bb.h
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.w, %bb.f, %.loopexit.loopexit.i
  %i.ax = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.f ], [ %.pre13.i, %bb.w ]
  call void @free(ptr noundef %i.ax) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i1 %.1.4

bb.i:                                             ; preds = %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 536
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.53, i64 17) #11
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %1, i32 0, i32 noundef 51) #11
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.61, i64 28)
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.53, i64 17)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit
  %.1 = phi i1 [ true, %bb.i ], [ false, %bb.j ], [ true, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit ] ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !77
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 536
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.81, i64 26) #11
  br i1 %i.bf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %0, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 536
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.53, i64 17) #11
  br i1 %i.bj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %1, i32 0, i32 noundef 51) #11
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.81, i64 26)
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.53, i64 17)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1.1 = phi i1 [ %.1, %bb.l ], [ false, %bb.m ], [ %.1, %bb.k ] ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 536
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.59, i64 16) #11
  br i1 %i.bn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %0, align 8, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 536
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.52, i64 32) #11
  br i1 %i.br, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %1, i32 0, i32 noundef 51) #11
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.59, i64 16)
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.52, i64 32)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.2 = phi i1 [ %.1.1, %bb.o ], [ false, %bb.p ], [ %.1.1, %bb.n ] ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 536
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.34, i64 25) #11
  br i1 %i.bv, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %0, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 536
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.52, i64 32) #11
  br i1 %i.bz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %1, i32 0, i32 noundef 51) #11
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.34, i64 25)
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.52, i64 32)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1.3 = phi i1 [ %.1.2, %bb.r ], [ false, %bb.s ], [ %.1.2, %bb.q ] ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !77
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 536
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.34, i64 25) #11
  br i1 %i.cd, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr %0, align 8, !tbaa !77
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 536
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.60, i64 41) #11
  br i1 %i.ch, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %1, i32 0, i32 noundef 51) #11
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.34, i64 25)
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.60, i64 41)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.1.4 = phi i1 [ %.1.3, %bb.u ], [ false, %bb.v ], [ %.1.3, %bb.t ]
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !31
  %i.ck = icmp eq i32 %i.cj, 0
  %.pre13.i = load ptr, ptr %2, align 8, !tbaa !13 ; 4 uses
  br i1 %i.ck, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit, label %bb.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !79, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !87, !range !22, !noundef !23
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = tail call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine14EmitDiagnosticERKNS_17DiagnosticBuilderEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.e, ptr noundef nonnull align 8 dereferenceable(66) %0, i1 noundef zeroext %i.h) #11 ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !86
  store i8 0, ptr %i.a, align 8, !tbaa !79
  store i8 0, ptr %i.f, align 1, !tbaa !87
  br label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

_ZN5clang17DiagnosticBuilder4EmitEv.exit:         ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !89     ; 6 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp uge ptr %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 14848 ; 2 uses
  %i.u = icmp ule ptr %i.p, %i.t
  %or.cond.i.i.i.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 14976 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91   ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !91
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y
  store ptr %i.p, ptr %i.z, align 8, !tbaa !93
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.p) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 928) #12
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang13OpenCLOptions35diagnoseFeatureExtensionDifferencesERKNS_10TargetInfoERNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(15256) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringMap.28", align 8 ; 17 uses
  %3 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 316 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  call void @_ZN4llvm13StringMapImpl4initEj(ptr noundef nonnull align 8 dereferenceable(20) %2, i32 noundef %i.i) #11
  %i.j = load ptr, ptr %2, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.e, align 4, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !31
  %.not20.i = icmp eq i32 %i.l, 0
  br i1 %.not20.i, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.b ] ; 5 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 4 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = add i64 %i.x, 17
  %i.aa = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.z, i64 noundef 8) #11 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %i.ac, i64 %i.x, i1 false)
  br label %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i

_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i: ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load i8, ptr %i.y, align 8, !tbaa !34, !range !22, !noundef !23
  store i8 %i.af, ptr %i.ae, align 8, !tbaa !74
  %i.ag = load ptr, ptr %2, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  store ptr %i.aa, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14StringMapEntryIbE6createINS_15MallocAllocatorEJRbEEEPS1_NS_9StringRefERT_DpOT0_.exit.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %.not.i, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.al = load ptr, ptr %0, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.5, i64 11) #11
  %i.ap = load ptr, ptr %0, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 536
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.82, i64 15) #11
  %i.at = xor i1 %i.ao, %i.as                     ; 2 uses
  br i1 %i.at, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !8  ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx.i = shl nuw nsw i64 %i.aw, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.f, %bb.h
  %.012.i = phi ptr [ %i.bb, %bb.h ], [ %.pre13.i, %bb.f ] ; 2 uses
  %i.ay = load ptr, ptr %.012.i, align 8, !tbaa !14 ; 3 uses
  %.not10.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !30
  %i.ba = add i64 %i.az, 17
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 noundef %i.ba, i64 noundef 8) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i16
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bb, %i.ax
  br i1 %.not.i17, label %.loopexit.loopexit.i, label %.lr.ph.i16

.loopexit.loopexit.i:                             ; preds = %bb.h
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.l, %bb.f, %.loopexit.loopexit.i
  %i.bc = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.f ], [ %.pre13.i, %bb.l ]
  call void @free(ptr noundef %i.bc) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i1 %.1.1

bb.i:                                             ; preds = %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %1, i32 0, i32 noundef 50) #11
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.5, i64 11)
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.82, i64 15)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm9StringMapIbNS_15MallocAllocatorEEC2ERKS2_.exit
  %.1 = xor i1 %i.at, true
  %i.bd = load ptr, ptr %0, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 536
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.28, i64 22) #11
  %i.bh = load ptr, ptr %0, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 536
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(517) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr nonnull @.str.81, i64 26) #11
  %i.bl = xor i1 %i.bg, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %1, i32 0, i32 noundef 50) #11
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.28, i64 22)
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr nonnull @.str.81, i64 26)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.1 = phi i1 [ false, %bb.k ], [ %.1, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !31
  %i.bo = icmp eq i32 %i.bn, 0
  %.pre13.i = load ptr, ptr %2, align 8, !tbaa !13 ; 4 uses
  br i1 %i.bo, label %_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev.exit, label %bb.f
}

declare noundef i32 @_ZNK5clang11LangOptions26getOpenCLCompatibleVersionEv(ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66), ptr noundef, i32, i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN5clang17DiagnosticsEngine14EmitDiagnosticERKNS_17DiagnosticBuilderEb(ptr noundef nonnull align 8 dereferenceable(15256), ptr noundef nonnull align 8 dereferenceable(66), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5clang9FixItHintD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZN5clang9FixItHintD2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5clang9FixItHintD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !29
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #12
  br label %_ZN5clang9FixItHintD2Ev.exit.i.i

_ZN5clang9FixItHintD2Ev.exit.i.i:                 ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !97

_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN5clang9FixItHintD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %bb.a
  %i.n = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorIN5clang9FixItHintELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i
  tail call void @free(ptr noundef %i.n) #11
  br label %_ZN4llvm11SmallVectorIN5clang9FixItHintELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang9FixItHintELj6EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang9FixItHintELj6EED2Ev.exit
  tail call void @free(ptr noundef %i.r) #11
  br label %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang9FixItHintELj6EED2Ev.exit, %bb.c
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = load ptr, ptr %.ptr1, align 8, !tbaa !88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !29
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load ptr, ptr %.ptr1.1, align 8, !tbaa !88 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
end_hunk_0
