Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator10advance_by17h38b060e213a07cc6E:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !14789 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted14.i.i.i = load i8, ptr %i.e, align 8, !alias.scope !14789
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i", %bb.b
  %i.l = phi i8 [ %.promoted14.i.i.i, %bb.b ], [ %i.q, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i" ] ; 2 uses
  %i.m = phi i8 [ %.promoted.i.i.i, %bb.b ], [ %i.w, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i" ] ; 4 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.ae, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i" ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14790)
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h11b598d0ed955681E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call { i1, i8 } %i.f(i8 noundef %i.l, i8 noundef %i.h), !noalias !14788, !inline_history !14780 ; 2 uses
  %i.p = extractvalue { i1, i8 } %i.o, 0
  br i1 %i.p, label %bb.e, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h11b598d0ed955681E.exit"

.sink.split.i.i.i.i:                              ; preds = %bb.i, %bb.g
  store i8 0, ptr %i.d, align 1, !alias.scope !14788
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = extractvalue { i1, i8 } %i.o, 1          ; 4 uses
  store i8 %i.q, ptr %i.e, align 8, !alias.scope !14788
  %i.r = tail call i8 @llvm.scmp.i8.i8(i8 %i.m, i8 0)
  switch i8 %i.r, label %bb.f [
    i8 -1, label %bb.g
    i8 0, label %bb.h
    i8 1, label %bb.i
  ], !prof !59

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not9.i.i.i.i = icmp ugt i8 %i.q, %i.j
  br i1 %.not9.i.i.i.i, label %bb.j, label %.sink.split.i.i.i.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14788
  store ptr @73, ptr %i.b, align 8, !noalias !14788
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !14788
  store ptr @75, ptr %i.c, align 8, !noalias !14788
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.s, align 8, !noalias !14788
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.t, align 8, !noalias !14788
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.u, align 8, !noalias !14788
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.v, align 8, !noalias !14788
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #70, !noalias !14788
  unreachable

bb.i:                                             ; preds = %bb.e
  %.not.i.i.i.i = icmp ult i8 %i.q, %i.j
  br i1 %.not.i.i.i.i, label %bb.j, label %.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i, %bb.g, %.sink.split.i.i.i.i
  %i.w = phi i8 [ %i.m, %bb.i ], [ %i.m, %bb.g ], [ 0, %.sink.split.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14789
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14791
  %i.x = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !14791 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i, !prof !58

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 1) #70, !noalias !14791
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i: ; preds = %bb.j
  store i8 %i.l, ptr %i.x, align 1, !noalias !14791
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14791
  %i.z = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !14791 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.l, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i", !prof !58

bb.l:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc.i.i.i.i.i.i unwind label %bb.m, !noalias !14791

.noexc.i.i.i.i.i.i:                               ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$17h303be192035c9e65E"(ptr nonnull %i.x, ptr nonnull @1117) #72
          to label %bb.o unwind label %bb.n, !noalias !14791

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !14791
  unreachable

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ab

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i": ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i
  store ptr %i.x, ptr %i.z, align 8, !noalias !14791
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @1117, ptr %i.ad, align 8, !noalias !14791
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !14789
  store i8 10, ptr %i.k, align 8, !noalias !14789
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !14789
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !noalias !14789
  store ptr %i.z, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14789
  %i.ae = add i64 %.sroa.01.0.i.i.i, -1           ; 2 uses
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.k), !noalias !14789, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14789
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h11b598d0ed955681E.exit", label %bb.c

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h11b598d0ed955681E.exit": ; preds = %bb.c, %bb.d, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i", %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcced0fcbf0a582b2E.exit.i.i.i" ], [ %.sroa.01.0.i.i.i, %bb.d ], [ %.sroa.01.0.i.i.i, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h38d7d1cc0d69adcfE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14805)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h3d943933e64ced3bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14807)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !14808, !noalias !14809, !noundef !55
  %.promoted.i.i.i = load i64, ptr %0, align 8, !alias.scope !14810 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %smax.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.c, i64 %.promoted.i.i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = phi i64 [ %.promoted.i.i.i, %bb.b ], [ %i.f, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.g, %bb.d ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.e, %smax.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h3d943933e64ced3bE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !14810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14811
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !14811
  store i8 4, ptr %i.d, align 8, !noalias !14811
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !14811
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !noalias !14811
  store i64 %i.e, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14811
  %i.g = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d), !noalias !14811, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14811
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h3d943933e64ced3bE.exit", label %bb.c

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h3d943933e64ced3bE.exit": ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %.sroa.01.0.i.i.i, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h39f610cded7e5d9eE(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14823)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h19fa2db74d426ce5E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14826)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !range !57, !alias.scope !14827, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h19fa2db74d426ce5E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14829)
  %i.e = load i128, ptr %0, align 16, !alias.scope !14830, !noalias !14829, !noundef !55 ; 3 uses
  %i.f = load i128, ptr %i.d, align 16, !alias.scope !14831, !noalias !14828, !noundef !55 ; 4 uses
  %.not.i.i.i.i = icmp ugt i128 %i.e, %i.f
  br i1 %.not.i.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h19fa2db74d426ce5E.exit", label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.g = icmp ult i128 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.a, label %.preheader.i.i.i.i._crit_edge

