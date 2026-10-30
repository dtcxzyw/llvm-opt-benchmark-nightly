Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.08?download=true
inline.NumInlined: 141
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text14encode_to_text:bb.a
.noexc31:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !2331, !noalias !2101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !2332, !noalias !2092
  br label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us49.i, !dbg !2333

bb.x:                                             ; preds = %.lr.ph.split.us47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2092
  store ptr %i.ca, ptr %i.q, align 8, !noalias !2102
  store i64 %i.cb, ptr %i.be, align 8, !noalias !2102
  store ptr @23, ptr %i.p, align 8, !noalias !2102
  store i64 13, ptr %i.bf, align 8, !noalias !2102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !2334, !noalias !2102
  store ptr %i.q, ptr %i.o, align 8, !dbg !2334, !noalias !2102
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.42.0..sroa_idx.i41.i.i, align 8, !dbg !2334, !noalias !2102
  store ptr %i.p, ptr %i.bg, align 8, !dbg !2334, !noalias !2102
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.46.0..sroa_idx.i42.i.i, align 8, !dbg !2334, !noalias !2102
  invoke void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @33, ptr noundef nonnull %i.o)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2335

.noexc32:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !2336, !noalias !2102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !2337, !noalias !2092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !2337, !noalias !2092
  br label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us49.i, !dbg !2338

_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us49.i: ; preds = %.noexc32, %.noexc31
  %i.gq = icmp eq ptr %i.gk, %i.eo, !dbg !2252
  br i1 %i.gq, label %.loopexit82, label %.lr.ph.split.us47.i, !dbg !2253

.lr.ph.split.us50.i:                              ; preds = %.lr.ph.split.us50.i.preheader, %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us52.i
  %.sroa.015.040.us51.i = phi ptr [ %i.gr, %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us52.i ], [ %i.em, %.lr.ph.split.us50.i.preheader ] ; 23 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 576, !dbg !2255 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2091), !dbg !2256
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 232, !dbg !2339
  %i.gt = load i64, ptr %i.gs, align 8, !dbg !2339, !range !180, !alias.scope !2091, !noalias !2050, !noundef !103 ; 2 uses
  %.not.i.us.i = icmp eq i64 %i.gt, 2, !dbg !2339
  br i1 %.not.i.us.i, label %bb.am, label %bb.y, !dbg !2254

bb.y:                                             ; preds = %.lr.ph.split.us50.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2103), !dbg !2340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2092
  store ptr %i.ca, ptr %i.n, align 8, !noalias !2104
  store i64 %i.cb, ptr %i.av, align 8, !noalias !2104
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 368, !dbg !2341
  %i.gv = load i64, ptr %i.gu, align 8, !dbg !2341, !alias.scope !2105, !noalias !2050, !noundef !103 ; 4 uses
  %i.gw = icmp ult i64 %i.gv, 82351536043346213, !dbg !2342
  call void @llvm.assume(i1 %i.gw), !dbg !2343
  %i.gx = icmp eq i64 %i.gv, 0, !dbg !2344        ; 2 uses
  br i1 %i.gx, label %bb.z, label %bb.af, !dbg !2345

bb.z:                                             ; preds = %bb.y
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 544, !dbg !2346
  %i.gz = load i32, ptr %i.gy, align 8, !dbg !2346, !range !2053, !alias.scope !2107, !noalias !2050, !noundef !103
  %.not.i.i.i.us.i = icmp eq i32 %i.gz, 0, !dbg !2347
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 304
  %i.hb = load i64, ptr %i.ha, align 8, !range !184, !alias.scope !2107, !noalias !2050
  %.not1.i.i.i.us.i = icmp eq i64 %i.hb, 0
  %or.cond.i.i.i.us.i = select i1 %.not.i.i.i.us.i, i1 %.not1.i.i.i.us.i, i1 false, !dbg !2348
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 320
  %i.hd = load i64, ptr %i.hc, align 8, !range !184, !alias.scope !2107, !noalias !2050
  %.not2.i.i.i.us.i = icmp eq i64 %i.hd, 0
  %or.cond6.i.i.i.us.i = select i1 %or.cond.i.i.i.us.i, i1 %.not2.i.i.i.us.i, i1 false, !dbg !2348
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 336
  %i.hf = load i64, ptr %i.he, align 8, !range !184, !alias.scope !2107, !noalias !2050
  %.not3.i.i.i.us.i = icmp eq i64 %i.hf, 0
  %or.cond8.i.i.i.us.i = select i1 %or.cond6.i.i.i.us.i, i1 %.not3.i.i.i.us.i, i1 false, !dbg !2348
  br i1 %or.cond8.i.i.i.us.i, label %bb.aa, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, !dbg !2348

bb.aa:                                            ; preds = %bb.z
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 392, !dbg !2349
  %i.hh = load i64, ptr %i.hg, align 8, !dbg !2349, !alias.scope !2107, !noalias !2050, !noundef !103 ; 2 uses
  %i.hi = icmp ult i64 %i.hh, 576460752303423488, !dbg !2350
  call void @llvm.assume(i1 %i.hi), !dbg !2351
  %i.hj = icmp eq i64 %i.hh, 0, !dbg !2352
  br i1 %i.hj, label %bb.ab, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, !dbg !2353

bb.ab:                                            ; preds = %bb.aa
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 416, !dbg !2354
  %i.hl = load i64, ptr %i.hk, align 8, !dbg !2354, !alias.scope !2107, !noalias !2050, !noundef !103 ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 1152921504606846976, !dbg !2355
  call void @llvm.assume(i1 %i.hm), !dbg !2356
  %i.hn = icmp eq i64 %i.hl, 0, !dbg !2357
  br i1 %i.hn, label %bb.ac, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, !dbg !2358

bb.ac:                                            ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 440, !dbg !2359
  %i.hp = load i64, ptr %i.ho, align 8, !dbg !2359, !alias.scope !2107, !noalias !2050, !noundef !103 ; 2 uses
  %i.hq = icmp ult i64 %i.hp, 1152921504606846976, !dbg !2360
  call void @llvm.assume(i1 %i.hq), !dbg !2361
  %i.hr = icmp eq i64 %i.hp, 0, !dbg !2362
  br i1 %i.hr, label %bb.ad, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, !dbg !2363

bb.ad:                                            ; preds = %bb.ac
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 464, !dbg !2364
  %i.ht = load i64, ptr %i.hs, align 8, !dbg !2364, !alias.scope !2107, !noalias !2050, !noundef !103 ; 2 uses
  %i.hu = icmp ult i64 %i.ht, 576460752303423488, !dbg !2365
  call void @llvm.assume(i1 %i.hu), !dbg !2366
  %i.hv = icmp eq i64 %i.ht, 0, !dbg !2367
  br i1 %i.hv, label %bb.ae, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, !dbg !2368

bb.ae:                                            ; preds = %bb.ad
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 488, !dbg !2369
  %i.hx = load i64, ptr %i.hw, align 8, !dbg !2369, !alias.scope !2107, !noalias !2050, !noundef !103 ; 2 uses
  %i.hy = icmp ult i64 %i.hx, 1152921504606846976, !dbg !2370
  call void @llvm.assume(i1 %i.hy), !dbg !2371
  %i.hz = icmp eq i64 %i.hx, 0, !dbg !2372
  br i1 %i.hz, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.i.i.us.i, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, !dbg !2373

_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.i.i.us.i: ; preds = %bb.ae
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 512, !dbg !2374
  %i.ib = load i64, ptr %i.ia, align 8, !dbg !2374, !alias.scope !2107, !noalias !2050, !noundef !103 ; 2 uses
  %i.ic = icmp ult i64 %i.ib, 1152921504606846976, !dbg !2375
  call void @llvm.assume(i1 %i.ic), !dbg !2376
  %.not49.i.i.us.i = icmp eq i64 %i.ib, 0, !dbg !2377
  br i1 %.not49.i.i.us.i, label %bb.af, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, !dbg !2378

_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i: ; preds = %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.i.i.us.i, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !2379, !noalias !2104
  store ptr %i.n, ptr %i.m, align 8, !dbg !2379, !noalias !2104
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.435.0..sroa_idx.i.i.i, align 8, !dbg !2379, !noalias !2104
  invoke void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @30, ptr noundef nonnull %i.m)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2380

.noexc33:                                         ; preds = %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !2381, !noalias !2104
  br label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histogram.exit.i.us.i, !dbg !2382

bb.af:                                            ; preds = %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.i.i.us.i, %bb.y
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 248, !dbg !2383
  %i.ie = load i64, ptr %i.id, align 8, !dbg !2383, !range !184, !alias.scope !2105, !noalias !2050, !noundef !103
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 256, !dbg !2383
  %i.ig = load double, ptr %i.if, align 8, !dbg !2383, !alias.scope !2105, !noalias !2050
  %i.ih = trunc nuw i64 %i.ie to i1, !dbg !2384
  %i.ii = fcmp ogt double %i.ig, 0.000000e+00
  %or.cond.i.i.us.i = select i1 %i.ih, i1 %i.ii, i1 false, !dbg !2384
  br i1 %or.cond.i.i.us.i, label %.loopexit.i.i.us.i, label %bb.ag, !dbg !2384

