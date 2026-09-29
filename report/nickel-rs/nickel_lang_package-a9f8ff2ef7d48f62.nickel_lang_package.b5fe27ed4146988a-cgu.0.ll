Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h923bb30cd46c6523E":bb.a
.lr.ph.split.us.split.us.split.i.i:               ; preds = %.lr.ph.split.us.split.us.i.i, %.backedge.us.us.i.i
  %i.ap = phi ptr [ %i.aq, %.backedge.us.us.i.i ], [ %i.n, %.lr.ph.split.us.split.us.i.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !2350, !noalias !2351, !noundef !41
  %i.at = icmp eq i64 %i.as, %i.aa
  br i1 %i.at, label %.split9.us.us.i.i, label %.backedge.us.us.i.i

.split9.us.us.i.i:                                ; preds = %.lr.ph.split.us.split.us.split.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !2350, !noalias !2351, !noundef !41
  %.not.us.us.i.i = icmp ult i64 %i.av, %.val3.i.i.i.i
  br i1 %.not.us.us.i.i, label %.backedge.us.us.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hf447bd9a827ba23fE.exit.i"

.backedge.us.us.i.i:                              ; preds = %.split9.us.us.i.i, %.lr.ph.split.us.split.us.split.i.i
  %i.aw = icmp eq ptr %i.aq, %i.q
  br i1 %i.aw, label %.loopexit.i, label %.lr.ph.split.us.split.us.split.i.i

.split11.us.i.i:                                  ; preds = %.lr.ph.split.us.i.i, %.backedge.us.i.i
  %i.ax = phi ptr [ %i.bb, %.backedge.us.i.i ], [ %i.n, %.lr.ph.split.us.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !2350, !noalias !2351, !noundef !41
  %i.ba = icmp eq i64 %i.az, %i.aa
  br i1 %i.ba, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hf447bd9a827ba23fE.exit.i", label %.backedge.us.i.i

.backedge.us.i.i:                                 ; preds = %.split11.us.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.q
  br i1 %i.bc, label %.loopexit.i, label %.split11.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.bd = phi ptr [ %i.be, %.backedge.i.i ], [ %i.n, %.lr.ph.i.i ] ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2349, !noalias !2352, !noundef !41
  %i.bh = icmp eq i64 %i.bg, %i.w
  br i1 %i.bh, label %bb.d, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.split10.i.i, %bb.f, %bb.e, %bb.d, %.lr.ph.split.i.i
  %i.bi = icmp eq ptr %i.be, %i.q
  br i1 %i.bi, label %.loopexit.i, label %.lr.ph.split.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !2349, !noalias !2352, !noundef !41
  %i.bl = icmp eq i64 %i.bk, %i.y
  br i1 %i.bl, label %bb.e, label %.backedge.i.i

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !2349, !noalias !2352, !noundef !41
  %i.bo = icmp eq i64 %i.bn, %i.aa
  br i1 %i.bo, label %bb.f, label %.backedge.i.i

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !2349, !noalias !2352, !noundef !41
  %.not.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, %.val3.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.split10.i.i, label %.backedge.i.i

.split10.i.i:                                     ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !2349, !noalias !2352, !nonnull !41, !noundef !41
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !alias.scope !2353, !noalias !2354
  %i.br = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.br, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hf447bd9a827ba23fE.exit.i", label %.backedge.i.i

bb.g:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @838, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @839) #73, !noalias !2342
  unreachable

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hf447bd9a827ba23fE.exit.i": ; preds = %.split10.i.i, %.split11.us.i.i, %.split9.us.us.i.i, %.split.us.us.us.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ap, %.split9.us.us.i.i ], [ %i.ae, %.split.us.us.us.i.i ], [ %i.ax, %.split11.us.i.i ], [ %i.bd, %.split10.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2342
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call fastcc void @"_ZN75_$LT$nickel_lang_package..IndexDependency$u20$as$u20$core..clone..Clone$GT$5clone17hc6307f2f721d14aeE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.j), !noalias !2341
  store i64 -9223372036854775807, ptr %i.f, align 8, !noalias !2342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2355
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1663)
          to label %.noexc.i unwind label %bb.m, !noalias !2341

.noexc.i:                                         ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hf447bd9a827ba23fE.exit.i"
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2355
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1663)
          to label %bb.j unwind label %bb.i, !noalias !2356

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i": ; preds = %bb.l, %bb.k, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %i.by, %bb.k ], [ %i.by, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  %.val.i.i.i15.i = load i64, ptr %i.c, align 8, !alias.scope !2359, !noalias !2355 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i.i15.i, 0
  br i1 %i.bu, label %.body.i, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i16.i = load ptr, ptr %i.bv, align 8, !alias.scope !2359, !noalias !2355, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i16.i, i64 noundef %.val.i.i.i15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !2360
  br label %.body.i

bb.i:                                             ; preds = %.noexc.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i"

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2355
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810)
          to label %bb.n unwind label %bb.k, !noalias !2356

bb.k:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  %.val.i.i2.i.i = load i64, ptr %i.b, align 8, !alias.scope !2363, !noalias !2355 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i2.i.i, 0
  br i1 %i.bz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i3.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !2363, !noalias !2355, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i, i64 noundef %.val.i.i2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !2364
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i"

.loopexit.i:                                      ; preds = %.backedge.i.i, %.backedge.us.i.i, %.backedge.us.us.i.i, %.backedge.us.us.us.i.i, %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @840) #73, !noalias !2342
  unreachable

.body.i:                                          ; preds = %bb.o, %bb.m, %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i"
  %.pn.i = phi { ptr, i32 } [ %i.ci, %bb.o ], [ %i.cb, %bb.m ], [ %.pn.i.i, %bb.h ], [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit4.i.i" ]
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_package..Dependency$GT$17hc6316d6adc432e3eE"(ptr noalias noundef align 8 dereferenceable(184) %i.f) #75, !noalias !2341
  resume { ptr, i32 } %.pn.i

bb.m:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hf447bd9a827ba23fE.exit.i"
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.n:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2365
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2355
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.cf = load <2 x i64>, ptr %i.ce, align 8, !noalias !2341
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !2341, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2342
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %"_ZN19nickel_lang_package7resolve10Resolution19sorted_dependencies28_$u7b$$u7b$closure$u7d$$u7d$17h75796e5c83f1e1c4E.exit" unwind label %bb.o, !noalias !2341

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #75, !noalias !2341
  br label %.body.i

"_ZN19nickel_lang_package7resolve10Resolution19sorted_dependencies28_$u7b$$u7b$closure$u7d$$u7d$17h75796e5c83f1e1c4E.exit": ; preds = %bb.n
  %.sroa.06.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.06.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.06.i, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.f, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2342
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.val3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 -9223372036854775807, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.06.i, i64 96, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store <2 x i64> %i.cf, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.ch, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %"_ZN19nickel_lang_package7resolve10Resolution19sorted_dependencies28_$u7b$$u7b$closure$u7d$$u7d$17h75796e5c83f1e1c4E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4a63fdfc6b9b78bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2384, !noalias !2385, !nonnull !41, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2384, !noalias !2385, !nonnull !41, !noundef !41 ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !2384, !noalias !2385
  %.sroa.0.0.copyload1 = load i32, ptr %i.g, align 4, !noalias !2384 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload1, 3
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit"
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  store i32 %.sroa.0.0.copyload1, ptr %i.c, align 4
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.k = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 16, i1 false)
  %i.n = call noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2386
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !2387
  %i.q = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #67, !noalias !2387 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73, !noalias !2388
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.q, %bb.c ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !2389
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !2390
  %i.s = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #67, !noalias !2390 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17he0562493b1cf2729E.exit", !prof !44

bb.e:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.p, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h46dc538b8377b789E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !2391
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h46dc538b8377b789E.exit.i.i"

bb.g:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2392
  store ptr @386, ptr %i.a, align 8, !noalias !2392
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8, !noalias !2392
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.w, align 8, !noalias !2392
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !2392
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.y, align 8, !noalias !2392
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.h unwind label %bb.e, !noalias !2390

bb.h:                                             ; preds = %bb.g
  unreachable

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h46dc538b8377b789E.exit.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.u

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17he0562493b1cf2729E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i"
  store i64 216172782113783809, ptr %i.s, align 8, !noalias !2390
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.n, ptr %i.z, align 8, !noalias !2390
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.m, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx4.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.thread": ; preds = %bb.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17he0562493b1cf2729E.exit"
  %.sroa.0.0 = phi ptr [ %i.s, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17he0562493b1cf2729E.exit" ], [ null, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha9a96bb6d619d7bfE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %i.i = load i32, ptr %i.g, align 8, !alias.scope !2406, !noalias !2405, !noundef !41 ; 3 uses
  %i.j = load i32, ptr %i.h, align 4, !alias.scope !2407, !noalias !2404, !noundef !41
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9c0793f1a7b6a1c7E.exit"

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw i32 %i.i, 1
  store i32 %i.l, ptr %i.g, align 8, !alias.scope !2408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2409
  %i.m = load ptr, ptr %0, align 8, !alias.scope !2409, !nonnull !41, !align !42, !noundef !41
  %.val.i = load ptr, ptr %i.m, align 8, !noalias !2409, !nonnull !41, !noundef !41 ; 5 uses
  %i.n = ptrtoint ptr %.val.i to i64
  %i.o = and i64 %i.n, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2)
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !51

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73, !noalias !2409
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.val.i, align 8, !noalias !2409, !noundef !41 ; 3 uses
  %i.q = and i64 %i.p, 72057594037927935          ; 3 uses
  %i.r = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  %i.t = and i64 %i.p, 1080863910568919040
  %i.u = icmp ult i64 %i.p, 864691128455135232
  tail call void @llvm.assume(i1 %i.u)
  %i.v = or i64 %i.s, %i.t
  store i64 %i.v, ptr %.val.i, align 8, !noalias !2409
  %i.w = icmp eq i64 %i.q, 72057594037927935
  br i1 %i.w, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !44

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2409
  store ptr @2427, ptr %i.c, align 8, !noalias !2409
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.x, align 8, !noalias !2409
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.y, align 8, !noalias !2409
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8, !noalias !2409
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.aa, align 8, !noalias !2409
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73, !noalias !2409
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.d, %bb.b
  store ptr %.val.i, ptr %i.e, align 8, !noalias !2409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2409
  %i.ab = zext i32 %i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 1, ptr %i.ac, align 8, !noalias !2409
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !2409
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ab, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2409
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) @246, i64 24, i1 false), !noalias !2409
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !2410
  %i.ae = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #67, !noalias !2410 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.h, !prof !44

.body.i:                                          ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h046dadca082d574cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.d) #75, !noalias !2409
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #75
          to label %bb.l unwind label %bb.m, !noalias !2409

bb.f:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2410
  store ptr @386, ptr %i.b, align 8, !noalias !2410
end_hunk_0
begin_hunk_1_@"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h836b569eeb249c4dE":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7017)
  %i.dj = load i64, ptr %0, align 8, !range !58, !alias.scope !7016, !noalias !7017, !noundef !41
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27thread-pre-split", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !7018)
  call void @llvm.experimental.noalias.scope.decl(metadata !7019)
  %i.dl = load ptr, ptr %i.s, align 8, !alias.scope !7020, !noalias !7016, !nonnull !41, !noundef !41
  %i.dm = load ptr, ptr %i.t, align 8, !alias.scope !7020, !noalias !7016, !nonnull !41, !noundef !41 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, %i.dl
  br i1 %i.dn, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.do, ptr %i.t, align 8, !alias.scope !7020, !noalias !7016
  %i.dp = load ptr, ptr %i.dm, align 8, !noalias !7021, !nonnull !41, !noundef !41
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i26 = phi ptr [ %i.dp, %bb.am ], [ null, %bb.al ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !7016, !noalias !7017
  store ptr %.sroa.0.0.i.i.i26, ptr %i.r, align 8, !alias.scope !7016, !noalias !7017
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27thread-pre-split": ; preds = %bb.ak
  %.pr38 = load ptr, ptr %i.r, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27thread-pre-split", %bb.an
  %i.dq = phi ptr [ %.pr38, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27thread-pre-split" ], [ %.sroa.0.0.i.i.i26, %bb.an ]
  %.not20.not = icmp eq ptr %i.dq, null
  br i1 %.not20.not, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h09373bbeb7b05678E.exit27"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.dr = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h836b569eeb249c4dE"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(272) %i.h, i8 noundef %.pre-phi)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.h, i64 272, i1 false)
  store i64 1, ptr %i.f, align 8
  store i64 1, ptr %i.v, align 8
  store i64 1, ptr %i.w, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !7022
  %i.ds = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !7022 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.aq, label %bb.at, !prof !49

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #73
          to label %.noexc28 unwind label %bb.ar

.noexc28:                                         ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hc196b4ef44df6c58E"(ptr noalias noundef align 8 dereferenceable(280) %i.w)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.at:                                            ; preds = %bb.ap
  %i.dw = add i64 %i.dr, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.ds, ptr noundef nonnull align 8 dereferenceable(296) %i.f, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h59cff0af5260afdfE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ai

bb.au:                                            ; preds = %bb.ao
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17hb71554d04135e6cfE"(ptr noalias noundef align 8 dereferenceable(272) %i.h) #75
          to label %common.resume unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h8fcf7c1732953f61E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [20 x i8], align 4                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [272 x i8], align 8               ; 9 uses
  %i.i = alloca [296 x i8], align 8               ; 7 uses
  %i.j = alloca [296 x i8], align 8               ; 9 uses
  %i.k = alloca [272 x i8], align 8               ; 6 uses
  %i.l = icmp eq i8 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !41 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !41 ; 2 uses
  %.not21 = icmp eq i64 %i.p, %i.n
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.r = xor i64 %i.n, -1
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %.not2256 = icmp eq ptr %i.t, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2256 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader60_crit_edge, label %bb.ao

..preheader60_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader60

.preheader60:                                     ; preds = %..preheader60_crit_edge, %bb.ap
  %.pre-phi = phi i8 [ %.pre, %..preheader60_crit_edge ], [ %i.ea, %bb.ap ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader60_crit_edge ], [ %i.eb, %bb.ap ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.z = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !58, !noundef !41
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #73
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 272 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 264 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !41
  %i.ah = sub i64 %i.ae, %i.ag                    ; 2 uses
  %i.ai = sub i64 32, %i.ah
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h4e18af994167a925E"(ptr noalias noundef align 8 dereferenceable(272) %i.ac, ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.ai)
  %i.aj = load i64, ptr %i.ad, align 8, !noundef !41
  %i.ak = load i64, ptr %i.af, align 8, !noundef !41
  %i.al = add i64 %i.ah, %i.ak
  %i.am = sub i64 %i.aj, %i.al
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.am, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 264 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h64971a630f7353c6E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dv, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h64971a630f7353c6E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.aw = load i64, ptr %i.m, align 8, !noundef !41
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.o, align 8, !noundef !41
  %i.az = icmp eq i64 %i.ay, 32
  br i1 %i.az, label %.loopexit59, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !7075)
  %i.ba = load i64, ptr %0, align 8, !range !58, !alias.scope !7075, !noalias !7076, !noundef !41
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4a63fdfc6b9b78bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao), !noalias !7075 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !7075, !noalias !7076
  store ptr %i.bc, ptr %i.an, align 8, !alias.scope !7075, !noalias !7076
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.an, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exitthread-pre-split", %bb.j
  %i.bd = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exitthread-pre-split" ], [ %i.bc, %bb.j ]
  %.not23.not = icmp eq ptr %i.bd, null
  br i1 %.not23.not, label %.loopexit59, label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !7077)
  call void @llvm.experimental.noalias.scope.decl(metadata !7078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7079
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !noalias !7079
  br label %bb.l

.body.i.i:                                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i", %bb.x, %.body38
  %i.be = phi i64 [ %.pre.i.i, %.body38 ], [ 0, %bb.x ], [ 0, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i" ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body39, %.body38 ], [ %i.cp, %bb.x ], [ %i.cp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i" ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.be
  %i.bg = sub i64 %i.bh, %i.be
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17h8ce52229eb398900E"(ptr noalias noundef nonnull readonly align 8 %i.bf, i64 noundef %i.bg)
          to label %common.resume unwind label %bb.ak, !noalias !7079

bb.l:                                             ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i", %bb.k
  %i.bh = phi i64 [ 0, %bb.k ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i" ] ; 7 uses
  %.sroa.4.07.i.i = phi i64 [ 32, %bb.k ], [ %i.bi, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i" ]
  %i.bi = add nsw i64 %.sroa.4.07.i.i, -1         ; 2 uses
  %i.bj = load i64, ptr %0, align 8, !range !58, !alias.scope !7080, !noalias !7081, !noundef !41
  %i.bk = load ptr, ptr %i.an, align 8, !alias.scope !7080, !noalias !7081 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !7080, !noalias !7081
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !7082)
  call void @llvm.experimental.noalias.scope.decl(metadata !7083), !noalias !7084
  %i.bm = load ptr, ptr %i.ar, align 8, !alias.scope !7085, !noalias !7086, !nonnull !41, !noundef !41
  %i.bn = load ptr, ptr %i.as, align 8, !alias.scope !7085, !noalias !7086, !nonnull !41, !noundef !41 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, %i.bm
  br i1 %i.bo, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9c154173f2b6acdcE.exit, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.i": ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store ptr %i.bp, ptr %i.as, align 8, !alias.scope !7085, !noalias !7086
  %.sroa.0.0.copyload1.i = load i32, ptr %i.bn, align 4, !noalias !7087 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9c154173f2b6acdcE.exit, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !7088
  store i32 %.sroa.0.0.copyload1.i, ptr %i.d, align 4, !noalias !7088
  %.val.i34 = load ptr, ptr %i.at, align 8, !alias.scope !7082, !noalias !7084 ; 2 uses
  %i.bq = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.d)
          to label %.noexc35 unwind label %.loopexit ; 2 uses

.noexc35:                                         ; preds = %bb.n
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i34) ], !noalias !7084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 16, i1 false), !noalias !7088
  %i.bt = invoke noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i34, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7089
  %i.bu = icmp slt i64 %i.bs, 0
  br i1 %i.bu, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.noexc36
  %i.bv = icmp eq i64 %i.bs, 0                    ; 2 uses
  br i1 %i.bv, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i.i", label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !7090
  %i.bw = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 1) #67, !noalias !7090 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i.i"

bb.p:                                             ; preds = %bb.o, %.noexc36
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %.noexc36 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.p
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i.i": ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bw, %bb.o ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.br, i64 %i.bs, i1 false), !noalias !7091
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !7092
  %i.by = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #67, !noalias !7092 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i.thread45", !prof !44

bb.q:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bv, label %.body38, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !7093
  br label %.body38

bb.s:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7094
  store ptr @386, ptr %i.b, align 8, !noalias !7094
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !7094
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !7094
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !7094
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !7094
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.t unwind label %bb.q, !noalias !7092

bb.t:                                             ; preds = %bb.s
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i.thread45": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit.i.i"
  store i64 216172782113783809, ptr %i.by, align 8, !noalias !7092
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bt, ptr %i.cf, align 8, !noalias !7092
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bs, ptr %i.cg, align 8, !noalias !7088
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !7088
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !7088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7088
  br label %bb.u

.loopexit:                                        ; preds = %bb.n, %.noexc35
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.r
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ca, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.pre.i.i = load i64, ptr %i.ap, align 8, !alias.scope !7095, !noalias !7079
  br label %.body.i.i

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i": ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9c154173f2b6acdcE.exit, label %bb.u

bb.u:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i.thread45", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i"
  %.sroa.0.0.i.i.i48 = phi ptr [ %i.by, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i.thread45" ], [ %i.bk, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7096)
  %i.ch = load i64, ptr %i.ap, align 8, !alias.scope !7096, !noalias !7079, !noundef !41 ; 5 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = icmp eq i64 %i.bh, 32                   ; 2 uses
  %or.cond.i.i.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.v, !prof !95

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %i.ch, %i.bh
  br i1 %i.ck, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7097
  store ptr @634, ptr %i.g, align 8, !noalias !7097
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.cl, align 8, !noalias !7097
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.cm, align 8, !noalias !7097
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !7097
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.co, align 8, !noalias !7097
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @635) #73
          to label %bb.ad unwind label %bb.x, !noalias !7097

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = ptrtoint ptr %.sroa.0.0.i.i.i48 to i64
  %i.cr = and i64 %i.cq, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 2)
  switch i64 %..i.i, label %.body.i.i [
    i64 2, label %bb.y
    i64 0, label %bb.z
  ], !prof !51

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc31 unwind label %bb.ae

.noexc31:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7098
  store ptr %.sroa.0.0.i.i.i48, ptr %i.f, align 8, !noalias !7098
  %i.cs = load i64, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !7099, !noundef !41 ; 3 uses
  %i.ct = and i64 %i.cs, 72057594037927935
  %i.cu = add nsw i64 %i.ct, -1                   ; 3 uses
  %i.cv = and i64 %i.cs, 1080863910568919040
  %i.cw = icmp ult i64 %i.cs, 864691128455135232
  call void @llvm.assume(i1 %i.cw), !noalias !7097
  %i.cx = or i64 %i.cu, %i.cv
  store i64 %i.cx, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !7099
  %i.cy = icmp ugt i64 %i.cu, 72057594037927935
  br i1 %i.cy, label %bb.ab, label %bb.aa, !prof !44

bb.aa:                                            ; preds = %bb.z
  %i.cz = icmp eq i64 %i.cu, 0
  br i1 %i.cz, label %bb.ac, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i"

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7099
  store ptr @2427, ptr %i.e, align 8, !noalias !7099
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.da, align 8, !noalias !7099
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.db, align 8, !noalias !7099
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !noalias !7099
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.dd, align 8, !noalias !7099
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc32 unwind label %bb.ae

.noexc32:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i" unwind label %bb.ae

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i": ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7098
  br label %.body.i.i

bb.ad:                                            ; preds = %bb.w
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !7097
  unreachable

bb.af:                                            ; preds = %bb.v
  br i1 %i.cj, label %bb.ah, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i"

bb.ag:                                            ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !7096, !noalias !7079
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i"

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.i = icmp eq i64 %i.ch, 32
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.df = phi i64 [ %i.dj, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  store i64 %i.df, ptr %i.aq, align 8, !alias.scope !7096, !noalias !7079
  store i64 0, ptr %i.ap, align 8, !alias.scope !7096, !noalias !7079
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ch
  %i.dh = shl i64 %i.ch, 3
  %i.di = sub i64 256, %i.dh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.h, ptr nonnull align 8 %i.dg, i64 %i.di, i1 false), !alias.scope !7096, !noalias !7079
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !7096, !noalias !7079
  %i.dj = sub i64 32, %.pre.i.i.i
  br label %bb.ai

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i": ; preds = %bb.ai, %bb.ag, %bb.af
  %i.dk = phi i64 [ %i.df, %bb.ai ], [ %i.bh, %bb.af ], [ 0, %bb.ag ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dk
  store ptr %.sroa.0.0.i.i.i48, ptr %i.dl, align 8, !alias.scope !7096, !noalias !7079
  %i.dm = load i64, ptr %i.aq, align 8, !alias.scope !7096, !noalias !7079, !noundef !41
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.aq, align 8, !alias.scope !7096, !noalias !7079
  %i.do = icmp eq i64 %i.bi, 0
  br i1 %i.do, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9c154173f2b6acdcE.exit, label %bb.l

bb.ak:                                            ; preds = %.body.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !7079
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.ay, %bb.am, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %bb.am ], [ %.pn.i.i, %.body.i.i ], [ %i.en, %bb.ay ], [ %i.eq, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h9c154173f2b6acdcE.exit: ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i"
  %.sroa.3.0.copyload41 = phi i64 [ %i.bh, %bb.m ], [ %i.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h66dd87c9513d1781E.exit.i" ], [ %i.bh, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71526cd95926dcc6E.exit.i.i" ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hec3c8b2136df4a02E.exit.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false)
  %.sroa.2.0.copyload40 = load i64, ptr %i.ap, align 8, !noalias !7100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7079
  store i64 1, ptr %i.j, align 8
  store i64 1, ptr %i.au, align 8
  store i64 0, ptr %i.av, align 8
  store i64 %.sroa.2.0.copyload40, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.3.0.copyload41, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !7101
  %i.dq = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !7101 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.al, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h64971a630f7353c6E.exit24", !prof !49

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9c154173f2b6acdcE.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #73
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hc196b4ef44df6c58E"(ptr noalias noundef align 8 dereferenceable(280) %i.av)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h64971a630f7353c6E.exit24": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9c154173f2b6acdcE.exit
  %i.du = sub i64 %.sroa.0.0, %.sroa.2.0.copyload40
  %i.dv = add i64 %i.du, %.sroa.3.0.copyload41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.j, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h59cff0af5260afdfE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.dq)
  br label %bb.g

.loopexit59:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26", %bb.as, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit", %bb.h
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit" ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.2, %bb.as ], [ %.sroa.0.2, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26" ]
  ret i64 %.sroa.0.1

bb.ao:                                            ; preds = %bb.c
  %i.dw = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !58, !noundef !41
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.ap, label %bb.aq, !prof !48

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = add i8 %2, -1                           ; 2 uses
  %i.eb = tail call fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h8fcf7c1732953f61E"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.dz, i8 noundef %i.ea)
  br label %.preheader60

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #73
  unreachable