.preheader.i.i.i.i:                               ; preds = %.lr.ph.a
  %i.h = icmp ult i128 %3, %i.f
  br i1 %i.h, label %.lr.ph.a, label %.preheader.i.i.i.i._crit_edge

.lr.ph.a:                                         ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.sroa.01.0.i.i.i.i9.a = phi i64 [ %i.i, %.preheader.i.i.i.i ], [ %1, %.preheader.i.i.i.i.preheader ]
  %2 = phi i128 [ %3, %.preheader.i.i.i.i ], [ %i.e, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %3 = add nuw i128 %2, 1                         ; 3 uses
  store i128 %3, ptr %0, align 16, !alias.scope !14827
  %i.i = tail call fastcc noundef i64 @"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h318933b393370f35E"(i64 noundef %.sroa.01.0.i.i.i.i9.a, i128 noundef %2), !noalias !14827 ; 3 uses
  %4 = icmp eq i64 %i.i, 0
  br i1 %4, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h19fa2db74d426ce5E.exit", label %.preheader.i.i.i.i

.preheader.i.i.i.i._crit_edge:                    ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader
  %.sroa.01.0.i.i.i.i.lcssa = phi i64 [ %1, %.preheader.i.i.i.i.preheader ], [ %i.i, %.preheader.i.i.i.i ]
  store i8 1, ptr %i.a, align 16, !alias.scope !14827
  %i.j = tail call fastcc noundef i64 @"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h318933b393370f35E"(i64 noundef %.sroa.01.0.i.i.i.i.lcssa, i128 noundef %i.f), !noalias !14827
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h19fa2db74d426ce5E.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h19fa2db74d426ce5E.exit": ; preds = %.lr.ph.a, %bb.a, %bb.b, %bb.c, %.preheader.i.i.i.i._crit_edge
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %i.j, %.preheader.i.i.i.i._crit_edge ], [ %1, %bb.c ], [ %1, %bb.b ], [ 0, %.lr.ph.a ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h40cc9221c1305f05E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14840)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h559211c8011385d8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14842)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !14843, !nonnull !55, !noundef !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !14843
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14844)
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h559211c8011385d8E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !alias.scope !14843
  %i.i = load i32, ptr %i.f, align 4, !range !62, !noalias !14843, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14845
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !14845
  store i8 3, ptr %i.e, align 8, !noalias !14845
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !14845
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !noalias !14845
  store i32 %i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14845
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.e), !noalias !14845, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14845
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h559211c8011385d8E.exit", label %bb.c

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h559211c8011385d8E.exit": ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h49a8ed630c54f003E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14863)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hcf0a522036ce106bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14865)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !14866, !noalias !14867, !noundef !55
  %.promoted.i.i.i = load i64, ptr %0, align 8, !alias.scope !14868 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %.promoted.i.i.i)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2859e40ca69cf4bcE.exit.i.i.i", %bb.b
  %i.e = phi i64 [ %.promoted.i.i.i, %bb.b ], [ %i.f, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2859e40ca69cf4bcE.exit.i.i.i" ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.n, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2859e40ca69cf4bcE.exit.i.i.i" ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.e, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hcf0a522036ce106bE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !14868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14869
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14870
  %i.g = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !14870 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit1.i.i.i.i.i, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #70, !noalias !14870
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit1.i.i.i.i.i: ; preds = %bb.d
  store i64 %i.e, ptr %i.g, align 8, !noalias !14870
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14870
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !14870 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2859e40ca69cf4bcE.exit.i.i.i", !prof !58

bb.f:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit1.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc.i.i.i.i.i unwind label %bb.g, !noalias !14871

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$17h303be192035c9e65E"(ptr nonnull %i.g, ptr nonnull @1121) #72
          to label %bb.i unwind label %bb.h, !noalias !14870

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !14870
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.k

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2859e40ca69cf4bcE.exit.i.i.i": ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit1.i.i.i.i.i
  store ptr %i.g, ptr %i.i, align 8, !noalias !14870
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1121, ptr %i.m, align 8, !noalias !14870
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !14869
  store i8 10, ptr %i.d, align 8, !noalias !14869
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !14869
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !noalias !14869
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14869
  %i.n = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d), !noalias !14869, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14869
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hcf0a522036ce106bE.exit", label %bb.c

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hcf0a522036ce106bE.exit": ; preds = %bb.c, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2859e40ca69cf4bcE.exit.i.i.i", %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2859e40ca69cf4bcE.exit.i.i.i" ], [ %.sroa.01.0.i.i.i, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h532caf878a7d4bfaE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14880)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h06f07b9c12f754c6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14882)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !14883, !nonnull !55, !noundef !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !14883
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14884)
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h06f07b9c12f754c6E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !alias.scope !14883
  %i.i = load i32, ptr %i.f, align 4, !range !62, !noalias !14883, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14885
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !14885
  store i8 3, ptr %i.e, align 8, !noalias !14885
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !14885
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !noalias !14885
  store i32 %i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14885
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.e), !noalias !14885, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14885
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h06f07b9c12f754c6E.exit", label %bb.c

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h06f07b9c12f754c6E.exit": ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h544302600571704fE(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14897)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h885a5be5a6cbec4dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14900)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !range !57, !alias.scope !14901, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h885a5be5a6cbec4dE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14903)
  %i.e = load i128, ptr %0, align 16, !alias.scope !14904, !noalias !14903, !noundef !55 ; 3 uses
  %i.f = load i128, ptr %i.d, align 16, !alias.scope !14905, !noalias !14902, !noundef !55 ; 4 uses
  %.not.i.i.i.i = icmp sgt i128 %i.e, %i.f
  br i1 %.not.i.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h885a5be5a6cbec4dE.exit", label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.g = icmp slt i128 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.a, label %.preheader.i.i.i.i._crit_edge