bb.ag:                                            ; preds = %bb.af
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 360, !dbg !2385
  %i.ik = load ptr, ptr %i.ij, align 8, !dbg !2385, !alias.scope !2105, !noalias !2050, !nonnull !103, !noundef !103 ; 3 uses
  %.idx.i.i.us.i = mul nuw nsw i64 %i.gv, 112, !dbg !2386
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.idx.i.i.us.i, !dbg !2386 ; 2 uses
  %.not.not.not.i.not.i.i.us.i202 = icmp eq i64 %i.gv, 0, !dbg !2387
  br i1 %.not.not.not.i.not.i.i.us.i202, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histograms_0EB2P_.exit.i.i.us.i, label %.lr.ph204, !dbg !2388

bb.ah:                                            ; preds = %.lr.ph204
  %i.im = getelementptr inbounds nuw i8, ptr %i.in, i64 112, !dbg !2389 ; 2 uses
  %.not.not.not.i.not.i.i.us.i = icmp eq ptr %i.im, %i.il, !dbg !2387
  br i1 %.not.not.not.i.not.i.i.us.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histograms_0EB2P_.exit.i.i.us.i, label %.lr.ph204, !dbg !2388

.lr.ph204:                                        ; preds = %bb.ag, %bb.ah
  %i.in = phi ptr [ %i.im, %bb.ah ], [ %i.ik, %bb.ag ] ; 3 uses
  %i.io = getelementptr i8, ptr %i.in, i64 16, !dbg !2390
  %.val.i.i.i.us.i = load i64, ptr %i.io, align 8, !dbg !2390, !range !184, !noalias !2114, !noundef !103
  %i.ip = getelementptr i8, ptr %i.in, i64 24, !dbg !2390
  %.val2.i.i.i.us.i = load double, ptr %i.ip, align 8, !dbg !2390, !noalias !2114
  %i.iq = trunc nuw i64 %.val.i.i.i.us.i to i1, !dbg !2391
  %i.ir = fcmp ogt double %.val2.i.i.i.us.i, 0.000000e+00, !dbg !2391
  %.sroa.0.0.i.i.i.i.us.i = select i1 %i.iq, i1 %i.ir, i1 false, !dbg !2391
  br i1 %.sroa.0.0.i.i.i.i.us.i, label %.loopexit.i.i.us.i, label %bb.ah, !dbg !2390

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histograms_0EB2P_.exit.i.i.us.i: ; preds = %bb.ah, %bb.ag
  %i.is = trunc nuw i64 %i.gt to i1, !dbg !2392
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 240, !dbg !2392
  %i.iu = load i64, ptr %i.it, align 8, !dbg !2392, !alias.scope !2105, !noalias !2050
  %.sroa.04.0.i.i.us.i = select i1 %i.is, i64 %i.iu, i64 0, !dbg !2392 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !2393, !noalias !2104
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 264, !dbg !2394
  %i.iw = load i64, ptr %i.iv, align 8, !dbg !2394, !range !184, !alias.scope !2105, !noalias !2050, !noundef !103
  %i.ix = trunc nuw i64 %i.iw to i1, !dbg !2395
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.015.040.us51.i, i64 272, !dbg !2395
  %i.iz = load double, ptr %i.iy, align 8, !dbg !2395, !alias.scope !2105, !noalias !2050
  %.sroa.08.0.i.i.us.i = select i1 %i.ix, double %i.iz, double 0.000000e+00, !dbg !2395
  store double %.sroa.08.0.i.i.us.i, ptr %i.aw, align 8, !dbg !2393, !noalias !2104
  store i64 0, ptr %i.k, align 8, !dbg !2393, !noalias !2104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2396, !noalias !2116
  store ptr null, ptr %i.e, align 8, !dbg !2396, !noalias !2116
  invoke fastcc void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text12write_sample(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %..i.i.i, i64 noundef range(i64 0, 8) %.44.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(576) %.sroa.015.040.us51.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2397

.noexc34:                                         ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histograms_0EB2P_.exit.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2398, !noalias !2116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !2399, !noalias !2104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !2400, !noalias !2104
  store i64 %.sroa.04.0.i.i.us.i, ptr %i.ax, align 8, !dbg !2400, !noalias !2104
  store i64 2, ptr %i.j, align 8, !dbg !2400, !noalias !2104
  %i.ja = load ptr, ptr %i.n, align 8, !dbg !2401, !noalias !2104, !nonnull !103, !noundef !103
  %i.jb = load i64, ptr %i.av, align 8, !dbg !2401, !noalias !2104, !noundef !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2402, !noalias !2117
  store ptr null, ptr %i.d, align 8, !dbg !2402, !noalias !2117
  invoke fastcc void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text12write_sample(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ja, i64 noundef %i.jb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.45.i.i.i, i64 noundef range(i64 0, 8) %.46.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(576) %.sroa.015.040.us51.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2403

.noexc35:                                         ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2404, !noalias !2117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !2405, !noalias !2104
  br i1 %i.gx, label %.critedge.i.i.us.i, label %.lr.ph.i.i.us.i, !dbg !2406

.lr.ph.i.i.us.i:                                  ; preds = %.noexc35, %.noexc36
  %.sroa.012.051.i.i.us.i = phi i1 [ %.sroa.016.0.i.i.us.i, %.noexc36 ], [ false, %.noexc35 ] ; 2 uses
  %.sroa.014.050.i.i.us.i = phi ptr [ %i.jc, %.noexc36 ], [ %i.ik, %.noexc35 ] ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.014.050.i.i.us.i, i64 112, !dbg !2407 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.014.050.i.i.us.i, i64 32, !dbg !2408
  %i.je = load i64, ptr %i.jd, align 8, !dbg !2408, !range !184, !noalias !2119, !noundef !103
  %i.jf = trunc nuw i64 %i.je to i1, !dbg !2409
  br i1 %i.jf, label %bb.ai, label %bb.aj, !dbg !2409

bb.ai:                                            ; preds = %.lr.ph.i.i.us.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.014.050.i.i.us.i, i64 40, !dbg !2408
  %i.jh = load double, ptr %i.jg, align 8, !dbg !2408, !noalias !2119 ; 2 uses
  %3 = fcmp oeq double %i.jh, +inf, !dbg !2410
  %4 = or i1 %.sroa.012.051.i.i.us.i, %3, !dbg !2411
  br label %bb.aj, !dbg !2412

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i.us.i
  %.sroa.016.0.i.i.us.i = phi i1 [ %4, %bb.ai ], [ %.sroa.012.051.i.i.us.i, %.lr.ph.i.i.us.i ], !dbg !2413 ; 2 uses
  %5 = phi double [ %i.jh, %bb.ai ], [ 0.000000e+00, %.lr.ph.i.i.us.i ], !dbg !2413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !2414, !noalias !2104
  store ptr @27, ptr %i.i, align 8, !dbg !2414, !noalias !2104
  store i64 2, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !dbg !2414, !noalias !2104
  store double %5, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !dbg !2414, !noalias !2104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !2415, !noalias !2104
  %i.ji = load i64, ptr %.sroa.014.050.i.i.us.i, align 8, !dbg !2416, !range !184, !noalias !2119, !noundef !103
  %i.jj = trunc nuw i64 %i.ji to i1, !dbg !2417
  br i1 %i.jj, label %bb.ak, label %bb.al, !dbg !2417

bb.ak:                                            ; preds = %bb.aj
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.014.050.i.i.us.i, i64 8, !dbg !2416
  %i.jl = load i64, ptr %i.jk, align 8, !dbg !2416, !noalias !2119
  br label %bb.al, !dbg !2418

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.024.0.i.i.us.i = phi i64 [ %i.jl, %bb.ak ], [ 0, %bb.aj ], !dbg !2419
  store i64 %.sroa.024.0.i.i.us.i, ptr %i.ay, align 8, !dbg !2415, !noalias !2104
  store i64 2, ptr %i.h, align 8, !dbg !2415, !noalias !2104
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.014.050.i.i.us.i, i64 48, !dbg !2420 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !dbg !2420, !range !180, !noalias !2119, !noundef !103
  %.not.i.i.us.i = icmp eq i64 %i.jn, 2, !dbg !2420
  %.47.i.i.us.i = select i1 %.not.i.i.us.i, ptr null, ptr %i.jm, !dbg !2421
  %i.jo = load ptr, ptr %i.n, align 8, !dbg !2422, !noalias !2104, !nonnull !103, !noundef !103
  %i.jp = load i64, ptr %i.av, align 8, !dbg !2422, !noalias !2104, !noundef !103
  invoke fastcc void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text12write_sample(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jo, i64 noundef %i.jp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(576) %.sroa.015.040.us51.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %.47.i.i.us.i)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2422

.noexc36:                                         ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2423, !noalias !2104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2423, !noalias !2104
  %i.jq = icmp eq ptr %i.jc, %i.il, !dbg !2424
  br i1 %i.jq, label %._crit_edge.i.i.us.i, label %.lr.ph.i.i.us.i, !dbg !2406

._crit_edge.i.i.us.i:                             ; preds = %.noexc36
  br i1 %.sroa.016.0.i.i.us.i, label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histogram.exit.i.us.i, label %.critedge.i.i.us.i, !dbg !2425

.critedge.i.i.us.i:                               ; preds = %._crit_edge.i.i.us.i, %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2426, !noalias !2104
  store ptr @27, ptr %i.g, align 8, !dbg !2426, !noalias !2104
  store i64 2, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !dbg !2426, !noalias !2104
  store double +inf, ptr %.sroa.531.0..sroa_idx.i.i.i, align 8, !dbg !2426, !noalias !2104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2427, !noalias !2104
  store i64 %.sroa.04.0.i.i.us.i, ptr %i.az, align 8, !dbg !2427, !noalias !2104
  store i64 2, ptr %i.f, align 8, !dbg !2427, !noalias !2104
  %i.jr = load ptr, ptr %i.n, align 8, !dbg !2428, !noalias !2104, !nonnull !103, !noundef !103
  %i.js = load i64, ptr %i.av, align 8, !dbg !2428, !noalias !2104, !noundef !103
  invoke fastcc void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text12write_sample(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jr, i64 noundef %i.js, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(576) %.sroa.015.040.us51.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2428

.noexc37:                                         ; preds = %.critedge.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2429, !noalias !2104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2429, !noalias !2104
  br label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histogram.exit.i.us.i, !dbg !2430

.loopexit.i.i.us.i:                               ; preds = %.lr.ph204, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !2431, !noalias !2104
  store ptr %i.n, ptr %i.l, align 8, !dbg !2431, !noalias !2104
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !dbg !2431, !noalias !2104
  invoke void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @29, ptr noundef nonnull %i.l)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2432

.noexc38:                                         ; preds = %.loopexit.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2433, !noalias !2104
  br label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histogram.exit.i.us.i, !dbg !2382

_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histogram.exit.i.us.i: ; preds = %.noexc38, %.noexc37, %._crit_edge.i.i.us.i, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !2434, !noalias !2092
  br label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us52.i, !dbg !2435

bb.am:                                            ; preds = %.lr.ph.split.us50.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2092
  store ptr %i.ca, ptr %i.c, align 8, !noalias !2120
  store i64 %i.cb, ptr %i.ba, align 8, !noalias !2120
  store ptr @14, ptr %i.b, align 8, !noalias !2120
  store i64 9, ptr %i.bb, align 8, !noalias !2120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2436, !noalias !2120
  store ptr %i.c, ptr %i.a, align 8, !dbg !2436, !noalias !2120
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.42.0..sroa_idx.i43.i.i, align 8, !dbg !2436, !noalias !2120
  store ptr %i.b, ptr %i.bc, align 8, !dbg !2436, !noalias !2120
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsim2LhUzKY4R_19foundations_metrics, ptr %.sroa.46.0..sroa_idx.i44.i.i, align 8, !dbg !2436, !noalias !2120
  invoke void @_RNvNtCsim2LhUzKY4R_19foundations_metrics11diagnostics20report_collect_error(ptr noundef nonnull @33, ptr noundef nonnull %i.a)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2437

.noexc39:                                         ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2438, !noalias !2120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2439, !noalias !2092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2439, !noalias !2092
  br label %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us52.i, !dbg !2440

_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us52.i: ; preds = %.noexc39, %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histogram.exit.i.us.i
  %i.jt = icmp eq ptr %i.gr, %i.eo, !dbg !2252
  br i1 %i.jt, label %.loopexit82, label %.lr.ph.split.us50.i, !dbg !2253

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text18has_native_buckets.exit.thread.i.i.us.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16encode_histograms_0EB2P_.exit.i.i.us.i, %.noexc34, %.critedge.i.i.us.i, %.loopexit.i.i.us.i, %bb.am, %bb.w, %bb.x, %bb.m, %bb.n, %bb.al, %bb.u, %bb.o, %bb.p, %._crit_edge.i.us.i, %.noexc28, %bb.v, %.noexc21, %.noexc20, %.noexc19, %.noexc18, %bb.k, %.noexc16, %.noexc15, %.noexc14, %.noexc13, %bb.j, %.noexc11, %.noexc10, %.noexc9, %.noexc8, %bb.i, %bb.h, %bb.f
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model12MetricFamilyEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ao) #9
          to label %.loopexit.split-lp98 unwind label %bb.ap, !dbg !2441

.loopexit82:                                      ; preds = %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us52.i, %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us49.i, %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us46.i, %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us43.i, %_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text13encode_metric.exit.us.i, %bb.l, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !2442, !noalias !2051
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model12MetricFamilyEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ao)
          to label %bb.an unwind label %.loopexit.split-lp98.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2441