bb.ar:                                            ; preds = %.preheader60, %bb.ba
  %.sroa.0.2 = phi i64 [ %i.ep, %bb.ba ], [ %.sroa.0.2.ph, %.preheader60 ] ; 3 uses
  %i.ec = load i64, ptr %i.m, align 8, !noundef !41
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ee = load i64, ptr %i.o, align 8, !noundef !41
  %i.ef = icmp eq i64 %i.ee, 32
  br i1 %i.ef, label %.loopexit59, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !7102)
  %i.eg = load i64, ptr %0, align 8, !range !58, !alias.scope !7102, !noalias !7103, !noundef !41
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26thread-pre-split", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4a63fdfc6b9b78bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v), !noalias !7102 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !7102, !noalias !7103
  store ptr %i.ei, ptr %i.u, align 8, !alias.scope !7102, !noalias !7103
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26thread-pre-split": ; preds = %bb.at
  %.pr49 = load ptr, ptr %i.u, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26thread-pre-split", %bb.au
  %i.ej = phi ptr [ %.pr49, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26thread-pre-split" ], [ %i.ei, %bb.au ]
  %.not20.not = icmp eq ptr %i.ej, null
  br i1 %.not20.not, label %.loopexit59, label %bb.av

bb.av:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit26"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.ek = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h8fcf7c1732953f61E"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.k, i8 noundef %.pre-phi)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.x, align 8
  store i64 1, ptr %i.y, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !7104
  %i.el = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !7104 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ax, label %bb.ba, !prof !49

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #73
          to label %.noexc27 unwind label %bb.ay

.noexc27:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hc196b4ef44df6c58E"(ptr noalias noundef align 8 dereferenceable(280) %i.y)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.ba:                                            ; preds = %bb.aw
  %i.ep = add i64 %i.ek, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.el, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h59cff0af5260afdfE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ar

bb.bb:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17hb71554d04135e6cfE"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #75
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h913fc2a3202830fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [272 x i8], align 8               ; 10 uses
  %i.f = alloca [296 x i8], align 8               ; 7 uses
  %i.g = alloca [296 x i8], align 8               ; 9 uses
  %i.h = alloca [272 x i8], align 8               ; 6 uses
  %i.i = icmp eq i8 %2, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !41 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !41 ; 2 uses
  %.not21 = icmp eq i64 %i.m, %i.k
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k
  %i.o = xor i64 %i.k, -1
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.m
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %i.o ; 3 uses
  %.not2246 = icmp eq ptr %i.q, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2246 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader49_crit_edge, label %bb.ae

..preheader49_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader49

.preheader49:                                     ; preds = %..preheader49_crit_edge, %bb.af
  %.pre-phi = phi i8 [ %.pre, %..preheader49_crit_edge ], [ %i.di, %bb.af ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader49_crit_edge ], [ %i.dj, %bb.af ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.y = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef align 8 dereferenceable(8) %i.q) ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !58, !noundef !41
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #73
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 272 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 264 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !41
  %i.ag = sub i64 %i.ad, %i.af                    ; 2 uses
  %i.ah = sub i64 32, %i.ag
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hb0dc97ac4622926bE"(ptr noalias noundef align 8 dereferenceable(272) %i.ab, ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.ah)
  %i.ai = load i64, ptr %i.ac, align 8, !noundef !41
  %i.aj = load i64, ptr %i.ae, align 8, !noundef !41
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = sub i64 %i.ai, %i.ak
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.al, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h64971a630f7353c6E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dd, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h64971a630f7353c6E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.au = load i64, ptr %i.j, align 8, !noundef !41
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.l, align 8, !noundef !41
  %i.ax = icmp eq i64 %i.aw, 32
  br i1 %i.ax, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7152)
  %i.ay = load i64, ptr %0, align 8, !range !58, !alias.scope !7151, !noalias !7152, !noundef !41
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h55a56f14df00e1a7E.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.ao, align 8, !alias.scope !7153, !noalias !7151, !noundef !41
  %i.bb = load i64, ptr %i.am, align 8, !alias.scope !7153, !noalias !7151, !noundef !41 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.ba, %i.bb
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i64 %i.bb, 1
  store i64 %i.bc, ptr %i.am, align 8, !alias.scope !7153, !noalias !7151
  %i.bd = icmp ult i64 %i.bb, 2
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bb
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !7153, !noalias !7151, !nonnull !41, !noundef !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bf, %bb.k ], [ null, %bb.j ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !7151, !noalias !7152
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.an, align 8, !alias.scope !7151, !noalias !7152
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h55a56f14df00e1a7E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h55a56f14df00e1a7E.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.an, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h55a56f14df00e1a7E.exit"
end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4eval17update_at_indices17he57a288eaeb86d03E:bb.a

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @380, i64 noundef 69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #73, !noalias !15607
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.q, i64 -9
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.w, align 1, !noalias !15607, !nonnull !41, !noundef !41 ; 7 uses
  %i.x = add nsw i64 %i.p, -9                     ; 3 uses
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !15607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !15608)
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !51

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %.val.i, align 8, !noalias !15609, !noundef !41 ; 3 uses
  %i.z = and i64 %i.y, 72057594037927935          ; 3 uses
  %i.aa = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  %i.ac = and i64 %i.y, 1080863910568919040
  %i.ad = icmp ult i64 %i.y, 864691128455135232
  call void @llvm.assume(i1 %i.ad)
  %i.ae = or i64 %i.ab, %i.ac
  store i64 %i.ae, ptr %.val.i, align 8, !noalias !15609
  %i.af = icmp eq i64 %i.z, 72057594037927935
  br i1 %i.af, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !44

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15609
  store ptr @2427, ptr %i.e, align 8, !noalias !15609
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ag, align 8, !noalias !15609
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ah, align 8, !noalias !15609
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !noalias !15609
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.aj, align 8, !noalias !15609
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc5 unwind label %bb.w

.noexc5:                                          ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.g, %bb.e
  %.val.i.i.i = load i64, ptr %.val1.i, align 8, !noalias !15609, !noundef !41 ; 2 uses
  %i.ak = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.al, ptr %.val1.i, align 8, !noalias !15609
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hcc4bb9089b8b3759E.exit.i.i, !prof !44

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hcc4bb9089b8b3759E.exit.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hcc4bb9089b8b3759E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val2.i, align 8, !noalias !15609, !noundef !41 ; 2 uses
  %i.an = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.ao, ptr %.val2.i, align 8, !noalias !15609
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l, !prof !44

bb.k:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

._crit_edge:                                      ; preds = %bb.b, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i", %bb.a
  ret void

bb.l:                                             ; preds = %bb.j, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hcc4bb9089b8b3759E.exit.i.i
  store ptr %.val.i, ptr %i.f, align 8, !alias.scope !15608, !noalias !15610
  store ptr %.val1.i, ptr %i.n, align 8, !alias.scope !15608, !noalias !15610
  store ptr %.val2.i, ptr %i.o, align 8, !alias.scope !15608, !noalias !15610
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 16 ; 6 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !15611, !noundef !41
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.o, !prof !48

bb.m:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i64, ptr %i.aq, align 8, !noalias !15611, !noundef !41
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.aq, align 8, !noalias !15611
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  store i64 -1, ptr %i.aq, align 8, !noalias !15611
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData6update17h9149a9fa047e6de7E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.m, !noalias !15611

bb.o:                                             ; preds = %bb.l
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #73
          to label %bb.t unwind label %bb.v, !noalias !15611

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15611
  %i.ax = load i64, ptr %i.aq, align 8, !noalias !15611, !noundef !41
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aq, align 8, !noalias !15611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15612
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !15612
  %i.az = load i64, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !15613, !noundef !41 ; 3 uses
  %i.ba = and i64 %i.az, 72057594037927935
  %i.bb = add nsw i64 %i.ba, -1                   ; 3 uses
  %i.bc = and i64 %i.az, 1080863910568919040
  %i.bd = icmp ult i64 %i.az, 864691128455135232
  call void @llvm.assume(i1 %i.bd)
  %i.be = or i64 %i.bb, %i.bc
  store i64 %i.be, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !15613
  %i.bf = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bf, label %.noexc7, label %bb.q, !prof !44

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp eq i64 %i.bb, 0
  br i1 %i.bg, label %bb.r, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i"

.noexc7:                                          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15613
  store ptr @2427, ptr %i.b, align 8, !noalias !15613
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !15613
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bi, align 8, !noalias !15613
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8, !noalias !15613
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bk, align 8, !noalias !15613
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i": ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.s:                                             ; preds = %bb.v, %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.t:                                             ; preds = %bb.o
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.m
  %.pn10.i.i = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.at, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17he63cf8a6c6201b98E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #75
          to label %.body.thread unwind label %bb.s

bb.v:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17h2f5264f830ff3ca6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #75
          to label %bb.u unwind label %bb.s

.body.thread:                                     ; preds = %bb.u, %bb.w
  %eh.lpad-body7 = phi { ptr, i32 } [ %.pn10.i.i, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body7

bb.w:                                             ; preds = %bb.h, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17he63cf8a6c6201b98E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #75
          to label %.body.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$13err_with_ctxt17hb9b50656461610c6E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(392) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [392 x i8], align 8               ; 4 uses
  %i.b = alloca [440 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15628)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !15628, !noalias !15629 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15628, !noalias !15629 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !15628, !noalias !15629
  store i64 0, ptr %i.c, align 8, !alias.scope !15628, !noalias !15629
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15628, !noalias !15629
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !15628, !noalias !15629
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15628, !noalias !15629, !nonnull !41, !align !42, !noundef !41 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 640
  %.val7.i = load ptr, ptr %i.f, align 8, !noalias !15630, !nonnull !41, !noundef !41
  %i.g = getelementptr i8, ptr %i.e, i64 648
  %.val8.i = load i64, ptr %i.g, align 8, !noalias !15630, !noundef !41 ; 5 uses
  %i.h = mul i64 %.val8.i, 12                     ; 4 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.val8.i, 768614336404564650
  br i1 %or.cond.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !15631
  %i.j = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 4) #67, !noalias !15631 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i unwind label %bb.d, !noalias !15630

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.m, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nuw i64 %.sroa.0.0.copyload.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #67, !noalias !15630
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef align 8 dereferenceable(392) %i.a) #75
          to label %common.resume unwind label %bb.j

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val8.i, %bb.b ] ; 2 uses
  %i.o = icmp samesign ule i64 %.val8.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 4 %.val7.i, i64 %i.h, i1 false), !noalias !15632
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i64 %.val8.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !15633
  %i.q = tail call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !15633 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcdd289cd82add22eE.exit", !prof !49

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 440) #73
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorData$GT$17haf4ed06f0399bd1bE"(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.b) #75
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcdd289cd82add22eE.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.q, ptr noundef nonnull align 8 dereferenceable(440) %i.b, i64 440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.q

bb.j:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17enter_cache_index17h2b68866637b9646aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [392 x i8], align 8               ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [392 x i8], align 8               ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 16               ; 9 uses
  %i.l = alloca [20 x i8], align 4                ; 2 uses
  %i.m = alloca [392 x i8], align 8               ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %3, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %5, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %6, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15683)
  %i.q = load i64, ptr %5, align 8, !noalias !15684, !noundef !41
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %5, align 8, !noalias !15684
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i_crit_edge" unwind label %bb.c

"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i_crit_edge": ; preds = %bb.b
  %.pre = load ptr, ptr %i.p, align 8, !alias.scope !15685
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15686)
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !15687, !noundef !41 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !noalias !15688, !noundef !41
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !15688
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %.thread59

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.thread59 unwind label %bb.h

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i": ; preds = %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i_crit_edge", %bb.a
  %i.z = phi ptr [ %.pre, %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i_crit_edge" ], [ %6, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15689)
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"
  %i.ab = load i64, ptr %i.z, align 8, !noalias !15690, !noundef !41
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !noalias !15690
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit" unwind label %.thread63

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

end_hunk_2
begin_hunk_3_@_ZN16nickel_lang_core4eval5subst17h2be746d9f4717a04E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rh, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  store i64 -9223372036854775755, ptr %i.ao, align 8
  %i.ri = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h441d52a6ba1c981aE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ao, i32 noundef %i.bo)
          to label %bb.fk unwind label %bb.dj

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %.thread404.thread

bb.fl:                                            ; preds = %bb.dh
  %i.rj = load ptr, ptr %i.an, align 8, !nonnull !41, !noundef !41
  %i.rk = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h2be746d9f4717a04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.rj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fm unwind label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  store ptr %i.rk, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rl, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  store i64 -9223372036854775754, ptr %i.am, align 8
  %i.rm = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h441d52a6ba1c981aE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.am, i32 noundef %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.thread404.thread

bb.fn:                                            ; preds = %bb.fl
  %i.rn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18751)
  call void @llvm.experimental.noalias.scope.decl(metadata !18752)
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !18753, !nonnull !41, !noundef !41 ; 2 uses
  %i.rq = load i64, ptr %i.rp, align 8, !noalias !18753, !noundef !41
  %i.rr = add i64 %i.rq, -1                       ; 2 uses
  store i64 %i.rr, ptr %i.rp, align 8, !noalias !18753
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %bb.fo, label %.thread

bb.fo:                                            ; preds = %bb.fn
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6a62d9c4eafed149E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ro)
          to label %.thread unwind label %bb.bk

bb.fp:                                            ; preds = %bb.di
  %i.rt = extractvalue { ptr, ptr } %i.oa, 0      ; 4 uses
  %i.ru = extractvalue { ptr, ptr } %i.oa, 1      ; 2 uses
  store ptr %i.rt, ptr %i.ad, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ru, ptr %i.rv, align 8
  %i.rw = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h2be746d9f4717a04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.ru, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.rt, ptr %i.rx, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.rw, ptr %i.ry, align 8
  store i64 -9223372036854775753, ptr %i.ac, align 8
  %i.rz = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h441d52a6ba1c981aE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ac, i32 noundef %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %.thread404.thread

bb.fr:                                            ; preds = %bb.fp
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sb = load i64, ptr %i.rt, align 8, !noalias !18754, !noundef !41
  %i.sc = add i64 %i.sb, -1                       ; 2 uses
  store i64 %i.sc, ptr %i.rt, align 8, !noalias !18754
  %i.sd = icmp eq i64 %i.sc, 0
  br i1 %i.sd, label %bb.fs, label %.thread

bb.fs:                                            ; preds = %bb.fr
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h11e86ee6dea44245E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %.thread unwind label %bb.bk

.thread373:                                       ; preds = %bb.dn, %bb.dj, %bb.dy
  %.pn57 = phi { ptr, i32 } [ %i.ob, %bb.dj ], [ %.pn354, %bb.dy ], [ %lpad.thr_comm.split-lp358, %bb.dn ] ; 12 uses
  switch i64 %i.bp, label %bb.ft [
    i64 0, label %.thread315
    i64 2, label %.thread315
    i64 3, label %.thread315
    i64 4, label %.thread315
    i64 5, label %.thread315
    i64 6, label %.thread315
    i64 7, label %.thread315
    i64 8, label %.thread315
    i64 9, label %.thread315
    i64 10, label %.thread315
    i64 11, label %.thread315
  ]

bb.ft:                                            ; preds = %.thread373
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$nickel_lang_core..eval..value..lens..TermContent$GT$17h84f0f5a556f09622E"(i64 %i.bp, ptr nonnull %.sroa.9.0.copyload) #75
          to label %.thread315 unwind label %bb.bk

bb.fu:                                            ; preds = %bb.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bb, ptr noundef nonnull align 8 dereferenceable(20) %i.se, i64 20, i1 false)
  %i.sf = load ptr, ptr %i.ba, align 8, !noundef !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.not = icmp eq ptr %i.sf, null
  br i1 %.not, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb586c37d64010f1bE.exit", label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.sg = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h2be746d9f4717a04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.sf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb586c37d64010f1bE.exit" unwind label %.thread322, !inline_history !18617

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb586c37d64010f1bE.exit": ; preds = %bb.fv, %bb.fu
  %.sroa.06.0 = phi ptr [ null, %bb.fu ], [ %i.sg, %bb.fv ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !18755
  %i.sh = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #67, !noalias !18755 ; 6 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %bb.fx, label %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h0e0be74ae04f4627E.exit, !prof !44

bb.fw:                                            ; preds = %bb.fx
  %i.sj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha10cf2cfeec69f0bE"(ptr %.sroa.06.0) #75
          to label %.thread unwind label %bb.fz, !noalias !18755

bb.fx:                                            ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb586c37d64010f1bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !18755
  store ptr @386, ptr %i.v, align 8, !noalias !18755
  %i.sk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.sk, align 8, !noalias !18755
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.sl, align 8, !noalias !18755
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.sm, align 8, !noalias !18755
  %i.sn = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.sn, align 8, !noalias !18755
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.fy unwind label %bb.fw, !noalias !18755

bb.fy:                                            ; preds = %bb.fx
  unreachable

bb.fz:                                            ; preds = %bb.fw
  %i.so = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !18755
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h0e0be74ae04f4627E.exit: ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb586c37d64010f1bE.exit"
  store i64 504403158265495553, ptr %i.sh, align 8, !noalias !18755
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store i32 %i.bo, ptr %i.sp, align 8, !noalias !18755
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  store ptr %.sroa.06.0, ptr %i.sq, align 8, !noalias !18756
  %.sroa.5.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i100, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.bb, i64 20, i1 false)
  br label %.thread404.thread

.thread404:                                       ; preds = %bb.ew, %bb.cm
  %.val73 = phi ptr [ %.sroa.9.0.copyload, %bb.ew ], [ %i.ca, %bb.cm ]
  %.sroa.0.0 = phi ptr [ %i.ov, %bb.ew ], [ %i.mz, %bb.cm ] ; 6 uses
  switch i64 %i.bt, label %bb.ga [
    i64 3, label %.thread404.thread
    i64 4, label %.thread404.thread
    i64 6, label %.thread404.thread
    i64 7, label %.thread404.thread
    i64 9, label %.thread404.thread
  ]

bb.ga:                                            ; preds = %.thread404
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h6f17d0f64b08fe28E"(i64 %i.bp, ptr nonnull %.val73)
  br label %.thread404.thread

.thread315:                                       ; preds = %.thread373, %.thread373, %.thread373, %.thread373, %.thread373, %.thread373, %.thread373, %.thread373, %.thread373, %.thread373, %.thread373, %bb.ft, %bb.cj, %bb.ci, %.body117, %.thread322
  %.val71 = phi ptr [ %.sroa.9.0.copyload, %.thread373 ], [ %.val71480, %.thread322 ], [ %i.ca, %bb.cj ], [ %.sroa.9.0.copyload, %.thread373 ], [ %i.ca, %.body117 ], [ %i.ca, %bb.ci ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %bb.ft ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %.thread373 ], [ %.sroa.9.0.copyload, %.thread373 ]
  %.pn61308 = phi { ptr, i32 } [ %.pn57, %.thread373 ], [ %lpad.thr_comm320, %.thread322 ], [ %eh.lpad-body118, %bb.cj ], [ %.pn57, %.thread373 ], [ %eh.lpad-body118, %.body117 ], [ %eh.lpad-body118, %bb.ci ], [ %.pn57, %.thread373 ], [ %.pn57, %.thread373 ], [ %.pn57, %bb.ft ], [ %.pn57, %.thread373 ], [ %.pn57, %.thread373 ], [ %.pn57, %.thread373 ], [ %.pn57, %.thread373 ], [ %.pn57, %.thread373 ], [ %.pn57, %.thread373 ], [ %.pn57, %.thread373 ] ; 6 uses
  switch i64 %i.bt, label %bb.gb [
    i64 3, label %.thread
    i64 4, label %.thread
    i64 6, label %.thread
    i64 7, label %.thread
    i64 9, label %.thread
  ]

bb.gb:                                            ; preds = %.thread315
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h6f17d0f64b08fe28E"(i64 %i.bp, ptr %.val71) #75
          to label %.thread unwind label %bb.bk

.thread:                                          ; preds = %bb.cs, %bb.ct, %bb.cu, %bb.fw, %.body, %bb.cp, %bb.fr, %bb.fs, %bb.fn, %bb.fo, %bb.ez, %.sink.split.i, %bb.ed, %bb.ee, %bb.ff, %bb.fh, %bb.er, %.thread315, %.thread315, %.thread315, %.thread315, %.thread315, %bb.gb, %bb.gc
  %.pn63298 = phi { ptr, i32 } [ %.pn61308, %bb.gb ], [ %lpad.thr_comm.split-lp, %bb.gc ], [ %.pn61308, %.thread315 ], [ %.pn61308, %.thread315 ], [ %.pn61308, %.thread315 ], [ %.pn61308, %.thread315 ], [ %.pn61308, %.thread315 ], [ %lpad.thr_comm365378, %bb.ee ], [ %i.sj, %bb.fw ], [ %lpad.thr_comm385401, %bb.er ], [ %i.ni, %bb.cu ], [ %lpad.thr_comm.split-lp366, %bb.ed ], [ %i.ni, %bb.cs ], [ %lpad.thr_comm410, %bb.fh ], [ %lpad.thr_comm410, %bb.ff ], [ %i.ni, %bb.ct ], [ %eh.lpad-body, %.body ], [ %i.rn, %bb.fn ], [ %i.nd, %bb.cp ], [ %i.qu, %.sink.split.i ], [ %i.qu, %bb.ez ], [ %i.rn, %bb.fo ], [ %i.sa, %bb.fs ], [ %i.sa, %bb.fr ]
  resume { ptr, i32 } %.pn63298

bb.gc:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #75
          to label %.thread unwind label %bb.bk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h4ce38316c968912aE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, i32 %.0.val, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  store i64 -9223372036854775760, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !18759
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #67, !noalias !18759 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17hb8e05f049b6b411bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #75
          to label %.body unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18759
  store ptr @386, ptr %i.a, align 8, !noalias !18759
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !18759
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !18759
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !18759
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !18759
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b, !noalias !18759

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

.body:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17hc429a0f217b128a3E"(ptr %1) #75
          to label %common.resume unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.d, align 8, !noalias !18759
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.0.val, ptr %i.l, align 8, !noalias !18759
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %1)
          to label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17hc429a0f217b128a3E.exit" unwind label %bb.g

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #67
  br label %common.resume

"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17hc429a0f217b128a3E.exit": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #67
  ret ptr %i.d

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h6439c80fa340748eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !41, !align !46, !noundef !41
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !41, !align !42, !noundef !41
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !42, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.i = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h2be746d9f4717a04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #75
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18778)
  call void @llvm.experimental.noalias.scope.decl(metadata !18779)
  call void @llvm.experimental.noalias.scope.decl(metadata !18780)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !18781, !nonnull !41, !noundef !41 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !18781, !noundef !41
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !18781
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18782)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !18783, !noundef !41 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !noalias !18784, !noundef !41
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !18784
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %common.resume unwind label %bb.j

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i": ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18785)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18786, !noundef !41 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i"
  %i.y = load i64, ptr %i.w, align 8, !noalias !18787, !noundef !41
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.w, align 8, !noalias !18787
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit"

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i", %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h0e0be74ae04f4627E(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !18790
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #67, !noalias !18790 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha10cf2cfeec69f0bE"(ptr %1) #75
          to label %.body unwind label %bb.e, !noalias !18790

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18790
  store ptr @386, ptr %i.a, align 8, !noalias !18790
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !18790
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !noalias !18790
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !noalias !18790
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8, !noalias !18790
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b, !noalias !18790

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !18790
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.b, align 8, !noalias !18790
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.j, align 8, !noalias !18790
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  ret ptr %i.b

