Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN10prometheus9histogram9Histogram14get_sample_sum17h5f7d29551a74196fE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  br i1 %i.q, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.z = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.z, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aa = atomicrmw xchg ptr %i.c, i32 0 release, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.n, label %_ZN10prometheus9histogram13HistogramCore10sample_sum17h50199278a34e7715E.exit, !prof !11

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.c)
  br label %_ZN10prometheus9histogram13HistogramCore10sample_sum17h50199278a34e7715E.exit

_ZN10prometheus9histogram13HistogramCore10sample_sum17h50199278a34e7715E.exit: ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.n
  %i.ac = bitcast i64 %i.v to double
  ret double %i.ac
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, -9223372036854775808) i64 @_ZN10prometheus9histogram9Histogram16get_sample_count17h4ad15ce65c21ff54E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10prometheus9histogram9Histogram26with_opts_and_label_values17h05957183e36cf420E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [40 x i8], align 8                ; 3 uses
  %.sroa.6122.sroa.4.i = alloca [16 x i8], align 8 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.018.sroa.0.i.sroa.7 = alloca [104 x i8], align 8 ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 11 uses
  %i.p = alloca [112 x i8], align 8               ; 9 uses
  %i.q = alloca [112 x i8], align 8               ; 15 uses
  %i.r = alloca [272 x i8], align 8               ; 19 uses
  %.sroa.27 = alloca [16 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3440
  call void @"_ZN73_$LT$prometheus..metrics..Opts$u20$as$u20$prometheus..desc..Describer$GT$8describe17haee1c8848682a1d2E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1), !noalias !3441
  %i.s = load i64, ptr %i.p, align 8, !range !8, !noalias !3440, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.i.sroa.0.0.copyload50 = load i64, ptr %i.u, align 8, !noalias !3440 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.i.sroa.7.0.copyload53 = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx52, align 8, !noalias !3440 ; 2 uses
  %.sroa.6.i.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6.i.sroa.8.0.copyload56 = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx55, align 8, !noalias !3440 ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3440
  br label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.626.0..sroa_idx.i, i64 80, i1 false), !noalias !3440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3440
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload50, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3440
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.sroa.6.i.sroa.7.0.copyload53, ptr %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !3440
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.6.i.sroa.8.0.copyload56, ptr %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !3440
  store i64 %i.s, ptr %i.q, align 8, !noalias !3440
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3440, !nonnull !6, !noundef !6 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.y = load i64, ptr %i.x, align 8, !noalias !3440, !noundef !6 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.y, 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %.sroa.038.0198.i = phi ptr [ %i.ab, %bb.h ], [ %i.w, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !3441, !noundef !6
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3441, !nonnull !6, !noundef !6
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = icmp ne i16 %i.ah, 25964
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3442
  %i.al = tail call noundef dereferenceable_or_null(47) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 47, i64 noundef range(i64 1, 9) 1) #42, !noalias !3442 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.invoke.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !3440, !nonnull !6, !noundef !6 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !3440, !noundef !6 ; 5 uses
  %.idx206.i = mul nuw nsw i64 %i.aq, 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx206.i ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0                    ; 2 uses
  br i1 %i.as, label %._crit_edge205.i, label %.lr.ph204.preheader.i

.lr.ph204.preheader.i:                            ; preds = %._crit_edge.i
  %.sroa.039.1200.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  br label %.lr.ph204.i

bb.f:                                             ; preds = %.invoke.i, %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22"

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.al, ptr noundef nonnull align 1 dereferenceable(47) @140, i64 47, i1 false), !noalias !3443
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.h:                                             ; preds = %bb.d, %.lr.ph.i
  %i.au = icmp eq ptr %i.ab, %i.z
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i": ; preds = %.thread233.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", %bb.ax, %bb.bn, %bb.g
  %.sroa.20.1 = phi i64 [ 47, %bb.g ], [ 47, %bb.bn ], [ %.sroa.5155.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.5155.0.copyload.i, %bb.ax ], [ %3, %.thread233.i ]
  %.sroa.17.1 = phi ptr [ %i.al, %bb.g ], [ %i.be, %bb.bn ], [ %.sroa.4154.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.4154.0.copyload.i, %bb.ax ], [ %.sroa.613.i.sroa.7.0.copyload.cast, %.thread233.i ]
  %.sroa.10.1 = phi i64 [ 47, %bb.g ], [ 47, %bb.bn ], [ %.sroa.0153.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.0153.0.copyload.i, %bb.ax ], [ -9223372036854775807, %.thread233.i ]
  call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.q), !noalias !3441
  br label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread

.lr.ph204.i:                                      ; preds = %bb.bo, %.lr.ph204.preheader.i
  %.sroa.039.1202.i = phi ptr [ %.sroa.039.1.i, %bb.bo ], [ %.sroa.039.1200.i, %.lr.ph204.preheader.i ] ; 3 uses
  %.sroa.039.0201.i = phi ptr [ %.sroa.039.1202.i, %bb.bo ], [ %i.ao, %.lr.ph204.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.039.0201.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !3441, !noundef !6
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.i, label %bb.bo

bb.i:                                             ; preds = %.lr.ph204.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.039.0201.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3441, !nonnull !6, !noundef !6
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = icmp ne i16 %i.ba, 25964
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %bb.bo

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3444
  %i.be = tail call noundef dereferenceable_or_null(47) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 47, i64 noundef range(i64 1, 9) 1) #42, !noalias !3444 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.invoke.i, label %bb.bn

._crit_edge205.i:                                 ; preds = %bb.bo, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3440
  %i.bg = icmp ult i64 %i.y, 384307168202282326
  tail call void @llvm.assume(i1 %i.bg)
  %.not.i.not.i = icmp eq i64 %i.y, %3
  br i1 %.not.i.not.i, label %bb.k, label %.thread233.i

bb.k:                                             ; preds = %._crit_edge205.i
  %i.bh = icmp ult i64 %i.aq, 192153584101141163
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.aq, %3               ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.m

.thread233.i:                                     ; preds = %._crit_edge205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3440
  %.sroa.613.i.sroa.7.0.copyload.cast = inttoptr i64 %i.y to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3440
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.bk, align 8, !alias.scope !3445, !noalias !3447
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !3445, !noalias !3447
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !3445, !noalias !3447
  br label %.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp eq i64 %3, 0
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6d14be9099c91ad9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bm, ptr nonnull %i.ao, i64 %i.aq)
          to label %.thread.i unwind label %bb.f, !noalias !3441

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3448
  %i.bn = mul i64 %i.bi, 48                       ; 4 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %i.bi, 192153584101141162
  br i1 %or.cond.i.i.i.i.i, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.o
  %4 = icmp eq i64 %i.bn, 0
  br i1 %4, label %.lr.ph.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3449
  %i.bo = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bn, i64 noundef range(i64 1, 9) 8) #42, !noalias !3449 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.invoke.i, label %.lr.ph.i.i

.invoke.i:                                        ; preds = %bb.p, %bb.o, %bb.j, %bb.e
  %i.bq = phi i64 [ 1, %bb.j ], [ 0, %bb.o ], [ 8, %bb.p ], [ 1, %bb.e ]
  %i.br = phi i64 [ 47, %bb.j ], [ %i.bn, %bb.o ], [ %i.bn, %bb.p ], [ 47, %bb.e ]
  %i.bs = phi ptr [ @319, %bb.j ], [ @66, %bb.o ], [ @66, %bb.p ], [ @319, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.bq, i64 %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs) #45
          to label %.cont.i unwind label %bb.f, !noalias !3441

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.p, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.bo, %bb.p ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.bi, %bb.p ] ; 2 uses
  %5 = icmp samesign ule i64 %i.bi, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %5)
  store i64 %.sroa.4.0.i.i.i, ptr %i.i, align 8, !noalias !3448
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i, ptr %i.bt, align 8, !noalias !3448
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %i.bu, align 8, !noalias !3448
  %.idx.i.i = mul nuw nsw i64 %3, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.515.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.618.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %bb.t