bb.an:                                            ; preds = %.loopexit82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !2441
  br label %bb.ao, !dbg !2443

bb.ao:                                            ; preds = %bb.c, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !2441
  %i.ju = icmp eq ptr %i.bv, %i.ar, !dbg !2125
  br i1 %i.ju, label %._crit_edge, label %bb.b, !dbg !2038

bb.ap:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp98
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #8, !dbg !2444
  unreachable, !dbg !2444

bb.aq:                                            ; preds = %._crit_edge
  %i.jw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2445, !alias.scope !2121, !noundef !103 ; 2 uses
  %i.jx = icmp sgt i64 %i.jw, -1, !dbg !2446
  call void @llvm.assume(i1 %i.jx), !dbg !2447
  %i.jy = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2448, !alias.scope !2121, !nonnull !103, !noundef !103
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jw, !dbg !2449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.jz, ptr noundef nonnull align 1 dereferenceable(6) @24, i64 6, i1 false), !dbg !2450
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2451, !alias.scope !2121
  %i.ka = add i64 %.pre.i, 6, !dbg !2451
  store i64 %i.ka, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2451, !alias.scope !2121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !2452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !2129
  ret void, !dbg !2453

bb.ar:                                            ; preds = %.loopexit.split-lp98
  resume { ptr, i32 } %.pn, !dbg !2444
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16write_float_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2454 {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = fcmp uno double %1, 0.000000e+00, !dbg !2677
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !2678

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %1, +inf, !dbg !2679
  br i1 %i.c, label %bb.e, label %bb.d, !dbg !2679

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3), !dbg !2680
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2681 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !2681, !alias.scope !2629, !noundef !103 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1, !dbg !2682
  tail call void @llvm.assume(i1 %i.f), !dbg !2683
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2684
  %i.h = load ptr, ptr %i.g, align 8, !dbg !2684, !alias.scope !2629, !nonnull !103, !noundef !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e, !dbg !2685
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, ptr noundef nonnull align 1 dereferenceable(3) @32, i64 3, i1 false), !dbg !2686
  %.pre.i = load i64, ptr %i.d, align 8, !dbg !2687, !alias.scope !2629
  %i.j = add i64 %.pre.i, 3, !dbg !2687
  store i64 %i.j, ptr %i.d, align 8, !dbg !2687, !alias.scope !2629
  br label %bb.n, !dbg !2688

bb.d:                                             ; preds = %bb.b
  %i.k = fcmp oeq double %1, -inf, !dbg !2689
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !2689

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !2690
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2691 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !2691, !alias.scope !2635, !noundef !103 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !2692
  tail call void @llvm.assume(i1 %i.n), !dbg !2693
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2694
  %i.p = load ptr, ptr %i.o, align 8, !dbg !2694, !alias.scope !2635, !nonnull !103, !noundef !103
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !2695
  store i32 1718503723, ptr %i.q, align 1, !dbg !2696
  %.pre.i12 = load i64, ptr %i.l, align 8, !dbg !2697, !alias.scope !2635
  %i.r = add i64 %.pre.i12, 4, !dbg !2697
  store i64 %i.r, ptr %i.l, align 8, !dbg !2697, !alias.scope !2635
  br label %bb.n, !dbg !2698

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2699
  %i.s = call { ptr, i64 } @_RINvMNtCs2h1ee5fHf21_3ryu6bufferNtB3_6Buffer6formatdECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %1), !dbg !2700 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0, !dbg !2700 ; 6 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1, !dbg !2700 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br i1 %2, label %.critedge, label %bb.h, !dbg !2701

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4), !dbg !2702
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2703 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !2703, !alias.scope !2641, !noundef !103 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !2704
  tail call void @llvm.assume(i1 %i.x), !dbg !2705
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2706
  %i.z = load ptr, ptr %i.y, align 8, !dbg !2706, !alias.scope !2641, !nonnull !103, !noundef !103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w, !dbg !2707
  store i32 1718503725, ptr %i.aa, align 1, !dbg !2708
  %.pre.i13 = load i64, ptr %i.v, align 8, !dbg !2709, !alias.scope !2641
  %i.ab = add i64 %.pre.i13, 4, !dbg !2709
  store i64 %i.ab, ptr %i.v, align 8, !dbg !2709, !alias.scope !2641
  br label %bb.n, !dbg !2710

