Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@"_ZN10prometheus9histogram94_$LT$impl$u20$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$3new17h9065deb719cd6585E":bb.a
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.s, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i" ]
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE"(ptr noalias noundef align 8 dereferenceable(192) %1) #46
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN10prometheus9histogram94_$LT$impl$u20$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$5local17h4a94b36cafdcbd53E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN10prometheus9histogram17LocalHistogramVec3new17h4ba60462b93a880bE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram9Histogram11start_timer17h100fc22dffd00ddaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3304
  store ptr %i.b, ptr %i.a, align 8, !noalias !3304
  %i.e = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %_ZN10prometheus9histogram14HistogramTimer3new17h257cc32b49840523E.exit unwind label %bb.c, !noalias !3304 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !3307
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i"

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !3304
  br label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i"

"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.f

_ZN10prometheus9histogram14HistogramTimer3new17h257cc32b49840523E.exit: ; preds = %bb.b
  %i.i = extractvalue { i64, i32 } %i.e, 0
  %i.j = extractvalue { i64, i32 } %i.e, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.k, align 8, !alias.scope !3304
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8, !alias.scope !3304
  store i64 %i.i, ptr %0, align 8, !alias.scope !3304
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.m, align 8, !alias.scope !3304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3304
  ret void

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_ZN10prometheus9histogram9Histogram14get_sample_sum17h5f7d29551a74196fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.d = cmpxchg ptr %i.c, i32 0, i32 1 acquire monotonic, align 4, !noalias !3314
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !321

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 4 %i.c), !noalias !3314
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3314
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i", label %bb.d, !prof !321

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !3314
  %i.j = xor i1 %i.i, true
  %i.k = zext i1 %i.j to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i": ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 2 uses
  %i.m = load atomic i8, ptr %i.l monotonic, align 1, !noalias !3314
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.j, label %bb.e, !prof !321

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3317
  store ptr %i.c, ptr %i.a, align 8, !noalias !3317
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.n, align 8, !noalias !3317
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @118, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #45
          to label %bb.g unwind label %bb.f, !noalias !3321

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$$LP$$RP$$GT$$GT$$GT$17hf09890010c860aadE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %bb.i unwind label %bb.h, !noalias !3321

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !3321
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

bb.j:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h489d48b7362f2aa4E.exit.i"
  %i.q = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %.lobit.i = lshr i64 %i.s, 63
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.lobit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  br i1 %i.q, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.l, !prof !321