.preheader.i.i.i.i:                               ; preds = %.lr.ph.a
  %i.h = icmp slt i128 %3, %i.f
  br i1 %i.h, label %.lr.ph.a, label %.preheader.i.i.i.i._crit_edge

.lr.ph.a:                                         ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.sroa.01.0.i.i.i.i9.a = phi i64 [ %i.i, %.preheader.i.i.i.i ], [ %1, %.preheader.i.i.i.i.preheader ]
  %2 = phi i128 [ %3, %.preheader.i.i.i.i ], [ %i.e, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %3 = add nsw i128 %2, 1                         ; 3 uses
  store i128 %3, ptr %0, align 16, !alias.scope !14901
  %i.i = tail call fastcc noundef i64 @"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9697bf5c31a97b31E"(i64 noundef %.sroa.01.0.i.i.i.i9.a, i128 noundef %2), !noalias !14901 ; 3 uses
  %4 = icmp eq i64 %i.i, 0
  br i1 %4, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h885a5be5a6cbec4dE.exit", label %.preheader.i.i.i.i

.preheader.i.i.i.i._crit_edge:                    ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader
  %.sroa.01.0.i.i.i.i.lcssa = phi i64 [ %1, %.preheader.i.i.i.i.preheader ], [ %i.i, %.preheader.i.i.i.i ]
  store i8 1, ptr %i.a, align 16, !alias.scope !14901
  %i.j = tail call fastcc noundef i64 @"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9697bf5c31a97b31E"(i64 noundef %.sroa.01.0.i.i.i.i.lcssa, i128 noundef %i.f), !noalias !14901
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h885a5be5a6cbec4dE.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h885a5be5a6cbec4dE.exit": ; preds = %.lr.ph.a, %bb.a, %bb.b, %bb.c, %.preheader.i.i.i.i._crit_edge
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %i.j, %.preheader.i.i.i.i._crit_edge ], [ %1, %bb.c ], [ %1, %bb.b ], [ 0, %.lr.ph.a ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h5d04df721c4e20aaE(ptr noalias nofree noundef align 1 captures(none) dereferenceable(2) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14923)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h02a6940d314bc65fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14925)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !alias.scope !14926, !noalias !14927, !noundef !55
  %.promoted.i.i.i = load i8, ptr %0, align 1, !alias.scope !14928 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %smax.i.i.i = tail call i8 @llvm.smax.i8(i8 %i.c, i8 %.promoted.i.i.i)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7647c909e89f1540E.exit.i.i.i", %bb.b
  %i.e = phi i8 [ %.promoted.i.i.i, %bb.b ], [ %i.f, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7647c909e89f1540E.exit.i.i.i" ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.n, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7647c909e89f1540E.exit.i.i.i" ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.e, %smax.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h02a6940d314bc65fE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i8 %i.e, 1                           ; 2 uses
  store i8 %i.f, ptr %0, align 1, !alias.scope !14928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14929
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14930
  %i.g = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !14930 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 1) #70, !noalias !14930
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i: ; preds = %bb.d
  store i8 %i.e, ptr %i.g, align 1, !noalias !14930
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14930
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !14930 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7647c909e89f1540E.exit.i.i.i", !prof !58