bb.h:                                             ; preds = %bb.f
  %i.ac = call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 2), !dbg !2711
  %i.ad = add i64 %i.u, -2
  %spec.select = select i1 %i.ac, i64 %i.ad, i64 %i.u, !dbg !2712 ; 4 uses
  call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %spec.select), !dbg !2713
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2714 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !dbg !2714, !alias.scope !2653, !noundef !103 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !2715
  call void @llvm.assume(i1 %i.ag), !dbg !2716
  %.not.i = icmp eq i64 %spec.select, 0, !dbg !2717
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics.exit, label %bb.i, !dbg !2717

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2718
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !2718, !alias.scope !2653, !nonnull !103, !noundef !103
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af, !dbg !2719
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.t, i64 %spec.select, i1 false), !dbg !2720
  %.pre.i14 = load i64, ptr %i.ae, align 8, !dbg !2721, !alias.scope !2653
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2722

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.h, %bb.i
  %i.ak = phi i64 [ %.pre.i14, %bb.i ], [ %i.af, %bb.h ], !dbg !2721
  %i.al = add i64 %i.ak, %spec.select, !dbg !2721
  store i64 %i.al, ptr %i.ae, align 8, !dbg !2721, !alias.scope !2653
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj3_ENtB5_7Pattern15is_contained_inCsim2LhUzKY4R_19foundations_metrics.exit.thread, !dbg !2723