bb.l:                                             ; preds = %bb.k
  %i.z = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.z, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aa = atomicrmw xchg ptr %i.c, i32 0 release, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.n, label %_ZN10prometheus9histogram13HistogramCore10sample_sum17h50199278a34e7715E.exit, !prof !151

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
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
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
  %i.r = alloca [272 x i8], align 8               ; 21 uses
  %.sroa.27 = alloca [16 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3327
  call void @"_ZN73_$LT$prometheus..metrics..Opts$u20$as$u20$prometheus..desc..Describer$GT$8describe17haee1c8848682a1d2E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1), !noalias !3329
  %i.s = load i64, ptr %i.p, align 8, !range !21, !noalias !3327, !noundef !11 ; 2 uses
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.i.sroa.0.0.copyload50 = load i64, ptr %i.u, align 8, !noalias !3327 ; 2 uses
  %.sroa.6.i.sroa.7.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.i.sroa.7.0.copyload53 = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx52, align 8, !noalias !3327 ; 2 uses
  %.sroa.6.i.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6.i.sroa.8.0.copyload56 = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx55, align 8, !noalias !3327 ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3327
  br label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.626.0..sroa_idx.i, i64 80, i1 false), !noalias !3327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3327
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload50, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3327
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.sroa.6.i.sroa.7.0.copyload53, ptr %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !3327
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.6.i.sroa.8.0.copyload56, ptr %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !3327
  store i64 %i.s, ptr %i.q, align 8, !noalias !3327
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3327, !nonnull !11, !noundef !11 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.y = load i64, ptr %i.x, align 8, !noalias !3327, !noundef !11 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.y, 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %.sroa.038.0198.i = phi ptr [ %i.ab, %bb.h ], [ %i.w, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !3329, !noundef !11
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.038.0198.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !3329, !nonnull !11, !noundef !11
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = icmp ne i16 %i.ah, 25964
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3330
  %i.al = tail call noundef dereferenceable_or_null(47) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 47, i64 noundef range(i64 1, 9) 1) #42, !noalias !3330 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.invoke.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !3327, !nonnull !11, !noundef !11 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !3327, !noundef !11 ; 5 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.al, ptr noundef nonnull align 1 dereferenceable(47) @140, i64 47, i1 false), !noalias !3341
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.h:                                             ; preds = %bb.d, %.lr.ph.i
  %i.au = icmp eq ptr %i.ab, %i.z
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i": ; preds = %.thread233.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", %bb.ax, %bb.bn, %bb.g
  %.sroa.20.1 = phi i64 [ 47, %bb.g ], [ 47, %bb.bn ], [ %.sroa.5155.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.5155.0.copyload.i, %bb.ax ], [ %3, %.thread233.i ]
  %.sroa.17.1 = phi ptr [ %i.al, %bb.g ], [ %i.be, %bb.bn ], [ %.sroa.4154.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.4154.0.copyload.i, %bb.ax ], [ %.sroa.613.i.sroa.7.0.copyload.cast, %.thread233.i ]
  %.sroa.10.1 = phi i64 [ 47, %bb.g ], [ 47, %bb.bn ], [ %.sroa.0153.0.copyload.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i" ], [ %.sroa.0153.0.copyload.i, %bb.ax ], [ -9223372036854775807, %.thread233.i ]
  call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.q), !noalias !3329
  br label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread

.lr.ph204.i:                                      ; preds = %bb.bo, %.lr.ph204.preheader.i
  %.sroa.039.1202.i = phi ptr [ %.sroa.039.1.i, %bb.bo ], [ %.sroa.039.1200.i, %.lr.ph204.preheader.i ] ; 3 uses
  %.sroa.039.0201.i = phi ptr [ %.sroa.039.1202.i, %bb.bo ], [ %i.ao, %.lr.ph204.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.039.0201.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !3329, !noundef !11
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.i, label %bb.bo

bb.i:                                             ; preds = %.lr.ph204.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.039.0201.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3329, !nonnull !11, !noundef !11
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = icmp ne i16 %i.ba, 25964
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %bb.bo

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3342
  %i.be = tail call noundef dereferenceable_or_null(47) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 47, i64 noundef range(i64 1, 9) 1) #42, !noalias !3342 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.invoke.i, label %bb.bn

._crit_edge205.i:                                 ; preds = %bb.bo, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3327
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3327
  %.sroa.613.i.sroa.7.0.copyload.cast = inttoptr i64 %i.y to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3327
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.bk, align 8, !alias.scope !3353, !noalias !3358
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !3353, !noalias !3358
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !3353, !noalias !3358
  br label %.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp eq i64 %3, 0
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6d14be9099c91ad9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bm, ptr nonnull %i.ao, i64 %i.aq)
          to label %.thread.i unwind label %bb.f, !noalias !3329

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3360
  %i.bn = mul i64 %i.bi, 48                       ; 4 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %i.bi, 192153584101141162
  br i1 %or.cond.i.i.i.i.i, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !103

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.o
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3361
  %i.bp = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bn, i64 noundef range(i64 1, 9) 8) #42, !noalias !3361 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.invoke.i, label %.lr.ph.i.i