.body:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17hecd621b3a7c0c55dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [20 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !18793
  %i.c = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #67, !noalias !18793 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha10cf2cfeec69f0bE"(ptr %2) #75
          to label %.body unwind label %bb.e, !noalias !18793

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18793
  store ptr @386, ptr %i.a, align 8, !noalias !18793
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !18793
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8, !noalias !18793
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !18793
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8, !noalias !18793
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b, !noalias !18793

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !18793
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit"
  store i64 504403158265495553, ptr %i.c, align 8, !noalias !18793
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %3, ptr %i.k, align 8, !noalias !18793
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %i.c

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body5

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h421fd84538203e33E"(ptr %2) #75
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h0dafb3bbffc77858E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !51

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 360287970189639680
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(32) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h107165049633c78fE(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !51

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 504403158265495552
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(64) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h13b41464163a7c3bE(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !51

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(152) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h22e649f9696585a0E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !51

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 432345564227567616
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17ha44c0ca4a9469971E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !51

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(24) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17ha593b430ac83be41E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !51

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 216172782113783808
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h07f2c4439433ef9fE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.b = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef 8) #67 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h62d24c6879cae9f8E"(ptr noalias noundef align 8 dereferenceable(152) %0) #75
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 432345564227567617, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h31a540a4fb9f36ebE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #67 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h046dadca082d574cE"(ptr noalias noundef align 8 dereferenceable(56) %0) #75
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h441d52a6ba1c981aE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #67 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17hb8e05f049b6b411bE"(ptr noalias noundef align 8 dereferenceable(56) %0) #75
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h54725c741ad8caddE(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #67 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #75
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 720575940379279361, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.k, align 8
  ret ptr %i.c

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h896e04b02bda06f5E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #67 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.f, !prof !44

bb.b:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8, !alias.scope !18802 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h46dc538b8377b789E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !18803
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h46dc538b8377b789E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 216172782113783809, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %i.b

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h46dc538b8377b789E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hd1b4e8276eb76c7fE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.b = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #67 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..value..ArrayData$GT$17h05708fe872e28071E"(ptr noalias noundef align 8 dereferenceable(64) %0) #75
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 72057594037927937, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hee1e31cf659980f8E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #67 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$nickel_lang_core..eval..cache..lazy..InnerThunkData$GT$17h5899adc9b19fbde4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17h9ee47d05699b00c8E.exit" unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 288230376151711745, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17h9ee47d05699b00c8E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hf6d176d88f19bea6E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.b = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #67 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordData$GT$17hea090100cbb8307fE"(ptr noalias noundef align 8 dereferenceable(88) %0) #75
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @386, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 144115188075855873, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint11patch_field17h05ffcf8592eefdf0E(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !41
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !18816 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %cond.i = icmp eq i64 %i.d, 6
  br i1 %cond.i, label %bb.c, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !18816, !nonnull !41, !noundef !41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !18817, !noundef !41
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.f, align 8, !noalias !18817
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i" unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #73, !noalias !18817
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.f, align 8, !noalias !18818, !noundef !41
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.f, align 8, !noalias !18818
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i": ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !noalias !18818, !noundef !41
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.f, align 8, !noalias !18818
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit

_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit: ; preds = %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i", %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !41 ; 2 uses
  %.idx = mul nuw nsw i64 %i.r, 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit5
  %.sroa.01.02 = phi ptr [ %i.u, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit5 ], [ %i.p, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 160 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 152
  %i.w = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v), !noalias !18819 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %cond.i2 = icmp eq i64 %i.x, 6
  br i1 %cond.i2, label %bb.g, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit5

bb.g:                                             ; preds = %.lr.ph
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %.val.i3 = load ptr, ptr %i.y, align 8, !noalias !18819, !nonnull !41, !noundef !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i3, i64 16 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !18820, !noundef !41
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !48

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.z, align 8, !noalias !18820
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i3, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4" unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #73, !noalias !18820
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i64, ptr %i.z, align 8, !noalias !18821, !noundef !41
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.z, align 8, !noalias !18821
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4": ; preds = %bb.h
  %i.ag = load i64, ptr %i.z, align 8, !noalias !18821, !noundef !41
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.z, align 8, !noalias !18821
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit5

_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit5: ; preds = %.lr.ph, %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4"
  %i.ai = icmp eq ptr %i.u, %i.s
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit5, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17ha7f21a6465645123E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint6revert17h22de3028d3609bc9E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.08.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 22 uses
  %i.h = alloca [96 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.m = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.m, label %bb.b, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !41, !noundef !41
  %i.n = shl i64 %.sroa.5.0.copyload, 3
  %i.o = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %i.o)
  %i.p = and i64 %i.n, -16                        ; 2 uses
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add nsw i64 %.sroa.5.0.copyload, 17
  %i.s = add i64 %i.r, %i.q                       ; 3 uses
  %i.t = icmp uge i64 %i.s, %i.q
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ult i64 %i.s, 9223372036854775793
  tail call void @llvm.assume(i1 %i.u)
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op117h8dfea6432deaf93bE":bb.a

._crit_edge3501:                                  ; preds = %bb.arf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  store ptr %i.cgs, ptr %0, align 8
  %.sroa.4468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cgt, ptr %.sroa.4468.0..sroa_idx, align 8
  %.sroa.5469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.5469.0..sroa_idx, align 8
  br label %.thread2776

bb.arh:                                           ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %.thread2776

bb.ari:                                           ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %.thread2776

bb.arj:                                           ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %.thread2776

bb.ark:                                           ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %.thread2776

bb.arl:                                           ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %.thread2776

bb.arm:                                           ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread2776

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit1842": ; preds = %bb.ars, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i1836", %bb.art, %.thread2776, %bb.bw
  %.sroa.0516.22772 = phi i8 [ %.sroa.0516.2.ph2775, %.thread2776 ], [ %.sroa.0516.2, %bb.bw ], [ %.sroa.0516.22773, %bb.art ], [ %.sroa.0516.22773, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i1836" ], [ %.sroa.0516.22773, %bb.ars ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.px)
  %i.cgx = trunc nuw i8 %.sroa.0516.22772 to i1
  br i1 %i.cgx, label %bb.arv, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1846"

bb.arn:                                           ; preds = %.thread2769, %bb.bw
  %.sroa.0516.22773 = phi i8 [ %.sroa.0516.2.ph, %.thread2769 ], [ %.sroa.0516.2, %bb.bw ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20611)
  call void @llvm.experimental.noalias.scope.decl(metadata !20612)
  call void @llvm.experimental.noalias.scope.decl(metadata !20613)
  %i.cgy = load ptr, ptr %i.px, align 16, !alias.scope !20614, !nonnull !41, !noundef !41 ; 2 uses
  %i.cgz = load i64, ptr %i.cgy, align 8, !noalias !20614, !noundef !41
  %i.cha = add i64 %i.cgz, -1                     ; 2 uses
  store i64 %i.cha, ptr %i.cgy, align 8, !noalias !20614
  %i.chb = icmp eq i64 %i.cha, 0
  br i1 %i.chb, label %bb.aro, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i1836"

bb.aro:                                           ; preds = %bb.arn
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.px)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i1836" unwind label %bb.arp

bb.arp:                                           ; preds = %bb.aro
  %i.chc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20615)
  %i.chd = load ptr, ptr %i.qe, align 8, !alias.scope !20616, !noundef !41 ; 3 uses
  %i.che = icmp eq ptr %i.chd, null
  br i1 %i.che, label %.body1833, label %bb.arq

bb.arq:                                           ; preds = %bb.arp
  %i.chf = load i64, ptr %i.chd, align 8, !noalias !20617, !noundef !41
  %i.chg = add i64 %i.chf, -1                     ; 2 uses
  store i64 %i.chg, ptr %i.chd, align 8, !noalias !20617
  %i.chh = icmp eq i64 %i.chg, 0
  br i1 %i.chh, label %bb.arr, label %.body1833

bb.arr:                                           ; preds = %bb.arq
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qe)
          to label %.body1833 unwind label %bb.aru

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i1836": ; preds = %bb.aro, %bb.arn
  call void @llvm.experimental.noalias.scope.decl(metadata !20618)
  %i.chi = load ptr, ptr %i.qe, align 8, !alias.scope !20619, !noundef !41 ; 3 uses
  %i.chj = icmp eq ptr %i.chi, null
  br i1 %i.chj, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit1842", label %bb.ars

bb.ars:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i1836"
  %i.chk = load i64, ptr %i.chi, align 8, !noalias !20620, !noundef !41
  %i.chl = add i64 %i.chk, -1                     ; 2 uses
  store i64 %i.chl, ptr %i.chi, align 8, !noalias !20620
  %i.chm = icmp eq i64 %i.chl, 0
  br i1 %i.chm, label %bb.art, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit1842"

bb.art:                                           ; preds = %bb.ars
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qe)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit1842" unwind label %bb.aqx

bb.aru:                                           ; preds = %bb.arr
  %i.chn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.arv:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit1842"
  %i.cho = ptrtoint ptr %i.qc to i64
  %i.chp = and i64 %i.cho, 3
  %..i.i1844 = call i64 @llvm.umin.i64(i64 %i.chp, i64 2)
  switch i64 %..i.i1844, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1846" [
    i64 2, label %bb.arw
    i64 0, label %bb.arx
  ], !prof !51

bb.arw:                                           ; preds = %bb.arv
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73, !noalias !20621
  unreachable

bb.arx:                                           ; preds = %bb.arv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20621
  store ptr %i.qc, ptr %i.c, align 8, !noalias !20621
  %i.chq = load i64, ptr %i.qc, align 8, !noalias !20622, !noundef !41 ; 3 uses
  %i.chr = and i64 %i.chq, 72057594037927935
  %i.chs = add nsw i64 %i.chr, -1                 ; 3 uses
  %i.cht = and i64 %i.chq, 1080863910568919040
  %i.chu = icmp ult i64 %i.chq, 864691128455135232
  call void @llvm.assume(i1 %i.chu)
  %i.chv = or i64 %i.chs, %i.cht
  store i64 %i.chv, ptr %i.qc, align 8, !noalias !20622
  %i.chw = icmp ugt i64 %i.chs, 72057594037927935
  br i1 %i.chw, label %bb.arz, label %bb.ary, !prof !44

bb.ary:                                           ; preds = %bb.arx
  %i.chx = icmp eq i64 %i.chs, 0
  br i1 %i.chx, label %bb.asa, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1845"

bb.arz:                                           ; preds = %bb.arx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20622
  store ptr @2427, ptr %i.b, align 8, !noalias !20622
  %i.chy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.chy, align 8, !noalias !20622
  %i.chz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.chz, align 8, !noalias !20622
  %i.cia = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cia, align 8, !noalias !20622
  %i.cib = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cib, align 8, !noalias !20622
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73, !noalias !20622
  unreachable

bb.asa:                                           ; preds = %bb.ary
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !20621
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1845"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1845": ; preds = %bb.asa, %bb.ary
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20621
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1846"

bb.asb:                                           ; preds = %.invoke3493, %bb.ase, %bb.asd, %bb.asc, %.critedge969.thread
  br i1 %.sroa.0513.02328, label %bb.asf, label %bb.aqw

