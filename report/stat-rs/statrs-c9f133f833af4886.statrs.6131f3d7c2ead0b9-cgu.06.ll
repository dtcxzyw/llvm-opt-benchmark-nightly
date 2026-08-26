Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.06?download=true
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2j_:bb.a
  %i.aj = and i64 %1, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i, %.loopexit.1
  %.sroa.0.020.i = phi ptr [ %i.an, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.019.i = phi i64 [ %i.al, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.018.i = phi ptr [ %i.aq, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.017.i = phi ptr [ %i.as, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i ], [ %i.t, %.loopexit.1 ] ; 3 uses
  %.sroa.015.016.i = phi ptr [ %i.aw, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i ], [ %i.ag, %.loopexit.1 ] ; 3 uses
  %.sroa.017.015.i = phi ptr [ %i.av, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i ], [ %i.af, %.loopexit.1 ] ; 3 uses
  %.sroa.019.014.i = phi ptr [ %i.ax, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i ], [ %i.ae, %.loopexit.1 ] ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.04.019.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load double, ptr %.sroa.011.017.i, align 8, !alias.scope !137, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i = load double, ptr %.sroa.06.018.i, align 8, !alias.scope !137, !noundef !4 ; 2 uses
  %brmerge.not.i.i = fcmp uno double %.sroa.011.0.val.i, %.sroa.06.0.val.i
  br i1 %brmerge.not.i.i, label %.invoke, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i, !prof !5

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i: ; preds = %.lr.ph.i
  %.mux.i.i = fcmp olt double %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %.mux.i.i, ptr %.sroa.011.017.i, ptr %.sroa.06.018.i
  %i.am = load i64, ptr %..i21.i, align 8, !alias.scope !137, !noalias !140
  store i64 %i.am, ptr %.sroa.0.020.i, align 8, !noalias !144
  %.sroa.017.0.val.i = load double, ptr %.sroa.017.015.i, align 8, !alias.scope !137, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i = load double, ptr %.sroa.015.016.i, align 8, !alias.scope !137, !noundef !4 ; 2 uses
  %brmerge.not.i22.i = fcmp uno double %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %brmerge.not.i22.i, label %.invoke, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i, !prof !5

.invoke:                                          ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i, %.lr.ph.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit24.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 8 ; 2 uses
  %i.ao = xor i1 %.mux.i.i, true
  %i.ap = zext i1 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.018.i, i64 %i.ap ; 5 uses
  %i.ar = zext i1 %.mux.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.017.i, i64 %i.ar ; 4 uses
  %.mux.i23.i = fcmp olt double %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %.mux.i23.i, ptr %.sroa.015.016.i, ptr %.sroa.017.015.i
  %i.at = xor i1 %.mux.i23.i, true
  %i.au = load i64, ptr %..i.i, align 8, !alias.scope !137, !noalias !145
  store i64 %i.au, ptr %.sroa.019.014.i, align 8, !noalias !149
  %.neg.i.i = sext i1 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %.sroa.017.015.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.mux.i23.i to i64
  %i.aw = getelementptr [8 x i8], ptr %.sroa.015.016.i, i64 %.neg13.i.i ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.019.014.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.al, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.ay = icmp ult ptr %i.aq, %i.ah               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.ay, ptr %i.aq, ptr %i.as
  %i.az = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8, !alias.scope !137
  store i64 %i.az, ptr %i.an, align 8, !noalias !137
  %i.ba = zext i1 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ba
  %i.bc = xor i1 %i.ay, true
  %i.bd = zext i1 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.as, %._crit_edge.i ], [ %i.be, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.aq, %._crit_edge.i ], [ %i.bb, %bb.k ]
  %i.bf = icmp ne ptr %.sroa.06.1.i, %i.ah
  %i.bg = icmp ne ptr %.sroa.011.1.i, %i.ai
  %or.cond.i = select i1 %i.bf, i1 true, i1 %i.bg, !prof !19
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB27_.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #12
          to label %.noexc31 unwind label %bb.n

.noexc31:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.invoke, %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.bi, i1 false), !noalias !150
  br label %.body

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB27_.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bq, %bb.p ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1Z_.exit
  %.sroa.05.047 = phi i64 [ %i.br, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1Z_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.047
  %.idx = shl nuw nsw i64 %.sroa.05.047, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.bl = load i64, ptr %i.bj, align 8            ; 4 uses
  store i64 %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %.val9.i.cast = bitcast i64 %i.bl to double     ; 4 uses
  %.val10.i = load double, ptr %i.bm, align 8, !noundef !4 ; 3 uses
  %brmerge.not.i.i32 = fcmp uno double %.val10.i, %.val9.i.cast
  br i1 %brmerge.not.i.i32, label %.noexc36, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i33, !prof !5

.noexc36:                                         ; preds = %.lr.ph, %.lr.ph.1
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i33: ; preds = %.lr.ph
  %.mux.i.i34 = fcmp ogt double %.val10.i, %.val9.i.cast
  br i1 %.mux.i.i34, label %.preheader.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1Z_.exit

.preheader.preheader:                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i33
  store double %.val10.i, ptr %i.bk, align 8
  %i.bn = icmp eq i64 %.sroa.05.047, 1
  br i1 %i.bn, label %._crit_edge, label %.lr.ph98

.preheader:                                       ; preds = %bb.o
  store double %.val8.i, ptr %.sroa.0.0.i3597, align 8
  %i.bo = icmp eq ptr %i.bp, %2
  br i1 %i.bo, label %._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i3597 = phi ptr [ %i.bp, %.preheader ], [ %i.bm, %.preheader.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.0.i3597, i64 -8 ; 3 uses
  %.val8.i = load double, ptr %i.bp, align 8, !noundef !4 ; 3 uses
  %brmerge.not.i11.i = fcmp uno double %.val8.i, %.val9.i.cast
  br i1 %brmerge.not.i11.i, label %.loopexit56, label %bb.o, !prof !5

.loopexit56:                                      ; preds = %.lr.ph98, %.lr.ph101
  %.lcssa54 = phi i64 [ %i.x, %.lr.ph101 ], [ %i.bl, %.lr.ph98 ]
  %.sroa.0.0.i35.lcssa52 = phi ptr [ %.sroa.0.0.i35.1100, %.lr.ph101 ], [ %.sroa.0.0.i3597, %.lr.ph98 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %.loopexit56
  unreachable

bb.o:                                             ; preds = %.lr.ph98
  %.mux.i12.i = fcmp ogt double %.val8.i, %.val9.i.cast
  br i1 %.mux.i12.i, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %bb.o, %.preheader.preheader
  %.sroa.0.0.i35.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i3597, %bb.o ]
  store i64 %i.bl, ptr %.sroa.0.0.i35.lcssa, align 8, !noalias !132
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1Z_.exit

bb.p:                                             ; preds = %.loopexit56
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store i64 %.lcssa54, ptr %.sroa.0.0.i35.lcssa52, align 8, !noalias !155
  br label %.body

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_taildNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1Z_.exit: ; preds = %._crit_edge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i33
  %i.br = add i64 %.sroa.05.047, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvMNtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB2_9Empirical13___inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 12 uses
  %i.h = alloca [72 x i8], align 8                ; 12 uses
  %i.i = fcmp oeq double %1, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %1, 1.000000e+00
  br i1 %i.j, label %bb.e, label %.preheader34.a

.preheader34.a:                                   ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = uitofp i64 %i.n to double                ; 3 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !160
  %i.p = load ptr, ptr %0, align 8, !alias.scope !160, !noundef !4 ; 3 uses
  %.not.i = icmp ne ptr %i.p, null                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !160
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !160
  %.sroa.01.sroa.0.0.i = zext i1 %.not.i to i64   ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i, i64 %i.t, i64 0
  %.sroa.01.sroa.5.sroa.6.0.i.a = select i1 %.not.i, i64 %i.r, i64 undef ; 2 uses
  store i64 %.sroa.01.sroa.0.0.i, ptr %i.h, align 8, !noalias !160
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !noalias !160
  %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.p, ptr %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !160
  %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0.i.a, ptr %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !160
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.01.sroa.0.0.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 8, !noalias !160
  %.sroa.02.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr null, ptr %.sroa.02.sroa.6.0..sroa_idx.i, align 8, !noalias !160
  %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.p, ptr %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !160
  %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0.i.a, ptr %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !160
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !160
  %i.u = call { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !160
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %.not34.i = icmp eq ptr %i.v, null
  br i1 %.not34.i, label %bb.d, label %_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MindE3min.exit, !prof !163

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12, !noalias !160
  unreachable

_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MindE3min.exit: ; preds = %bb.c
  %i.w = load double, ptr %i.v, align 8, !noalias !160, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !160
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !164
  %i.x = load ptr, ptr %0, align 8, !alias.scope !164, !noundef !4 ; 3 uses
  %.not.i14 = icmp ne ptr %i.x, null              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !164
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !164
  %.sroa.01.sroa.6.0.i = zext i1 %.not.i14 to i64 ; 2 uses
  %.sroa.5.0.i15 = select i1 %.not.i14, i64 %i.ab, i64 0
  %.sroa.01.sroa.5.sroa.6.0.i16 = select i1 %.not.i14, i64 %i.z, i64 undef ; 2 uses
  store i64 %.sroa.01.sroa.6.0.i, ptr %i.g, align 8, !noalias !164
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !164
  %.sroa.03.sroa.4.sroa.4.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.x, ptr %.sroa.03.sroa.4.sroa.4.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !164
  %.sroa.03.sroa.4.sroa.5.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0.i16, ptr %.sroa.03.sroa.4.sroa.5.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !164
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.01.sroa.6.0.i, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !noalias !164
  %.sroa.03.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.03.sroa.6.0..sroa_idx.i, align 8, !noalias !164
  %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.x, ptr %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !164
  %.sroa.03.sroa.6.sroa.5.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0.i16, ptr %.sroa.03.sroa.6.sroa.5.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !164
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.sroa.5.0.i15, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !164
  %i.ac = call { ptr, ptr } @_RNvXsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g), !noalias !164
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 2 uses
  %.not36.i = icmp eq ptr %i.ad, null
  br i1 %.not36.i, label %bb.f, label %_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MaxdE3max.exit, !prof !163

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12, !noalias !164
  unreachable

_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MaxdE3max.exit: ; preds = %bb.e
  %i.ae = load double, ptr %i.ad, align 8, !noalias !164, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !164
  br label %bb.q

bb.g:                                             ; preds = %.preheader34.a, %bb.i
  %.sroa.07.042 = phi double [ -2.000000e+00, %.preheader34.a ], [ %i.ar, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !167
  store i64 2, ptr %i.e, align 8, !noalias !167
  store i64 0, ptr %i.k, align 8, !noalias !167
  store double %.sroa.07.042, ptr %i.l, align 8, !noalias !167
  call void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE5rangeB18_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB18_EB2u_EEB1h_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !167
  %i.af = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0
  %.not8.i.i = icmp eq ptr %i.ag, null
  br i1 %.not8.i.i, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ah = phi { ptr, ptr } [ %i.ak, %.lr.ph.i.i ], [ %i.af, %bb.g ]
  %.sroa.0.09.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.g ]
  %i.ai = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %.val.i.i = load i64, ptr %i.ai, align 8, !noundef !4
  %i.aj = add i64 %.val.i.i, %.sroa.0.09.i.i      ; 2 uses
  %i.ak = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f) ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i, label %.lr.ph.i.i

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %i.am = uitofp i64 %i.aj to double
  br label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit

bb.h:                                             ; preds = %bb.i
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #12, !noalias !167
  unreachable

_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit: ; preds = %bb.g, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i
  %.sroa.0.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.g ], [ %i.am, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i ]
  %i.an = fdiv double %.sroa.0.0.lcssa.i.i, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ao = fcmp ogt double %i.an, %1
  br i1 %i.ao, label %bb.i, label %.preheader33

.preheader33:                                     ; preds = %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit
  %i.ar = fadd double %.sroa.07.042, %.sroa.07.042 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.as = fcmp uno double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.h, label %bb.g, !prof !170

bb.j:                                             ; preds = %.preheader33, %bb.l
  %.sroa.01.043 = phi double [ 2.000000e+00, %.preheader33 ], [ %i.bf, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !171
  store i64 2, ptr %i.c, align 8, !noalias !171
  store i64 0, ptr %i.ap, align 8, !noalias !171
  store double %.sroa.01.043, ptr %i.aq, align 8, !noalias !171
  call void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE5rangeB18_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB18_EB2u_EEB1h_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !171
  %i.at = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not8.i.i17 = icmp eq ptr %i.au, null
  br i1 %.not8.i.i17, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit24, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.j, %.lr.ph.i.i18
  %i.av = phi { ptr, ptr } [ %i.ay, %.lr.ph.i.i18 ], [ %i.at, %bb.j ]
  %.sroa.0.09.i.i19 = phi i64 [ %i.ax, %.lr.ph.i.i18 ], [ 0, %bb.j ]
  %i.aw = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %.val.i.i20 = load i64, ptr %i.aw, align 8, !noundef !4
  %i.ax = add i64 %.val.i.i20, %.sroa.0.09.i.i19  ; 2 uses
  %i.ay = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %.not.i.i21 = icmp eq ptr %i.az, null
  br i1 %.not.i.i21, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i22, label %.lr.ph.i.i18

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i22: ; preds = %.lr.ph.i.i18
  %i.ba = uitofp i64 %i.ax to double
  br label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit24

bb.k:                                             ; preds = %bb.l
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #12, !noalias !171
  unreachable

_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit24: ; preds = %bb.j, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i22
  %.sroa.0.0.lcssa.i.i23 = phi double [ 0.000000e+00, %bb.j ], [ %i.ba, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i22 ]
  %i.bb = fdiv double %.sroa.0.0.lcssa.i.i23, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bc = fcmp olt double %i.bb, %1
  br i1 %i.bc, label %bb.l, label %.preheader

.preheader:                                       ; preds = %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.n

bb.l:                                             ; preds = %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit24
  %i.bf = fadd double %.sroa.01.043, %.sroa.01.043 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bg = fcmp uno double %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.k, label %bb.j, !prof !170

bb.m:                                             ; preds = %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32
  %i.bh = fadd double %..sroa.07.1, %.sroa.01.1.
  %i.bi = fmul double %i.bh, 5.000000e-01
  br label %bb.q

bb.n:                                             ; preds = %.preheader, %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32
  %.sroa.01.146 = phi double [ %.sroa.01.043, %.preheader ], [ %.sroa.01.1., %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32 ] ; 2 uses
  %.sroa.07.145 = phi double [ %.sroa.07.042, %.preheader ], [ %..sroa.07.1, %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32 ] ; 2 uses
  %.sroa.012.044 = phi i32 [ 16, %.preheader ], [ %i.bw, %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32 ]
  %i.bj = fadd double %.sroa.07.145, %.sroa.01.146
  %i.bk = fmul double %i.bj, 5.000000e-01         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bl = fcmp uno double %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.p, label %bb.o, !prof !163

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !174
  store i64 2, ptr %i.a, align 8, !noalias !174
  store i64 0, ptr %i.bd, align 8, !noalias !174
  store double %i.bk, ptr %i.be, align 8, !noalias !174
  call void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE5rangeB18_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB18_EB2u_EEB1h_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !174
  %i.bm = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0
  %.not8.i.i25 = icmp eq ptr %i.bn, null
  br i1 %.not8.i.i25, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.o, %.lr.ph.i.i26
  %i.bo = phi { ptr, ptr } [ %i.br, %.lr.ph.i.i26 ], [ %i.bm, %bb.o ]
  %.sroa.0.09.i.i27 = phi i64 [ %i.bq, %.lr.ph.i.i26 ], [ 0, %bb.o ]
  %i.bp = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %.val.i.i28 = load i64, ptr %i.bp, align 8, !noundef !4
  %i.bq = add i64 %.val.i.i28, %.sroa.0.09.i.i27  ; 2 uses
  %i.br = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.br, 0
  %.not.i.i29 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i29, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i30, label %.lr.ph.i.i26

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i30: ; preds = %.lr.ph.i.i26
  %i.bt = uitofp i64 %i.bq to double
  br label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #12, !noalias !174
  unreachable

_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf.exit32: ; preds = %bb.o, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i30
  %.sroa.0.0.lcssa.i.i31 = phi double [ 0.000000e+00, %bb.o ], [ %i.bt, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit.i30 ]
  %i.bu = fdiv double %.sroa.0.0.lcssa.i.i31, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bv = fcmp ult double %i.bu, %1               ; 2 uses
  %..sroa.07.1 = select i1 %i.bv, double %i.bk, double %.sroa.07.145 ; 2 uses
  %.sroa.01.1. = select i1 %i.bv, double %.sroa.01.146, double %i.bk ; 2 uses
  %i.bw = add nsw i32 %.sroa.012.044, -1          ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.q:                                             ; preds = %bb.m, %_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MaxdE3max.exit, %_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MindE3min.exit
  %.sroa.0.0 = phi double [ %i.w, %_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MindE3min.exit ], [ %i.ae, %_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MaxdE3max.exit ], [ %i.bi, %bb.m ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB2_9Empirical3add(ptr noalias nofree noundef align 8 dereferenceable(48) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = fcmp uno double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.g = uitofp i64 %i.f to double                ; 2 uses
  %i.h = fadd nnan double %i.g, -1.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load <2 x double>, ptr %i.i, align 8     ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = fsub double %1, %i.k                     ; 3 uses
  %i.m = fmul double %i.h, %i.l
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB2_9Empirical6remove:bb.a
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.l, ptr %i.k, align 8
  %i.m = call { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  %i.n = extractvalue { ptr, ptr } %i.m, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.q = call { double, i64 } @_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9remove_kvB1u_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.u = call { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.v = extractvalue { ptr, ptr } %i.u, 1        ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ab = uitofp i64 %i.aa to double              ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !noundef !4
  %i.ae = fmul double %i.ad, %i.ab
  %i.af = fsub double %i.ae, %1
  %i.ag = fadd double %i.ab, -1.000000e+00        ; 2 uses
  %i.ah = fdiv double %i.af, %i.ag                ; 2 uses
  store double %i.ah, ptr %i.ac, align 8
  %i.ai = fsub double %1, %i.ah                   ; 2 uses
  %i.aj = fmul double %i.ag, %i.ai
  %i.ak = fmul double %i.ai, %i.aj
  %i.al = fdiv double %i.ak, %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !noundef !4
  %i.ao = fsub double %i.an, %i.al
  store double %i.ao, ptr %i.am, align 8
  %i.ap = add i64 %i.aa, -1
  store i64 %i.ap, ptr %i.z, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerTjjEE3newCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, double } @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerdE3newCs8lmMd0ZksV9_6statrs(double noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, double } poison, i64 %1, 0
  %i.b = insertvalue { i64, double } %i.a, double %0, 1
  ret { i64, double } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution11exponentialNtB2_8ExpErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !177, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35) #13
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution7uniformNtB2_12UniformErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !178, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !177, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4 ; 3 uses
  switch i8 %i.a, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 26) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 26) #13
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 39) #13
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution11exponentialNtB5_3ExpNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !177, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @9, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution7uniformNtB5_7UniformNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !177, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @10, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MaxdE3max(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.sroa.01.sroa.6.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.f, i64 0
  %.sroa.01.sroa.5.sroa.6.0.a = select i1 %.not, i64 %i.d, i64 undef ; 2 uses
  store i64 %.sroa.01.sroa.6.0, ptr %i.a, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.4.sroa.4.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.03.sroa.4.sroa.4.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.4.sroa.5.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0.a, ptr %.sroa.03.sroa.4.sroa.5.0..sroa.03.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.01.sroa.6.0, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8
  %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.6.sroa.5.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0.a, ptr %.sroa.03.sroa.6.sroa.5.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.44.0..sroa_idx, align 8
  %i.g = call { ptr, ptr } @_RNvXsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %bb.c, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  %i.i = load double, ptr %i.h, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret double %i.i

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution11exponentialNtB5_3ExpINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = fneg double %1
  %i.b = tail call noundef double @log1p(double noundef %i.a) #14
  %i.c = fneg double %i.b
  %i.d = load double, ptr %0, align 8, !noundef !4
  %i.e = fdiv double %i.c, %i.d
  ret double %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtNtNtB9_10statistics6traits3MindE3min(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.sroa.01.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.f, i64 0
  %.sroa.01.sroa.5.sroa.6.0.a = select i1 %.not, i64 %i.d, i64 undef ; 2 uses
  store i64 %.sroa.01.sroa.0.0, ptr %i.a, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0.a, ptr %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0.a, ptr %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.g = call { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.c, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  %i.i = load double, ptr %i.h, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret double %i.i

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution7uniformNtB5_7UniformINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store double %1, ptr %i.b, align 8
  %i.c = fcmp oge double %1, 0.000000e+00
  %i.d = fcmp ole double %1, 1.000000e+00
  %.sroa.0.0.i = and i1 %i.c, %i.d
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b, !prof !179

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %1, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp oeq double %1, 1.000000e+00
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !noundef !4 ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = load double, ptr %0, align 8, !noundef !4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = load double, ptr %0, align 8, !noundef !4 ; 2 uses
  %i.k = fsub double %i.h, %i.j
  %i.l = fmul double %1, %i.k
  %i.m = fadd double %i.j, %i.l
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.sroa.0.0 = phi double [ %i.i, %bb.e ], [ %i.m, %bb.f ], [ %i.h, %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_RNvMNtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB2_9Empirical13___inverse_cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, double noundef %1)
  ret double %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = fcmp uno double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %i.e, align 8
  call void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE5rangeB18_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB18_EB2u_EEB1h_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE2sf0NCINvXsE_NtB2e_5accumyINtB51_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.h = phi { ptr, ptr } [ %i.k, %.lr.ph.i ], [ %i.f, %bb.b ]
  %.sroa.0.09.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.b ]
  %i.i = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %.val.i = load i64, ptr %i.i, align 8, !noundef !4
  %i.j = add i64 %.val.i, %.sroa.0.09.i           ; 2 uses
  %i.k = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE2sf0NCINvXsE_NtB2e_5accumyINtB51_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit, label %.lr.ph.i

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE2sf0NCINvXsE_NtB2e_5accumyINtB51_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit: ; preds = %.lr.ph.i
  %i.m = uitofp i64 %i.j to double
  br label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE2sf0NCINvXsE_NtB2e_5accumyINtB51_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE2sf0NCINvXsE_NtB2e_5accumyINtB51_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit: ; preds = %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE2sf0NCINvXsE_NtB2e_5accumyINtB51_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit, %bb.b
  %.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %i.m, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE2sf0NCINvXsE_NtB2e_5accumyINtB51_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = uitofp i64 %i.o to double
  %i.q = fdiv double %.sroa.0.0.lcssa.i, %i.p
  ret double %i.q

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB5_9EmpiricalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = fcmp uno double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b, !prof !163

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %1, ptr %i.e, align 8
  call void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE5rangeB18_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB18_EB2u_EEB1h_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.h = phi { ptr, ptr } [ %i.k, %.lr.ph.i ], [ %i.f, %bb.b ]
  %.sroa.0.09.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.b ]
  %i.i = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %.val.i = load i64, ptr %i.i, align 8, !noundef !4
  %i.j = add i64 %.val.i, %.sroa.0.09.i           ; 2 uses
  %i.k = call { ptr, ptr } @_RNvXsX_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit, label %.lr.ph.i

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit: ; preds = %.lr.ph.i
  %i.m = uitofp i64 %i.j to double
  br label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit: ; preds = %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit, %bb.b
  %.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %i.m, %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5RangeINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB2g_8adapters3map8map_foldTRBZ_RyEB3P_yNCNvXs5_B14_NtB14_9EmpiricalINtB16_13ContinuousCDFddE3cdf0NCINvXsE_NtB2e_5accumyINtB52_3SumB3P_E3sumINtB3g_3MapB3_B3X_EE0E0EB18_.exit.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = uitofp i64 %i.o to double
  %i.q = fdiv double %.sroa.0.0.lcssa.i, %i.p
  ret double %i.q

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs8lmMd0ZksV9_6statrs12distribution9empiricalNtB4_9EmpiricalNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 17 uses
  %i.b = alloca [8 x i8], align 8                 ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [120 x i8], align 8               ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %.not = icmp ne ptr %i.f, null                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %.sroa.01.sroa.7.sroa.6.0 = select i1 %.not, i64 %i.h, i64 undef ; 2 uses
  %.sroa.01.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.j, i64 0
  store i64 0, ptr %i.e, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 10 uses
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 24 uses
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.754.0..sroa_idx, align 8
  %.sroa.754.sroa.4.0..sroa.754.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr null, ptr %.sroa.754.sroa.4.0..sroa.754.0..sroa_idx.sroa_idx, align 8
  %.sroa.754.sroa.5.0..sroa.754.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.f, ptr %.sroa.754.sroa.5.0..sroa.754.0..sroa_idx.sroa_idx, align 8
  %.sroa.754.sroa.6.0..sroa.754.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 %.sroa.01.sroa.7.sroa.6.0, ptr %.sroa.754.sroa.6.0..sroa.754.0..sroa_idx.sroa_idx, align 8
  %.sroa.754.sroa.7.0..sroa.754.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.754.sroa.7.0..sroa.754.0..sroa_idx.sroa_idx, align 8
end_hunk_1