.invoke.i:                                        ; preds = %bb.p, %bb.o, %bb.j, %bb.e
  %i.br = phi i64 [ 1, %bb.j ], [ 0, %bb.o ], [ 8, %bb.p ], [ 1, %bb.e ]
  %i.bs = phi i64 [ 47, %bb.j ], [ %i.bn, %bb.o ], [ %i.bn, %bb.p ], [ 47, %bb.e ]
  %i.bt = phi ptr [ @319, %bb.j ], [ @66, %bb.o ], [ @66, %bb.p ], [ @319, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.br, i64 %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt) #45
          to label %.cont.i unwind label %bb.f, !noalias !3329

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.p, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.bp, %bb.p ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.bi, %bb.p ] ; 2 uses
  %i.bu = icmp samesign ule i64 %i.bi, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.bu)
  store i64 %.sroa.4.0.i.i.i, ptr %i.i, align 8, !noalias !3360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i, ptr %i.bv, align 8, !noalias !3360
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %i.bw, align 8, !noalias !3360
  %.idx.i.i = mul nuw nsw i64 %3, 24
end_hunk_0
begin_hunk_1_@_ZN10prometheus9histogram9Histogram26with_opts_and_label_values17h05957183e36cf420E:bb.a
  store i64 %i.fh, ptr %i.ev, align 8, !alias.scope !3472, !noalias !3468
  %exitcond.not.i68.i = icmp eq i64 %i.fh, %.sroa.5155.0.copyload.i
  br i1 %exitcond.not.i68.i, label %.lr.ph.i75.preheader.i, label %.lr.ph.i67.i

.body72.i:                                        ; preds = %bb.bh, %.body84.i, %bb.bb, %bb.ba
  %.pn.i = phi { ptr, i32 } [ %i.fc, %bb.ba ], [ %i.fp, %bb.bh ], [ %i.fc, %bb.bb ], [ %i.fp, %.body84.i ] ; 2 uses
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #46, !noalias !3329
  call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l) #46, !noalias !3329
  %i.fi = icmp eq i64 %.sroa.0153.0.copyload.i, 0
  br i1 %i.fi, label %common.resume, label %bb.bi

.lr.ph.i75.preheader.i:                           ; preds = %bb.bc
  %.sroa.0117.0.copyload118.pre.i = load i64, ptr %i.c, align 8, !noalias !3327 ; 3 uses
  %.sroa.5119.0.copyload121.pre.i = load ptr, ptr %i.eu, align 8, !noalias !3327 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6122.sroa.4.i, i8 0, i64 16, i1 false), !alias.scope !3465, !noalias !3327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3477
  store i64 0, ptr %i.b, align 8, !noalias !3477
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fj, align 8, !noalias !3477
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.fk, align 8, !noalias !3477
  br label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %bb.bg, %.lr.ph.i75.preheader.i
  %i.fl = phi ptr [ %i.fs, %bb.bg ], [ inttoptr (i64 8 to ptr), %.lr.ph.i75.preheader.i ]
  %i.fm = phi i64 [ %i.fu, %bb.bg ], [ 0, %.lr.ph.i75.preheader.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  %i.fn = load i64, ptr %i.b, align 8, !range !121, !alias.scope !3479, !noalias !3477, !noundef !11
  %i.fo = icmp eq i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %.lr.ph.i75.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0696c862456125e8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154)
          to label %._crit_edge15.i82.i unwind label %bb.be, !noalias !3482

._crit_edge15.i82.i:                              ; preds = %bb.bd
  %.pre.i83.i = load ptr, ptr %i.fj, align 8, !alias.scope !3479, !noalias !3477
  br label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i79.i = load i64, ptr %i.b, align 8, !noalias !3477 ; 2 uses
  %i.fq = icmp eq i64 %.val.i79.i, 0
  br i1 %i.fq, label %.body84.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val13.i80.i = load ptr, ptr %i.fj, align 8, !noalias !3477, !nonnull !11, !noundef !11
  %i.fr = shl nuw i64 %.val.i79.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i80.i, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3482
  br label %.body84.i