.critedge969.thread:                              ; preds = %bb.im, %bb.akh, %.thread2922.thread, %bb.bo, %bb.aqj, %bb.aqi, %bb.apz, %bb.apy, %bb.apd, %bb.aoo, %bb.aon, %bb.aoe, %bb.aod, %bb.anp, %bb.ano, %bb.anf, %bb.amq, %bb.amp, %bb.ame, %bb.amd, %bb.aly, %bb.alg, %bb.alf, %bb.aku, %bb.akt, %bb.ajt, %bb.ajs, %bb.ajp, %bb.ajo, %bb.ajq, %bb.ajl, %bb.aiv, %bb.ais, %.thread3205, %bb.ahp, %bb.aho, %bb.ahq, %.thread3181, %bb.adj, %bb.adi, %bb.acs, %bb.acr, %bb.acb, %bb.aca, %bb.abk, %bb.abj, %bb.aax, %bb.aaw, %bb.aaa, %bb.zz, %bb.zl, %bb.zk, %bb.yy, %bb.yx, %bb.yl, %bb.yk, %bb.xy, %bb.xx, %bb.xl, %bb.xk, %.thread3120, %bb.wo, %bb.wn, %bb.si, %.thread3043, %bb.rw, %bb.rv, %bb.pt, %bb.ps, %.thread2990, %bb.pe, %bb.pd, %.thread2983, %bb.op, %bb.oo, %.thread2976, %bb.oa, %bb.nz, %.thread2969, %bb.nl, %bb.nk, %bb.my, %bb.mx, %bb.jn, %.thread2864, %bb.ix, %bb.iw, %bb.hp, %bb.ho, %bb.fn, %bb.fm, %bb.fb, %bb.fa, %bb.el, %bb.ek, %bb.cb, %bb.ca, %.thread2922, %bb.fw, %.thread3259, %bb.anm, %bb.amb, %bb.ain, %bb.aja, %bb.aii, %.body1123, %.body1126, %.body1129, %bb.xh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706", %bb.tq, %bb.pq, %bb.pb, %bb.om, %bb.nx, %bb.arg, %bb.md, %bb.mo, %bb.ml, %bb.kl, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit", %bb.jc, %bb.hj, %bb.hf, %bb.eu, %.body1485, %.body1497, %bb.bx, %.critedge969.thread2750, %.critedge969.thread2741, %.critedge969.thread2733, %.critedge969.thread2725, %.critedge969.thread2717, %.critedge969.thread2709, %.critedge969.thread2701, %.critedge969.thread2693, %.critedge969.thread2685, %.critedge969.thread2677, %.critedge969.thread2669, %.critedge969.thread2661, %.critedge969.thread2653, %.critedge969.thread2645, %.critedge969.thread2637, %.critedge969.thread2629, %.critedge969.thread2621, %.critedge969.thread2613, %.critedge969.thread2605, %.critedge969.thread2597, %.critedge969.thread2589, %.critedge969.thread2581, %.critedge969.thread2573, %.critedge969.thread2565, %.critedge969.thread2557, %.critedge969.thread2549, %.critedge969.thread2541, %.critedge969.thread2533, %.critedge969.thread2525, %.critedge969.thread2517, %.critedge969.thread2509, %.critedge969.thread2501, %.critedge969.thread2493, %.critedge969.thread2485, %.critedge969.thread2477, %.critedge969.thread2469, %.critedge969.thread2461, %.critedge969.thread2453, %.critedge969.thread2445, %.critedge969.thread2437, %.critedge969.thread2429, %.critedge969.thread2421, %.critedge969.thread2413, %.critedge969.thread2405, %.critedge969.thread2397, %.critedge969.thread2389, %.critedge969.thread2381, %.critedge969.thread2373, %.critedge969.thread2365, %.critedge969.thread2357, %.critedge969.thread2349, %.critedge969.thread2341, %.critedge969.thread2333
  %.sroa.226.02332 = phi i32 [ %i.um, %.critedge969.thread2741 ], [ %i.ql, %.critedge969.thread2750 ], [ %i.cfh, %.critedge969.thread2333 ], [ %i.ceq, %.critedge969.thread2341 ], [ %i.ccb, %.critedge969.thread2349 ], [ %i.cbe, %.critedge969.thread2357 ], [ %i.cak, %.critedge969.thread2365 ], [ %i.bzj, %.critedge969.thread2373 ], [ %i.byx, %.critedge969.thread2381 ], [ %i.byg, %.critedge969.thread2389 ], [ %i.bxj, %.critedge969.thread2397 ], [ %i.bwz, %.critedge969.thread2405 ], [ %i.bvx, %.critedge969.thread2413 ], [ %i.bvb, %.critedge969.thread2421 ], [ %i.btp, %.critedge969.thread2429 ], [ %i.bpr, %.critedge969.thread2437 ], [ %i.bjz, %.critedge969.thread2445 ], [ %i.biv, %.critedge969.thread2453 ], [ %i.bhr, %.critedge969.thread2461 ], [ %i.bgn, %.critedge969.thread2469 ], [ %i.bfx, %.critedge969.thread2477 ], [ %i.beu, %.critedge969.thread2485 ], [ %i.bdt, %.critedge969.thread2493 ], [ %i.bcz, %.critedge969.thread2501 ], [ %i.bcf, %.critedge969.thread2509 ], [ %i.bbn, %.critedge969.thread2517 ], [ %i.baq, %.critedge969.thread2525 ], [ %i.azn, %.critedge969.thread2533 ], [ %i.ayu, %.critedge969.thread2541 ], [ %i.arw, %.critedge969.thread2549 ], [ %i.arm, %.critedge969.thread2557 ], [ %i.aqs, %.critedge969.thread2565 ], [ %i.aqb, %.critedge969.thread2573 ], [ %i.aon, %.critedge969.thread2581 ], [ %i.aod, %.critedge969.thread2589 ], [ %i.ani, %.critedge969.thread2597 ], [ %i.amn, %.critedge969.thread2605 ], [ %i.als, %.critedge969.thread2613 ], [ %i.akx, %.critedge969.thread2621 ], [ %i.akd, %.critedge969.thread2629 ], [ %i.agh, %.critedge969.thread2637 ], [ %i.aez, %.critedge969.thread2645 ], [ %i.aej, %.critedge969.thread2653 ], [ %i.adr, %.critedge969.thread2661 ], [ %i.acu, %.critedge969.thread2669 ], [ %i.ack, %.critedge969.thread2677 ], [ %i.abu, %.critedge969.thread2685 ], [ %i.ze, %.critedge969.thread2693 ], [ %i.yn, %.critedge969.thread2701 ], [ %i.xz, %.critedge969.thread2709 ], [ %i.xm, %.critedge969.thread2717 ], [ %i.ww, %.critedge969.thread2725 ], [ %i.vv, %.critedge969.thread2733 ], [ %.sroa.226.24, %bb.ajl ], [ %.sroa.226.6, %bb.jn ], [ %.sroa.226.7, %.thread2922 ], [ %.sroa.226.10, %bb.si ], [ %.sroa.226.3, %bb.fw ], [ %.sroa.226.26, %bb.apd ], [ %.sroa.226.263266, %.thread3259 ], [ %i.cau, %bb.aoe ], [ %i.caa, %bb.anp ], [ %i.byn, %bb.amq ], [ %i.bzn, %bb.anf ], [ %i.bzx, %bb.anm ], [ %i.bxw, %bb.ame ], [ %i.bwp, %bb.alg ], [ %i.bxn, %bb.aly ], [ %i.bxt, %bb.amb ], [ %i.bvn, %bb.aku ], [ %i.btf, %bb.ajt ], [ %.sroa.226.25, %bb.akh ], [ %.sroa.226.243229, %bb.ajp ], [ %.sroa.226.21, %bb.aho ], [ %.sroa.226.21, %bb.ahq ], [ %i.brf, %bb.ain ], [ %i.brq, %bb.ais ], [ %.sroa.226.21, %bb.ahp ], [ %i.brv, %bb.aiv ], [ %i.bsd, %bb.aja ], [ %.sroa.226.223208, %.thread3205 ], [ %.sroa.226.22, %bb.aii ], [ %.sroa.226.213184, %.thread3181 ], [ %i.bjm, %bb.adj ], [ %.sroa.226.20, %.body1123 ], [ %.sroa.226.18, %.body1126 ], [ %.sroa.226.17, %.body1129 ], [ %i.bii, %bb.acs ], [ %i.bhe, %bb.acb ], [ %i.bgd, %bb.abk ], [ %i.bfn, %bb.aax ], [ %i.bek, %bb.aaa ], [ %i.bdj, %bb.zl ], [ %i.bcp, %bb.yy ], [ %i.bbv, %bb.yl ], [ %i.bbd, %bb.xy ], [ %i.bag, %bb.xl ], [ %i.ayk, %bb.wo ], [ %i.azt, %.thread3120 ], [ %i.bac, %bb.xh ], [ %i.arc, %bb.rw ], [ %.sroa.226.113083, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706" ], [ %.sroa.226.73303, %.thread2922.thread ], [ %.sroa.226.103047, %.thread3043 ], [ %.sroa.226.103041, %bb.tq ], [ %i.ant, %bb.pt ], [ %i.amy, %bb.pe ], [ %i.anm, %.thread2990 ], [ %i.anq, %bb.pq ], [ %i.amd, %bb.op ], [ %i.amr, %.thread2983 ], [ %i.amv, %bb.pb ], [ %i.ali, %bb.oa ], [ %i.alw, %.thread2976 ], [ %i.ama, %bb.om ], [ %i.akn, %bb.nl ], [ %i.alb, %.thread2969 ], [ %i.alf, %bb.nx ], [ %i.ajt, %bb.my ], [ %i.adv, %bb.iw ], [ %i.cgw, %bb.arg ], [ %i.ais, %bb.md ], [ %i.adv, %bb.ix ], [ %.sroa.226.72913, %bb.mo ], [ %i.ceg, %bb.apz ], [ %i.ajh, %bb.ml ], [ %.sroa.226.62868, %.thread2864 ], [ %.sroa.226.62862, %bb.kl ], [ %i.yu, %bb.fm ], [ %i.abz, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit" ], [ %i.abk, %bb.hp ], [ %.sroa.226.5, %bb.im ], [ %i.aem, %bb.jc ], [ %i.yu, %bb.fn ], [ %.sroa.226.32807, %bb.hj ], [ %i.cbr, %bb.aoo ], [ %i.aba, %bb.hf ], [ %i.yd, %bb.fb ], [ %i.xc, %bb.el ], [ %i.xs, %bb.eu ], [ %i.uc, %bb.cb ], [ %.sroa.226.2, %.body1485 ], [ %.sroa.226.1, %.body1497 ], [ %i.ty, %bb.bx ], [ %i.tu, %bb.bo ], [ %i.uc, %bb.ca ], [ %i.xc, %bb.ek ], [ %i.yd, %bb.fa ], [ %i.abk, %bb.ho ], [ %i.ajt, %bb.mx ], [ %i.akn, %bb.nk ], [ %i.ali, %bb.nz ], [ %i.amd, %bb.oo ], [ %i.amy, %bb.pd ], [ %i.ant, %bb.ps ], [ %i.arc, %bb.rv ], [ %i.ayk, %bb.wn ], [ %i.bag, %bb.xk ], [ %i.bbd, %bb.xx ], [ %i.bbv, %bb.yk ], [ %i.bcp, %bb.yx ], [ %i.bdj, %bb.zk ], [ %i.bek, %bb.zz ], [ %i.bfn, %bb.aaw ], [ %i.bgd, %bb.abj ], [ %i.bhe, %bb.aca ], [ %i.bii, %bb.acr ], [ %i.bjm, %bb.adi ], [ %.sroa.226.243229, %bb.ajq ], [ %.sroa.226.243229, %bb.ajo ], [ %i.btf, %bb.ajs ], [ %i.bvn, %bb.akt ], [ %i.bwp, %bb.alf ], [ %i.bxw, %bb.amd ], [ %i.byn, %bb.amp ], [ %i.caa, %bb.ano ], [ %i.cau, %bb.aod ], [ %i.cbr, %bb.aon ], [ %i.ceg, %bb.apy ], [ %i.cex, %bb.aqi ], [ %i.cex, %bb.aqj ] ; 2 uses
  %.sroa.0782.02330 = phi ptr [ %i.ul, %.critedge969.thread2741 ], [ %i.qk, %.critedge969.thread2750 ], [ %i.cfg, %.critedge969.thread2333 ], [ %i.cep, %.critedge969.thread2341 ], [ %i.cca, %.critedge969.thread2349 ], [ %i.cbd, %.critedge969.thread2357 ], [ %i.caj, %.critedge969.thread2365 ], [ %i.bzi, %.critedge969.thread2373 ], [ %i.byw, %.critedge969.thread2381 ], [ %i.byf, %.critedge969.thread2389 ], [ %i.bxi, %.critedge969.thread2397 ], [ %i.bwy, %.critedge969.thread2405 ], [ %i.bvw, %.critedge969.thread2413 ], [ %i.bva, %.critedge969.thread2421 ], [ %i.bto, %.critedge969.thread2429 ], [ %i.bpq, %.critedge969.thread2437 ], [ %i.bjy, %.critedge969.thread2445 ], [ %i.biu, %.critedge969.thread2453 ], [ %i.bhq, %.critedge969.thread2461 ], [ %i.bgm, %.critedge969.thread2469 ], [ %i.bfw, %.critedge969.thread2477 ], [ %i.bet, %.critedge969.thread2485 ], [ %i.bds, %.critedge969.thread2493 ], [ %i.bcy, %.critedge969.thread2501 ], [ %i.bce, %.critedge969.thread2509 ], [ %i.bbm, %.critedge969.thread2517 ], [ %i.bap, %.critedge969.thread2525 ], [ %i.azm, %.critedge969.thread2533 ], [ %i.ayt, %.critedge969.thread2541 ], [ %i.arv, %.critedge969.thread2549 ], [ %i.arl, %.critedge969.thread2557 ], [ %i.aqr, %.critedge969.thread2565 ], [ %i.aqa, %.critedge969.thread2573 ], [ %i.aom, %.critedge969.thread2581 ], [ %i.aoc, %.critedge969.thread2589 ], [ %i.anh, %.critedge969.thread2597 ], [ %i.amm, %.critedge969.thread2605 ], [ %i.alr, %.critedge969.thread2613 ], [ %i.akw, %.critedge969.thread2621 ], [ %i.akc, %.critedge969.thread2629 ], [ %i.agg, %.critedge969.thread2637 ], [ %i.aey, %.critedge969.thread2645 ], [ %i.aei, %.critedge969.thread2653 ], [ %i.adq, %.critedge969.thread2661 ], [ %i.act, %.critedge969.thread2669 ], [ %i.acj, %.critedge969.thread2677 ], [ %i.abt, %.critedge969.thread2685 ], [ %i.zd, %.critedge969.thread2693 ], [ %i.ym, %.critedge969.thread2701 ], [ %i.xy, %.critedge969.thread2709 ], [ %i.xl, %.critedge969.thread2717 ], [ %i.wv, %.critedge969.thread2725 ], [ %i.vu, %.critedge969.thread2733 ], [ %.sroa.0782.24, %bb.ajl ], [ %.sroa.0782.6, %bb.jn ], [ %.sroa.0782.7, %.thread2922 ], [ %.sroa.0782.10, %bb.si ], [ %.sroa.0782.3, %bb.fw ], [ %.sroa.0782.26, %bb.apd ], [ %.sroa.0782.263267, %.thread3259 ], [ %i.cat, %bb.aoe ], [ %i.bzz, %bb.anp ], [ %i.bym, %bb.amq ], [ %i.bzm, %bb.anf ], [ %i.bzw, %bb.anm ], [ %i.bxv, %bb.ame ], [ %i.bwo, %bb.alg ], [ %i.bxm, %bb.aly ], [ %i.bxs, %bb.amb ], [ %i.bvm, %bb.aku ], [ %i.bte, %bb.ajt ], [ %.sroa.0782.25, %bb.akh ], [ %.sroa.0782.243230, %bb.ajp ], [ %.sroa.0782.21, %bb.aho ], [ %.sroa.0782.21, %bb.ahq ], [ %i.bre, %bb.ain ], [ %i.brp, %bb.ais ], [ %.sroa.0782.21, %bb.ahp ], [ %i.bru, %bb.aiv ], [ %i.bsc, %bb.aja ], [ %.sroa.0782.223209, %.thread3205 ], [ %.sroa.0782.22, %bb.aii ], [ %.sroa.0782.213185, %.thread3181 ], [ %i.bjl, %bb.adj ], [ %.sroa.0782.20, %.body1123 ], [ %.sroa.0782.18, %.body1126 ], [ %.sroa.0782.17, %.body1129 ], [ %i.bih, %bb.acs ], [ %i.bhd, %bb.acb ], [ %i.bgc, %bb.abk ], [ %i.bfm, %bb.aax ], [ %i.bej, %bb.aaa ], [ %i.bdi, %bb.zl ], [ %i.bco, %bb.yy ], [ %i.bbu, %bb.yl ], [ %i.bbc, %bb.xy ], [ %i.baf, %bb.xl ], [ %i.ayj, %bb.wo ], [ %i.azs, %.thread3120 ], [ %i.bab, %bb.xh ], [ %i.arb, %bb.rw ], [ %.sroa.0782.113085, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706" ], [ %.sroa.0782.73304, %.thread2922.thread ], [ %.sroa.0782.103048, %.thread3043 ], [ %.sroa.0782.103042, %bb.tq ], [ %i.ans, %bb.pt ], [ %i.amx, %bb.pe ], [ %i.anl, %.thread2990 ], [ %i.anp, %bb.pq ], [ %i.amc, %bb.op ], [ %i.amq, %.thread2983 ], [ %i.amu, %bb.pb ], [ %i.alh, %bb.oa ], [ %i.alv, %.thread2976 ], [ %i.alz, %bb.om ], [ %i.akm, %bb.nl ], [ %i.ala, %.thread2969 ], [ %i.ale, %bb.nx ], [ %i.ajs, %bb.my ], [ %i.adu, %bb.iw ], [ %i.cgv, %bb.arg ], [ %i.ait, %bb.md ], [ %i.adu, %bb.ix ], [ %.sroa.0782.72914, %bb.mo ], [ %i.cef, %bb.apz ], [ %i.aji, %bb.ml ], [ %.sroa.0782.62869, %.thread2864 ], [ %.sroa.0782.62863, %bb.kl ], [ %i.yt, %bb.fm ], [ %i.aby, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit" ], [ %i.abj, %bb.hp ], [ %.sroa.0782.5, %bb.im ], [ %i.ael, %bb.jc ], [ %i.yt, %bb.fn ], [ %.sroa.0782.32808, %bb.hj ], [ %i.cbq, %bb.aoo ], [ %i.abb, %bb.hf ], [ %i.yc, %bb.fb ], [ %i.xb, %bb.el ], [ %i.xr, %bb.eu ], [ %i.ub, %bb.cb ], [ %.sroa.0782.2, %.body1485 ], [ %.sroa.0782.1, %.body1497 ], [ %i.tx, %bb.bx ], [ %i.tt, %bb.bo ], [ %i.ub, %bb.ca ], [ %i.xb, %bb.ek ], [ %i.yc, %bb.fa ], [ %i.abj, %bb.ho ], [ %i.ajs, %bb.mx ], [ %i.akm, %bb.nk ], [ %i.alh, %bb.nz ], [ %i.amc, %bb.oo ], [ %i.amx, %bb.pd ], [ %i.ans, %bb.ps ], [ %i.arb, %bb.rv ], [ %i.ayj, %bb.wn ], [ %i.baf, %bb.xk ], [ %i.bbc, %bb.xx ], [ %i.bbu, %bb.yk ], [ %i.bco, %bb.yx ], [ %i.bdi, %bb.zk ], [ %i.bej, %bb.zz ], [ %i.bfm, %bb.aaw ], [ %i.bgc, %bb.abj ], [ %i.bhd, %bb.aca ], [ %i.bih, %bb.acr ], [ %i.bjl, %bb.adi ], [ %.sroa.0782.243230, %bb.ajq ], [ %.sroa.0782.243230, %bb.ajo ], [ %i.bte, %bb.ajs ], [ %i.bvm, %bb.akt ], [ %i.bwo, %bb.alf ], [ %i.bxv, %bb.amd ], [ %i.bym, %bb.amp ], [ %i.bzz, %bb.ano ], [ %i.cat, %bb.aod ], [ %i.cbq, %bb.aon ], [ %i.cef, %bb.apy ], [ %i.cew, %bb.aqi ], [ %i.cew, %bb.aqj ] ; 2 uses
  %.sroa.0513.02328 = phi i1 [ true, %.critedge969.thread2741 ], [ %.sroa.0513.1.ph, %.critedge969.thread2750 ], [ true, %.critedge969.thread2333 ], [ true, %.critedge969.thread2341 ], [ true, %.critedge969.thread2349 ], [ true, %.critedge969.thread2357 ], [ true, %.critedge969.thread2365 ], [ true, %.critedge969.thread2373 ], [ true, %.critedge969.thread2381 ], [ true, %.critedge969.thread2389 ], [ true, %.critedge969.thread2397 ], [ true, %.critedge969.thread2405 ], [ true, %.critedge969.thread2413 ], [ true, %.critedge969.thread2421 ], [ true, %.critedge969.thread2429 ], [ true, %.critedge969.thread2437 ], [ true, %.critedge969.thread2445 ], [ true, %.critedge969.thread2453 ], [ true, %.critedge969.thread2461 ], [ true, %.critedge969.thread2469 ], [ true, %.critedge969.thread2477 ], [ true, %.critedge969.thread2485 ], [ true, %.critedge969.thread2493 ], [ true, %.critedge969.thread2501 ], [ true, %.critedge969.thread2509 ], [ true, %.critedge969.thread2517 ], [ true, %.critedge969.thread2525 ], [ true, %.critedge969.thread2533 ], [ true, %.critedge969.thread2541 ], [ true, %.critedge969.thread2549 ], [ true, %.critedge969.thread2557 ], [ true, %.critedge969.thread2565 ], [ true, %.critedge969.thread2573 ], [ true, %.critedge969.thread2581 ], [ true, %.critedge969.thread2589 ], [ true, %.critedge969.thread2597 ], [ true, %.critedge969.thread2605 ], [ true, %.critedge969.thread2613 ], [ true, %.critedge969.thread2621 ], [ true, %.critedge969.thread2629 ], [ true, %.critedge969.thread2637 ], [ true, %.critedge969.thread2645 ], [ true, %.critedge969.thread2653 ], [ true, %.critedge969.thread2661 ], [ true, %.critedge969.thread2669 ], [ true, %.critedge969.thread2677 ], [ true, %.critedge969.thread2685 ], [ true, %.critedge969.thread2693 ], [ true, %.critedge969.thread2701 ], [ true, %.critedge969.thread2709 ], [ true, %.critedge969.thread2717 ], [ true, %.critedge969.thread2725 ], [ true, %.critedge969.thread2733 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2922 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3259 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3205 ], [ true, %bb.aii ], [ true, %.thread3181 ], [ true, %bb.adj ], [ true, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3120 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706" ], [ true, %.thread2922.thread ], [ true, %.thread3043 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2990 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2983 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2976 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2969 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ false, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2864 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0516.02326 = phi i8 [ 0, %.critedge969.thread2741 ], [ %.sroa.0516.1.ph, %.critedge969.thread2750 ], [ 0, %.critedge969.thread2333 ], [ 0, %.critedge969.thread2341 ], [ 0, %.critedge969.thread2349 ], [ 0, %.critedge969.thread2357 ], [ 0, %.critedge969.thread2365 ], [ 1, %.critedge969.thread2373 ], [ 0, %.critedge969.thread2381 ], [ 0, %.critedge969.thread2389 ], [ 1, %.critedge969.thread2397 ], [ 0, %.critedge969.thread2405 ], [ 0, %.critedge969.thread2413 ], [ 1, %.critedge969.thread2421 ], [ 0, %.critedge969.thread2429 ], [ 1, %.critedge969.thread2437 ], [ 0, %.critedge969.thread2445 ], [ 0, %.critedge969.thread2453 ], [ 0, %.critedge969.thread2461 ], [ 0, %.critedge969.thread2469 ], [ 0, %.critedge969.thread2477 ], [ 0, %.critedge969.thread2485 ], [ 0, %.critedge969.thread2493 ], [ 0, %.critedge969.thread2501 ], [ 0, %.critedge969.thread2509 ], [ 0, %.critedge969.thread2517 ], [ 0, %.critedge969.thread2525 ], [ 1, %.critedge969.thread2533 ], [ 0, %.critedge969.thread2541 ], [ 1, %.critedge969.thread2549 ], [ 0, %.critedge969.thread2557 ], [ 1, %.critedge969.thread2565 ], [ 1, %.critedge969.thread2573 ], [ 1, %.critedge969.thread2581 ], [ 0, %.critedge969.thread2589 ], [ 0, %.critedge969.thread2597 ], [ 0, %.critedge969.thread2605 ], [ 0, %.critedge969.thread2613 ], [ 0, %.critedge969.thread2621 ], [ 0, %.critedge969.thread2629 ], [ 1, %.critedge969.thread2637 ], [ 1, %.critedge969.thread2645 ], [ 1, %.critedge969.thread2653 ], [ 1, %.critedge969.thread2661 ], [ 1, %.critedge969.thread2669 ], [ 1, %.critedge969.thread2677 ], [ 0, %.critedge969.thread2685 ], [ 0, %.critedge969.thread2693 ], [ 0, %.critedge969.thread2701 ], [ 1, %.critedge969.thread2709 ], [ 0, %.critedge969.thread2717 ], [ 1, %.critedge969.thread2725 ], [ 1, %.critedge969.thread2733 ], [ 1, %bb.ajl ], [ 1, %bb.jn ], [ 1, %.thread2922 ], [ 1, %bb.si ], [ 1, %bb.fw ], [ 1, %bb.apd ], [ %.sroa.0516.423265, %.thread3259 ], [ 1, %bb.aoe ], [ 1, %bb.anp ], [ 1, %bb.amq ], [ 1, %bb.anf ], [ 1, %bb.anm ], [ 1, %bb.ame ], [ 1, %bb.alg ], [ 1, %bb.aly ], [ 1, %bb.amb ], [ 1, %bb.aku ], [ 1, %bb.ajt ], [ 1, %bb.akh ], [ 1, %bb.ajp ], [ 1, %bb.aho ], [ 1, %bb.ahq ], [ 1, %bb.ain ], [ 1, %bb.ais ], [ 1, %bb.ahp ], [ 1, %bb.aiv ], [ 1, %bb.aja ], [ 1, %.thread3205 ], [ 1, %bb.aii ], [ 1, %.thread3181 ], [ 1, %bb.adj ], [ %.sroa.0516.35, %.body1123 ], [ %.sroa.0516.32, %.body1126 ], [ %.sroa.0516.29, %.body1129 ], [ 1, %bb.acs ], [ 1, %bb.acb ], [ 1, %bb.abk ], [ 1, %bb.aax ], [ 1, %bb.aaa ], [ 1, %bb.zl ], [ 1, %bb.yy ], [ 1, %bb.yl ], [ 1, %bb.xy ], [ 1, %bb.xl ], [ 1, %bb.wo ], [ 1, %.thread3120 ], [ 1, %bb.xh ], [ 1, %bb.rw ], [ %.sroa.0516.263081, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706" ], [ 1, %.thread2922.thread ], [ 1, %.thread3043 ], [ %.sroa.0516.233040, %bb.tq ], [ 1, %bb.pt ], [ 1, %bb.pe ], [ 1, %.thread2990 ], [ 1, %bb.pq ], [ 1, %bb.op ], [ 1, %.thread2983 ], [ 1, %bb.pb ], [ 1, %bb.oa ], [ 1, %.thread2976 ], [ 1, %bb.om ], [ 1, %bb.nl ], [ 1, %.thread2969 ], [ 1, %bb.nx ], [ 1, %bb.my ], [ 1, %bb.iw ], [ 0, %bb.arg ], [ 0, %bb.md ], [ 1, %bb.ix ], [ %.sroa.0516.192911, %bb.mo ], [ 1, %bb.apz ], [ %.sroa.0516.222961, %bb.ml ], [ 1, %.thread2864 ], [ %.sroa.0516.162861, %bb.kl ], [ 1, %bb.fm ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit" ], [ 1, %bb.hp ], [ 1, %bb.im ], [ 1, %bb.jc ], [ 1, %bb.fn ], [ %.sroa.0516.112805, %bb.hj ], [ 1, %bb.aoo ], [ %.sroa.0516.14.ph, %bb.hf ], [ 1, %bb.fb ], [ 1, %bb.el ], [ 1, %bb.eu ], [ 1, %bb.cb ], [ %.sroa.0516.6, %.body1485 ], [ %.sroa.0516.3, %.body1497 ], [ 1, %bb.bx ], [ 1, %bb.bo ], [ 1, %bb.ca ], [ 1, %bb.ek ], [ 1, %bb.fa ], [ 1, %bb.ho ], [ 1, %bb.mx ], [ 1, %bb.nk ], [ 1, %bb.nz ], [ 1, %bb.oo ], [ 1, %bb.pd ], [ 1, %bb.ps ], [ 1, %bb.rv ], [ 1, %bb.wn ], [ 1, %bb.xk ], [ 1, %bb.xx ], [ 1, %bb.yk ], [ 1, %bb.yx ], [ 1, %bb.zk ], [ 1, %bb.zz ], [ 1, %bb.aaw ], [ 1, %bb.abj ], [ 1, %bb.aca ], [ 1, %bb.acr ], [ 1, %bb.adi ], [ 1, %bb.ajq ], [ 1, %bb.ajo ], [ 1, %bb.ajs ], [ 1, %bb.akt ], [ 1, %bb.alf ], [ 1, %bb.amd ], [ 1, %bb.amp ], [ 1, %bb.ano ], [ 1, %bb.aod ], [ 1, %bb.aon ], [ 1, %bb.apy ], [ 1, %bb.aqi ], [ 1, %bb.aqj ] ; 2 uses
  %.sroa.0552.02324 = phi i1 [ true, %.critedge969.thread2741 ], [ %.sroa.0552.1.ph, %.critedge969.thread2750 ], [ true, %.critedge969.thread2333 ], [ true, %.critedge969.thread2341 ], [ true, %.critedge969.thread2349 ], [ true, %.critedge969.thread2357 ], [ true, %.critedge969.thread2365 ], [ true, %.critedge969.thread2373 ], [ true, %.critedge969.thread2381 ], [ true, %.critedge969.thread2389 ], [ true, %.critedge969.thread2397 ], [ true, %.critedge969.thread2405 ], [ true, %.critedge969.thread2413 ], [ true, %.critedge969.thread2421 ], [ true, %.critedge969.thread2429 ], [ true, %.critedge969.thread2437 ], [ true, %.critedge969.thread2445 ], [ true, %.critedge969.thread2453 ], [ true, %.critedge969.thread2461 ], [ true, %.critedge969.thread2469 ], [ true, %.critedge969.thread2477 ], [ true, %.critedge969.thread2485 ], [ true, %.critedge969.thread2493 ], [ true, %.critedge969.thread2501 ], [ true, %.critedge969.thread2509 ], [ true, %.critedge969.thread2517 ], [ true, %.critedge969.thread2525 ], [ true, %.critedge969.thread2533 ], [ true, %.critedge969.thread2541 ], [ true, %.critedge969.thread2549 ], [ true, %.critedge969.thread2557 ], [ true, %.critedge969.thread2565 ], [ true, %.critedge969.thread2573 ], [ true, %.critedge969.thread2581 ], [ true, %.critedge969.thread2589 ], [ true, %.critedge969.thread2597 ], [ true, %.critedge969.thread2605 ], [ true, %.critedge969.thread2613 ], [ true, %.critedge969.thread2621 ], [ true, %.critedge969.thread2629 ], [ true, %.critedge969.thread2637 ], [ true, %.critedge969.thread2645 ], [ true, %.critedge969.thread2653 ], [ true, %.critedge969.thread2661 ], [ true, %.critedge969.thread2669 ], [ true, %.critedge969.thread2677 ], [ true, %.critedge969.thread2685 ], [ true, %.critedge969.thread2693 ], [ true, %.critedge969.thread2701 ], [ true, %.critedge969.thread2709 ], [ true, %.critedge969.thread2717 ], [ true, %.critedge969.thread2725 ], [ true, %.critedge969.thread2733 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2922 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3259 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3205 ], [ true, %bb.aii ], [ true, %.thread3181 ], [ true, %bb.adj ], [ true, %.body1123 ], [ true, %.body1126 ], [ false, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3120 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706" ], [ true, %.thread2922.thread ], [ true, %.thread3043 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2990 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2983 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2976 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2969 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2864 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0553.02323 = phi i1 [ true, %.critedge969.thread2741 ], [ %.sroa.0553.1.ph, %.critedge969.thread2750 ], [ true, %.critedge969.thread2333 ], [ true, %.critedge969.thread2341 ], [ true, %.critedge969.thread2349 ], [ true, %.critedge969.thread2357 ], [ true, %.critedge969.thread2365 ], [ true, %.critedge969.thread2373 ], [ true, %.critedge969.thread2381 ], [ true, %.critedge969.thread2389 ], [ true, %.critedge969.thread2397 ], [ true, %.critedge969.thread2405 ], [ true, %.critedge969.thread2413 ], [ true, %.critedge969.thread2421 ], [ true, %.critedge969.thread2429 ], [ true, %.critedge969.thread2437 ], [ true, %.critedge969.thread2445 ], [ true, %.critedge969.thread2453 ], [ true, %.critedge969.thread2461 ], [ true, %.critedge969.thread2469 ], [ true, %.critedge969.thread2477 ], [ true, %.critedge969.thread2485 ], [ true, %.critedge969.thread2493 ], [ true, %.critedge969.thread2501 ], [ true, %.critedge969.thread2509 ], [ true, %.critedge969.thread2517 ], [ true, %.critedge969.thread2525 ], [ true, %.critedge969.thread2533 ], [ true, %.critedge969.thread2541 ], [ true, %.critedge969.thread2549 ], [ true, %.critedge969.thread2557 ], [ true, %.critedge969.thread2565 ], [ true, %.critedge969.thread2573 ], [ true, %.critedge969.thread2581 ], [ true, %.critedge969.thread2589 ], [ true, %.critedge969.thread2597 ], [ true, %.critedge969.thread2605 ], [ true, %.critedge969.thread2613 ], [ true, %.critedge969.thread2621 ], [ true, %.critedge969.thread2629 ], [ true, %.critedge969.thread2637 ], [ true, %.critedge969.thread2645 ], [ true, %.critedge969.thread2653 ], [ true, %.critedge969.thread2661 ], [ true, %.critedge969.thread2669 ], [ true, %.critedge969.thread2677 ], [ true, %.critedge969.thread2685 ], [ true, %.critedge969.thread2693 ], [ true, %.critedge969.thread2701 ], [ true, %.critedge969.thread2709 ], [ true, %.critedge969.thread2717 ], [ true, %.critedge969.thread2725 ], [ true, %.critedge969.thread2733 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2922 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3259 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3205 ], [ true, %bb.aii ], [ true, %.thread3181 ], [ true, %bb.adj ], [ true, %.body1123 ], [ false, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3120 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706" ], [ true, %.thread2922.thread ], [ true, %.thread3043 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2990 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2983 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2976 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2969 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2864 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0554.02322 = phi i1 [ true, %.critedge969.thread2741 ], [ %.sroa.0554.1.ph, %.critedge969.thread2750 ], [ true, %.critedge969.thread2333 ], [ true, %.critedge969.thread2341 ], [ true, %.critedge969.thread2349 ], [ true, %.critedge969.thread2357 ], [ true, %.critedge969.thread2365 ], [ true, %.critedge969.thread2373 ], [ true, %.critedge969.thread2381 ], [ true, %.critedge969.thread2389 ], [ true, %.critedge969.thread2397 ], [ true, %.critedge969.thread2405 ], [ true, %.critedge969.thread2413 ], [ true, %.critedge969.thread2421 ], [ true, %.critedge969.thread2429 ], [ true, %.critedge969.thread2437 ], [ true, %.critedge969.thread2445 ], [ true, %.critedge969.thread2453 ], [ true, %.critedge969.thread2461 ], [ true, %.critedge969.thread2469 ], [ true, %.critedge969.thread2477 ], [ true, %.critedge969.thread2485 ], [ true, %.critedge969.thread2493 ], [ true, %.critedge969.thread2501 ], [ true, %.critedge969.thread2509 ], [ true, %.critedge969.thread2517 ], [ true, %.critedge969.thread2525 ], [ true, %.critedge969.thread2533 ], [ true, %.critedge969.thread2541 ], [ true, %.critedge969.thread2549 ], [ true, %.critedge969.thread2557 ], [ true, %.critedge969.thread2565 ], [ true, %.critedge969.thread2573 ], [ true, %.critedge969.thread2581 ], [ true, %.critedge969.thread2589 ], [ true, %.critedge969.thread2597 ], [ true, %.critedge969.thread2605 ], [ true, %.critedge969.thread2613 ], [ true, %.critedge969.thread2621 ], [ true, %.critedge969.thread2629 ], [ true, %.critedge969.thread2637 ], [ true, %.critedge969.thread2645 ], [ true, %.critedge969.thread2653 ], [ true, %.critedge969.thread2661 ], [ true, %.critedge969.thread2669 ], [ true, %.critedge969.thread2677 ], [ true, %.critedge969.thread2685 ], [ true, %.critedge969.thread2693 ], [ true, %.critedge969.thread2701 ], [ true, %.critedge969.thread2709 ], [ true, %.critedge969.thread2717 ], [ true, %.critedge969.thread2725 ], [ true, %.critedge969.thread2733 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2922 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3259 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3205 ], [ true, %bb.aii ], [ true, %.thread3181 ], [ true, %bb.adj ], [ false, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3120 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit1706" ], [ true, %.thread2922.thread ], [ true, %.thread3043 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2990 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2983 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2976 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2969 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2864 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %i.cic = load i8, ptr %i.pw, align 8, !range !121, !noundef !41
  switch i8 %i.cic, label %bb.asb [
    i8 36, label %bb.asc
    i8 37, label %bb.asd
    i8 38, label %bb.ase
  ]

bb.asc:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0552.02324, label %.invoke3493, label %bb.asb

bb.asd:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0553.02323, label %.invoke3493, label %bb.asb

bb.ase:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0554.02322, label %.invoke3493, label %bb.asb

.invoke3493:                                      ; preds = %bb.ase, %bb.asd, %bb.asc
  %i.cid = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h060e21945e58f029E"(ptr noalias noundef align 8 dereferenceable(32) %i.cid) #75
          to label %bb.asb unwind label %bb.by

bb.asf:                                           ; preds = %bb.asb
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E"(ptr noalias noundef align 8 dereferenceable(16) %i.px) #75
          to label %bb.aqw unwind label %bb.by

bb.asg:                                           ; preds = %.thread3323, %bb.ash, %bb.aqw
  %.sroa.226.273328 = phi i32 [ %i.qn, %.thread3323 ], [ %.sroa.226.27, %bb.ash ], [ %.sroa.226.27, %bb.aqw ]
  %.sroa.0782.273327 = phi ptr [ %i.qm, %.thread3323 ], [ %.sroa.0782.27, %bb.ash ], [ %.sroa.0782.27, %bb.aqw ]
  %i.cie = insertvalue { ptr, i32 } poison, ptr %.sroa.0782.273327, 0
  %i.cif = insertvalue { ptr, i32 } %i.cie, i32 %.sroa.226.273328, 1
  resume { ptr, i32 } %i.cif

bb.ash:                                           ; preds = %bb.aqw
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.py) #75
          to label %bb.asg unwind label %bb.by
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h0bfb9571d1aecfe4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h77701c25a8e1e697E", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20632
  store ptr @457, ptr %i.a, align 8, !noalias !20633
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !20633
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !20633
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20633
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20633
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.k, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !20635
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !20635 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #75
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.l

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @454) #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h1b022de82c03700cE"(ptr %.8.val, i64 %.16.val, i32 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.16.val, ptr %i.f, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h77701c25a8e1e697E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20645
  store ptr @459, ptr %i.a, align 8, !noalias !20646
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !20646
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !20646
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20646
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20646
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.h, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !20648
  %i.i = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !20648 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h218975e3052136dfE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20670
  store i64 0, ptr %i.c, align 8, !noalias !20670
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !20670
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !20670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20670
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !20670
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !20670
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !20670
  store ptr %i.c, ptr %i.b, align 8, !noalias !20670
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1102, ptr %i.f, align 8, !noalias !20670
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !20671

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20672)
  call void @llvm.experimental.noalias.scope.decl(metadata !20673)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !20674, !noalias !20670 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !20674, !noalias !20670, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20675
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !20671

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20676)
  %i.j = load i64, ptr %0, align 8, !range !64, !alias.scope !20676, !noundef !41 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !20677)
  call void @llvm.experimental.noalias.scope.decl(metadata !20678)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !20679, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20679
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20670
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !20680
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !20680 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !49

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !20681)
  %i.s = load i64, ptr %0, align 8, !range !64, !alias.scope !20681, !noundef !41 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !20682)
  call void @llvm.experimental.noalias.scope.decl(metadata !20683)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !20684, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20684
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h3a23f0c5b87755d3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  %.not = icmp eq ptr %.24.val, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.24.val to i64
  %i.f = and i64 %i.e, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !51

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %.24.val, align 8, !noundef !41 ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935          ; 3 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  %i.k = and i64 %i.g, 1080863910568919040
  %i.l = icmp ult i64 %i.g, 864691128455135232
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %i.j, %i.k
  store i64 %i.m, ptr %.24.val, align 8
  %i.n = icmp eq i64 %i.h, 72057594037927935
  br i1 %i.n, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !44

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2427, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @460, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @461) #73
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$17h71642197896cf0e5E"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #75
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.d, %bb.b
  store ptr %.24.val, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.u, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h7c7aa2563da6b4e8E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20706
  store i64 0, ptr %i.c, align 8, !noalias !20706
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !20706
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !20706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20706
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !20706
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !20706
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !20706
  store ptr %i.c, ptr %i.b, align 8, !noalias !20706
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1102, ptr %i.f, align 8, !noalias !20706
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !20707

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20708)
  call void @llvm.experimental.noalias.scope.decl(metadata !20709)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !20710, !noalias !20706 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !20710, !noalias !20706, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20711
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !20707

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20712)
  %i.j = load i64, ptr %0, align 8, !range !64, !alias.scope !20712, !noundef !41 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !20713)
  call void @llvm.experimental.noalias.scope.decl(metadata !20714)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !20715, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20715
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20706
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !20716
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !20716 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !49

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !20717)
  %i.s = load i64, ptr %0, align 8, !range !64, !alias.scope !20717, !noundef !41 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !20718)
  call void @llvm.experimental.noalias.scope.decl(metadata !20719)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !20720, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20720
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hd98d6efe49a117b4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [392 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41
  call void @"_ZN16nickel_lang_core4eval5value63Container$LT$$RF$nickel_lang_core..term..record..RecordData$GT$11field_names17h703dc6207979630eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !42, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 20, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !20729
  %i.i = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #67, !noalias !20729 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.f, !prof !44

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20729
  store ptr @386, ptr %i.a, align 8, !noalias !20729
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !20729
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.l, align 8, !noalias !20729
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !20729
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.n, align 8, !noalias !20729
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.c unwind label %.body.i, !noalias !20729

bb.c:                                             ; preds = %bb.b
  unreachable

.body.i:                                          ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.o, %.body.i ] ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %common.resume, label %bb.e