.body.i.i:                                        ; preds = %bb.an, %bb.ao, %.thread, %.body44.i.i, %bb.ac, %bb.w, %bb.v, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %i.df, %.body44.i.i ], [ %i.da, %bb.ac ], [ %i.cr, %bb.v ], [ %i.cr, %bb.w ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit63.i.i, %.thread ], [ %lpad.loopexit.split-lp64.i.i, %bb.ao ], [ %lpad.loopexit.split-lp64.i.i, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  %.val.i10 = load ptr, ptr %i.bt, align 8, !alias.scope !3450, !noalias !3451, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i11 = load i64, ptr %i.bu, align 8, !alias.scope !3450, !noalias !3451, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3452), !noalias !3451
  %i.bx = icmp eq i64 %.val1.i11, 0
  br i1 %i.bx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20", label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.body.i.i, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i19"
  %.sroa.0.07.i.i.i13 = phi i64 [ %i.bz, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i19" ], [ 0, %.body.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %.val.i10, i64 %.sroa.0.07.i.i.i13 ; 4 uses
  %i.bz = add nuw i64 %.sroa.0.07.i.i.i13, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3453), !noalias !3451
  call void @llvm.experimental.noalias.scope.decl(metadata !3454), !noalias !3451
  %.val.i.i.i.i.i14 = load i64, ptr %i.by, align 8, !alias.scope !3455, !noalias !3456 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i.i.i.i14, 0
  br i1 %i.ca, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i16", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.val1.i.i.i.i.i15 = load ptr, ptr %i.cb, align 8, !alias.scope !3455, !noalias !3456, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i15, i64 noundef %.val.i.i.i.i.i14, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3457
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i16"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i16": ; preds = %bb.q, %.lr.ph.i.i.i12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3458), !noalias !3451
  %.val.i4.i.i.i.i17 = load i64, ptr %i.cc, align 8, !alias.scope !3459, !noalias !3456 ; 2 uses
  %i.cd = icmp eq i64 %.val.i4.i.i.i.i17, 0
  br i1 %i.cd, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i19", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i16"
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %.val1.i5.i.i.i.i18 = load ptr, ptr %i.ce, align 8, !alias.scope !3459, !noalias !3456, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i18, i64 noundef %.val.i4.i.i.i.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3460
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i19"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i19": ; preds = %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i16"
  %i.cf = icmp eq i64 %i.bz, %.val1.i11
  br i1 %i.cf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20", label %.lr.ph.i.i.i12

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i19", %.body.i.i
  %.val2.i21 = load i64, ptr %i.i, align 8, !range !10, !alias.scope !3450, !noalias !3451, !noundef !6 ; 2 uses
  %i.cg = icmp eq i64 %.val2.i21, 0
  br i1 %i.cg, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22", label %bb.s

bb.s:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20"
  %i.ch = mul nuw i64 %.val2.i21, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3456
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22"

.loopexit.i.i:                                    ; preds = %bb.u
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.y
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.t:                                             ; preds = %bb.am, %.lr.ph.i.i
  %i.ci = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i ], [ %i.do, %bb.am ]
  %i.cj = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cl, %bb.am ] ; 5 uses
  %.sroa.0.072.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.ck, %bb.am ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.072.i.i, i64 24 ; 2 uses
  %i.cl = add nuw nsw i64 %i.cj, 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3448
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.072.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68)
          to label %bb.ae unwind label %.thread, !noalias !3451

._crit_edge.i.i:                                  ; preds = %bb.am
  br i1 %i.as, label %._crit_edge76.i.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %._crit_edge.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.ad, %.lr.ph75.i.i
  %i.cn = phi ptr [ %i.do, %.lr.ph75.i.i ], [ %i.db, %bb.ad ]
  %i.co = phi i64 [ %i.cl, %.lr.ph75.i.i ], [ %i.dd, %bb.ad ] ; 3 uses
  %.sroa.021.073.i.i = phi ptr [ %i.ao, %.lr.ph75.i.i ], [ %i.cp, %bb.ad ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.021.073.i.i, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3461
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.021.073.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !3451

.noexc.i.i:                                       ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3461
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.021.073.i.i, i64 24
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288)
          to label %bb.aa unwind label %bb.v, !noalias !3462

bb.v:                                             ; preds = %.noexc.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !3463, !noalias !3461 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cs, label %.body.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !3463, !noalias !3461, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3464
  br label %.body.i.i