bb.bg:                                            ; preds = %._crit_edge15.i82.i, %.lr.ph.i75.i
  %i.fs = phi ptr [ %.pre.i83.i, %._crit_edge15.i82.i ], [ %i.fl, %.lr.ph.i75.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fm
  store i64 0, ptr %i.ft, align 8, !noalias !3483
  %i.fu = add nuw nsw i64 %i.fm, 1                ; 3 uses
  store i64 %i.fu, ptr %i.fk, align 8, !alias.scope !3479, !noalias !3477
  %exitcond.not.i77.i = icmp eq i64 %i.fu, %.sroa.5155.0.copyload.i
  br i1 %exitcond.not.i77.i, label %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit, label %.lr.ph.i75.i

.body84.i:                                        ; preds = %bb.bf, %bb.be
  %i.fv = icmp eq i64 %.sroa.0117.0.copyload118.pre.i, 0
  br i1 %i.fv, label %.body72.i, label %bb.bh

bb.bh:                                            ; preds = %.body84.i
  %i.fw = shl nuw i64 %.sroa.0117.0.copyload118.pre.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5119.0.copyload121.pre.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5119.0.copyload121.pre.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3329
  br label %.body72.i

bb.bi:                                            ; preds = %.body72.i
  %i.fx = shl nuw i64 %.sroa.0153.0.copyload.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4154.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4154.0.copyload.i, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3329
  br label %common.resume

bb.bj:                                            ; preds = %bb.as, %bb.ar
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.613.i.sroa.7.0.copyload64) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3484), !noalias !3329
  %i.fz = icmp eq i64 %.sroa.613.i.sroa.9.0.copyload66, 0
  br i1 %i.fz, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bj, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.gb, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i" ], [ 0, %bb.bj ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %.sroa.613.i.sroa.7.0.copyload64, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.gb = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3487), !noalias !3329
  call void @llvm.experimental.noalias.scope.decl(metadata !3490), !noalias !3329
  %.val.i.i.i.i.i = load i64, ptr %i.ga, align 8, !alias.scope !3493, !noalias !3494 ; 2 uses
  %i.gc = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.gc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i", label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !alias.scope !3493, !noalias !3494, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3497
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i": ; preds = %bb.bk, %.lr.ph.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3498), !noalias !3329
  %.val.i4.i.i.i.i = load i64, ptr %i.ge, align 8, !alias.scope !3501, !noalias !3494 ; 2 uses
  %i.gf = icmp eq i64 %.val.i4.i.i.i.i, 0
  br i1 %i.gf, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", label %bb.bl

bb.bl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %.val1.i5.i.i.i.i = load ptr, ptr %i.gg, align 8, !alias.scope !3501, !noalias !3494, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i, i64 noundef %.val.i4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3502
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i": ; preds = %bb.bl, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.gh = icmp eq i64 %i.gb, %.sroa.613.i.sroa.9.0.copyload66
  br i1 %i.gh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", %bb.bj
  %i.gi = icmp eq i64 %.sroa.613.i.sroa.0.0.copyload62, 0
  br i1 %i.gi, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22", label %bb.bm

bb.bm:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i"
  %i.gj = mul nuw i64 %.sroa.613.i.sroa.0.0.copyload62, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.613.i.sroa.7.0.copyload64, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3494
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22"

bb.bn:                                            ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.be, ptr noundef nonnull align 1 dereferenceable(47) @140, i64 47, i1 false), !noalias !3503
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.bo:                                            ; preds = %bb.i, %.lr.ph204.i
  %i.gk = icmp eq ptr %.sroa.039.1202.i, %i.ar    ; 2 uses
  %.sroa.039.1.idx.i = select i1 %i.gk, i64 0, i64 48
  %.sroa.039.1.i = getelementptr inbounds nuw i8, ptr %.sroa.039.1202.i, i64 %.sroa.039.1.idx.i
  br i1 %i.gk, label %._crit_edge205.i, label %.lr.ph204.i

common.resume:                                    ; preds = %.body72.i, %bb.bi, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22", %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %i.gq, %bb.bs ], [ %.pn44.ph.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22" ], [ %.pn.i, %bb.bi ], [ %.pn.i, %.body72.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit22": ; preds = %bb.bm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", %bb.s, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20", %bb.f
  %.pn44.ph.i = phi { ptr, i32 } [ %.pn.i.i, %bb.s ], [ %i.at, %bb.f ], [ %.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i20" ], [ %i.fy, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i" ], [ %i.fy, %bb.bm ]
  call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.q) #46, !noalias !3329
  br label %common.resume