bb.f:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !noalias !14930

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$17h303be192035c9e65E"(ptr nonnull %i.g, ptr nonnull @1105) #72
          to label %bb.i unwind label %bb.h, !noalias !14930

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !14930
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.k

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7647c909e89f1540E.exit.i.i.i": ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i
  store ptr %i.g, ptr %i.i, align 8, !noalias !14930
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1105, ptr %i.m, align 8, !noalias !14930
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !14929
  store i8 10, ptr %i.d, align 8, !noalias !14929
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !14929
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !noalias !14929
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14929
  %i.n = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d), !noalias !14929, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14929
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h02a6940d314bc65fE.exit", label %bb.c

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h02a6940d314bc65fE.exit": ; preds = %bb.c, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7647c909e89f1540E.exit.i.i.i", %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7647c909e89f1540E.exit.i.i.i" ], [ %.sroa.01.0.i.i.i, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h60809f75414fb16dE(ptr noalias nofree noundef align 2 captures(none) dereferenceable(4) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14948)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf4e51971e2977be4E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14950)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !alias.scope !14951, !noalias !14952, !noundef !55
  %.promoted.i.i.i = load i16, ptr %0, align 2, !alias.scope !14953 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %smax.i.i.i = tail call i16 @llvm.smax.i16(i16 %i.c, i16 %.promoted.i.i.i)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7519232fb53ead25E.exit.i.i.i", %bb.b
  %i.e = phi i16 [ %.promoted.i.i.i, %bb.b ], [ %i.f, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7519232fb53ead25E.exit.i.i.i" ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.n, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7519232fb53ead25E.exit.i.i.i" ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i16 %i.e, %smax.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf4e51971e2977be4E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i16 %i.e, 1                          ; 2 uses
  store i16 %i.f, ptr %0, align 2, !alias.scope !14953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14954
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14955
  %i.g = tail call noundef align 2 dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 2) #71, !noalias !14955 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 2, i64 noundef 2) #70, !noalias !14955
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i: ; preds = %bb.d
  store i16 %i.e, ptr %i.g, align 2, !noalias !14955
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !14955
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !14955 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7519232fb53ead25E.exit.i.i.i", !prof !58

bb.f:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !noalias !14955

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$17h303be192035c9e65E"(ptr nonnull %i.g, ptr nonnull @1120) #72
          to label %bb.i unwind label %bb.h, !noalias !14955

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !14955
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.k

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7519232fb53ead25E.exit.i.i.i": ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i.i.i.i.i
  store ptr %i.g, ptr %i.i, align 8, !noalias !14955
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1120, ptr %i.m, align 8, !noalias !14955
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !14954
  store i8 10, ptr %i.d, align 8, !noalias !14954
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !14954
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !noalias !14954
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14954
  %i.n = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d), !noalias !14954, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14954
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf4e51971e2977be4E.exit", label %bb.c

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hf4e51971e2977be4E.exit": ; preds = %bb.c, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7519232fb53ead25E.exit.i.i.i", %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7519232fb53ead25E.exit.i.i.i" ], [ %.sroa.01.0.i.i.i, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h63b0b81d72bfed87E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14967)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hed947e1ba8f04040E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14970)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !57, !alias.scope !14971, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17hed947e1ba8f04040E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14972)
end_hunk_0