bb.e:                                             ; preds = %.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.r, align 8, !nonnull !41, !noundef !41
  %i.s = mul nuw i64 %.val, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #67
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.i, align 8, !noalias !20729
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -1, ptr %i.t, align 8, !noalias !20729
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.u, align 8, !noalias !20730
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !41, !align !75, !noundef !41
  %i.x = load i32, ptr %i.w, align 4, !noundef !41
  %i.y = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.i, i32 noundef %i.x)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !41, !align !75, !noundef !41
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ab, ptr %i.ae, align 8
  store i64 36, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !20731
  %i.af = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !20731 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.af, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hff56efaf6b88c44aE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20753
  store i64 0, ptr %i.c, align 8, !noalias !20753
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !20753
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !20753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20753
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !20753
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !20753
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !20753
  store ptr %i.c, ptr %i.b, align 8, !noalias !20753
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1102, ptr %i.f, align 8, !noalias !20753
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !20754

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20755)
  call void @llvm.experimental.noalias.scope.decl(metadata !20756)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !20757, !noalias !20753 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !20757, !noalias !20753, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20758
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !20754

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20759)
  %i.j = load i64, ptr %0, align 8, !range !64, !alias.scope !20759, !noundef !41 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !20760)
  call void @llvm.experimental.noalias.scope.decl(metadata !20761)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !20762, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20762
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20753
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !20763
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !20763 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !49

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !20764)
  %i.s = load i64, ptr %0, align 8, !range !64, !alias.scope !20764, !noundef !41 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !20765)
  call void @llvm.experimental.noalias.scope.decl(metadata !20766)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !20767, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !20767
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms17h547a5ba947fa301bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20786)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20787, !nonnull !41, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !20787, !nonnull !41, !noundef !41 ; 3 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.h, align 8, !alias.scope !20787
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !20787, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20788
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 19, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20788
  store i64 -9223372036854775757, ptr %i.e, align 8, !noalias !20788
  %i.o = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %bb.e unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @465) #73
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20788
  %i.p = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.o, i32 noundef %1)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !20790)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !20790, !noalias !20791, !nonnull !41, !noundef !41 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.s, align 8, !alias.scope !20790, !noalias !20791 ; 3 uses
  %.not15.i.i = icmp eq ptr %.promoted.i.i, %i.r
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7917e667bbafc16fE.exit.i.i", %.lr.ph.i.i
  %.016.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.ac, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7917e667bbafc16fE.exit.i.i" ] ; 2 uses
  %i.w = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.z, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7917e667bbafc16fE.exit.i.i" ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !20792, !nonnull !41, !noundef !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20792
  store ptr %.016.i.i, ptr %i.c, align 8, !noalias !20792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20793
  store i8 19, ptr %i.t, align 8, !noalias !20792
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20793
end_hunk_4
begin_hunk_5_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op217h04936c624a11ebc3E":bb.a
.noexc3331:                                       ; preds = %bb.csd
  unreachable

bb.cse:                                           ; preds = %bb.csc
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i3329" unwind label %bb.cql

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i3329": ; preds = %bb.cse, %bb.csc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24646
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit3333"

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit3342": ; preds = %bb.csk, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i3334", %bb.csl, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit3333"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.abv)
  %i.hyi = trunc nuw i8 %.sroa.0627.340434806 to i1
  br i1 %i.hyi, label %bb.csn, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit3349"

bb.csf:                                           ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit3333"
  call void @llvm.experimental.noalias.scope.decl(metadata !24648)
  call void @llvm.experimental.noalias.scope.decl(metadata !24649)
  call void @llvm.experimental.noalias.scope.decl(metadata !24650)
  %i.hyj = load ptr, ptr %i.abv, align 16, !alias.scope !24651, !nonnull !41, !noundef !41 ; 2 uses
  %i.hyk = load i64, ptr %i.hyj, align 8, !noalias !24651, !noundef !41
  %i.hyl = add i64 %i.hyk, -1                     ; 2 uses
  store i64 %i.hyl, ptr %i.hyj, align 8, !noalias !24651
  %i.hym = icmp eq i64 %i.hyl, 0
  br i1 %i.hym, label %bb.csg, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i3334"

bb.csg:                                           ; preds = %bb.csf
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.abv)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i3334" unwind label %bb.csh

bb.csh:                                           ; preds = %bb.csg
  %i.hyn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24652)
  %i.hyo = load ptr, ptr %i.acb, align 8, !alias.scope !24653, !noundef !41 ; 3 uses
  %i.hyp = icmp eq ptr %i.hyo, null
  br i1 %i.hyp, label %.body3300, label %bb.csi

bb.csi:                                           ; preds = %bb.csh
  %i.hyq = load i64, ptr %i.hyo, align 8, !noalias !24654, !noundef !41
  %i.hyr = add i64 %i.hyq, -1                     ; 2 uses
  store i64 %i.hyr, ptr %i.hyo, align 8, !noalias !24654
  %i.hys = icmp eq i64 %i.hyr, 0
  br i1 %i.hys, label %bb.csj, label %.body3300

bb.csj:                                           ; preds = %bb.csi
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acb)
          to label %.body3300 unwind label %bb.csm

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i3334": ; preds = %bb.csg, %bb.csf
  call void @llvm.experimental.noalias.scope.decl(metadata !24655)
  %i.hyt = load ptr, ptr %i.acb, align 8, !alias.scope !24656, !noundef !41 ; 3 uses
  %i.hyu = icmp eq ptr %i.hyt, null
  br i1 %i.hyu, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit3342", label %bb.csk

bb.csk:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h9cfdfecc007db7dfE.exit.i3334"
  %i.hyv = load i64, ptr %i.hyt, align 8, !noalias !24657, !noundef !41
  %i.hyw = add i64 %i.hyv, -1                     ; 2 uses
  store i64 %i.hyw, ptr %i.hyt, align 8, !noalias !24657
  %i.hyx = icmp eq i64 %i.hyw, 0
  br i1 %i.hyx, label %bb.csl, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit3342"

bb.csl:                                           ; preds = %bb.csk
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acb)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit3342" unwind label %bb.cqv

bb.csm:                                           ; preds = %bb.csj
  %i.hyy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.csn:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E.exit3342"
  call void @llvm.experimental.noalias.scope.decl(metadata !24658)
  %.val.i3343 = load ptr, ptr %i.abw, align 8, !alias.scope !24658, !nonnull !41, !noundef !41 ; 4 uses
  %i.hyz = ptrtoint ptr %.val.i3343 to i64
  %i.hza = and i64 %i.hyz, 3
  %..i.i3344 = call i64 @llvm.umin.i64(i64 %i.hza, i64 2)
  switch i64 %..i.i3344, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit3349" [
    i64 2, label %bb.cso
    i64 0, label %bb.csp
  ], !prof !51

bb.cso:                                           ; preds = %bb.csn
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc3346 unwind label %.split

.noexc3346:                                       ; preds = %bb.cso
  unreachable

bb.csp:                                           ; preds = %bb.csn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24658
  store ptr %.val.i3343, ptr %i.c, align 8, !noalias !24658
  %i.hzb = load i64, ptr %.val.i3343, align 8, !noalias !24659, !noundef !41 ; 3 uses
  %i.hzc = and i64 %i.hzb, 72057594037927935
  %i.hzd = add nsw i64 %i.hzc, -1                 ; 3 uses
  %i.hze = and i64 %i.hzb, 1080863910568919040
  %i.hzf = icmp ult i64 %i.hzb, 864691128455135232
  call void @llvm.assume(i1 %i.hzf)
  %i.hzg = or i64 %i.hzd, %i.hze
  store i64 %i.hzg, ptr %.val.i3343, align 8, !noalias !24659
  %i.hzh = icmp ugt i64 %i.hzd, 72057594037927935
  br i1 %i.hzh, label %bb.csr, label %bb.csq, !prof !44

bb.csq:                                           ; preds = %bb.csp
  %i.hzi = icmp eq i64 %i.hzd, 0
  br i1 %i.hzi, label %bb.css, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i3345"

bb.csr:                                           ; preds = %bb.csp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24659
  store ptr @2427, ptr %i.b, align 8, !noalias !24659
  %i.hzj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.hzj, align 8, !noalias !24659
  %i.hzk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.hzk, align 8, !noalias !24659
  %i.hzl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hzl, align 8, !noalias !24659
  %i.hzm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.hzm, align 8, !noalias !24659
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc3347 unwind label %.split

.noexc3347:                                       ; preds = %bb.csr
  unreachable

bb.css:                                           ; preds = %bb.csq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i3345" unwind label %.split

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i3345": ; preds = %bb.css, %bb.csq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24658
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit3349"

.critedge1247.thread:                             ; preds = %.split5302, %.critedge1247.thread5287, %.critedge1247.thread5272, %bb.bma, %bb.bsn, %.thread4410, %.thread4401, %.thread4551, %bb.brh, %.thread4817, %bb.crm, %bb.crl, %bb.crf, %bb.cre, %bb.cph, %bb.cpg, %bb.cpa, %bb.coz, %bb.cna, %bb.cmz, %bb.cmt, %bb.cms, %.thread4684, %bb.cif, %bb.cie, %bb.chy, %bb.chx, %bb.chp, %bb.chd, %bb.chc, %bb.cgd, %bb.cgc, %bb.cbh, %bb.cbg, %bb.byy, %bb.byx, %bb.bxq, %bb.bxp, %bb.bxj, %bb.bxi, %bb.bvz, %bb.bvy, %bb.bvs, %bb.bvr, %bb.bvm, %bb.bvl, %bb.bvn, %bb.bvb, %.thread4601, %bb.buw, %bb.buv, %bb.bux, %.thread4597, %bb.btw, %bb.btv, %bb.btp, %bb.bto, %bb.btk, %bb.btj, %bb.btl, %bb.bsy, %bb.bru, %bb.brt, %bb.brn, %bb.brm, %bb.bpc, %bb.bpb, %bb.bov, %bb.bou, %bb.bof, %bb.boe, %bb.bny, %bb.bnx, %bb.bnf, %bb.bne, %bb.bmy, %bb.bmx, %bb.bmk, %bb.bmj, %bb.blc, %bb.blb, %bb.bfv, %bb.bfu, %bb.bfo, %bb.bfn, %bb.bff, %bb.bev, %bb.beu, %bb.bbt, %bb.bbs, %bb.bbq, %.noexc2981, %bb.ayw, %bb.bbl, %bb.bbk, %bb.axd, %bb.axc, %bb.aww, %bb.awv, %bb.awi, %bb.awh, %bb.awb, %bb.awa, %bb.ave, %bb.avd, %bb.aux, %bb.auw, %bb.atz, %bb.aty, %bb.ats, %bb.atr, %bb.asz, %bb.asy, %bb.ass, %bb.asr, %bb.aru, %bb.art, %bb.arn, %bb.arm, %bb.cnf, %bb.cng, %.body1358, %bb.clm, %bb.ckb, %bb.chv, %bb.bzf, %bb.bpo, %bb.brj, %bb.brk, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit3044", %bb.bmp, %bb.bfl, %.body1735, %bb.bel
  %.sroa.288.03982 = phi i32 [ %.sroa.288.05295, %.critedge1247.thread5287 ], [ %.sroa.288.8, %bb.bbl ], [ %i.hrp, %bb.cph ], [ %i.hqy, %bb.cpa ], [ %i.hnn, %bb.cna ], [ %i.hof, %bb.cnf ], [ %i.hok, %bb.cng ], [ %.sroa.288.42, %.body1358 ], [ %i.hmw, %bb.cmt ], [ %i.hfp, %bb.cif ], [ %.sroa.288.41, %bb.clm ], [ %.sroa.288.38, %.thread4684 ], [ %.sroa.288.384711, %bb.ckb ], [ %i.hey, %bb.chy ], [ %i.hdu, %bb.chd ], [ %i.hep, %bb.chp ], [ %i.hev, %bb.chv ], [ %i.hbp, %bb.cgd ], [ %i.gpr, %bb.cbh ], [ %i.gkq, %bb.byy ], [ %.sroa.288.35, %bb.bzf ], [ %i.ghp, %bb.bxq ], [ %i.ggy, %bb.bxj ], [ %i.gej, %bb.bvz ], [ %i.gds, %bb.bvs ], [ %.sroa.288.344613, %bb.bvm ], [ %i.gca, %.thread4597 ], [ %i.gab, %bb.btw ], [ %.sroa.288.34, %bb.bvb ], [ %.sroa.288.344604, %.thread4601 ], [ %i.fzk, %bb.btp ], [ %.sroa.288.334566, %bb.btk ], [ %.sroa.288.33, %bb.bsy ], [ %i.fwa, %bb.bru ], [ %.sroa.288.32, %bb.bsn ], [ %i.fvj, %bb.brn ], [ %.sroa.288.34822, %.thread4817 ], [ %.sroa.288.23, %bb.bpo ], [ %.sroa.288.2444904548, %bb.brj ], [ %.sroa.288.2444904548, %bb.brk ], [ %i.fqu, %bb.bov ], [ %i.fpu, %bb.bof ], [ %i.fpd, %bb.bny ], [ %i.fny, %bb.bnf ], [ %i.fnk, %bb.bmy ], [ %i.fmb, %bb.bmk ], [ %i.fmx, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit3044" ], [ %i.fka, %bb.blc ], [ %.sroa.288.22, %bb.bma ], [ %i.fmr, %bb.bmp ], [ %i.fbr, %bb.bfv ], [ %i.fba, %bb.bfo ], [ %i.fac, %bb.bev ], [ %i.fau, %bb.bff ], [ %i.fax, %bb.bfl ], [ %i.ewd, %bb.bbt ], [ %.sroa.288.9, %.body1735 ], [ %.sroa.288.94252, %bb.bel ], [ %.sroa.288.34155, %bb.bbq ], [ %.sroa.288.3, %bb.ayw ], [ %.sroa.288.8, %bb.bbk ], [ %i.emm, %bb.axd ], [ %i.emm, %bb.axc ], [ %i.hvw, %bb.crf ], [ %i.elv, %bb.aww ], [ %i.ela, %bb.awi ], [ %i.ekj, %bb.awb ], [ %i.eiw, %bb.ave ], [ %i.eif, %bb.aux ], [ %i.egd, %bb.atz ], [ %.sroa.288.244555, %.thread4551 ], [ %i.efm, %bb.ats ], [ %i.eee, %bb.asz ], [ %i.edn, %bb.ass ], [ %i.ecn, %bb.aru ], [ %.sroa.288.174414, %.thread4410 ], [ %i.ebw, %bb.arn ], [ %.sroa.288.174408, %.thread4401 ], [ %i.ebw, %bb.arm ], [ %i.ecn, %bb.art ], [ %i.edn, %bb.asr ], [ %i.eee, %bb.asy ], [ %i.efm, %bb.atr ], [ %i.egd, %bb.aty ], [ %i.eif, %bb.auw ], [ %i.eiw, %bb.avd ], [ %i.ekj, %bb.awa ], [ %i.ela, %bb.awh ], [ %i.elv, %bb.awv ], [ %.sroa.288.34155, %.noexc2981 ], [ %i.ewd, %bb.bbs ], [ %i.fac, %bb.beu ], [ %i.fba, %bb.bfn ], [ %i.fbr, %bb.bfu ], [ %i.fka, %bb.blb ], [ %i.fmb, %bb.bmj ], [ %i.fnk, %bb.bmx ], [ %i.fny, %bb.bne ], [ %i.fpd, %bb.bnx ], [ %i.fpu, %bb.boe ], [ %i.fqu, %bb.bou ], [ %i.frl, %bb.bpb ], [ %i.frl, %bb.bpc ], [ %i.fvj, %bb.brm ], [ %i.fwa, %bb.brt ], [ %.sroa.288.334566, %bb.btl ], [ %.sroa.288.334566, %bb.btj ], [ %i.fzk, %bb.bto ], [ %i.gab, %bb.btv ], [ %i.gcf, %bb.bux ], [ %i.gcf, %bb.buv ], [ %i.gcf, %bb.buw ], [ %.sroa.288.344613, %bb.bvn ], [ %.sroa.288.344613, %bb.bvl ], [ %i.gds, %bb.bvr ], [ %i.gej, %bb.bvy ], [ %i.ggy, %bb.bxi ], [ %i.ghp, %bb.bxp ], [ %i.gkq, %bb.byx ], [ %i.gpr, %bb.cbg ], [ %i.hbp, %bb.cgc ], [ %i.hdu, %bb.chc ], [ %i.hey, %bb.chx ], [ %i.hfp, %bb.cie ], [ %i.hmw, %bb.cms ], [ %i.hnn, %bb.cmz ], [ %i.hqy, %bb.coz ], [ %i.hrp, %bb.cpg ], [ %i.hvw, %bb.cre ], [ %i.hwn, %bb.crl ], [ %i.hwn, %bb.crm ], [ %.sroa.288.24, %bb.brh ], [ %.sroa.288.05280, %.critedge1247.thread5272 ], [ %.sroa.288.95303, %.split5302 ]
  %.sroa.0922.03981 = phi ptr [ %.sroa.0922.05296, %.critedge1247.thread5287 ], [ %.sroa.0922.8, %bb.bbl ], [ %i.hro, %bb.cph ], [ %i.hqx, %bb.cpa ], [ %i.hnm, %bb.cna ], [ %i.hoe, %bb.cnf ], [ %i.hoj, %bb.cng ], [ %.sroa.0922.42, %.body1358 ], [ %i.hmv, %bb.cmt ], [ %i.hfo, %bb.cif ], [ %.sroa.0922.41, %bb.clm ], [ %.sroa.0922.38, %.thread4684 ], [ %.sroa.0922.384712, %bb.ckb ], [ %i.hex, %bb.chy ], [ %i.hdt, %bb.chd ], [ %i.heo, %bb.chp ], [ %i.heu, %bb.chv ], [ %i.hbo, %bb.cgd ], [ %i.gpq, %bb.cbh ], [ %i.gkp, %bb.byy ], [ %.sroa.0922.35, %bb.bzf ], [ %i.gho, %bb.bxq ], [ %i.ggx, %bb.bxj ], [ %i.gei, %bb.bvz ], [ %i.gdr, %bb.bvs ], [ %.sroa.0922.344614, %bb.bvm ], [ %i.gbz, %.thread4597 ], [ %i.gaa, %bb.btw ], [ %.sroa.0922.34, %bb.bvb ], [ %.sroa.0922.344605, %.thread4601 ], [ %i.fzj, %bb.btp ], [ %.sroa.0922.334567, %bb.btk ], [ %.sroa.0922.33, %bb.bsy ], [ %i.fvz, %bb.bru ], [ %.sroa.0922.32, %bb.bsn ], [ %i.fvi, %bb.brn ], [ %.sroa.0922.34823, %.thread4817 ], [ %.sroa.0922.23, %bb.bpo ], [ %.sroa.0922.2444924546, %bb.brj ], [ %.sroa.0922.2444924546, %bb.brk ], [ %i.fqt, %bb.bov ], [ %i.fpt, %bb.bof ], [ %i.fpc, %bb.bny ], [ %i.fnx, %bb.bnf ], [ %i.fnj, %bb.bmy ], [ %i.fma, %bb.bmk ], [ %i.fmw, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit3044" ], [ %i.fjz, %bb.blc ], [ %.sroa.0922.22, %bb.bma ], [ %i.fmq, %bb.bmp ], [ %i.fbq, %bb.bfv ], [ %i.faz, %bb.bfo ], [ %i.fab, %bb.bev ], [ %i.fat, %bb.bff ], [ %i.faw, %bb.bfl ], [ %i.ewc, %bb.bbt ], [ %.sroa.0922.9, %.body1735 ], [ %.sroa.0922.94253, %bb.bel ], [ %.sroa.0922.34157, %bb.bbq ], [ %.sroa.0922.3, %bb.ayw ], [ %.sroa.0922.8, %bb.bbk ], [ %i.eml, %bb.axd ], [ %i.eml, %bb.axc ], [ %i.hvv, %bb.crf ], [ %i.elu, %bb.aww ], [ %i.ekz, %bb.awi ], [ %i.eki, %bb.awb ], [ %i.eiv, %bb.ave ], [ %i.eie, %bb.aux ], [ %i.egc, %bb.atz ], [ %.sroa.0922.244556, %.thread4551 ], [ %i.efl, %bb.ats ], [ %i.eed, %bb.asz ], [ %i.edm, %bb.ass ], [ %i.ecm, %bb.aru ], [ %.sroa.0922.174415, %.thread4410 ], [ %i.ebv, %bb.arn ], [ %.sroa.0922.174409, %.thread4401 ], [ %i.ebv, %bb.arm ], [ %i.ecm, %bb.art ], [ %i.edm, %bb.asr ], [ %i.eed, %bb.asy ], [ %i.efl, %bb.atr ], [ %i.egc, %bb.aty ], [ %i.eie, %bb.auw ], [ %i.eiv, %bb.avd ], [ %i.eki, %bb.awa ], [ %i.ekz, %bb.awh ], [ %i.elu, %bb.awv ], [ %.sroa.0922.34157, %.noexc2981 ], [ %i.ewc, %bb.bbs ], [ %i.fab, %bb.beu ], [ %i.faz, %bb.bfn ], [ %i.fbq, %bb.bfu ], [ %i.fjz, %bb.blb ], [ %i.fma, %bb.bmj ], [ %i.fnj, %bb.bmx ], [ %i.fnx, %bb.bne ], [ %i.fpc, %bb.bnx ], [ %i.fpt, %bb.boe ], [ %i.fqt, %bb.bou ], [ %i.frk, %bb.bpb ], [ %i.frk, %bb.bpc ], [ %i.fvi, %bb.brm ], [ %i.fvz, %bb.brt ], [ %.sroa.0922.334567, %bb.btl ], [ %.sroa.0922.334567, %bb.btj ], [ %i.fzj, %bb.bto ], [ %i.gaa, %bb.btv ], [ %i.gce, %bb.bux ], [ %i.gce, %bb.buv ], [ %i.gce, %bb.buw ], [ %.sroa.0922.344614, %bb.bvn ], [ %.sroa.0922.344614, %bb.bvl ], [ %i.gdr, %bb.bvr ], [ %i.gei, %bb.bvy ], [ %i.ggx, %bb.bxi ], [ %i.gho, %bb.bxp ], [ %i.gkp, %bb.byx ], [ %i.gpq, %bb.cbg ], [ %i.hbo, %bb.cgc ], [ %i.hdt, %bb.chc ], [ %i.hex, %bb.chx ], [ %i.hfo, %bb.cie ], [ %i.hmv, %bb.cms ], [ %i.hnm, %bb.cmz ], [ %i.hqx, %bb.coz ], [ %i.hro, %bb.cpg ], [ %i.hvv, %bb.cre ], [ %i.hwm, %bb.crl ], [ %i.hwm, %bb.crm ], [ %.sroa.0922.24, %bb.brh ], [ %.sroa.0922.05281, %.critedge1247.thread5272 ], [ %.sroa.0922.95304, %.split5302 ]
  %.sroa.0621.03980 = phi i8 [ %.sroa.0621.1.ph, %.critedge1247.thread5287 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ %.sroa.0621.27, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ %.sroa.0621.24, %bb.clm ], [ 1, %.thread4684 ], [ %.sroa.0621.21.ph, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 0, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4597 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4601 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ 1, %.thread4817 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ %.sroa.0621.44251, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4551 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 0, %.thread4410 ], [ 1, %bb.arn ], [ 0, %.thread4401 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0621.0.ph, %.critedge1247.thread5272 ], [ 1, %.split5302 ]
  %.sroa.0624.03979 = phi i8 [ 1, %.critedge1247.thread5287 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ 1, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ 1, %bb.clm ], [ 1, %.thread4684 ], [ 1, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4597 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4601 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ %.sroa.0624.54829, %.thread4817 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ 1, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4551 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4410 ], [ 1, %bb.arn ], [ 1, %.thread4401 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ 1, %.critedge1247.thread5272 ], [ 1, %.split5302 ]
  %.sroa.0627.03978 = phi i8 [ %.sroa.0627.1.ph, %.critedge1247.thread5287 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ %.sroa.0627.23, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ %.sroa.0627.20, %bb.clm ], [ 1, %.thread4684 ], [ %.sroa.0627.17.ph, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4597 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4601 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ %.sroa.0627.54828, %.thread4817 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 0, %.body1735 ], [ 0, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4551 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4410 ], [ 1, %bb.arn ], [ 1, %.thread4401 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0627.0.ph5270, %.critedge1247.thread5272 ], [ 0, %.split5302 ]
  %.sroa.0674.03976 = phi i8 [ %.sroa.0674.1.ph, %.critedge1247.thread5287 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ 1, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ 1, %bb.clm ], [ 1, %.thread4684 ], [ 1, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4597 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4601 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ 1, %.thread4817 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd4a6a85a6aec7223E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ 1, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4551 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4410 ], [ 1, %bb.arn ], [ 1, %.thread4401 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0674.0.ph5269, %.critedge1247.thread5272 ], [ 1, %.split5302 ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E"(ptr noalias noundef align 8 dereferenceable(16) %i.abt) #75
          to label %bb.cqd unwind label %bb.ark

bb.cst:                                           ; preds = %bb.cqd
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abu) #75
          to label %.thread5335 unwind label %bb.ark

bb.csu:                                           ; preds = %.thread5335
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h3d7eb5a8c08074c6E"(ptr noalias noundef align 8 dereferenceable(16) %i.abv) #75
          to label %bb.cqu unwind label %bb.ark

bb.csv:                                           ; preds = %bb.cqu
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abw) #75
          to label %bb.crc unwind label %bb.ark

bb.csw:                                           ; preds = %.split, %.noexc3350, %.thread4789, %bb.crc
  %.sroa.288.464797 = phi i32 [ %.sroa.288.464798, %.noexc3350 ], [ %i.hvt, %.split ], [ %.sroa.288.464798, %.thread4789 ], [ %.sroa.288.45, %bb.crc ]
  %.sroa.0922.464795 = phi ptr [ %.sroa.0922.464796, %.noexc3350 ], [ %i.hvs, %.split ], [ %.sroa.0922.464796, %.thread4789 ], [ %.sroa.0922.45, %bb.crc ]
  %i.hzn = insertvalue { ptr, i32 } poison, ptr %.sroa.0922.464795, 0
  %i.hzo = insertvalue { ptr, i32 } %i.hzn, i32 %.sroa.288.464797, 1
  resume { ptr, i32 } %i.hzo

.thread4789:                                      ; preds = %.critedge1245, %.thread4137, %.critedge1245.thread, %bb.ayd, %bb.axx, %bb.ayj, %.split, %bb.crc
  %.sroa.288.464798 = phi i32 [ %i.hvt, %.split ], [ %.sroa.288.45, %bb.crc ], [ %i.eow, %bb.ayj ], [ %.sroa.288.1, %.critedge1245 ], [ %.sroa.288.14120, %bb.ayd ], [ %i.eoo, %.thread4137 ], [ %i.eog, %bb.axx ], [ %.sroa.288.14120, %.critedge1245.thread ] ; 2 uses
  %.sroa.0922.464796 = phi ptr [ %i.hvs, %.split ], [ %.sroa.0922.45, %bb.crc ], [ %i.eox, %bb.ayj ], [ %.sroa.0922.1, %.critedge1245 ], [ %.sroa.0922.14121, %bb.ayd ], [ %i.eon, %.thread4137 ], [ %i.eoh, %bb.axx ], [ %.sroa.0922.14121, %.critedge1245.thread ] ; 2 uses
  %.sroa.0674.104794 = phi i8 [ %.sroa.0674.11, %.split ], [ %.sroa.0674.8, %bb.crc ], [ 1, %bb.ayj ], [ 1, %.critedge1245 ], [ 1, %bb.ayd ], [ 1, %.thread4137 ], [ 1, %bb.axx ], [ 1, %.critedge1245.thread ]
  %i.hzp = load i64, ptr %i.abx, align 8, !range !127, !noundef !41 ; 2 uses
  %i.hzq = icmp ne i64 %i.hzp, -9223372036854775789
  call void @llvm.assume(i1 %i.hzq)
  %i.hzr = icmp slt i64 %i.hzp, 0
  %cond = icmp eq i8 %.sroa.0674.104794, 0
  %or.cond1328 = or i1 %cond, %i.hzr
  br i1 %or.cond1328, label %bb.csw, label %bb.csx

bb.csx:                                           ; preds = %.thread4789
  %i.hzs = getelementptr inbounds nuw i8, ptr %i.abx, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24660)
  call void @llvm.experimental.noalias.scope.decl(metadata !24661)
  %i.hzt = load ptr, ptr %i.hzs, align 8, !alias.scope !24662, !noundef !41 ; 3 uses
  %i.hzu = icmp eq ptr %i.hzt, null
  br i1 %i.hzu, label %.noexc3350, label %bb.csy