_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread: ; preds = %bb.b, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"
  %.sroa.20.2.ph = phi i64 [ %.sroa.20.1, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i" ], [ %.sroa.6.i.sroa.8.0.copyload56, %bb.b ]
  %.sroa.17.2.ph = phi ptr [ %.sroa.17.1, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i" ], [ %.sroa.6.i.sroa.7.0.copyload53, %bb.b ]
  %.sroa.10.2.ph = phi i64 [ %.sroa.10.1, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i" ], [ %.sroa.6.i.sroa.0.0.copyload50, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3327
  br label %bb.bp

_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit: ; preds = %bb.bg, %.loopexit192.thread.i
  %.sroa.0117.0.copyload118237.i = phi i64 [ 0, %.loopexit192.thread.i ], [ %.sroa.0117.0.copyload118.pre.i, %bb.bg ]
  %.sroa.5119.0.copyload121236.i = phi ptr [ inttoptr (i64 8 to ptr), %.loopexit192.thread.i ], [ %.sroa.5119.0.copyload121.pre.i, %bb.bg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.24..24..24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.24..24..24..24..24..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6122.sroa.4.i, i64 16, i1 false), !noalias !3504
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6122.sroa.4.i)
  %.sroa.018.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.l, align 8, !noalias !3327 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.018.sroa.0.i.sroa.4.0.copyload = load i64, ptr %.sroa.018.sroa.0.i.sroa.4.0..sroa_idx, align 8, !noalias !3327 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.018.sroa.0.i.sroa.5.0.copyload = load ptr, ptr %.sroa.018.sroa.0.i.sroa.5.0..sroa_idx, align 8, !noalias !3327 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.018.sroa.0.i.sroa.6.0.copyload = load i64, ptr %.sroa.018.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !3327 ; 2 uses
  %.sroa.018.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.018.sroa.0.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.018.sroa.0.i.sroa.7.0..sroa_idx, i64 80, i1 false)
  %.sroa.018.sroa.0.i.sroa.7.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018.sroa.0.i.sroa.7, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.sroa.0.i.sroa.7.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3327
  %i.gl = icmp eq i64 %.sroa.018.sroa.0.i.sroa.0.0.copyload, -9223372036854775808
  br i1 %i.gl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit
  %.sroa.10.280 = phi i64 [ %.sroa.10.2.ph, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread ], [ %.sroa.018.sroa.0.i.sroa.4.0.copyload, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit ]
  %.sroa.17.279 = phi ptr [ %.sroa.17.2.ph, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread ], [ %.sroa.018.sroa.0.i.sroa.5.0.copyload, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit ]
  %.sroa.20.278 = phi i64 [ %.sroa.20.2.ph, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit.thread ], [ %.sroa.018.sroa.0.i.sroa.6.0.copyload, %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  store i64 %.sroa.10.280, ptr %0, align 8
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.17.279, ptr %.sroa.247.0..sroa_idx, align 8
  %.sroa.348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.20.278, ptr %.sroa.348.0..sroa_idx, align 8
  br label %bb.bt

bb.bq:                                            ; preds = %_ZN10prometheus9histogram13HistogramCore3new17he03409a209f4d8dfE.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.018.sroa.0.i.sroa.7, i64 104, i1 false)
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27, i64 16, i1 false)
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  store i64 1, ptr %i.r, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 %.sroa.018.sroa.0.i.sroa.0.0.copyload, ptr %i.gn, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.018.sroa.0.i.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %.sroa.018.sroa.0.i.sroa.5.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.sroa.018.sroa.0.i.sroa.6.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %.sroa.0117.0.copyload118237.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %.sroa.5119.0.copyload121236.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  store i64 %.sroa.5155.0.copyload.i, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  store i64 %.sroa.0153.0.copyload.i, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  store ptr %.sroa.4154.0.copyload.i, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 248
  store i64 %.sroa.5155.0.copyload.i, ptr %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.10.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  store i32 0, ptr %.sroa.3.sroa.10.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 260
  store i8 0, ptr %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx.sroa_idx, align 4
  %.sroa.3.sroa.13.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  store i64 0, ptr %.sroa.3.sroa.13.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3505
  %i.go = call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 272, i64 noundef 8) #42, !noalias !3505 ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.br, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha599e891c3e865e4E.exit", !prof !151

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 272) #45
          to label %.noexc unwind label %bb.bs