._crit_edge76.i.i:                                ; preds = %bb.ad, %._crit_edge.i.i
  %i.cu = phi i64 [ %i.cl, %._crit_edge.i.i ], [ %i.dd, %bb.ad ] ; 4 uses
  %i.cv = phi ptr [ %i.do, %._crit_edge.i.i ], [ %i.db, %bb.ad ] ; 2 uses
  %i.cw = icmp ult i64 %i.cu, 2
  br i1 %i.cw, label %bb.ap, label %bb.x, !prof !14

bb.x:                                             ; preds = %._crit_edge76.i.i
  %i.cx = icmp ult i64 %i.cu, 21
  br i1 %i.cx, label %bb.z, label %bb.y, !prof !14

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h07e0986310cd1bacE(ptr noalias noundef nonnull align 8 %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.ap unwind label %.loopexit.split-lp.i.i, !noalias !3451

bb.z:                                             ; preds = %bb.x
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h232ca4705130e78fE(ptr noalias noundef nonnull align 8 %i.cv, i64 noundef %i.cu)
  br label %bb.ap

bb.aa:                                            ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3461
  call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  %i.cy = load i64, ptr %i.i, align 8, !range !10, !alias.scope !3466, !noalias !3467, !noundef !6
  %i.cz = icmp eq i64 %i.co, %i.cy
  br i1 %i.cz, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha330675d37c0eda4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
          to label %._crit_edge85.i.i unwind label %bb.ac, !noalias !3468

._crit_edge85.i.i:                                ; preds = %bb.ab
  %.pre86.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !3466, !noalias !3467
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f) #46, !noalias !3469
  br label %.body.i.i

bb.ad:                                            ; preds = %._crit_edge85.i.i, %bb.aa
  %i.db = phi ptr [ %.pre86.i.i, %._crit_edge85.i.i ], [ %i.cn, %bb.aa ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !3469
  %i.dd = add nuw nsw i64 %i.co, 1                ; 3 uses
  store i64 %i.dd, ptr %i.bu, align 8, !alias.scope !3466, !noalias !3467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3448
  %i.de = icmp eq ptr %i.cp, %i.ar
  br i1 %i.de, label %._crit_edge76.i.i, label %bb.u

.body44.i.i:                                      ; preds = %bb.al
  %i.df = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g) #46, !noalias !3451
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3448
  %exitcond.not.i.i = icmp eq i64 %i.cj, %3
  br i1 %exitcond.not.i.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #45
          to label %bb.ag unwind label %bb.an, !noalias !3451

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cj ; 2 uses
  %.val32.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !3470, !noalias !3471, !nonnull !6, !align !24, !noundef !6
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %.val33.i.i = load i64, ptr %i.dh, align 8, !alias.scope !3470, !noalias !3471, !noundef !6 ; 7 uses
  %i.di = icmp slt i64 %.val33.i.i, 0
  br i1 %i.di, label %bb.aj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.dj = icmp eq i64 %.val33.i.i, 0
  br i1 %i.dj, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3472
  %i.dk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val33.i.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !3472 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.ai ], [ 0, %bb.ah ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val33.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
          to label %.noexc40.i.i unwind label %bb.an, !noalias !3451

.noexc40.i.i:                                     ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.dk, %bb.ai ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val32.i.i, i64 %.val33.i.i, i1 false), !noalias !3473
  store i64 %.val33.i.i, ptr %i.bw, align 8, !noalias !3448
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.515.0..sroa_idx16.i.i, align 8, !noalias !3448
  store i64 %.val33.i.i, ptr %.sroa.618.0..sroa_idx19.i.i, align 8, !noalias !3448
  %i.dm = load i64, ptr %i.i, align 8, !range !10, !alias.scope !3474, !noalias !3475, !noundef !6
  %i.dn = icmp eq i64 %i.cj, %i.dm
  br i1 %i.dn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha330675d37c0eda4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @70)
          to label %._crit_edge84.i.i unwind label %.body44.i.i, !noalias !3476