bb.csy:                                           ; preds = %bb.csx
  %i.hzv = load i64, ptr %i.hzt, align 8, !noalias !24663, !noundef !41
  %i.hzw = add i64 %i.hzv, -1                     ; 2 uses
  store i64 %i.hzw, ptr %i.hzt, align 8, !noalias !24663
  %i.hzx = icmp eq i64 %i.hzw, 0
  br i1 %i.hzx, label %bb.csz, label %.noexc3350

bb.csz:                                           ; preds = %bb.csy
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hzs)
          to label %.noexc3350 unwind label %bb.ark

.noexc3350:                                       ; preds = %bb.csz, %bb.csx, %bb.csy
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h8dec2839075e3995E"(ptr noalias noundef align 8 dereferenceable(24) %i.abx) #75
          to label %bb.csw unwind label %bb.ark
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h0890f4d261714de3E"(i32 %.0.val, ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24690
  %i.f = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #67, !noalias !24690 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"
  %.pn = phi { ptr, i32 } [ %i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit" ], [ %i.h, %bb.c ], [ %i.o, %bb.g ]
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #75
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1852797802, ptr %i.f, align 1, !noalias !24691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hced9439fef8da4a9E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24692
  store ptr @0, ptr %i.a, align 8, !noalias !24693
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24693
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !24693
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !24693
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24693
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit": ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24694
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.l, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24695
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !24695 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.i, !prof !49

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !24696)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !24696, !nonnull !41, !noundef !41 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24697)
  call void @llvm.experimental.noalias.scope.decl(metadata !24698)
  %i.q = load i64, ptr %.val.i, align 8, !range !89, !alias.scope !24699, !noalias !24696, !noundef !41
  switch i64 %i.q, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit" [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !24699, !noalias !24696, !noundef !41 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !24699, !noalias !24696, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #67, !noalias !24700
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit"

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.u)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit" unwind label %bb.l, !noalias !24696

common.resume:                                    ; preds = %.body, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #67, !noalias !24696
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h2745de824b8307c2E.exit": ; preds = %bb.i, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #67, !noalias !24696
  ret ptr %i.m

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h16c74fdbf7f82a36E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24725
  store i64 0, ptr %i.d, align 8, !noalias !24725
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24725
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24725
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !24725
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24725
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24725
  store ptr %i.d, ptr %i.c, align 8, !noalias !24725
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1102, ptr %i.h, align 8, !noalias !24725
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !24726

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24727)
  call void @llvm.experimental.noalias.scope.decl(metadata !24728)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !24729, !noalias !24725 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24729, !noalias !24725, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24730
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit", !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !24726

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op
end_hunk_5
begin_hunk_6_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h37ea3eab5bc5ebfcE":bb.a
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !24881
  br label %bb.ae

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i": ; preds = %bb.ac
  %i.bt = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %.split   ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i"
  %i.bu = extractvalue { i64, i64 } %i.bt, 0
  %i.bv = extractvalue { i64, i64 } %i.bt, 1      ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !noalias !24882
  store i8 1, ptr %i.bq, align 8, !noalias !24882
  br label %bb.ae

bb.ad:                                            ; preds = %.body.thread
  br i1 %.sroa.03.2.lpad-body107, label %bb.as, label %common.resume

.split:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ae:                                            ; preds = %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i, %.noexc
  %.pre-phi118 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i ], [ %i.bv, %.noexc ]
  %i.bx = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i ], [ %i.bu, %.noexc ] ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bp, align 8, !noalias !24881
  store i64 0, ptr %i.u, align 8, !alias.scope !24883
  %.sroa.42.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i12, align 8, !alias.scope !24883
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !24883
  %.sroa.6.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i13, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.bx, ptr %i.bz, align 8, !alias.scope !24883
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %.pre-phi118, ptr %i.ca, align 8, !alias.scope !24883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @371, i64 noundef 7)
          to label %bb.af unwind label %.body.thread111

.body.thread111:                                  ; preds = %bb.ak, %bb.aq, %bb.ae, %bb.am, %bb.ap
  %.sroa.03.2.ph = phi i1 [ false, %bb.ap ], [ false, %bb.am ], [ true, %bb.ae ], [ false, %bb.ak ], [ false, %bb.aq ]
  %lpad.thr_comm109 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24884
  %i.cb = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #67, !noalias !24884 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ai, label %bb.ak, !prof !44

bb.ag:                                            ; preds = %bb.ai
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.5.sroa.0.0, 0
  br i1 %i.ce, label %.body.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.7.0, i64 noundef %.sroa.5.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24885
  br label %.body.thread

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24884
  store ptr @386, ptr %i.d, align 8, !noalias !24884
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cf, align 8, !noalias !24884
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.cg, align 8, !noalias !24884
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8, !noalias !24884
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.ci, align 8, !noalias !24884
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.aj unwind label %bb.ag, !noalias !24884

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.af
  store i64 216172782113783809, ptr %i.cb, align 8, !noalias !24884
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 -1, ptr %i.cj, align 8, !noalias !24884
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.sroa.5.sroa.0.0, ptr %i.ck, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %.sroa.5.sroa.7.0, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i64 %.sroa.5.sroa.8.0, ptr %.sroa.780.0..sroa_idx, align 8
  %i.cl = invoke fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17hb6821f3c756a6796E"(ptr noalias noundef align 8 dereferenceable(72) %i.u, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.t, ptr noundef nonnull %i.cb)
          to label %._crit_edge unwind label %.body.thread111 ; 5 uses

._crit_edge:                                      ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h421fd84538203e33E.exit", label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = and i64 %i.cn, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.co, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h421fd84538203e33E.exit" [
    i64 2, label %bb.am
    i64 0, label %bb.an
  ], !prof !51

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc18 unwind label %.body.thread111

.noexc18:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24886
  store ptr %i.cl, ptr %i.c, align 8, !noalias !24886
  %i.cp = load i64, ptr %i.cl, align 8, !noalias !24887, !noundef !41 ; 3 uses
  %i.cq = and i64 %i.cp, 72057594037927935
  %i.cr = add nsw i64 %i.cq, -1                   ; 3 uses
  %i.cs = and i64 %i.cp, 1080863910568919040
  %i.ct = icmp ult i64 %i.cp, 864691128455135232
  call void @llvm.assume(i1 %i.ct)
  %i.cu = or i64 %i.cr, %i.cs
  store i64 %i.cu, ptr %i.cl, align 8, !noalias !24887
  %i.cv = icmp ugt i64 %i.cr, 72057594037927935
  br i1 %i.cv, label %bb.ap, label %bb.ao, !prof !44

bb.ao:                                            ; preds = %bb.an
  %i.cw = icmp eq i64 %i.cr, 0
  br i1 %i.cw, label %bb.aq, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i"

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24887
  store ptr @2427, ptr %i.b, align 8, !noalias !24887
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cx, align 8, !noalias !24887
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cy, align 8, !noalias !24887
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cz, align 8, !noalias !24887
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.da, align 8, !noalias !24887
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc19 unwind label %.body.thread111

.noexc19:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i" unwind label %.body.thread111

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i": ; preds = %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24886
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h421fd84538203e33E.exit"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h421fd84538203e33E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i", %bb.al, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17ha69bd4e5a9503dedE(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.db = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue14record_posless17heca82e0fedb09f30E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.dc = load i32, ptr %.8.val, align 4, !noundef !41
  %i.dd = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.db, i32 noundef %i.dc)
  %i.de = load i32, ptr %.8.val, align 4, !noundef !41
  %i.df = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17hecd621b3a7c0c55dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @377, i64 noundef 5, ptr noundef nonnull %i.dd, i32 noundef %i.de)
  br label %bb.ab

.body.thread:                                     ; preds = %bb.ah, %bb.ag, %.body.thread111
  %eh.lpad-body108 = phi { ptr, i32 } [ %lpad.thr_comm109, %.body.thread111 ], [ %i.cd, %bb.ag ], [ %i.cd, %bb.ah ] ; 2 uses
  %.sroa.03.2.lpad-body107 = phi i1 [ %.sroa.03.2.ph, %.body.thread111 ], [ false, %bb.ag ], [ false, %bb.ah ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hbee234215f0cdf9dE"(ptr noalias noundef align 8 dereferenceable(72) %i.u) #75
          to label %bb.ad unwind label %bb.ar

bb.ar:                                            ; preds = %.body.thread
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.as:                                            ; preds = %.split, %bb.ad
  %.pn101 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %eh.lpad-body108, %bb.ad ] ; 2 uses
  %i.dh = icmp eq i64 %.sroa.5.sroa.0.0, 0
  br i1 %i.dh, label %common.resume, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.7.0, i64 noundef %.sroa.5.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24888
  br label %common.resume
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h39fbd492706440ebE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24909
  %i.e = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #67, !noalias !24909 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"
  %.pn = phi { ptr, i32 } [ %i.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit" ], [ %i.g, %bb.c ], [ %i.n, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hc2ea3ab9756ac9f2E"(ptr noalias noundef align 8 dereferenceable(88) %0) #75
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1819111284, ptr %i.e, align 1, !noalias !24910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN61_$LT$toml..de..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h194125f2afffaa47E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24911
  store ptr @0, ptr %i.a, align 8, !noalias !24912
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24912
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !24912
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !24912
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24912
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit": ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24913
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.k, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24914
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !24914 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.i, !prof !49

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hc2ea3ab9756ac9f2E"(ptr noalias noundef align 8 dereferenceable(88) %0)
  ret ptr %i.l

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h467de7e1be5ef7dcE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24939
  store i64 0, ptr %i.d, align 8, !noalias !24939
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24939
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24939
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !24939
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24939
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24939
  store ptr %i.d, ptr %i.c, align 8, !noalias !24939
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1102, ptr %i.h, align 8, !noalias !24939
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !24940

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24941)
  call void @llvm.experimental.noalias.scope.decl(metadata !24942)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !24943, !noalias !24939 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24943, !noalias !24939, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24944
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit", !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !24940

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !24945 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24945 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24939
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !41, !align !46, !noundef !41
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !41 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24946
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #67, !noalias !24946 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24947
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !24948
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !41, !align !75, !noundef !41
  %i.v = load i32, ptr %i.u, align 4, !noundef !41
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !41, !align !42, !noundef !41
  %.val = load ptr, ptr %i.x, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !51

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %.val, align 8, !noundef !41 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935        ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  %i.ae = and i64 %i.aa, 1080863910568919040
  %i.af = icmp ult i64 %i.aa, 864691128455135232
  call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %.val, align 8
  %i.ah = icmp eq i64 %i.ab, 72057594037927935
  br i1 %i.ah, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !44

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2427, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24949
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !41, !align !75, !noundef !41
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.m, ptr %i.ar, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.10.0.i.i, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.m, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.v, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.ap, ptr %i.av, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24950
  %i.aw = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !24950 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.p:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #75
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.aw, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h4f03d1ab81f9f80eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !42, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c969ab013d1e5f6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c969ab013d1e5f6E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24960
  store ptr @505, ptr %i.a, align 8, !noalias !24961
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24961
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !24961
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !24961
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @397, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24961
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !24961
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !41, !align !75, !noundef !41
  %i.n = load i32, ptr %i.m, align 4, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24963
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !24963 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h8532a29006992228E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = load i8, ptr %.0.val, align 1, !range !47, !noundef !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = load i8, ptr %.8.val, align 1, !range !47, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.g, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  store i8 %i.f, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24973
  store i64 0, ptr %i.c, align 8, !noalias !24973
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24973
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24973
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.j, align 8, !noalias !24973
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24973
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24973
  store ptr %i.c, ptr %i.b, align 8, !noalias !24973
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1102, ptr %i.k, align 8, !noalias !24973
  %i.l = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !24974

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !24975)
  call void @llvm.experimental.noalias.scope.decl(metadata !24976)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !24977, !noalias !24973 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24977, !noalias !24973, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !24978
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddd6d73583698395E.exit.i", !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !24974

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hb36ac10824999784E"(ptr noalias noundef align 8 dereferenceable(40) %i.d) #75
          to label %common.resume unwind label %bb.g

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddd6d73583698395E.exit.i": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !24979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24973
  call void @llvm.experimental.noalias.scope.decl(metadata !24980)
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !24980 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hb36ac10824999784E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddd6d73583698395E.exit.i"
  %i.p = mul nuw i64 %.val2.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull inttoptr (i64 8 to ptr), i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !24980
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hb36ac10824999784E.exit"

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %i.m

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hb36ac10824999784E.exit": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddd6d73583698395E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h989d05af70976065E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !42, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c969ab013d1e5f6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c969ab013d1e5f6E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24990
  store ptr @510, ptr %i.a, align 8, !noalias !24991
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24991
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !24991
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !24991
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @397, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24991
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !24991
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !41, !align !75, !noundef !41
  %i.n = load i32, ptr %i.m, align 4, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !24993
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !24993 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17ha222483950d4dacaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25018
  store i64 0, ptr %i.d, align 8, !noalias !25018
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25018
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25018
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !25018
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !25018
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !25018
  store ptr %i.d, ptr %i.c, align 8, !noalias !25018
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1102, ptr %i.h, align 8, !noalias !25018
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !25019

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25020)
  call void @llvm.experimental.noalias.scope.decl(metadata !25021)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !25022, !noalias !25018 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !25022, !noalias !25018, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !25023
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit", !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !25019

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !25024 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25024 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25018
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !25025
  %i.l = call noundef dereferenceable_or_null(35) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, 9) 1) #67, !noalias !25025 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !25026
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.l, ptr noundef nonnull align 1 dereferenceable(35) @511, i64 35, i1 false), !noalias !25027
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !41, !align !75, !noundef !41
  %i.r = load i32, ptr %i.q, align 4, !noundef !41
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !41, !align !42, !noundef !41
  %.val = load ptr, ptr %i.t, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !51

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !41 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
end_hunk_6
begin_hunk_7_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17he9ded73ff38f5139E":bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1102, ptr %i.h, align 8, !noalias !25054
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !25055

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25056)
  call void @llvm.experimental.noalias.scope.decl(metadata !25057)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !25058, !noalias !25054 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !25058, !noalias !25054, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !25059
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit", !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !25055

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !25060 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25060 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25054
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !41, !align !46, !noundef !41
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !41 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !25061
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #67, !noalias !25061 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hbc27c1c78dfb742aE.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !25062
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !25063
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !41, !align !75, !noundef !41
  %i.v = load i32, ptr %i.u, align 4, !noundef !41
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !41, !align !42, !noundef !41
  %.val = load ptr, ptr %i.x, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !51

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %.val, align 8, !noundef !41 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935        ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  %i.ae = and i64 %i.aa, 1080863910568919040
  %i.af = icmp ult i64 %i.aa, 864691128455135232
  call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %.val, align 8
  %i.ah = icmp eq i64 %i.ab, 72057594037927935
  br i1 %i.ah, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !44

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2427, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !25064
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit7"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !41, !align !75, !noundef !41
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.m, ptr %i.ar, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.10.0.i.i, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.m, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.v, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.ap, ptr %i.av, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !25065
  %i.aw = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !25065 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.p:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #75
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.aw, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17heaac627ec73edf43E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !42, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !41, !align !42, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c969ab013d1e5f6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0c969ab013d1e5f6E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25075
  store ptr @514, ptr %i.a, align 8, !noalias !25076
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !25076
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !25076
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !25076
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @397, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !25076
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !25076
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !25077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !41, !align !75, !noundef !41
  %i.n = load i32, ptr %i.m, align 4, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !25078
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !25078 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17hce91f38638ec8648E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.48.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 32 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 7 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 7 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [48 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [48 x i8], align 8               ; 7 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [48 x i8], align 8               ; 7 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [48 x i8], align 8               ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [48 x i8], align 8               ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [48 x i8], align 8               ; 8 uses
  %i.ax = alloca [48 x i8], align 8               ; 6 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [48 x i8], align 8               ; 6 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [48 x i8], align 8               ; 7 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [48 x i8], align 8               ; 7 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [48 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [48 x i8], align 8               ; 7 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [48 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [48 x i8], align 8               ; 6 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [48 x i8], align 8               ; 7 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [48 x i8], align 8               ; 6 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [48 x i8], align 8               ; 7 uses
  %i.bu = alloca [8 x i8], align 8                ; 4 uses
  %i.bv = alloca [48 x i8], align 8               ; 7 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.2173 = alloca [16 x i8], align 8         ; 2 uses
  %.sroa.2 = alloca [16 x i8], align 8            ; 2 uses
  %i.by = alloca [64 x i8], align 8               ; 9 uses
  %i.bz = alloca [208 x i8], align 8              ; 12 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [88 x i8], align 8               ; 5 uses
  %i.cc = alloca [120 x i8], align 8              ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 4 uses
  %i.ce = alloca [120 x i8], align 8              ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 6 uses
  %i.cm = alloca [64 x i8], align 8               ; 11 uses
  %i.cn = alloca [8 x i8], align 8                ; 4 uses
  %i.co = alloca [24 x i8], align 8               ; 2 uses
  %i.cp = alloca [392 x i8], align 8              ; 7 uses
  %i.cq = alloca [48 x i8], align 8               ; 9 uses
  %i.cr = alloca [24 x i8], align 8               ; 2 uses
  %i.cs = alloca [392 x i8], align 8              ; 7 uses
  %i.ct = alloca [48 x i8], align 8               ; 9 uses
  %i.cu = alloca [24 x i8], align 8               ; 2 uses
  %i.cv = alloca [392 x i8], align 8              ; 7 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [8 x i8], align 8                ; 4 uses
  %i.cy = alloca [16 x i8], align 16              ; 9 uses
  %i.cz = alloca [8 x i8], align 8                ; 14 uses
  %i.da = alloca [32 x i8], align 8               ; 7 uses
  %i.db = alloca [8 x i8], align 8                ; 6 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %i.dd = alloca [8 x i8], align 8                ; 6 uses
  %i.de = alloca [32 x i8], align 8               ; 10 uses
  %i.df = alloca [24 x i8], align 8               ; 4 uses
  %i.dg = alloca [32 x i8], align 8               ; 7 uses
  %i.dh = alloca [8 x i8], align 8                ; 10 uses
  %i.di = alloca [32 x i8], align 8               ; 7 uses
  %i.dj = alloca [8 x i8], align 8                ; 7 uses
  %i.dk = alloca [32 x i8], align 8               ; 7 uses
  %i.dl = alloca [8 x i8], align 8                ; 6 uses
end_hunk_7
begin_hunk_8_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17hce91f38638ec8648E":bb.a
    i64 0, label %bb.us
  ], !prof !51

bb.ur:                                            ; preds = %bb.uq
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc1073 unwind label %bb.si

.noexc1073:                                       ; preds = %bb.ur
  unreachable

bb.us:                                            ; preds = %bb.uq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26177
  store ptr %.val.i1070, ptr %i.g, align 8, !noalias !26177
  %i.baa = load i64, ptr %.val.i1070, align 8, !noalias !26178, !noundef !41 ; 3 uses
  %i.bab = and i64 %i.baa, 72057594037927935
  %i.bac = add nsw i64 %i.bab, -1                 ; 3 uses
  %i.bad = and i64 %i.baa, 1080863910568919040
  %i.bae = icmp ult i64 %i.baa, 864691128455135232
  call void @llvm.assume(i1 %i.bae)
  %i.baf = or i64 %i.bac, %i.bad
  store i64 %i.baf, ptr %.val.i1070, align 8, !noalias !26178
  %i.bag = icmp ugt i64 %i.bac, 72057594037927935
  br i1 %i.bag, label %bb.uu, label %bb.ut, !prof !44

bb.ut:                                            ; preds = %bb.us
  %i.bah = icmp eq i64 %i.bac, 0
  br i1 %i.bah, label %bb.uv, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1072"

bb.uu:                                            ; preds = %bb.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26178
  store ptr @2427, ptr %i.f, align 8, !noalias !26178
  %i.bai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bai, align 8, !noalias !26178
  %i.baj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.baj, align 8, !noalias !26178
  %i.bak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bak, align 8, !noalias !26178
  %i.bal = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.bal, align 8, !noalias !26178
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc1074 unwind label %bb.si

.noexc1074:                                       ; preds = %bb.uu
  unreachable

bb.uv:                                            ; preds = %bb.ut
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1072" unwind label %bb.si

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1072": ; preds = %bb.uv, %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26177
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1076"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1083": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1079", %bb.uw, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1076"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.bam = trunc nuw i8 %.sroa.0253.6 to i1
  br i1 %i.bam, label %bb.vc, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1090"

bb.uw:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1076"
  %i.ban = ptrtoint ptr %.sroa.0106.0.copyload107 to i64
  %i.bao = and i64 %i.ban, 3
  %..i.i1078 = call i64 @llvm.umin.i64(i64 %i.bao, i64 2)
  switch i64 %..i.i1078, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1083" [
    i64 2, label %bb.ux
    i64 0, label %bb.uy
  ], !prof !51

bb.ux:                                            ; preds = %bb.uw
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc1080 unwind label %bb.rz

.noexc1080:                                       ; preds = %bb.ux
  unreachable

bb.uy:                                            ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26179
  store ptr %.sroa.0106.0.copyload107, ptr %i.e, align 8, !noalias !26179
  %i.bap = load i64, ptr %.sroa.0106.0.copyload107, align 8, !noalias !26180, !noundef !41 ; 3 uses
  %i.baq = and i64 %i.bap, 72057594037927935
  %i.bar = add nsw i64 %i.baq, -1                 ; 3 uses
  %i.bas = and i64 %i.bap, 1080863910568919040
  %i.bat = icmp ult i64 %i.bap, 864691128455135232
  call void @llvm.assume(i1 %i.bat)
  %i.bau = or i64 %i.bar, %i.bas
  store i64 %i.bau, ptr %.sroa.0106.0.copyload107, align 8, !noalias !26180
  %i.bav = icmp ugt i64 %i.bar, 72057594037927935
  br i1 %i.bav, label %bb.va, label %bb.uz, !prof !44

bb.uz:                                            ; preds = %bb.uy
  %i.baw = icmp eq i64 %i.bar, 0
  br i1 %i.baw, label %bb.vb, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1079"

bb.va:                                            ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26180
  store ptr @2427, ptr %i.d, align 8, !noalias !26180
  %i.bax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bax, align 8, !noalias !26180
  %i.bay = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.bay, align 8, !noalias !26180
  %i.baz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.baz, align 8, !noalias !26180
  %i.bba = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.bba, align 8, !noalias !26180
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc1081 unwind label %bb.rz

.noexc1081:                                       ; preds = %bb.va
  unreachable

bb.vb:                                            ; preds = %bb.uz
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1079" unwind label %bb.rz

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1079": ; preds = %bb.vb, %bb.uz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26179
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1083"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1090": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1086", %bb.vc, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1083"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$GT$17h12c182cb63ed1d81E"(ptr noalias noundef align 8 dereferenceable(32) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.tu

bb.vc:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1083"
  switch i64 %..i1024, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1090" [
    i64 2, label %bb.vd
    i64 0, label %bb.ve
  ], !prof !51