.noexc:                                           ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramCore$GT$17h4744720c4f627421E"(ptr noalias noundef readonly align 8 dereferenceable(256) %i.gn)
  br label %common.resume

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha599e891c3e865e4E.exit": ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.go, ptr noundef nonnull align 8 dereferenceable(272) %i.r, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.go, ptr %i.gr, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha599e891c3e865e4E.exit", %bb.bp
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram9Histogram5local17hde3ce61224017615E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3508
  store ptr %i.b, ptr %i.a, align 8, !noalias !3511
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = load i64, ptr %i.e, align 8, !noalias !3511, !noundef !11 ; 5 uses
  %i.g = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZN10prometheus9histogram14LocalHistogram3new17hdd75ab166e17ecb7E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3514
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3514 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.j to i64
  br label %_ZN10prometheus9histogram14LocalHistogram3new17hdd75ab166e17ecb7E.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #45
          to label %.noexc.i.i unwind label %bb.f, !noalias !3511

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !3519
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i"

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !3511
  br label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i"

"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.m

_ZN10prometheus9histogram14LocalHistogram3new17hdd75ab166e17ecb7E.exit: ; preds = %bb.b, %bb.d
  %.sroa.10.0.i.i.i = phi i64 [ %i.l, %bb.d ], [ 8, %bb.b ]
  %i.p = inttoptr i64 %.sroa.10.0.i.i.i to ptr
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !3508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3508
  store i64 0, ptr %0, align 8, !alias.scope !3508
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3508
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3508
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3508
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3508
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram9Histogram7observe17h8c2f2bde4eabd569E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = atomicrmw add ptr %i.b, i64 1 acquire, align 8
  %.lobit.i = lshr i64 %i.c, 63
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.lobit.i ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3c08db59389a2db3E.exit.thread.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.m = add i64 %i.p, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3c08db59389a2db3E.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.l, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.q = load double, ptr %i.o, align 8, !alias.scope !3526, !noalias !3531, !noundef !11
  %i.r = fcmp ugt double %1, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !11 ; 2 uses
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

_ZN4core4iter6traits8iterator8Iterator8try_fold17h3c08db59389a2db3E.exit.thread.i: ; preds = %bb.b, %bb.a, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.p
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3c08db59389a2db3E.exit.thread.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #45
  unreachable

bb.f:                                             ; preds = %bb.f, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h3c08db59389a2db3E.exit.thread.i
  %i.aa = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.ab = bitcast i64 %i.aa to double
  %i.ac = fadd double %1, %i.ab
  %i.ad = bitcast double %i.ac to i64
  %i.ae = cmpxchg weak ptr %i.v, i64 %i.aa, i64 %i.ad release monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ae, 1
  br i1 %.sroa.18.0.in.i.i, label %_ZN10prometheus9histogram13HistogramCore7observe17h1cca2f5cdd5ca701E.exit, label %bb.f

_ZN10prometheus9histogram13HistogramCore7observe17h1cca2f5cdd5ca701E.exit: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ag = atomicrmw add ptr %i.af, i64 1 release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram9Histogram9with_opts17hec25b9b34f4d75d4E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(192) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_ZN10prometheus9histogram9Histogram26with_opts_and_label_values17h05957183e36cf420E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE"(ptr noalias noundef align 8 dereferenceable(192) %1) #46
  resume { ptr, i32 } %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3536)
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..metrics..Opts$GT$17hd99e9afc6d51d6cbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(192) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !3536 ; 2 uses
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !3536, !nonnull !11, !noundef !11
  %i.e = shl nuw i64 %.val.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3536
  br label %"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE.exit"

"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE.exit": ; preds = %bb.c, %bb.d
end_hunk_1