._crit_edge84.i.i:                                ; preds = %bb.al
  %.pre.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !3474, !noalias !3475
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge84.i.i, %bb.ak
  %i.do = phi ptr [ %.pre.i.i, %._crit_edge84.i.i ], [ %i.ci, %bb.ak ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.do, i64 %i.cj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !3451
  store i64 %i.cl, ptr %i.bu, align 8, !alias.scope !3474, !noalias !3475
  %i.dq = icmp eq ptr %i.ck, %i.bv
  br i1 %i.dq, label %._crit_edge.i.i, label %bb.t

.thread:                                          ; preds = %bb.t
  %lpad.loopexit63.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.an:                                            ; preds = %bb.af, %bb.aj
  %lpad.loopexit.split-lp64.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.pre = load i64, ptr %i.g, align 8, !alias.scope !3477, !noalias !3451 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  call void @llvm.experimental.noalias.scope.decl(metadata !3479), !noalias !3451
  %i.dr = icmp eq i64 %.val.i.i.pre, 0
  br i1 %i.dr, label %.body.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val1.i.i9 = load ptr, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !3477, !noalias !3451, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9, i64 noundef %.val.i.i.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3480
  br label %.body.i.i

bb.ap:                                            ; preds = %bb.z, %bb.y, %._crit_edge76.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3448
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.n, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3440
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.613.i.sroa.0.0.copyload62 = load i64, ptr %i.dt, align 8, !noalias !3440 ; 5 uses
  %.sroa.613.i.sroa.7.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.613.i.sroa.7.0.copyload64 = load ptr, ptr %.sroa.613.i.sroa.7.0..sroa_idx63, align 8, !noalias !3440 ; 7 uses
  %.sroa.613.i.sroa.9.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
end_hunk_0
begin_hunk_1_@"_ZN64_$LT$prometheus..errors..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h322707b597af63deE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4a976a8dcbe3802eE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6124
  store ptr @275, ptr %i.a, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.739.0..sroa_idx, align 8
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.840.0..sroa_idx, align 8
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1041.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val16, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.c ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.w, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25 ], [ %i.z, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h11835e447f2db5eaE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6130
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6131
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h371d295ee5835c96E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6132
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !6132
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6132
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h371d295ee5835c96E.exit", label %.lr.ph.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h371d295ee5835c96E.exit": ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6130
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2d9a06e8fdaf6b74E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6138
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6139
  %.idx.i = mul nuw nsw i64 %i.f, 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h035e0eb69ac2d832E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6140
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !6140
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6140
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h035e0eb69ac2d832E.exit", label %.lr.ph.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h035e0eb69ac2d832E.exit": ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6138
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5a4a44970bcc7d2aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6146
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6147
  %.idx.i = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0422c6e3b5065e1aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6148
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !6148
  %i.j = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6148
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0422c6e3b5065e1aE.exit", label %.lr.ph.i.i

"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0422c6e3b5065e1aE.exit": ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6146
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$prometheus..proto..Histogram$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f53dd9f0f0260cbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @278, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @265, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @202, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @266, i64 noundef 10, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @262, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @279, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @277)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$prometheus..proto..MetricType$u20$as$u20$core..fmt..Debug$GT$3fmt17h906747aee8ddbb87E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !25, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN66_$LT$prometheus..proto..MetricType$u20$as$u20$core..fmt..Debug$GT$3fmt17h906747aee8ddbb87E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN66_$LT$prometheus..proto..MetricType$u20$as$u20$core..fmt..Debug$GT$3fmt17h906747aee8ddbb87E.510", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h315e283cca4991b7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6158
  %i.c = mul i64 %.16.val, 24                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !6158
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !6158
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h76e39a112336b60fE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !6159
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #42, !noalias !6159 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #45, !noalias !6158
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !6158
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !6158
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  %1 = icmp eq i64 %.16.val, 0
  br i1 %1, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h76e39a112336b60fE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i", %bb.e
  %.sroa.012.023.i = phi ptr [ %i.p, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.o, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h76e39a112336b60fE.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6158
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320)
          to label %bb.e unwind label %bb.f, !noalias !6160

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6158
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h76e39a112336b60fE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !6161, !noalias !6158
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h860b387b49ad8ff8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #46, !noalias !6160
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h76e39a112336b60fE.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i"
  %2 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i" ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %2, align 8, !noalias !6158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6158
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6d14be9099c91ad9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6177
  %i.e = mul i64 %.16.val, 48                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.g = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.d, align 8, !noalias !6177
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !6177
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1c58580d113a0bf1E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !6178
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #42, !noalias !6178 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #45, !noalias !6177
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.d, align 8, !noalias !6177
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !6177
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %.16.val
  %1 = icmp eq i64 %.16.val, 0
  br i1 %1, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1c58580d113a0bf1E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i"
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.012.025.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.q, %bb.h ] ; 4 uses
  %.sroa.7.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %bb.h ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %i.o, %bb.h ]
  %i.o = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.025.i, %i.n
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1c58580d113a0bf1E.exit", label %bb.e

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 48
  %i.r = add nuw nsw i64 %.sroa.7.024.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6179
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.012.025.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !6180