bb.vd:                                            ; preds = %bb.vc
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc1087 unwind label %bb.rq

.noexc1087:                                       ; preds = %bb.vd
  unreachable

bb.ve:                                            ; preds = %bb.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26181
  store ptr %.sroa.0103.0.copyload104, ptr %i.c, align 8, !noalias !26181
  %i.bbb = load i64, ptr %.sroa.0103.0.copyload104, align 8, !noalias !26182, !noundef !41 ; 3 uses
  %i.bbc = and i64 %i.bbb, 72057594037927935
  %i.bbd = add nsw i64 %i.bbc, -1                 ; 3 uses
  %i.bbe = and i64 %i.bbb, 1080863910568919040
  %i.bbf = icmp ult i64 %i.bbb, 864691128455135232
  call void @llvm.assume(i1 %i.bbf)
  %i.bbg = or i64 %i.bbd, %i.bbe
  store i64 %i.bbg, ptr %.sroa.0103.0.copyload104, align 8, !noalias !26182
  %i.bbh = icmp ugt i64 %i.bbd, 72057594037927935
  br i1 %i.bbh, label %bb.vg, label %bb.vf, !prof !44

bb.vf:                                            ; preds = %bb.ve
  %i.bbi = icmp eq i64 %i.bbd, 0
  br i1 %i.bbi, label %bb.vh, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1086"

bb.vg:                                            ; preds = %bb.ve
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26182
  store ptr @2427, ptr %i.b, align 8, !noalias !26182
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bbj, align 8, !noalias !26182
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bbk, align 8, !noalias !26182
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bbl, align 8, !noalias !26182
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bbm, align 8, !noalias !26182
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc1088 unwind label %bb.rq

.noexc1088:                                       ; preds = %bb.vg
  unreachable

bb.vh:                                            ; preds = %bb.vf
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1086" unwind label %bb.rq

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i1086": ; preds = %bb.vh, %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26181
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E.exit1090"

bb.vi:                                            ; preds = %.body1067
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cz) #75
          to label %.body1020 unwind label %bb.bw

.body1020.thread:                                 ; preds = %bb.sc, %bb.sd, %bb.se, %.body1020
  %.pn387635 = phi { ptr, i32 } [ %.pn387, %.body1020 ], [ %i.auj, %bb.se ], [ %i.auj, %bb.sd ], [ %i.auj, %bb.sc ]
  %.sroa.0253.2634 = phi i8 [ %.sroa.0253.2, %.body1020 ], [ 1, %bb.se ], [ 1, %bb.sd ], [ 1, %bb.sc ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #75
          to label %.body1013 unwind label %bb.bw

.body1013.thread:                                 ; preds = %bb.rt, %bb.ru, %bb.rv, %.body1013
  %.pn389630 = phi { ptr, i32 } [ %.pn389, %.body1013 ], [ %i.atl, %bb.rv ], [ %i.atl, %bb.ru ], [ %i.atl, %bb.rt ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dd) #75
          to label %bb.rp unwind label %bb.bw

"_ZN4core3ptr395drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_opn..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h523875d52e46314fE.exit": ; preds = %.body684, %.body610, %bb.fo, %bb.id, %bb.mh, %bb.pg, %bb.rp
  %.pn492 = phi { ptr, i32 } [ %.pn391, %bb.rp ], [ %.pn402, %bb.pg ], [ %.pn490, %.body610 ], [ %.pn456, %bb.fo ], [ %.pn443, %bb.id ], [ %.pn420, %bb.mh ], [ %.pn473, %.body684 ]
  resume { ptr, i32 } %.pn492
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h090626ceab021c6cE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26204
  store i64 0, ptr %i.c, align 8, !noalias !26204
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !26204
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !26204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26204
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !26204
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !26204
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !26204
  store ptr %i.c, ptr %i.b, align 8, !noalias !26204
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1102, ptr %i.f, align 8, !noalias !26204
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !26205

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26206)
  call void @llvm.experimental.noalias.scope.decl(metadata !26207)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !26208, !noalias !26204 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !26208, !noalias !26204, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !26209
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !26205

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26210)
  %i.j = load i64, ptr %0, align 8, !range !64, !alias.scope !26210, !noundef !41 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !26211)
  call void @llvm.experimental.noalias.scope.decl(metadata !26212)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !26213, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !26213
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26204
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !26214
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !26214 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !49

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !26215)
  %i.s = load i64, ptr %0, align 8, !range !64, !alias.scope !26215, !noundef !41 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !26216)
  call void @llvm.experimental.noalias.scope.decl(metadata !26217)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !26218, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !26218
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hb8f6b859daf3f84fE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h1a04d9baf9012050E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 5, 11) %2, i64 noundef range(i64 1, 5) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 15 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26239
  store i64 0, ptr %i.c, align 8, !noalias !26239
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !26239
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !26239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26239
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.f, align 8, !noalias !26239
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !26239
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !26239
  store ptr %i.c, ptr %i.b, align 8, !noalias !26239
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1102, ptr %i.g, align 8, !noalias !26239
  %i.h = invoke noundef zeroext i1 @"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !26240

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26241)
  call void @llvm.experimental.noalias.scope.decl(metadata !26242)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !26243, !noalias !26239 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %.thread15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !26243, !noalias !26239, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !26244
  br label %.thread15

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %bb.f, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #73
          to label %.noexc.i unwind label %bb.b, !noalias !26240

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !26245 ; 3 uses
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !26245 ; 3 uses
  %.sroa.6.0.copyload5 = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !26245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26239
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !26246
  %i.k = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #67, !noalias !26246 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload1, 0
  br i1 %i.n, label %.thread15, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3, i64 noundef %.sroa.0.0.copyload1, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !26247
  br label %.thread15

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false), !noalias !26248
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = load i32, ptr %.8.val, align 4, !noundef !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload1, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.6.0.copyload5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %2, ptr %i.q, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %2, ptr %.sroa.510.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %4, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %5, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.o, ptr %i.u, align 4
  store i64 23, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !26249
  %i.v = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !26249 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.n, !prof !49

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.v, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.o:                                             ; preds = %.thread15
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.p:                                             ; preds = %bb.l, %.thread15
  %.pn13 = phi { ptr, i32 } [ %.pn14, %.thread15 ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %.pn13

.thread15:                                        ; preds = %bb.h, %bb.i, %bb.b, %bb.c
  %.pn14 = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.m, %bb.h ], [ %i.i, %bb.c ], [ %i.m, %bb.i ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #75
          to label %bb.p unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h2de4762062162a72E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1 = load ptr, ptr %i.c, align 8, !noundef !41
  %i.d = tail call fastcc noundef ptr @_ZN16nickel_lang_core5label5Label17get_evaluated_arg17hf2a299c60ec7478aE(ptr %.val1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h421fd84538203e33E"(ptr %i.d) #75
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  store i64 19, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !26252
  %i.h = tail call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !26252 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit", !prof !49

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b) #75
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7e6a24834778148E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.h

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h8d6d3a3b484af3d6E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN85_$LT$nickel_lang_core..term..string..SubstringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1ed75060094802ffE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26262
  store ptr @0, ptr %i.a, align 8, !noalias !26263
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !26263
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !26263
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !26263
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !26263
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.j, %bb.e ]
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17hfa788d1a08d7d1a4E"(ptr noalias noundef align 8 dereferenceable(120) %0) #75
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.g, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !26264
  %i.h = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !26264 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !49

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #73
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h736c942f84aeec45E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #75
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17hfa788d1a08d7d1a4E"(ptr noalias noundef align 8 dereferenceable(120) %0)
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17he0aaf5b84e2b5a1aE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [168 x i8], align 8               ; 5 uses
  %i.g = icmp eq ptr %1, %2
  br i1 %i.g, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h564d92912969f77bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  br label %bb.c

bb.c:                                             ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17h320cd330ef320cd2E.exit.i.i.i", %bb.b
  %i.m = phi ptr [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17h320cd330ef320cd2E.exit.i.i.i" ], [ %0, %bb.b ] ; 3 uses
  %.sroa.07.0.i.i = phi i64 [ %i.ag, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17h320cd330ef320cd2E.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %.sroa.07.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26276
  store ptr %i.m, ptr %i.e, align 8, !noalias !26276
  call void @llvm.experimental.noalias.scope.decl(metadata !26277)
  call void @llvm.experimental.noalias.scope.decl(metadata !26278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26279
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !26280, !noalias !26281, !nonnull !41, !noundef !41 ; 5 uses
  %i.p = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.q = and i64 %i.p, 3
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 2)
  switch i64 %..i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i" [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !51

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc.i.i.i unwind label %.body.thread5.i.i.i, !noalias !26276

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !26279, !noundef !41 ; 3 uses
  %i.s = and i64 %i.r, 72057594037927935          ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  %i.v = and i64 %i.r, 1080863910568919040
  %i.w = icmp ult i64 %i.r, 864691128455135232
  call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %i.u, %i.v
  store i64 %i.x, ptr %.val.i.i.i.i.i, align 8, !noalias !26279
  %i.y = icmp eq i64 %i.s, 72057594037927935
  br i1 %i.y, label %bb.f, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i", !prof !44

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26279
  store ptr @2427, ptr %i.b, align 8, !noalias !26279
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !26279
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aa, align 8, !noalias !26279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !26279
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !26279
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc2.i.i.i unwind label %.body.thread5.i.i.i, !noalias !26276

.noexc2.i.i.i:                                    ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i": ; preds = %bb.e, %bb.c
  store ptr %.val.i.i.i.i.i, ptr %i.d, align 8, !noalias !26279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26279
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n)
          to label %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17h320cd330ef320cd2E.exit.i.i.i" unwind label %bb.g, !noalias !26281

bb.g:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #75
          to label %.body.thread.i.i.i unwind label %bb.h, !noalias !26281

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !26281
  unreachable

.body.thread5.i.i.i:                              ; preds = %bb.f, %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17h320cd330ef320cd2E.exit.i.i.i": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !26276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26279
  store ptr %i.m, ptr %i.f, align 8, !noalias !26276
  store ptr %.val.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !26276
  %i.af = call noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract5apply17h979b649f88f8a7a6E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l, ptr noundef nonnull %i.m, i32 noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26276
  %i.ag = add nuw i64 %.sroa.07.0.i.i, 1          ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.k
  br i1 %i.ah, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h564d92912969f77bE.exit", label %bb.c

.body.thread.i.i.i:                               ; preds = %.body.thread5.i.i.i, %bb.g
  %eh.lpad-body4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread5.i.i.i ], [ %i.ad, %bb.g ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #75
          to label %.body unwind label %bb.i, !noalias !26282

bb.i:                                             ; preds = %.body.thread.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !26282
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h564d92912969f77bE.exit": ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17h320cd330ef320cd2E.exit.i.i.i", %bb.a
  %.sroa.04.0.i.i = phi ptr [ %0, %bb.a ], [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17h320cd330ef320cd2E.exit.i.i.i" ]
  ret ptr %.sroa.04.0.i.i

.body:                                            ; preds = %.body.thread.i.i.i
  resume { ptr, i32 } %eh.lpad-body4.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term4make12enum_variant17h1dd7ccb1128374d6E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @377, i64 noundef 5)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit": ; preds = %bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !26289
  %i.d = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #67, !noalias !26289 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !44

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha10cf2cfeec69f0bE"(ptr nonnull %0) #75
          to label %.body unwind label %bb.e, !noalias !26289

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26289
  store ptr @386, ptr %i.a, align 8, !noalias !26289
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !26289
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !26289
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !26289
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !26289
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #73
          to label %bb.d unwind label %bb.b, !noalias !26289

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !26289
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h21f1c7824eaf31d9E.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !26289
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.l, align 8, !noalias !26289
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.m, align 8, !noalias !26290
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body3

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #75
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term4make7builder6Record4path17hcf7981c57792d868E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !26317, !noalias !26318 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !26317, !noalias !26318, !nonnull !41, !noundef !41 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !26317, !noalias !26318 ; 4 uses
  %i.d = icmp ult i64 %.sroa.5.0.copyload.i, 461168601842738791
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..make..builder..Record$GT$17h18857efbbf03fe64E"(ptr noalias noundef align 8 dereferenceable(32) %1) #75
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.e = mul nuw i64 %.sroa.0.0.copyload.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #67, !noalias !26319
  br label %.body

bb.c:                                             ; preds = %.noexc12.i.i.i.i.i, %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17ha8b543871f4dabdaE.exit.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.g, label %.body, label %bb.b

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.noexc13.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc13.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26320
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.h, i64 20, i1 false), !noalias !26320
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !26321
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17ha8b543871f4dabdaE.exit.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i, !prof !48

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26321
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !26321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26321
  store ptr %i.b, ptr %i.a, align 8, !noalias !26321
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1083, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1082)
          to label %.noexc.i.i.i.i.i unwind label %bb.c, !noalias !26322

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26321
  br label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17ha8b543871f4dabdaE.exit.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17ha8b543871f4dabdaE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = invoke { ptr, i64 } @"_ZN92_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17ha8e0a3be93011bbfE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c)
          to label %.noexc12.i.i.i.i.i unwind label %bb.c, !noalias !26322 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17ha8b543871f4dabdaE.exit.i.i.i.i.i.i.i"
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17h2435e2754e4eaabfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %.noexc13.i.i.i.i.i unwind label %bb.c, !noalias !26322

.noexc13.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26320
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !noalias !26322
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.p, %.sroa.5.0.copyload.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.loopexit:                                        ; preds = %.noexc13.i.i.i.i.i, %bb.a
  %i.q = mul nuw i64 %.sroa.0.0.copyload.i, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.q, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx17, align 8
  store i64 18, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 -9223372036854775806, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  ret void

bb.d:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData10map_values17h8e56e7b6797383b7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.059 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 12 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 27 uses
  %i.j = alloca [40 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.k, align 8
  %.sroa.022.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.022.sroa.4.0.copyload = load ptr, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_8
begin_hunk_9_@_ZN4core4iter6traits8iterator8Iterator7collect17hf0b8d9d46d6c50e0E:bb.a
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.aa, ptr %i.j, align 8, !alias.scope !68855, !noalias !68856
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !68857, !nonnull !41, !noundef !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i13.i.i.i.i = phi ptr [ %i.ac, %bb.h ], [ null, %bb.g ] ; 2 uses
  store i64 1, ptr %i.b, align 8, !alias.scope !68850, !noalias !68858
  store ptr %.sroa.0.0.i.i.i13.i.i.i.i, ptr %i.g, align 8, !alias.scope !68850, !noalias !68858
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14thread-pre-split.i.i.i.i": ; preds = %bb.f
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !68836
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14thread-pre-split.i.i.i.i", %bb.i
  %i.ad = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14thread-pre-split.i.i.i.i" ], [ %.sroa.0.0.i.i.i13.i.i.i.i, %bb.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not7.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14.i.i.i.i"
  %i.ae = load ptr, ptr %i.c, align 16, !alias.scope !68835, !noalias !68847, !noundef !41
  %.not8.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not8.i.i.i.i, label %bb.m, label %bb.l, !prof !44

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit14.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr457drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h5b062420bb8c1520E"(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17ha9bec3d1707fce99E.exit" unwind label %bb.y, !noalias !68834

bb.l:                                             ; preds = %bb.j
  %i.af = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.o unwind label %.loopexit.i.i.i.i, !noalias !68847 ; 4 uses

bb.m:                                             ; preds = %bb.j
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #73
          to label %bb.n unwind label %.loopexit.split-lp.i.i.i.i, !noalias !68847

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %i.af, align 8, !range !58, !noalias !68847, !noundef !41
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = load i8, ptr %i.e, align 16, !alias.scope !68835, !noalias !68847, !noundef !41
  %i.ak = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17hfaa13c687ad1bd94E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.ai, i8 noundef %i.aj)
          to label %bb.s unwind label %.loopexit.i.i.i.i, !noalias !68847

bb.q:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 272 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noalias !68847, !noundef !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 264 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !68847, !noundef !41
  %i.ap = sub i64 %i.am, %i.ao                    ; 2 uses
  %i.aq = sub i64 32, %i.ap
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h5093877abe0e5513E"(ptr noalias noundef align 8 dereferenceable(272) %i.ai, ptr noalias noundef align 8 dereferenceable(48) %i.b, i64 noundef %i.aq)
          to label %bb.r unwind label %.loopexit.i.i.i.i, !noalias !68847

bb.r:                                             ; preds = %bb.q
  %i.ar = load i64, ptr %i.al, align 8, !noalias !68847, !noundef !41
  %i.as = load i64, ptr %i.an, align 8, !noalias !68847, !noundef !41
  %i.at = add i64 %i.ap, %i.as
  %i.au = sub i64 %i.ar, %i.at
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.au, %bb.r ], [ %i.ak, %bb.p ]
  %i.av = load i64, ptr %i.d, align 8, !alias.scope !68835, !noalias !68847, !noundef !41
  %i.aw = add i64 %i.av, %.sroa.03.0.i.i.i.i
  store i64 %i.aw, ptr %i.d, align 8, !alias.scope !68835, !noalias !68847
  call void @llvm.experimental.noalias.scope.decl(metadata !68859)
  call void @llvm.experimental.noalias.scope.decl(metadata !68860)
  %i.ax = load i64, ptr %i.b, align 8, !range !58, !alias.scope !68859, !noalias !68861, !noundef !41
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16thread-pre-split.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !68862)
  call void @llvm.experimental.noalias.scope.decl(metadata !68863)
  call void @llvm.experimental.noalias.scope.decl(metadata !68864)
  %i.az = load ptr, ptr %i.h, align 8, !alias.scope !68865, !noalias !68866, !nonnull !41, !noundef !41
  %i.ba = load ptr, ptr %i.j, align 8, !alias.scope !68865, !noalias !68866, !nonnull !41, !noundef !41 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.j, align 8, !alias.scope !68865, !noalias !68866
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !68867, !nonnull !41, !noundef !41
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.0.i.i.i15.i.i.i.i = phi ptr [ %i.be, %bb.u ], [ null, %bb.t ] ; 2 uses
  store i64 1, ptr %i.b, align 8, !alias.scope !68859, !noalias !68861
  store ptr %.sroa.0.0.i.i.i15.i.i.i.i, ptr %i.g, align 8, !alias.scope !68859, !noalias !68861
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16thread-pre-split.i.i.i.i": ; preds = %bb.s
  %.pr19.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !68836
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16thread-pre-split.i.i.i.i", %bb.v
  %i.bf = phi ptr [ %.pr19.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16thread-pre-split.i.i.i.i" ], [ %.sroa.0.0.i.i.i15.i.i.i.i, %bb.v ]
  %.not9.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.w

bb.w:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hdff448eee96c360fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !68847

._crit_edge.i.i.i.i:                              ; preds = %bb.w
  %.pre.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !58, !alias.scope !68850, !noalias !68858
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha51ddf0ffa65c96bE.exit16.i.i.i.i" ]
  br label %bb.f

bb.x:                                             ; preds = %.body.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !68847
  unreachable

bb.y:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.y, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.y ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !68868)
  call void @llvm.experimental.noalias.scope.decl(metadata !68869)
  %i.bi = load ptr, ptr %i.c, align 16, !alias.scope !68870, !noalias !68834, !noundef !41 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i", label %bb.z

bb.z:                                             ; preds = %.body.i.i.i
  %i.bk = load i64, ptr %i.bi, align 8, !noalias !68871, !noundef !41
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %i.bi, align 8, !noalias !68871
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.aa, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i"

bb.aa:                                            ; preds = %bb.z
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i" unwind label %bb.ab, !noalias !68834

bb.ab:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !68834
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i": ; preds = %bb.aa, %bb.z, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17ha9bec3d1707fce99E.exit": ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68836
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !68872
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !68872
  %i.bo = load <2 x i64>, ptr %i.c, align 16, !noalias !68872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68834
  store <2 x i64> %i.bo, ptr %0, align 8, !alias.scope !68833, !noalias !68873
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !68833, !noalias !68873
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bp, align 8, !alias.scope !68833, !noalias !68873
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.bq, align 8, !alias.scope !68833, !noalias !68873
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hf1ccf36e5175c277E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68908)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68909
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68910)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !68909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68912)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !68913, !noalias !68914
  store i64 0, ptr %i.b, align 8, !alias.scope !68915, !noalias !68916
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4a63fdfc6b9b78bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.i.i.i.i, !noalias !68911 ; 2 uses

.body.i.i.i.i:                                    ; preds = %bb.e, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.m, %bb.e ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h7f5324da795fbda0E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #75
          to label %.body.i.i.i unwind label %bb.u, !noalias !68917

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.h
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !68918, !noalias !68919
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !68918, !noalias !68919
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68911
  store i64 1, ptr %i.a, align 8, !noalias !68911
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !68911
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !68911
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !68911
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !68920
  %i.k = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !68920 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1c596b27f3f8341E.exit.i.i.i.i", !prof !49

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #73
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !68911

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hc196b4ef44df6c58E"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !68911

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !68911
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1c596b27f3f8341E.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !68911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68911
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !68910, !noalias !68917
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1c596b27f3f8341E.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = phi i64 [ 1, %.preheader ], [ %.be, %.backedge ]
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4a63fdfc6b9b78bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !68917 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !68921, !noalias !68922
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !68921, !noalias !68922
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !68911
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !68910, !noalias !68917, !noundef !41
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !44

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h7f5324da795fbda0E"(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h422e8fee7a24eb73E.exit" unwind label %bb.v, !noalias !68909

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h4c3cad47a82b4a51E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.i.i.i.i, !noalias !68917 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #73
          to label %bb.m unwind label %.loopexit.split-lp.i.i.i.i, !noalias !68917

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !58, !noalias !68917, !noundef !41
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !68910, !noalias !68917, !noundef !41
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h8fcf7c1732953f61E"(ptr noalias noundef align 8 dereferenceable(56) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.i.i.i.i, !noalias !68917

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !68917, !noundef !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !68917, !noundef !41
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h4e18af994167a925E"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(56) %i.b, i64 noundef %i.ae)
          to label %bb.q unwind label %.loopexit.i.i.i.i, !noalias !68917

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.z, align 8, !noalias !68917, !noundef !41
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !68917, !noundef !41
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.q ], [ %i.y, %bb.o ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !68910, !noalias !68917, !noundef !41
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !68910, !noalias !68917
  %i.al = load i64, ptr %i.b, align 8, !range !58, !alias.scope !68923, !noalias !68924, !noundef !41
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17thread-pre-split.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha4a63fdfc6b9b78bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc16.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !68917 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %bb.s
  store i64 1, ptr %i.b, align 8, !alias.scope !68923, !noalias !68924
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !68923, !noalias !68924
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17thread-pre-split.i.i.i.i": ; preds = %bb.r
  %.pr18.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !68911
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17thread-pre-split.i.i.i.i", %.noexc16.i.i.i.i
  %i.ao = phi ptr [ %.pr18.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc16.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hdff448eee96c360fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !68917

._crit_edge.i.i.i.i:                              ; preds = %bb.t
  %.pre.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !58, !alias.scope !68921, !noalias !68922
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h00d1669e17546fb4E.exit17.i.i.i.i" ]
  br label %bb.g

bb.u:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !68917
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !68925)
  call void @llvm.experimental.noalias.scope.decl(metadata !68926)
  %i.ar = load ptr, ptr %i.c, align 16, !alias.scope !68927, !noalias !68909, !noundef !41 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.body.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !68928, !noundef !41
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !68928
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.x, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i" unwind label %bb.y, !noalias !68909

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !68909
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8ecd379744b8bc57E.exit.i.i.i": ; preds = %bb.x, %bb.w, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h422e8fee7a24eb73E.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68911
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !68929
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !68929
  %i.ax = load <2 x i64>, ptr %i.c, align 16, !noalias !68929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68909
  store <2 x i64> %i.ax, ptr %0, align 8, !alias.scope !68908, !noalias !68930
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !68908, !noalias !68930
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ay, align 8, !alias.scope !68908, !noalias !68930
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.az, align 8, !alias.scope !68908, !noalias !68930
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hf2551d0df17d259dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.713.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.11.i.i = alloca i64, align 8             ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68964
  store i64 0, ptr %i.a, align 8, !noalias !68964
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !68964
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !68964
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68965)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.713.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  %.not.i.i.i = icmp eq i32 %.sroa.6.0.copyload, 1114113
  %i.b = trunc nuw i32 %.sroa.0.0.copyload to i1  ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %.sroa.6.0.copyload, 1114112
  %i.d = zext i1 %i.c to i64                      ; 3 uses
  br i1 %i.b, label %bb.e, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h08d182874a336aacE.exit.i.i"

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %_ZN4core4iter6traits8iterator8Iterator4fold17h34899b59fef06560E.exit.i.i.thread.i.i