end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!2210 = !DILocation(line: 1249, column: 18, scope: !11, inlinedAt: !1705)
!2211 = !DILocation(line: 611, column: 9, scope: !14, inlinedAt: !1711)
!2212 = !DILocation(line: 970, column: 18, scope: !18, inlinedAt: !1712)
!2213 = !DILocation(line: 2558, column: 13, scope: !20, inlinedAt: !1713)
!2214 = !DILocation(line: 1453, column: 30, scope: !13, inlinedAt: !1702)
!2215 = !DILocation(line: 2224, column: 9, scope: !21, inlinedAt: !1714)
!2216 = !DILocation(line: 71, column: 25, scope: !1715, inlinedAt: !1572)
!2217 = !DILocation(line: 71, column: 12, scope: !1715, inlinedAt: !1572)
!2218 = !DILocation(line: 2960, column: 14, scope: !22, inlinedAt: !1720)
!2219 = !DILocation(line: 3101, column: 19, scope: !23, inlinedAt: !1724)
!2220 = !DILocation(line: 3106, column: 37, scope: !26, inlinedAt: !1724)
!2221 = !DILocation(line: 3106, column: 18, scope: !26, inlinedAt: !1724)
!2222 = !DILocation(line: 611, column: 9, scope: !27, inlinedAt: !1728)
!2223 = !DILocation(line: 970, column: 18, scope: !32, inlinedAt: !1729)
!2224 = !DILocation(line: 574, column: 14, scope: !33, inlinedAt: !1730)
!2225 = !DILocation(line: 2986, column: 9, scope: !31, inlinedAt: !1723)
!2226 = !DILocation(line: 73, column: 9, scope: !1715, inlinedAt: !1572)
!2227 = !DILocation(line: 3101, column: 19, scope: !7, inlinedAt: !1735)
!2228 = !DILocation(line: 3106, column: 37, scope: !10, inlinedAt: !1735)
!2229 = !DILocation(line: 3106, column: 18, scope: !10, inlinedAt: !1735)
!2230 = !DILocation(line: 1249, column: 18, scope: !11, inlinedAt: !1736)
!2231 = !DILocation(line: 611, column: 9, scope: !14, inlinedAt: !1740)
!2232 = !DILocation(line: 970, column: 18, scope: !18, inlinedAt: !1741)
!2233 = !DILocation(line: 2558, column: 13, scope: !20, inlinedAt: !1742)
!2234 = !DILocation(line: 1453, column: 30, scope: !13, inlinedAt: !1733)
!2235 = !DILocation(line: 2224, column: 9, scope: !21, inlinedAt: !1743)
!2236 = !DILocation(line: 611, column: 9, scope: !1577, inlinedAt: !1750)
!2237 = !DILocation(line: 1865, column: 86, scope: !1581, inlinedAt: !1746)
!2238 = !DILocation(line: 75, column: 9, scope: !1715, inlinedAt: !1572)
!2239 = !DILocation(line: 3101, column: 19, scope: !7, inlinedAt: !1755)
!2240 = !DILocation(line: 3106, column: 37, scope: !10, inlinedAt: !1755)
!2241 = !DILocation(line: 3106, column: 18, scope: !10, inlinedAt: !1755)
!2242 = !DILocation(line: 1249, column: 18, scope: !11, inlinedAt: !1756)
!2243 = !DILocation(line: 611, column: 9, scope: !14, inlinedAt: !1760)
!2244 = !DILocation(line: 970, column: 18, scope: !18, inlinedAt: !1761)
!2245 = !DILocation(line: 2558, column: 13, scope: !20, inlinedAt: !1762)
!2246 = !DILocation(line: 1453, column: 30, scope: !13, inlinedAt: !1753)
!2247 = !DILocation(line: 2224, column: 9, scope: !21, inlinedAt: !1763)
!2248 = !DILocation(line: 76, column: 16, scope: !1715, inlinedAt: !1572)
!2249 = !DILocation(line: 611, column: 9, scope: !1764, inlinedAt: !1777)
!2250 = !DILocation(line: 1865, column: 86, scope: !1768, inlinedAt: !1773)
!2251 = !DILocation(line: 970, column: 18, scope: !1778, inlinedAt: !1785)
!2252 = !DILocation(line: 1663, column: 9, scope: !1786, inlinedAt: !1792)
!2253 = !DILocation(line: 180, column: 28, scope: !1789, inlinedAt: !1791)
!2254 = !DILocation(line: 159, column: 17, scope: !1793, inlinedAt: !1795)
!2255 = !DILocation(line: 627, column: 28, scope: !1796, inlinedAt: !1797)
!2256 = !DILocation(line: 80, column: 9, scope: !1794, inlinedAt: !1572)
!2257 = !DILocation(line: 87, column: 33, scope: !1793, inlinedAt: !1795)
!2258 = !DILocation(line: 87, column: 17, scope: !1793, inlinedAt: !1795)
!2259 = !DILocation(line: 96, column: 17, scope: !1802, inlinedAt: !1795)
!2260 = !DILocation(line: 97, column: 17, scope: !1802, inlinedAt: !1795)
!2261 = !DILocation(line: 1095, column: 9, scope: !1803, inlinedAt: !1804)
!2262 = !DILocation(line: 743, column: 15, scope: !1805, inlinedAt: !1806)
!2263 = !DILocation(line: 743, column: 9, scope: !1805, inlinedAt: !1806)
!2264 = !DILocation(line: 91, column: 13, scope: !1802, inlinedAt: !1795)
!2265 = !DILocation(line: 99, column: 13, scope: !1802, inlinedAt: !1795)
!2266 = !DILocation(line: 100, column: 9, scope: !1793, inlinedAt: !1795)
!2267 = !DILocation(line: 479, column: 26, scope: !1811, inlinedAt: !1812)
!2268 = !DILocation(line: 479, column: 5, scope: !1810, inlinedAt: !1812)
!2269 = !DILocation(line: 481, column: 7, scope: !1810, inlinedAt: !1812)
!2270 = !DILocation(line: 482, column: 2, scope: !1810, inlinedAt: !1812)
!2271 = !DILocation(line: 88, column: 17, scope: !1793, inlinedAt: !1795)
!2272 = !DILocation(line: 102, column: 31, scope: !1793, inlinedAt: !1795)
!2273 = !DILocation(line: 102, column: 17, scope: !1793, inlinedAt: !1795)
!2274 = !DILocation(line: 111, column: 17, scope: !1813, inlinedAt: !1795)
!2275 = !DILocation(line: 1095, column: 9, scope: !1803, inlinedAt: !1814)
!2276 = !DILocation(line: 277, column: 48, scope: !1821, inlinedAt: !1822)
!2277 = !DILocation(line: 277, column: 5, scope: !1821, inlinedAt: !1822)
!2278 = !DILocation(line: 277, column: 65, scope: !1821, inlinedAt: !1822)
!2279 = !DILocation(line: 112, column: 13, scope: !1813, inlinedAt: !1795)
!2280 = !DILocation(line: 113, column: 9, scope: !1793, inlinedAt: !1795)
!2281 = !DILocation(line: 479, column: 26, scope: !1811, inlinedAt: !1826)
!2282 = !DILocation(line: 479, column: 5, scope: !1810, inlinedAt: !1826)
!2283 = !DILocation(line: 481, column: 7, scope: !1810, inlinedAt: !1826)
!2284 = !DILocation(line: 482, column: 2, scope: !1810, inlinedAt: !1826)
!2285 = !DILocation(line: 103, column: 17, scope: !1793, inlinedAt: !1795)
!2286 = !DILocation(line: 115, column: 33, scope: !1793, inlinedAt: !1795)
!2287 = !DILocation(line: 115, column: 17, scope: !1793, inlinedAt: !1795)
!2288 = !DILocation(line: 611, column: 9, scope: !1827, inlinedAt: !1841)
!2289 = !DILocation(line: 1865, column: 86, scope: !1831, inlinedAt: !1837)
!2290 = !DILocation(line: 970, column: 18, scope: !1842, inlinedAt: !1849)
!2291 = !DILocation(line: 1663, column: 9, scope: !1850, inlinedAt: !1856)
!2292 = !DILocation(line: 180, column: 28, scope: !1853, inlinedAt: !1855)
!2293 = !DILocation(line: 627, column: 28, scope: !1857, inlinedAt: !1858)
!2294 = !DILocation(line: 125, column: 21, scope: !1859, inlinedAt: !1795)
!2295 = !DILocation(line: 125, column: 39, scope: !1859, inlinedAt: !1795)
!2296 = !DILocation(line: 1095, column: 9, scope: !1803, inlinedAt: !1860)
!2297 = !DILocation(line: 1099, column: 5, scope: !1803, inlinedAt: !1860)
!2298 = !DILocation(line: 0, scope: !1803, inlinedAt: !1860)
!2299 = !DILocation(line: 126, column: 21, scope: !1859, inlinedAt: !1795)
!2300 = !DILocation(line: 126, column: 40, scope: !1859, inlinedAt: !1795)
!2301 = !DILocation(line: 1095, column: 9, scope: !1803, inlinedAt: !1861)
!2302 = !DILocation(line: 1099, column: 5, scope: !1803, inlinedAt: !1861)
!2303 = !DILocation(line: 0, scope: !1803, inlinedAt: !1861)
!2304 = !DILocation(line: 120, column: 17, scope: !1859, inlinedAt: !1795)
!2305 = !DILocation(line: 128, column: 17, scope: !1859, inlinedAt: !1795)
!2306 = !DILocation(line: 135, column: 17, scope: !1834, inlinedAt: !1795)
!2307 = !DILocation(line: 135, column: 36, scope: !1834, inlinedAt: !1795)
!2308 = !DILocation(line: 1095, column: 9, scope: !1803, inlinedAt: !1862)
!2309 = !DILocation(line: 277, column: 48, scope: !1821, inlinedAt: !1869)
!2310 = !DILocation(line: 277, column: 5, scope: !1821, inlinedAt: !1869)
!2311 = !DILocation(line: 277, column: 65, scope: !1821, inlinedAt: !1869)
!2312 = !DILocation(line: 136, column: 13, scope: !1834, inlinedAt: !1795)
!2313 = !DILocation(line: 142, column: 17, scope: !1834, inlinedAt: !1795)
!2314 = !DILocation(line: 1095, column: 9, scope: !1870, inlinedAt: !1871)
!2315 = !DILocation(line: 277, column: 48, scope: !1821, inlinedAt: !1878)
!2316 = !DILocation(line: 277, column: 5, scope: !1821, inlinedAt: !1878)
!2317 = !DILocation(line: 277, column: 65, scope: !1821, inlinedAt: !1878)
!2318 = !DILocation(line: 143, column: 13, scope: !1834, inlinedAt: !1795)
!2319 = !DILocation(line: 144, column: 9, scope: !1793, inlinedAt: !1795)
!2320 = !DILocation(line: 479, column: 26, scope: !1811, inlinedAt: !1882)
!2321 = !DILocation(line: 479, column: 5, scope: !1810, inlinedAt: !1882)
!2322 = !DILocation(line: 481, column: 7, scope: !1810, inlinedAt: !1882)
!2323 = !DILocation(line: 482, column: 2, scope: !1810, inlinedAt: !1882)
!2324 = !DILocation(line: 116, column: 17, scope: !1793, inlinedAt: !1795)
!2325 = !DILocation(line: 146, column: 33, scope: !1793, inlinedAt: !1795)
!2326 = !DILocation(line: 146, column: 17, scope: !1793, inlinedAt: !1795)
!2327 = !DILocation(line: 155, column: 17, scope: !1883, inlinedAt: !1795)
!2328 = !DILocation(line: 1095, column: 9, scope: !1803, inlinedAt: !1884)
!2329 = !DILocation(line: 277, column: 48, scope: !1821, inlinedAt: !1891)
!2330 = !DILocation(line: 277, column: 5, scope: !1821, inlinedAt: !1891)
!2331 = !DILocation(line: 277, column: 65, scope: !1821, inlinedAt: !1891)
!2332 = !DILocation(line: 156, column: 13, scope: !1883, inlinedAt: !1795)
!2333 = !DILocation(line: 157, column: 9, scope: !1793, inlinedAt: !1795)
!2334 = !DILocation(line: 479, column: 26, scope: !1811, inlinedAt: !1895)
!2335 = !DILocation(line: 479, column: 5, scope: !1810, inlinedAt: !1895)
!2336 = !DILocation(line: 481, column: 7, scope: !1810, inlinedAt: !1895)
!2337 = !DILocation(line: 482, column: 2, scope: !1810, inlinedAt: !1895)
!2338 = !DILocation(line: 147, column: 17, scope: !1793, inlinedAt: !1795)
!2339 = !DILocation(line: 159, column: 35, scope: !1793, inlinedAt: !1795)
!2340 = !DILocation(line: 163, column: 13, scope: !1898, inlinedAt: !1795)
!2341 = !DILocation(line: 3101, column: 19, scope: !1902, inlinedAt: !1907)
!2342 = !DILocation(line: 3106, column: 37, scope: !1908, inlinedAt: !1907)
!2343 = !DILocation(line: 3106, column: 18, scope: !1908, inlinedAt: !1907)
!2344 = !DILocation(line: 3126, column: 9, scope: !1903, inlinedAt: !1906)
!2345 = !DILocation(line: 175, column: 8, scope: !1904, inlinedAt: !1905)
!2346 = !DILocation(line: 634, column: 18, scope: !2106, inlinedAt: !1913)
!2347 = !DILocation(line: 434, column: 9, scope: !1910, inlinedAt: !1913)
!2348 = !DILocation(line: 249, column: 5, scope: !1911, inlinedAt: !1912)
!2349 = !DILocation(line: 3101, column: 19, scope: !1916, inlinedAt: !1919)
!2350 = !DILocation(line: 3106, column: 37, scope: !1920, inlinedAt: !1919)
!2351 = !DILocation(line: 3106, column: 18, scope: !1920, inlinedAt: !1919)
!2352 = !DILocation(line: 3126, column: 9, scope: !1917, inlinedAt: !1918)
!2353 = !DILocation(line: 253, column: 13, scope: !1911, inlinedAt: !1912)
!2354 = !DILocation(line: 3101, column: 19, scope: !1921, inlinedAt: !1924)
!2355 = !DILocation(line: 3106, column: 37, scope: !1925, inlinedAt: !1924)
!2356 = !DILocation(line: 3106, column: 18, scope: !1925, inlinedAt: !1924)
!2357 = !DILocation(line: 3126, column: 9, scope: !1922, inlinedAt: !1923)
!2358 = !DILocation(line: 254, column: 13, scope: !1911, inlinedAt: !1912)
!2359 = !DILocation(line: 3101, column: 19, scope: !1926, inlinedAt: !1929)
!2360 = !DILocation(line: 3106, column: 37, scope: !1930, inlinedAt: !1929)
!2361 = !DILocation(line: 3106, column: 18, scope: !1930, inlinedAt: !1929)
!2362 = !DILocation(line: 3126, column: 9, scope: !1927, inlinedAt: !1928)
!2363 = !DILocation(line: 255, column: 13, scope: !1911, inlinedAt: !1912)
!2364 = !DILocation(line: 3101, column: 19, scope: !1916, inlinedAt: !1932)
!2365 = !DILocation(line: 3106, column: 37, scope: !1933, inlinedAt: !1932)
!2366 = !DILocation(line: 3106, column: 18, scope: !1933, inlinedAt: !1932)
!2367 = !DILocation(line: 3126, column: 9, scope: !1917, inlinedAt: !1931)
!2368 = !DILocation(line: 256, column: 13, scope: !1911, inlinedAt: !1912)
!2369 = !DILocation(line: 3101, column: 19, scope: !1921, inlinedAt: !1935)
!2370 = !DILocation(line: 3106, column: 37, scope: !1936, inlinedAt: !1935)
!2371 = !DILocation(line: 3106, column: 18, scope: !1936, inlinedAt: !1935)
!2372 = !DILocation(line: 3126, column: 9, scope: !1922, inlinedAt: !1934)
!2373 = !DILocation(line: 257, column: 13, scope: !1911, inlinedAt: !1912)
!2374 = !DILocation(line: 3101, column: 19, scope: !1926, inlinedAt: !1938)
!2375 = !DILocation(line: 3106, column: 37, scope: !1939, inlinedAt: !1938)
!2376 = !DILocation(line: 3106, column: 18, scope: !1939, inlinedAt: !1938)
!2377 = !DILocation(line: 3126, column: 9, scope: !1927, inlinedAt: !1937)
!2378 = !DILocation(line: 175, column: 39, scope: !1904, inlinedAt: !1905)
!2379 = !DILocation(line: 176, column: 30, scope: !1940, inlinedAt: !1905)
!2380 = !DILocation(line: 176, column: 9, scope: !1904, inlinedAt: !1905)
!2381 = !DILocation(line: 178, column: 11, scope: !1904, inlinedAt: !1905)
!2382 = !DILocation(line: 0, scope: !2113, inlinedAt: !1905)
!2383 = !DILocation(line: 182, column: 8, scope: !1904, inlinedAt: !1905)
!2384 = !DILocation(line: 660, column: 9, scope: !1941, inlinedAt: !1942)
!2385 = !DILocation(line: 611, column: 9, scope: !1943, inlinedAt: !1954)
!2386 = !DILocation(line: 970, column: 18, scope: !1955, inlinedAt: !1962)
!2387 = !DILocation(line: 1663, column: 9, scope: !1963, inlinedAt: !1971)
!2388 = !DILocation(line: 180, column: 28, scope: !1966, inlinedAt: !1970)
!2389 = !DILocation(line: 627, column: 28, scope: !1972, inlinedAt: !1973)
!2390 = !DILocation(line: 327, column: 24, scope: !1968, inlinedAt: !1969)
!2391 = !DILocation(line: 660, column: 9, scope: !1976, inlinedAt: !1979)
!2392 = !DILocation(line: 1095, column: 9, scope: !1980, inlinedAt: !1982)
!2393 = !DILocation(line: 209, column: 9, scope: !1983, inlinedAt: !1905)
!2394 = !DILocation(line: 209, column: 28, scope: !1983, inlinedAt: !1905)
!2395 = !DILocation(line: 1095, column: 9, scope: !1984, inlinedAt: !1985)
!2396 = !DILocation(line: 277, column: 48, scope: !1821, inlinedAt: !1992)
!2397 = !DILocation(line: 277, column: 5, scope: !1821, inlinedAt: !1992)
!2398 = !DILocation(line: 277, column: 65, scope: !1821, inlinedAt: !1992)
!2399 = !DILocation(line: 210, column: 5, scope: !1983, inlinedAt: !1905)
!2400 = !DILocation(line: 216, column: 9, scope: !1983, inlinedAt: !1905)
!2401 = !DILocation(line: 211, column: 5, scope: !1983, inlinedAt: !1905)
!2402 = !DILocation(line: 277, column: 48, scope: !1821, inlinedAt: !1999)
!2403 = !DILocation(line: 277, column: 5, scope: !1821, inlinedAt: !1999)
!2404 = !DILocation(line: 277, column: 65, scope: !1821, inlinedAt: !1999)
!2405 = !DILocation(line: 217, column: 5, scope: !1983, inlinedAt: !1905)
!2406 = !DILocation(line: 180, column: 28, scope: !2002, inlinedAt: !2005)
!2407 = !DILocation(line: 627, column: 28, scope: !2006, inlinedAt: !2007)
!2408 = !DILocation(line: 221, column: 27, scope: !2008, inlinedAt: !1905)
!2409 = !DILocation(line: 1095, column: 9, scope: !1984, inlinedAt: !2009)
!2410 = !DILocation(line: 222, column: 33, scope: !2010, inlinedAt: !1905)
!2411 = !DILocation(line: 222, column: 9, scope: !2010, inlinedAt: !1905)
!2412 = !DILocation(line: 1099, column: 5, scope: !1984, inlinedAt: !2009)
!2413 = !DILocation(line: 0, scope: !1984, inlinedAt: !2009)
!2414 = !DILocation(line: 229, column: 13, scope: !2010, inlinedAt: !1905)
!2415 = !DILocation(line: 230, column: 13, scope: !2010, inlinedAt: !1905)
!2416 = !DILocation(line: 230, column: 35, scope: !2010, inlinedAt: !1905)
!2417 = !DILocation(line: 1095, column: 9, scope: !1980, inlinedAt: !2011)
!2418 = !DILocation(line: 1099, column: 5, scope: !1980, inlinedAt: !2011)
!2419 = !DILocation(line: 0, scope: !1980, inlinedAt: !2011)
!2420 = !DILocation(line: 743, column: 15, scope: !2012, inlinedAt: !2013)
!2421 = !DILocation(line: 0, scope: !2012, inlinedAt: !2013)
!2422 = !DILocation(line: 224, column: 9, scope: !2010, inlinedAt: !1905)
!2423 = !DILocation(line: 232, column: 9, scope: !2010, inlinedAt: !1905)
!2424 = !DILocation(line: 1663, column: 9, scope: !2014, inlinedAt: !2015)
!2425 = !DILocation(line: 235, column: 9, scope: !2003, inlinedAt: !1905)
!2426 = !DILocation(line: 241, column: 13, scope: !2003, inlinedAt: !1905)
!2427 = !DILocation(line: 242, column: 13, scope: !2003, inlinedAt: !1905)
!2428 = !DILocation(line: 236, column: 9, scope: !2003, inlinedAt: !1905)
!2429 = !DILocation(line: 244, column: 9, scope: !2003, inlinedAt: !1905)
!2430 = !DILocation(line: 235, column: 5, scope: !2003, inlinedAt: !1905)
!2431 = !DILocation(line: 191, column: 30, scope: !2016, inlinedAt: !1905)
!2432 = !DILocation(line: 191, column: 9, scope: !1904, inlinedAt: !1905)
!2433 = !DILocation(line: 193, column: 11, scope: !1904, inlinedAt: !1905)
!2434 = !DILocation(line: 246, column: 2, scope: !1904, inlinedAt: !1905)
!2435 = !DILocation(line: 164, column: 9, scope: !1793, inlinedAt: !1795)
!2436 = !DILocation(line: 479, column: 26, scope: !1811, inlinedAt: !2020)
!2437 = !DILocation(line: 479, column: 5, scope: !1810, inlinedAt: !2020)
!2438 = !DILocation(line: 481, column: 7, scope: !1810, inlinedAt: !2020)
!2439 = !DILocation(line: 482, column: 2, scope: !1810, inlinedAt: !2020)
!2440 = !DILocation(line: 160, column: 17, scope: !1793, inlinedAt: !1795)
!2441 = !DILocation(line: 25, column: 9, scope: !1560)
!2442 = !DILocation(line: 82, column: 1, scope: !1571, inlinedAt: !1572)
!2443 = !DILocation(line: 23, column: 9, scope: !1560)
!2444 = !DILocation(line: 19, column: 1, scope: !1545)
!2445 = !DILocation(line: 3101, column: 19, scope: !23, inlinedAt: !2024)
!2446 = !DILocation(line: 3106, column: 37, scope: !26, inlinedAt: !2024)
!2447 = !DILocation(line: 3106, column: 18, scope: !26, inlinedAt: !2024)
!2448 = !DILocation(line: 611, column: 9, scope: !27, inlinedAt: !2028)
!2449 = !DILocation(line: 970, column: 18, scope: !32, inlinedAt: !2029)
!2450 = !DILocation(line: 574, column: 14, scope: !33, inlinedAt: !2030)
!2451 = !DILocation(line: 2986, column: 9, scope: !31, inlinedAt: !2023)
!2452 = !DILocation(line: 29, column: 5, scope: !1548)
!2453 = !DILocation(line: 30, column: 2, scope: !1545)
!2454 = distinct !DISubprogram(name: "write_float_impl", linkageName: "_RNvNtNtCsim2LhUzKY4R_19foundations_metrics8encoding4text16write_float_impl", scope: !109, file: !106, line: 445, type: !104, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2455 = distinct !DISubprogram(name: "is_nan", linkageName: "_RNvMNtCs3oUPovFnLWP_4core3f64d6is_nan", scope: !2624, file: !2622, line: 665, type: !104, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2456 = distinct !DISubprogram(name: "spec_extend<u8, alloc::alloc::Global>", linkageName: "_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhEE11spec_extendCsim2LhUzKY4R_19foundations_metrics", scope: !141, file: !139, line: 54, type: !104, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2457 = distinct !DILexicalBlock(scope: !2456, file: !139, line: 55, column: 9)
!2458 = distinct !DISubprogram(name: "push_str", linkageName: "_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str", scope: !116, file: !114, line: 1117, type: !104, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2459 = distinct !DISubprogram(name: "extend_from_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsim2LhUzKY4R_19foundations_metrics", scope: !113, file: !110, line: 3605, type: !104, scopeLine: 3605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2460 = distinct !DILocation(line: 56, column: 23, scope: !2457, inlinedAt: !2628)
!2461 = distinct !DILocation(line: 2962, column: 18, scope: !22, inlinedAt: !2460)
!2462 = distinct !DILocation(line: 2980, column: 24, scope: !25, inlinedAt: !2461)
!2463 = distinct !{!2463, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics"}
!2464 = distinct !{!2464, !2463, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2465 = distinct !DILocation(line: 2983, column: 66, scope: !31, inlinedAt: !2461)
!2466 = distinct !DILocation(line: 2053, column: 18, scope: !30, inlinedAt: !2465)
!2467 = distinct !DILocation(line: 296, column: 20, scope: !29, inlinedAt: !2466)
!2468 = distinct !DILocation(line: 606, column: 14, scope: !28, inlinedAt: !2467)
!2469 = distinct !DILocation(line: 2983, column: 79, scope: !31, inlinedAt: !2461)
!2470 = distinct !DILocation(line: 2983, column: 17, scope: !31, inlinedAt: !2461)
!2471 = distinct !DILexicalBlock(scope: !2456, file: !139, line: 55, column: 9)
!2472 = distinct !DILocation(line: 56, column: 23, scope: !2471, inlinedAt: !2634)
!2473 = distinct !DILocation(line: 2962, column: 18, scope: !22, inlinedAt: !2472)
!2474 = distinct !DILocation(line: 2980, column: 24, scope: !25, inlinedAt: !2473)
!2475 = distinct !{!2475, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics"}
!2476 = distinct !{!2476, !2475, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2477 = distinct !DILocation(line: 2983, column: 66, scope: !31, inlinedAt: !2473)
!2478 = distinct !DILocation(line: 2053, column: 18, scope: !30, inlinedAt: !2477)
!2479 = distinct !DILocation(line: 296, column: 20, scope: !29, inlinedAt: !2478)
!2480 = distinct !DILocation(line: 606, column: 14, scope: !28, inlinedAt: !2479)
!2481 = distinct !DILocation(line: 2983, column: 79, scope: !31, inlinedAt: !2473)
!2482 = distinct !DILocation(line: 2983, column: 17, scope: !31, inlinedAt: !2473)
!2483 = distinct !DILexicalBlock(scope: !2454, file: !106, line: 453, column: 9)
!2484 = distinct !DILexicalBlock(scope: !2483, file: !106, line: 454, column: 9)
!2485 = distinct !DILexicalBlock(scope: !2456, file: !139, line: 55, column: 9)
!2486 = distinct !DILocation(line: 56, column: 23, scope: !2485, inlinedAt: !2640)
!2487 = distinct !DILocation(line: 2962, column: 18, scope: !22, inlinedAt: !2486)
!2488 = distinct !DILocation(line: 2980, column: 24, scope: !25, inlinedAt: !2487)
!2489 = distinct !{!2489, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics"}
!2490 = distinct !{!2490, !2489, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2491 = distinct !DILocation(line: 2983, column: 66, scope: !31, inlinedAt: !2487)
!2492 = distinct !DILocation(line: 2053, column: 18, scope: !30, inlinedAt: !2491)
!2493 = distinct !DILocation(line: 296, column: 20, scope: !29, inlinedAt: !2492)
!2494 = distinct !DILocation(line: 606, column: 14, scope: !28, inlinedAt: !2493)
!2495 = distinct !DILocation(line: 2983, column: 79, scope: !31, inlinedAt: !2487)
!2496 = distinct !DILocation(line: 2983, column: 17, scope: !31, inlinedAt: !2487)
!2497 = distinct !DISubprogram(name: "is_suffix_of", linkageName: "_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern12is_suffix_of", scope: !2644, file: !2642, line: 1030, type: !104, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2498 = distinct !DISubprogram(name: "strip_suffix<&str>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core3stre12strip_suffixReECsim2LhUzKY4R_19foundations_metrics", scope: !154, file: !152, line: 2487, type: !104, scopeLine: 2487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2499 = distinct !DISubprogram(name: "strip_suffix_of", linkageName: "_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15strip_suffix_of", scope: !2644, file: !2642, line: 1039, type: !104, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2500 = distinct !DILexicalBlock(scope: !2456, file: !139, line: 55, column: 9)
!2501 = distinct !DILexicalBlock(scope: !2484, file: !106, line: 455, column: 9)
!2502 = distinct !DILocation(line: 56, column: 23, scope: !2500, inlinedAt: !2652)
!2503 = distinct !DILocation(line: 2962, column: 18, scope: !22, inlinedAt: !2502)
!2504 = distinct !DILocation(line: 2980, column: 24, scope: !25, inlinedAt: !2503)
!2505 = distinct !{!2505, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics"}
!2506 = distinct !{!2506, !2505, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2507 = distinct !DILocation(line: 2983, column: 66, scope: !31, inlinedAt: !2503)
!2508 = distinct !DILocation(line: 2053, column: 18, scope: !30, inlinedAt: !2507)
!2509 = distinct !DILocation(line: 296, column: 20, scope: !29, inlinedAt: !2508)
!2510 = distinct !DILocation(line: 606, column: 14, scope: !28, inlinedAt: !2509)
!2511 = distinct !DILocation(line: 2983, column: 79, scope: !31, inlinedAt: !2503)
!2512 = distinct !DILocation(line: 2983, column: 17, scope: !31, inlinedAt: !2503)
!2513 = distinct !DILocation(line: 56, column: 23, scope: !2500, inlinedAt: !2652)
!2514 = distinct !DILocation(line: 2962, column: 18, scope: !22, inlinedAt: !2513)
!2515 = distinct !DILocation(line: 2980, column: 24, scope: !25, inlinedAt: !2514)
!2516 = distinct !{!2516, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics"}
!2517 = distinct !{!2517, !2516, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2518 = distinct !DILocation(line: 2983, column: 66, scope: !31, inlinedAt: !2514)
!2519 = distinct !DILocation(line: 2053, column: 18, scope: !30, inlinedAt: !2518)
!2520 = distinct !DILocation(line: 296, column: 20, scope: !29, inlinedAt: !2519)
!2521 = distinct !DILocation(line: 606, column: 14, scope: !28, inlinedAt: !2520)
!2522 = distinct !DILocation(line: 2983, column: 79, scope: !31, inlinedAt: !2514)
!2523 = distinct !DILocation(line: 2983, column: 17, scope: !31, inlinedAt: !2514)
!2524 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOh3addCsim2LhUzKY4R_19foundations_metrics", scope: !123, file: !121, line: 936, type: !104, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2525 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterhE3newCsim2LhUzKY4R_19foundations_metrics", scope: !133, file: !127, line: 94, type: !104, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2526 = distinct !DILexicalBlock(scope: !2525, file: !127, line: 95, column: 9)
!2527 = distinct !DILexicalBlock(scope: !2526, file: !127, line: 96, column: 9)
!2528 = distinct !DISubprogram(name: "iter<u8>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSh4iterCsim2LhUzKY4R_19foundations_metrics", scope: !132, file: !131, line: 1039, type: !104, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2529 = distinct !DISubprogram(name: "chars", linkageName: "_RNvMNtCs3oUPovFnLWP_4core3stre5chars", scope: !154, file: !152, line: 1079, type: !104, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2530 = distinct !DISubprogram(name: "char_indices", linkageName: "_RNvMNtCs3oUPovFnLWP_4core3stre12char_indices", scope: !154, file: !152, line: 1136, type: !104, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2531 = distinct !DISubprogram(name: "into_searcher<[char; 3]>", linkageName: "_RNvXs7_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_18MultiCharEqPatternAcj3_ENtB5_7Pattern13into_searcherCsim2LhUzKY4R_19foundations_metrics", scope: !2655, file: !2642, line: 679, type: !104, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2532 = distinct !DISubprogram(name: "is_contained_in<core::str::pattern::MultiCharEqPattern<[char; 3]>>", linkageName: "_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj3_ENtB5_7Pattern15is_contained_inCsim2LhUzKY4R_19foundations_metrics", scope: !2656, file: !2642, line: 109, type: !104, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2533 = distinct !DISubprogram(name: "is_contained_in<3>", linkageName: "_RNvXsb_NtNtCs3oUPovFnLWP_4core3str7patternAcj3_NtB5_7Pattern15is_contained_inCsim2LhUzKY4R_19foundations_metrics", scope: !2657, file: !2642, line: 743, type: !104, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2534 = distinct !DISubprogram(name: "contains<[char; 3]>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core3stre8containsAcj3_ECsim2LhUzKY4R_19foundations_metrics", scope: !154, file: !152, line: 1383, type: !104, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2535 = distinct !DILocation(line: 744, column: 27, scope: !2533, inlinedAt: !2659)
!2536 = distinct !DILocation(line: 110, column: 14, scope: !2532, inlinedAt: !2535)
!2537 = distinct !DILocation(line: 680, column: 81, scope: !2531, inlinedAt: !2536)
!2538 = distinct !DILocation(line: 1137, column: 51, scope: !2530, inlinedAt: !2537)
!2539 = distinct !DILocation(line: 1080, column: 39, scope: !2529, inlinedAt: !2538)
!2540 = distinct !DILocation(line: 1040, column: 9, scope: !2528, inlinedAt: !2539)
!2541 = distinct !DILocation(line: 100, column: 78, scope: !2527, inlinedAt: !2540)
!2542 = distinct !DISubprogram(name: "next_match<core::str::pattern::MultiCharEqSearcher<[char; 3]>>", linkageName: "_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherAcj3_ENtB5_8Searcher10next_matchCsim2LhUzKY4R_19foundations_metrics", scope: !2660, file: !2642, line: 249, type: !104, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2543 = distinct !DILocation(line: 110, column: 38, scope: !2532, inlinedAt: !2535)
!2544 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !187, file: !160, line: 39, type: !104, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2545 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next", scope: !2661, file: !160, line: 182, type: !104, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2546 = distinct !DILexicalBlock(scope: !2545, file: !160, line: 183, column: 9)
!2547 = distinct !DISubprogram(name: "next<[char; 3]>", linkageName: "_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCsim2LhUzKY4R_19foundations_metrics", scope: !2662, file: !2642, line: 691, type: !104, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2548 = distinct !DILexicalBlock(scope: !2547, file: !2642, line: 692, column: 9)
!2549 = distinct !DILexicalBlock(scope: !2548, file: !2642, line: 695, column: 9)
!2550 = distinct !DILexicalBlock(scope: !2549, file: !2642, line: 696, column: 40)
!2551 = distinct !DILocation(line: 251, column: 24, scope: !2542, inlinedAt: !2543)
!2552 = distinct !DILocation(line: 696, column: 33, scope: !2550, inlinedAt: !2551)
!2553 = distinct !DILocation(line: 184, column: 25, scope: !2546, inlinedAt: !2552)
!2554 = distinct !DILocation(line: 42, column: 18, scope: !2544, inlinedAt: !2553)
!2555 = distinct !DILocation(line: 37, column: 20, scope: !75, inlinedAt: !2554)
!2556 = distinct !DILocation(line: 180, column: 28, scope: !60, inlinedAt: !2555)
!2557 = distinct !DILocation(line: 185, column: 40, scope: !60, inlinedAt: !2555)
!2558 = distinct !{!2558, i1 true, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj3_ENtB5_7Pattern15is_contained_inCsim2LhUzKY4R_19foundations_metrics"}
!2559 = distinct !{!2559, !2558, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj3_ENtB5_7Pattern15is_contained_inCsim2LhUzKY4R_19foundations_metrics: argument 1"}
!2560 = distinct !{!2560, i1 true, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherAcj3_ENtB5_8Searcher10next_matchCsim2LhUzKY4R_19foundations_metrics"}
!2561 = distinct !{!2561, !2560, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherAcj3_ENtB5_8Searcher10next_matchCsim2LhUzKY4R_19foundations_metrics: argument 1"}
!2562 = distinct !{!2562, !2560, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherAcj3_ENtB5_8Searcher10next_matchCsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2563 = distinct !{!2563, i1 true, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCsim2LhUzKY4R_19foundations_metrics"}
!2564 = distinct !{!2564, !2563, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCsim2LhUzKY4R_19foundations_metrics: argument 1"}
!2565 = distinct !{!2565, !2563, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2566 = distinct !{!2566, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2567 = distinct !{!2567, !2566, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2568 = distinct !{!2568, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsim2LhUzKY4R_19foundations_metrics"}
!2569 = distinct !{!2569, !2568, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsim2LhUzKY4R_19foundations_metrics: argument 0"}
!2570 = distinct !DILocation(line: 45, column: 16, scope: !76, inlinedAt: !2554)
!2571 = distinct !DILocation(line: 48, column: 29, scope: !78, inlinedAt: !2554)
!2572 = distinct !DILocation(line: 180, column: 28, scope: !60, inlinedAt: !2571)
!2573 = distinct !DILocation(line: 185, column: 40, scope: !60, inlinedAt: !2571)
!2574 = distinct !DILocation(line: 49, column: 18, scope: !80, inlinedAt: !2554)
!2575 = distinct !DILocation(line: 55, column: 33, scope: !81, inlinedAt: !2554)
!2576 = distinct !DILocation(line: 180, column: 28, scope: !60, inlinedAt: !2575)
!2577 = distinct !DILocation(line: 185, column: 40, scope: !60, inlinedAt: !2575)
!2578 = distinct !DILocation(line: 56, column: 19, scope: !82, inlinedAt: !2554)
!2579 = distinct !DILocation(line: 63, column: 37, scope: !83, inlinedAt: !2554)
!2580 = distinct !DILocation(line: 180, column: 28, scope: !60, inlinedAt: !2579)
!2581 = distinct !DILocation(line: 185, column: 40, scope: !60, inlinedAt: !2579)
!2582 = distinct !DILocation(line: 64, column: 37, scope: !84, inlinedAt: !2554)
!2583 = distinct !DISubprogram(name: "len<u8>", linkageName: "_RNvXs2I_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsim2LhUzKY4R_19foundations_metrics", scope: !2665, file: !134, line: 142, type: !104, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2584 = distinct !DILexicalBlock(scope: !2583, file: !134, line: 25, column: 86)
!2585 = distinct !DILexicalBlock(scope: !2584, file: !134, line: 33, column: 13)
!2586 = distinct !DILocation(line: 697, column: 35, scope: !2550, inlinedAt: !2551)
!2587 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCs3oUPovFnLWP_4core4char7convert18from_u32_unchecked", scope: !191, file: !190, line: 26, type: !104, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2588 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc18from_u32_unchecked", scope: !193, file: !124, line: 241, type: !104, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2589 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Csim2LhUzKY4R_19foundations_metrics", scope: !192, file: !160, line: 42, type: !104, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2590 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsim2LhUzKY4R_19foundations_metrics", scope: !144, file: !142, line: 1158, type: !104, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2591 = distinct !DILexicalBlock(scope: !2590, file: !142, line: 1163, column: 13)
!2592 = distinct !DILocation(line: 42, column: 50, scope: !2544, inlinedAt: !2553)
!2593 = distinct !DILocation(line: 1163, column: 29, scope: !2591, inlinedAt: !2592)
!2594 = distinct !DILocation(line: 42, column: 59, scope: !2589, inlinedAt: !2593)
!2595 = distinct !DILocation(line: 243, column: 18, scope: !2588, inlinedAt: !2594)
!2596 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB7_13SliceContains14slice_containss_0Csim2LhUzKY4R_19foundations_metrics", scope: !2669, file: !2666, line: 428, type: !175, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2597 = distinct !DISubprogram(name: "any<char, core::slice::cmp::{impl#48}::slice_contains::{closure_env#1}>", linkageName: "_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECsim2LhUzKY4R_19foundations_metrics", scope: !135, file: !134, line: 321, type: !104, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2598 = distinct !DILexicalBlock(scope: !2597, file: !134, line: 326, column: 49)
!2599 = distinct !DISubprogram(name: "slice_contains", linkageName: "_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains", scope: !2668, file: !2666, line: 416, type: !175, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2600 = distinct !DILexicalBlock(scope: !2599, file: !2666, line: 421, column: 21)
!2601 = distinct !DISubprogram(name: "contains<char>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSc8containsCsim2LhUzKY4R_19foundations_metrics", scope: !132, file: !131, line: 2600, type: !104, scopeLine: 2600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2602 = distinct !DISubprogram(name: "matches<3>", linkageName: "_RNvXs4_NtNtCs3oUPovFnLWP_4core3str7patternAcj3_NtB5_11MultiCharEq7matchesCsim2LhUzKY4R_19foundations_metrics", scope: !2670, file: !2642, line: 647, type: !104, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !103)
!2603 = distinct !DILexicalBlock(scope: !2550, file: !2642, line: 697, column: 13)
!2604 = distinct !DILexicalBlock(scope: !2603, file: !2642, line: 698, column: 13)
!2605 = distinct !DILocation(line: 699, column: 29, scope: !2604, inlinedAt: !2551)
!2606 = distinct !DILocation(line: 648, column: 14, scope: !2602, inlinedAt: !2605)
!2607 = distinct !DILocation(line: 2604, column: 9, scope: !2601, inlinedAt: !2606)
!2608 = distinct !DILocation(line: 428, column: 54, scope: !2600, inlinedAt: !2607)
!2609 = distinct !DILocation(line: 327, column: 24, scope: !2598, inlinedAt: !2608)
!2610 = distinct !DILexicalBlock(scope: !2456, file: !139, line: 55, column: 9)
!2611 = distinct !DILocation(line: 56, column: 23, scope: !2610, inlinedAt: !2675)
!2612 = distinct !{!2612, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics"}
!2613 = distinct !{!2613, !2612, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsim2LhUzKY4R_19foundations_metrics: argument 0"}
end_hunk_1