.noexc.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6179
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 24
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288)
          to label %bb.h unwind label %bb.f, !noalias !6181

bb.f:                                             ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6182)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !6182, !noalias !6179 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !6182, !noalias !6179, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !6183
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6179
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.7.024.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !6180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = icmp eq i64 %i.o, 0
  br i1 %i.x, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1c58580d113a0bf1E.exit", label %bb.d

bb.i:                                             ; preds = %bb.g, %bb.f, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.024.i, ptr %i.m, align 8, !alias.scope !6185, !noalias !6177
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #46, !noalias !6180
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1c58580d113a0bf1E.exit": ; preds = %bb.d, %bb.h, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i"
  %3 = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.thread.i" ], [ %i.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit.i" ], [ %i.m, %bb.h ], [ %i.m, %bb.d ]
  store i64 %.16.val, ptr %3, align 8, !noalias !6177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6177
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h4d3dd46e6944d6d8E"() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.sroa.0.i = alloca [48 x i8], align 8   ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(240) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 240, i64 noundef range(i64 1, -9223372036854775807) 8) #42 ; 17 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hfb2bafc2f1023ccbE.exit", !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 240) #45
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hfb2bafc2f1023ccbE.exit": ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !23, !noalias !6205, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i.i.i", !prof !14

._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i.i.i: ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hfb2bafc2f1023ccbE.exit"
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6206
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !6206
  br label %bb.c

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i.i.i": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hfb2bafc2f1023ccbE.exit"
  %i.g = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i.i.i"
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !6207
  store i8 1, ptr %i.d, align 8, !noalias !6207
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i.i.i
  %.pre1.i.i15.i.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i.i.i ], [ %i.i, %.noexc ] ; 3 uses
  %i.k = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i.i.i ], [ %i.h, %.noexc ] ; 4 uses
  %i.l = add i64 %i.k, 1
  %i.m = add i64 %i.k, 2
  %i.n = add i64 %i.k, 3
  store i64 %i.n, ptr %i.c, align 8, !noalias !6208
  %.sroa.4.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -9223372036854775808, ptr %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.0.i, i64 48, i1 false)
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.k, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.pre1.i.i15.i.i, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.8.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.58.sroa.8.0..sroa.58.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  %.sroa.58.sroa.9.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.l, ptr %.sroa.58.sroa.9.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.10.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.pre1.i.i15.i.i, ptr %.sroa.58.sroa.10.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.11.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.58.sroa.11.0..sroa.58.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  %.sroa.58.sroa.12.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 %i.m, ptr %.sroa.58.sroa.12.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.13.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 %.pre1.i.i15.i.i, ptr %.sroa.58.sroa.13.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.14.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr null, ptr %.sroa.58.sroa.14.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  ret ptr %i.a

bb.d:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 240, i64 noundef 8) #42
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbb37b787f984653aE", i64 16) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h8b20bda54017fe9cE.exit", label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 dereferenceable(16) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h314cbca77bb03d08E"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h8b20bda54017fe9cE.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h8b20bda54017fe9cE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbb37b787f984653aE", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17h924839421f74f03cE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbb37b787f984653aE", i64 16) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit", label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 dereferenceable(16) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h314cbca77bb03d08E"() ; 0 uses
  br label %"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit"

"_ZN69_$LT$prometheus..timer..ANCHOR$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4e07c18861ba27c8E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h437ac0e3d39665d0E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !6217
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !6217
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !6217, !noundef !6
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
end_hunk_1