bb.d:                                             ; preds = %bb.c
  %narrow.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.0.copyload, i32 %.sroa.4.0.copyload)
  %.sink1.i.i.i.i.i = zext i32 %narrow.i.i.i.i.i to i64
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h08d182874a336aacE.exit.i.i"

_ZN4core4iter6traits8iterator8Iterator4fold17h34899b59fef06560E.exit.i.i.thread.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  br label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h89844e50a7d80bc7E.exit"

bb.e:                                             ; preds = %bb.b
  %narrow.i.i13.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.0.copyload, i32 %.sroa.4.0.copyload)
  %.sink1.i.i14.i.i.i = zext i32 %narrow.i.i13.i.i.i to i64
  %i.e = add nuw nsw i64 %i.d, %.sink1.i.i14.i.i.i ; 2 uses
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h08d182874a336aacE.exit.i.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h08d182874a336aacE.exit.i.i": ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.012.0.i.i = phi i64 [ %.sink1.i.i.i.i.i, %bb.d ], [ %i.e, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %.sink19.i.sroa.phi.i.i = phi ptr [ %.sroa.713.i.i, %bb.d ], [ %.sroa.11.i.i, %bb.e ], [ %.sroa.11.i.i, %bb.b ]
  %.sink.i.i.i = phi i64 [ 1, %bb.d ], [ %i.e, %bb.e ], [ %i.d, %bb.b ]
  store i64 %.sink.i.i.i, ptr %.sink19.i.sroa.phi.i.i, align 8, !alias.scope !68966, !noalias !68967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  %.not.i = icmp eq i64 %.sroa.012.0.i.i, 0
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i", label %bb.f, !prof !68968

bb.f:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h08d182874a336aacE.exit.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.012.0.i.i, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i" unwind label %.loopexit.split-lp.i, !noalias !68964

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i": ; preds = %bb.f, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h08d182874a336aacE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68970)
  %i.f = and i32 %.sroa.6.0.copyload, 2097150
  %switch.i.i.i.i = icmp eq i32 %i.f, 1114112
  br i1 %switch.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h34899b59fef06560E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68971)
  %i.g = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !68972, !noalias !68973, !noundef !41 ; 5 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ult i32 %.sroa.6.0.copyload, 128 ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = icmp samesign ult i32 %.sroa.6.0.copyload, 2048
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = icmp samesign ult i32 %.sroa.6.0.copyload, 65536
  %..i.i.i.i.i.i.i.i.i = select i1 %i.k, i64 3, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.g ], [ %..i.i.i.i.i.i.i.i.i, %bb.h ], [ 1, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.l = load i64, ptr %i.a, align 8, !range !43, !alias.scope !68974, !noalias !68973, !noundef !41
  %i.m = sub nsw i64 %i.l, %i.g
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.m
  br i1 %i.n, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i.i.i.i", !prof !44

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.g, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !noalias !68964

.noexc3.i:                                        ; preds = %bb.j
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !68972, !noalias !68973
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc3.i, %bb.i
  %i.o = phi i64 [ %i.g, %bb.i ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc3.i ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !68972, !noalias !68973, !nonnull !41, !noundef !41
  %i.q = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 10 uses
  br i1 %i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf41cf182ecbbe496E.exit.i.i.i.i.i.i.i.i.i"
  %i.s = icmp samesign ult i32 %.sroa.6.0.copyload, 2048
  %i.t = trunc i32 %.sroa.6.0.copyload to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128                ; 3 uses
  %i.w = lshr i32 %.sroa.6.0.copyload, 6
end_hunk_9
begin_hunk_10_@"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h316244447a4396edE":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76938)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !76939, !noundef !41 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN4core3ptr226drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..resolve..Package$C$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17hfcf4f190e9f0c1a9E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76940)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !76941, !noundef !41 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !76941, !nonnull !41, !noundef !41 ; 3 uses
  %.val13.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !76942
  %i.l = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i, splat (i8 -1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = bitcast <16 x i1> %i.l to i16
  br label %bb.f

bb.f:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i", %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.k, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.n, %bb.e ], [ %i.w, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.i, %bb.e ], [ %i.z, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.o = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.p = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val911.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !76943
  %i.q = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4864 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.q to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.t = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = and i16 %i.t, %.lcssa.i.i.i.i.i.i.i
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds [304 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.x ; 2 uses
  %i.z = add i64 %.sroa.108.014.i.i.i.i.i.i, -1   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -304
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_package..resolve..Package$GT$17h94b83aed7d2448adE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.aa), !noalias !76941
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -120
  tail call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.ab), !noalias !76941
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i, label %bb.f

_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i: ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h1b83c2e8f6330942E.exit.i.i.i.i.i.i", %bb.d
  %i.ad = mul i64 %i.f, 304                       ; 2 uses
  %i.ae = add i64 %i.ad, 304                      ; 2 uses
  %i.af = add i64 %i.f, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %"_ZN4core3ptr226drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..resolve..Package$C$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17hfcf4f190e9f0c1a9E.exit", label %bb.g

bb.g:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !76939, !nonnull !41, !noundef !41
  %i.al = sub i64 -304, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #67, !noalias !76939
  br label %"_ZN4core3ptr226drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..resolve..Package$C$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17hfcf4f190e9f0c1a9E.exit"

"_ZN4core3ptr226drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..resolve..Package$C$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17hfcf4f190e9f0c1a9E.exit": ; preds = %bb.g, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h28c7f9bc391d2c3eE.exit.i.i.i.i.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76945)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !76946, !nonnull !41, !noundef !41
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !76946
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %"_ZN4core3ptr183drop_in_place$LT$pubgrub..report..Derived$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h937c967c340b0644E.exit.i"

bb.h:                                             ; preds = %"_ZN4core3ptr226drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..resolve..Package$C$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17hfcf4f190e9f0c1a9E.exit"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h316244447a4396edE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %"_ZN4core3ptr183drop_in_place$LT$pubgrub..report..Derived$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h937c967c340b0644E.exit.i" unwind label %bb.j, !inline_history !76921

bb.i:                                             ; preds = %bb.j
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h316244447a4396edE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %.body unwind label %bb.k, !inline_history !76921

bb.j:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76948)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !76949, !nonnull !41, !noundef !41
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !76949
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.i, label %.body

bb.k:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !inline_history !76926
  unreachable

"_ZN4core3ptr183drop_in_place$LT$pubgrub..report..Derived$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h937c967c340b0644E.exit.i": ; preds = %"_ZN4core3ptr226drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_package..resolve..Package$C$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$C$rustc_hash..FxBuildHasher$GT$$GT$17hfcf4f190e9f0c1a9E.exit", %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76951)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !76952, !nonnull !41, !noundef !41
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !76952
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.l, label %"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E.exit"

bb.l:                                             ; preds = %"_ZN4core3ptr183drop_in_place$LT$pubgrub..report..Derived$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h937c967c340b0644E.exit.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h316244447a4396edE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E.exit" unwind label %bb.m, !inline_history !76931

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.ar, %bb.j ], [ %i.ar, %bb.i ]
  %i.bc = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.bc, label %"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit", label %bb.n

bb.n:                                             ; preds = %.body
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.o, label %"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit"

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 608, i64 noundef 8) #67
  br label %"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit"

"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E.exit": ; preds = %bb.b, %"_ZN4core3ptr183drop_in_place$LT$pubgrub..report..Derived$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h937c967c340b0644E.exit.i", %bb.l
  %i.bg = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.bg, label %"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit2", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E.exit"
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.q, label %"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit2"

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 608, i64 noundef 8) #67
  br label %"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit2"

"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit2": ; preds = %"_ZN4core3ptr190drop_in_place$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h3c0329a3be178033E.exit", %bb.p, %bb.q
  ret void

"_ZN4core3ptr242drop_in_place$LT$alloc..sync..Weak$LT$pubgrub..report..DerivationTree$LT$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hccc5053ff6983f8fE.exit": ; preds = %bb.o, %bb.n, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef range(i64 0, 2129) %0, i64 noundef range(i64 1, 129) %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  br label %bb.c

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit: ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) %1) #67 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %1, i64 noundef %0) #73
  unreachable

bb.c:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  %.sroa.07.0.i4 = phi ptr [ %i.b, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread ], [ %i.c, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit ]
  ret ptr %.sroa.07.0.i4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17ha2630b8ea34d899eE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #67 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17he147365e0b32b89fE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #67 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #73
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17h18fe8c9af17e1966E"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_ZN5alloc5slice11stable_sort17heec7a2389b70e719E.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 21
  br i1 %i.c, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h5d10bda940b57604E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5alloc5slice11stable_sort17heec7a2389b70e719E.exit

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h068dc5c4d2494966E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17heec7a2389b70e719E.exit

_ZN5alloc5slice11stable_sort17heec7a2389b70e719E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17hdb7aee503e60f31bE"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !76956
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %_ZN5alloc5slice11stable_sort17hf39f673ffc60eefaE.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 21
  br i1 %i.d, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h451b088ddf773d1eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5alloc5slice11stable_sort17hf39f673ffc60eefaE.exit

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hc17f973bfdc12c6dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17hf39f673ffc60eefaE.exit

_ZN5alloc5slice11stable_sort17hf39f673ffc60eefaE.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h9c21a51d395c93ccE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !64, !noundef !41 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !41 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #67
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !41, !noundef !41
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #67
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #67
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0e56f4ac0a90ea91E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !43, !noundef !41 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76961)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 160
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 28823037615171174
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76961
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.g, align 8, !alias.scope !76961, !nonnull !41, !noundef !41
  %i.i = mul nuw nsw i64 %i.c, 160
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !76962, !noalias !76961
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !76962, !noalias !76961
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !76962, !noalias !76961
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h9c21a51d395c93ccE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !76961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76961
  %i.k = load i64, ptr %i.b, align 8, !range !58, !noalias !76961, !noundef !41
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !64, !noalias !76961, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !76961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76961
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #73
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !76961, !nonnull !41, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76961
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !76961
  store i64 %i.e, ptr %0, align 8, !alias.scope !76961
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h19ef1f9434743bb7E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !43, !noundef !41 ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN6anyhow5error23object_reallocate_boxed17hb4beee8e9cdbd127E:bb.a
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.e, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 144, i64 noundef 8) #67
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hc0c37263de4a583aE(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78265
  %i.c = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78265 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #73
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr46drop_in_place$LT$gix_refspec..parse..Error$GT$17h2df283498982c771E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h675962c564d7fef3E"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #75
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h675962c564d7fef3E"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 104, i64 noundef 8) #67
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1670, 1
  ret { ptr, ptr } %i.j

bb.f:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.g:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.e, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 104, i64 noundef 8) #67
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hdc99893660c3f95cE(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78268
  %i.c = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78268 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr37drop_in_place$LT$gix..open..Error$GT$17h7cc0417778cafd5bE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #75
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

.body:                                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h675962c564d7fef3E"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #75
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h675962c564d7fef3E"(ptr noalias noundef align 8 dereferenceable(48) %i.h)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 184, i64 noundef 8) #67
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1668, 1
  ret { ptr, ptr } %i.k

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.e, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 184, i64 noundef 8) #67
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hf400e2b60859ca0eE(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !41, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67
  %i.d = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #67 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #75
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

.body:                                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h675962c564d7fef3E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #75
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h675962c564d7fef3E"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #67
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @657, 1
  ret { ptr, ptr } %i.l

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #67
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h36149e5a255e0e6aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hc52bce2600265d36E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hc52bce2600265d36E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h5c0de900d06cfb85E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !78273)
  call void @llvm.experimental.noalias.scope.decl(metadata !78274)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !78275 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !78275, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !78275
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hdba3cf1c844a46ccE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hae58473aa864ae2aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h1efd8edbcaf77cc1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1737, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78278
  %i.d = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78278 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h11539d9403038d3aE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr82drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix_index..file..write..Error$GT$$GT$17hdedf6644a7f70e86E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h11539d9403038d3aE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h3f220c2ba46f2b89E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1735, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78281
  %i.d = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78281 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h21cf8c780c66cd99E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr84drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..remote..init..error..Error$GT$$GT$17h9614d64b4468c854E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h21cf8c780c66cd99E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h482c3ca97deb2cafE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1725, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78284
  %i.d = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78284 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0309437f9adbd77bE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 184) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..remote..connection..fetch..error..Error$GT$$GT$17h7b10567da500ded1E"(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0309437f9adbd77bE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 dereferenceable(184) %i.a, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h50d959e73ad498c2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1734, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78287
  %i.d = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78287 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hecc618593275a9d9E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 184) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr69drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..init..Error$GT$$GT$17hb0fd96fc0194d76dE"(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hecc618593275a9d9E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 dereferenceable(184) %i.a, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h5582e64c2b7e0851E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1733, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 136, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78290
  %i.d = tail call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78290 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h630db821beddb138E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 192) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr87drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..remote..connect..error..Error$GT$$GT$17h8d8f0940687dab90E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h630db821beddb138E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h5929a3cc2cd0d1f2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1736, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 192, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78293
  %i.d = tail call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78293 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h56edd82a680d102cE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 248) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr99drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..remote..connection..fetch..prepare..Error$GT$$GT$17h7d009d81a8819ddbE"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h56edd82a680d102cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.d, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h5c0de900d06cfb85E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1740, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78296
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78296 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha12761261065ac95E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17he087fd90cfe555e4E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha12761261065ac95E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h67dd5ea159e5f19cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1726, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78299
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78299 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h15106a41c1891926E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 136) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr96drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..reference..errors..head_tree_id..Error$GT$$GT$17hab559319d2b1744cE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h15106a41c1891926E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h70e647573eea1952E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1732, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78302
  %i.d = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78302 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3a57523556a9c7daE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 184) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr69drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..open..Error$GT$$GT$17hc057fbce34b6d34dE"(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3a57523556a9c7daE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 dereferenceable(184) %i.a, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h732d8cfef25b5b24E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1729, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 120, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78305
  %i.d = tail call noundef align 8 dereferenceable_or_null(176) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 176, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78305 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8e04ad8b0e0a9c62E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 176) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr92drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..repository..index_from_tree..Error$GT$$GT$17h37ebb0952273d59bE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8e04ad8b0e0a9c62E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h93d2aa19fe79feb5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(248) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1738, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef nonnull align 8 dereferenceable(248) %0, i64 248, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78308
  %i.d = tail call noundef align 8 dereferenceable_or_null(304) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 304, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78308 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hca549c27f1b231dbE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 304) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr88drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix_worktree_state..checkout..Error$GT$$GT$17h18d8c52f3dbefcceE"(ptr noalias noundef nonnull align 8 dereferenceable(304) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hca549c27f1b231dbE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull align 8 dereferenceable(304) %i.a, i64 304, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h97bee342a47f635fE"(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1728, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78311
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78311 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h27fb0c17180e963fE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h393e542d60fa3bb1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h27fb0c17180e963fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha647cc09219f12fcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1731, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78314
  %i.d = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78314 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c2025fc4121467dE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr78drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix_refspec..parse..Error$GT$$GT$17h6b68ecc5e2c504dbE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c2025fc4121467dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hae58473aa864ae2aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1739, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.d, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78317
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78317 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9f5ab2a3eafdc659E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h675962c564d7fef3E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h4740880e11daa2b7E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h4740880e11daa2b7E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9f5ab2a3eafdc659E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hdb4f594bfc01bab0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1727, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78320
  %i.d = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78320 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha4b30733db6d785fE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr93drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix..object..peel..to_kind..error..Error$GT$$GT$17hcdeaad0b7eff30f8E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha4b30733db6d785fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17he83195db9c1a29d8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1730, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78323
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !78323 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3f06d1cfe37ce367E.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #73
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr86drop_in_place$LT$anyhow..error..ErrorImpl$LT$gix_object..find..existing..Error$GT$$GT$17haef5fbc3786d7ab6E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #75
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3f06d1cfe37ce367E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h020bf2bfb937a45eE"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17had8cbd146eb3e281E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17had8cbd146eb3e281E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h50d959e73ad498c2E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr37drop_in_place$LT$gix..init..Error$GT$17h5bcd3f0dfbe21efaE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h1816287dfe115d47E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h6cc7548e43ff9906E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h6cc7548e43ff9906E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h70e647573eea1952E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr37drop_in_place$LT$gix..open..Error$GT$17h7cc0417778cafd5bE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h28a502109934628aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(192) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hbd4413f3f25c40fdE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hbd4413f3f25c40fdE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h5929a3cc2cd0d1f2E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr67drop_in_place$LT$gix..remote..connection..fetch..prepare..Error$GT$17h2f35356a4a29af5eE"(ptr noalias noundef nonnull align 8 dereferenceable(192) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h2c0643f99d74edbcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h6cbfe2f572172511E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h6cbfe2f572172511E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha647cc09219f12fcE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr46drop_in_place$LT$gix_refspec..parse..Error$GT$17h2df283498982c771E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) #75
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h2ef49ca6a1b9cca8E"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h1f794b7683ea784dE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h1f794b7683ea784dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h482c3ca97deb2cafE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr65drop_in_place$LT$gix..remote..connection..fetch..error..Error$GT$17hf131ba49a4b81ef6E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h56aae2ecce3bae61E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h60d750745ed1b623E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h60d750745ed1b623E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h732d8cfef25b5b24E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr60drop_in_place$LT$gix..repository..index_from_tree..Error$GT$17hb63549c437d61ba9E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h618a2826ea6cebbbE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hc7df0e715cc535bbE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hc7df0e715cc535bbE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h1efd8edbcaf77cc1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr50drop_in_place$LT$gix_index..file..write..Error$GT$17ha7c991924b1a6461E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h85b9fae1f406030aE"(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h5b569e3005ceb7f1E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h5b569e3005ceb7f1E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h97bee342a47f635fE"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h88b536a979f1240fE"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(248) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hcbdca30a5561d955E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hcbdca30a5561d955E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h93d2aa19fe79feb5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9cf6b2cde9fa1d51E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hb0eb87761eab7f9cE.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hb0eb87761eab7f9cE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h3f220c2ba46f2b89E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr52drop_in_place$LT$gix..remote..init..error..Error$GT$17he8a3da58d799fef9E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) #75
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17haa17566ce51cacd6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h22a1804146ad82a9E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h22a1804146ad82a9E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h67dd5ea159e5f19cE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr64drop_in_place$LT$gix..reference..errors..head_tree_id..Error$GT$17hd0b680c6405454c5E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hb01efa97034b152bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h6941e81d97688c43E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h6941e81d97688c43E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17he83195db9c1a29d8E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr54drop_in_place$LT$gix_object..find..existing..Error$GT$17hd8aa0a99fdc973edE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hbe0fe4827b477367E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h36d33d07391c0cb4E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h36d33d07391c0cb4E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hdb4f594bfc01bab0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$gix..object..peel..to_kind..error..Error$GT$17h9b4ca4f5ce5abb76E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17he148ead2a6a2da3dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h9ed09580c2f4ab40E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h9ed09580c2f4ab40E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h5582e64c2b7e0851E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr55drop_in_place$LT$gix..remote..connect..error..Error$GT$17h8ca0b2ae6bf8b94dE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) #75
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17hed671fa8c37bdbceE(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !41 ; 2 uses
  switch i64 %i.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17ha6be01334b0a4f8eE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17ha6be01334b0a4f8eE.exit"

bb.c:                                             ; preds = %bb.b, %bb.e
  %.sroa.6.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.b ]
  %.sroa.01.0 = phi ptr [ %i.k, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.i = tail call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hdba3cf1c844a46ccE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.6.0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17ha6be01334b0a4f8eE.exit"

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !41, !align !46, !noundef !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !41
  br label %bb.c

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17ha6be01334b0a4f8eE.exit", %bb.c
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17ha6be01334b0a4f8eE.exit" ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0

"_ZN4core6option15Option$LT$T$GT$11map_or_else17ha6be01334b0a4f8eE.exit": ; preds = %bb.d, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  %i.n = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h36149e5a255e0e6aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN6base646engine6Engine6encode17h9145ed9387a61039E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78348)
  %.val.i = load i8, ptr %1, align 1, !range !47, !alias.scope !78348, !noalias !78349, !noundef !41
  %i.c = trunc nuw i8 %.val.i to i1               ; 2 uses
  %i.d = urem i64 %3, 3                           ; 2 uses
  %i.e = udiv i64 %3, 3
  %i.f = shl i64 %i.e, 2                          ; 4 uses
  %i.g = icmp ugt i64 %3, -4611686018427387905
  br i1 %i.g, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.d, 1
  %..i.i = select i1 %i.h, i64 2, i64 3
  %i.i = or disjoint i64 %..i.i, %i.f
  br label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i: ; preds = %bb.c
  %.not.i = icmp eq i64 %i.f, -4
  %i.j = add nuw i64 %i.f, 4
  br i1 %.not.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i, !prof !59

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.d, %bb.b
  %.sroa.7.1.i35.i = phi i64 [ %i.j, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i ], [ %i.i, %bb.d ], [ %i.f, %bb.b ] ; 16 uses
  %i.k = icmp slt i64 %.sroa.7.1.i35.i, 0
  br i1 %i.k, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %i.l = icmp eq i64 %.sroa.7.1.i35.i, 0          ; 3 uses
  br i1 %i.l, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67fa06484535511eE.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !78350
  %i.m = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.7.1.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !78350 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.m to i64
  br label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67fa06484535511eE.exit.i"

bb.g:                                             ; preds = %bb.e, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.7.1.i35.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1752) #73, !noalias !78351
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67fa06484535511eE.exit.i": ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.o, %bb.f ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ] ; 2 uses
  %i.p = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 6 uses
  %i.q = invoke noundef i64 @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_encode17hb38d5503517c65f5E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 1 %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %.noexc.i unwind label %bb.s, !noalias !78347 ; 6 uses

.noexc.i:                                         ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67fa06484535511eE.exit.i"
  br i1 %i.c, label %bb.h, label %_ZN6base646encode19encode_with_padding17h83d4fb70a1bb8e41E.exit.i

bb.h:                                             ; preds = %.noexc.i
  %i.r = icmp ugt i64 %i.q, %.sroa.7.1.i35.i
  br i1 %i.r, label %bb.j, label %bb.i, !prof !44

bb.i:                                             ; preds = %bb.h
  %i.s = sub nuw nsw i64 %.sroa.7.1.i35.i, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.u = invoke noundef i64 @_ZN6base646encode11add_padding17h4b530db523f4f20eE(i64 noundef %i.q, ptr noalias noundef nonnull align 1 %i.t, i64 noundef %i.s)
          to label %.noexc5.i unwind label %bb.s, !noalias !78347

.noexc5.i:                                        ; preds = %bb.i
  %i.v = xor i64 %i.q, -1
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %_ZN6base646encode19encode_with_padding17h83d4fb70a1bb8e41E.exit.i, !prof !78352

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.q, i64 noundef %.sroa.7.1.i35.i, i64 noundef %.sroa.7.1.i35.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1744) #73
          to label %.noexc6.i unwind label %bb.s, !noalias !78347

.noexc6.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc5.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1741, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1743) #73
          to label %.noexc7.i unwind label %bb.s, !noalias !78347

.noexc7.i:                                        ; preds = %bb.k
  unreachable

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1750, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1751) #73, !noalias !78353
  unreachable

_ZN6base646encode19encode_with_padding17h83d4fb70a1bb8e41E.exit.i: ; preds = %.noexc5.i, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78354
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %bb.n unwind label %bb.l, !noalias !78355

bb.l:                                             ; preds = %_ZN6base646encode19encode_with_padding17h83d4fb70a1bb8e41E.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.l, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %.sroa.7.1.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !78356
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit.i"

bb.n:                                             ; preds = %_ZN6base646encode19encode_with_padding17h83d4fb70a1bb8e41E.exit.i
  %i.y = load i64, ptr %i.b, align 8, !range !58, !noalias !78354, !noundef !41
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.o, label %_ZN6base646engine6Engine6encode5inner17hf074921b2f911095E.exit

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = inttoptr i64 %.sroa.7.1.i35.i to ptr
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx15.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !noalias !78354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78354
  call void @llvm.experimental.noalias.scope.decl(metadata !78357)
  call void @llvm.experimental.noalias.scope.decl(metadata !78358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78359
  store i64 %.sroa.7.1.i35.i, ptr %i.a, align 8, !noalias !78360
  store i64 %.sroa.10.0.i.i, ptr %.sroa.6.0..sroa_idx15.i, align 8, !noalias !78360
  store ptr %i.ab, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx15.sroa_idx.i, align 8, !noalias !78360
  store <2 x i64> %i.ac, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx15.sroa_idx.i, align 8, !noalias !78360
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1753, i64 noundef 12, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1754) #73
          to label %bb.r unwind label %bb.p, !noalias !78361

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78362)
  call void @llvm.experimental.noalias.scope.decl(metadata !78363)
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !78364, !noalias !78359 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ae, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx15.i, align 8, !alias.scope !78364, !noalias !78359, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !78365
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit.i"

bb.r:                                             ; preds = %bb.o
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6821d8d6aa614832E.exit.i": ; preds = %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.l
end_hunk_11
