Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.05?download=true
inline.NumInlined: 96
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1N_:bb.a
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i, !llvm.loop !20

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1U_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.y, %bb.s ], [ %i.w, %bb.r ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit
  %.sroa.02.155 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bd, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit ] ; 2 uses
  %.sroa.023.154 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.155, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.154, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.155, %bb.u ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.154, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.154 to i1
  %i.br = or i64 %i.bj, %.sroa.023.154
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1O_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %..i.i33 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i33
  br i1 %i.ci, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1O_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i33, 3             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !47
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 4 uses
  br i1 %.not.i34, label %.preheader.i36, label %.lr.ph.i.i

.preheader.i36:                                   ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.cs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i37 = phi ptr [ %i.co, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %.val.i.i = load double, ptr %i.cn, align 8, !alias.scope !46, !noalias !48, !noundef !4 ; 2 uses
  %.val12.i.i = load double, ptr %i.cm, align 8, !alias.scope !45, !noalias !49, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno double %.val.i.i, %.val12.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ad, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i, !prof !5

bb.ad:                                            ; preds = %.preheader.i36
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
          to label %.noexc.i unwind label %bb.af, !noalias !47

.noexc.i:                                         ; preds = %bb.ad
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i: ; preds = %.preheader.i36
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i.i37, i64 -8 ; 2 uses
  %.mux.i.i.i = fcmp olt double %.val.i.i, %.val12.i.i ; 3 uses
  %..i17.i = select i1 %.mux.i.i.i, ptr %i.cm, ptr %i.cn
  %i.cp = load i64, ptr %..i17.i, align 8, !alias.scope !47, !noalias !50
  store i64 %i.cp, ptr %i.co, align 8, !alias.scope !45, !noalias !49
  %i.cq = xor i1 %.mux.i.i.i, true
  %i.cr = zext i1 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cr ; 3 uses
  %i.ct = zext i1 %.mux.i.i.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ct ; 3 uses
  %i.cv = icmp eq ptr %i.cs, %i.bo
  %i.cw = icmp eq ptr %i.cu, %2
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB2e_.exit.i, label %.preheader.i36

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i ], [ %i.bo, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i35 = phi ptr [ %i.da, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dc, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 8, !alias.scope !45, !noalias !51, !noundef !4 ; 2 uses
  %.val.i19.i = load double, ptr %.sroa.0.0.i35, align 8, !alias.scope !46, !noalias !52, !noundef !4 ; 2 uses
  %brmerge.not.i.i20.i = fcmp uno double %.sroa.0.0.val.i.i, %.val.i19.i
  br i1 %brmerge.not.i.i20.i, label %bb.ae, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i, !prof !5

bb.ae:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
          to label %.noexc24.i unwind label %bb.af, !noalias !47

.noexc24.i:                                       ; preds = %bb.ae
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i: ; preds = %.lr.ph.i.i
  %.mux.i.i22.i = fcmp olt double %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cx = xor i1 %.mux.i.i22.i, true
  %.sroa.05.0.i.i = select i1 %.mux.i.i22.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i35
  %i.cy = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !47, !noalias !53
  store i64 %i.cy, ptr %.sroa.13.1.i, align 8, !alias.scope !45, !noalias !51
  %i.cz = zext i1 %i.cx to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i35, i64 %i.cz ; 3 uses
  %i.db = zext i1 %.mux.i.i22.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.de = icmp ne ptr %i.da, %i.cl
  %i.df = icmp ne ptr %i.dc, %i.m
  %or.cond.i23.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB2e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB2e_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.cs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i ], [ %i.dd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i ]
  %.sroa.7.2.i = phi ptr [ %i.cu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i ], [ %i.cl, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i.i ], [ %i.da, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0BP_.exit.i21.i ] ; 2 uses
  %i.dg = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dh = ptrtoint ptr %.sroa.0.3.i to i64
  %i.di = sub nuw i64 %i.dg, %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.di, i1 false), !alias.scope !47, !noalias !54
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1O_.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %bb.ad ], [ %.sroa.13.1.i, %bb.ae ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %bb.ad ], [ %i.cl, %bb.ae ]
  %.sroa.0.2.i = phi ptr [ %2, %bb.ad ], [ %.sroa.0.0.i35, %bb.ae ] ; 2 uses
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dl = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dm = sub nuw i64 %i.dk, %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dm, i1 false), !alias.scope !47, !noalias !55
  resume { ptr, i32 } %i.dj

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1O_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB2e_.exit.i
  %i.dn = shl nuw nsw i64 %i.bm, 1
  %i.do = or disjoint i64 %i.dn, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1X_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1O_.exit
  %.sroa.0.0.i = phi i64 [ %i.do, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1O_.exit ], [ %i.bu, %bb.x ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bd, 1
  br i1 %i.dp, label %bb.u, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.dq = add i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dt, 0
  br i1 %.not30, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ag ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1U_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1U_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1U_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1T_.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load double, ptr %i.q, align 8, !alias.scope !82, !noalias !83, !noundef !4 ; 4 uses
  %.val11.i = load double, ptr %i.o, align 8, !alias.scope !82, !noalias !83, !noundef !4 ; 2 uses
  %brmerge.not.i.i = fcmp uno double %.val10.i, %.val11.i
  br i1 %brmerge.not.i.i, label %bb.l, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i, !prof !5

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11, !noalias !84
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i: ; preds = %bb.k
  %.mux.i.i = fcmp olt double %.val10.i, %.val11.i ; 2 uses
  %.not38.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %.mux.i.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i
  br i1 %.not38.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i
  br i1 %.not38.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i, label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.n
  %.val9.i = phi double [ %.val8.i, %bb.n ], [ %.val10.i, %.preheader27.i ] ; 2 uses
  %.sroa.01.0.i31.i = phi i64 [ %i.s, %bb.n ], [ 2, %.preheader27.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i31.i
  %.val8.i = load double, ptr %i.r, align 8, !alias.scope !82, !noalias !83, !noundef !4 ; 3 uses
  %brmerge.not.i12.i = fcmp uno double %.val8.i, %.val9.i
  br i1 %brmerge.not.i12.i, label %bb.m, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit14.i, !prof !5

bb.m:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11, !noalias !84
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit14.i: ; preds = %.lr.ph.i
  %.mux.i13.i = fcmp olt double %.val8.i, %.val9.i
  br i1 %.mux.i13.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1T_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit14.i
  %i.s = add nuw nsw i64 %.sroa.01.0.i31.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1T_.exit.i, label %.lr.ph.i

.lr.ph34.i:                                       ; preds = %.preheader.i, %bb.p
  %.val7.i = phi double [ %.val.i, %bb.p ], [ %.val10.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i33.i = phi i64 [ %i.u, %bb.p ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i33.i
  %.val.i = load double, ptr %i.t, align 8, !alias.scope !82, !noalias !83, !noundef !4 ; 3 uses
  %brmerge.not.i15.i = fcmp uno double %.val.i, %.val7.i
  br i1 %brmerge.not.i15.i, label %bb.o, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit17.i, !prof !5

bb.o:                                             ; preds = %.lr.ph34.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11, !noalias !84
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit17.i: ; preds = %.lr.ph34.i
  %.mux.i16.i = fcmp olt double %.val.i, %.val7.i
  br i1 %.mux.i16.i, label %bb.p, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1T_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit17.i
  %i.u = add nuw nsw i64 %.sroa.01.1.i33.i, 1     ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1T_.exit.i, label %.lr.ph34.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1T_.exit.i: ; preds = %bb.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit14.i, %bb.p, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit17.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.p ], [ %.sroa.01.1.i33.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit17.i ], [ %.sroa.01.0.i31.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit14.i ], [ %i.n, %bb.n ] ; 6 uses
  %i.v = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.v)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1T_.exit.i
  br i1 %.mux.i.i, label %bb.t, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i

bb.r:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.w = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1U_.exit

bb.s:                                             ; preds = %bb.i
  %..i18.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i18.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  %i.x = shl nuw nsw i64 %..i18.i, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1U_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i, %middle.block, %.preheader27.i, %bb.t, %bb.q, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i525963.i, %middle.block ], [ %.sroa.0.0.i525963.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i ]
  %i.z = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1U_.exit

bb.t:                                             ; preds = %bb.q
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.t
  %i.ac = phi i64 [ %i.ab, %bb.t ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i525963.i = phi i64 [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i525963.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ac, 4
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ac, 9223372036854775804     ; 3 uses
  br label %vector.body
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1N_:bb.a
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i, !llvm.loop !66

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1U_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.y, %bb.s ], [ %i.w, %bb.r ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit
  %.sroa.02.155 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bd, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit ] ; 2 uses
  %.sroa.023.154 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.155, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.154, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.155, %bb.u ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.154, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.154 to i1
  %i.br = or i64 %i.bj, %.sroa.023.154
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1O_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %..i.i33 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i33
  br i1 %i.ci, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1O_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i33, 3             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !93
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 4 uses
  br i1 %.not.i34, label %.preheader.i36, label %.lr.ph.i.i

.preheader.i36:                                   ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.cs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i37 = phi ptr [ %i.co, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %.val.i.i = load double, ptr %i.cn, align 8, !alias.scope !92, !noalias !94, !noundef !4 ; 2 uses
  %.val12.i.i = load double, ptr %i.cm, align 8, !alias.scope !91, !noalias !95, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno double %.val.i.i, %.val12.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ad, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i, !prof !5

bb.ad:                                            ; preds = %.preheader.i36
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
          to label %.noexc.i unwind label %bb.af, !noalias !93

.noexc.i:                                         ; preds = %bb.ad
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i: ; preds = %.preheader.i36
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i.i37, i64 -8 ; 2 uses
  %.mux.i.i.i = fcmp olt double %.val.i.i, %.val12.i.i ; 3 uses
  %..i17.i = select i1 %.mux.i.i.i, ptr %i.cm, ptr %i.cn
  %i.cp = load i64, ptr %..i17.i, align 8, !alias.scope !93, !noalias !96
  store i64 %i.cp, ptr %i.co, align 8, !alias.scope !91, !noalias !95
  %i.cq = xor i1 %.mux.i.i.i, true
  %i.cr = zext i1 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cr ; 3 uses
  %i.ct = zext i1 %.mux.i.i.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ct ; 3 uses
  %i.cv = icmp eq ptr %i.cs, %i.bo
  %i.cw = icmp eq ptr %i.cu, %2
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB2e_.exit.i, label %.preheader.i36

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i ], [ %i.bo, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i35 = phi ptr [ %i.da, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dc, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 8, !alias.scope !91, !noalias !97, !noundef !4 ; 2 uses
  %.val.i19.i = load double, ptr %.sroa.0.0.i35, align 8, !alias.scope !92, !noalias !98, !noundef !4 ; 2 uses
  %brmerge.not.i.i20.i = fcmp uno double %.sroa.0.0.val.i.i, %.val.i19.i
  br i1 %brmerge.not.i.i20.i, label %bb.ae, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i, !prof !5

bb.ae:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
          to label %.noexc24.i unwind label %bb.af, !noalias !93

.noexc24.i:                                       ; preds = %bb.ae
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i: ; preds = %.lr.ph.i.i
  %.mux.i.i22.i = fcmp olt double %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cx = xor i1 %.mux.i.i22.i, true
  %.sroa.05.0.i.i = select i1 %.mux.i.i22.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i35
  %i.cy = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !93, !noalias !99
  store i64 %i.cy, ptr %.sroa.13.1.i, align 8, !alias.scope !91, !noalias !97
  %i.cz = zext i1 %i.cx to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i35, i64 %i.cz ; 3 uses
  %i.db = zext i1 %.mux.i.i22.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.de = icmp ne ptr %i.da, %i.cl
  %i.df = icmp ne ptr %i.dc, %i.m
  %or.cond.i23.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB2e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB2e_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.cs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i ], [ %i.dd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i ]
  %.sroa.7.2.i = phi ptr [ %i.cu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i ], [ %i.cl, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i.i ], [ %i.da, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0BP_.exit.i21.i ] ; 2 uses
  %i.dg = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dh = ptrtoint ptr %.sroa.0.3.i to i64
  %i.di = sub nuw i64 %i.dg, %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.di, i1 false), !alias.scope !93, !noalias !100
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1O_.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %bb.ad ], [ %.sroa.13.1.i, %bb.ae ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %bb.ad ], [ %i.cl, %bb.ae ]
  %.sroa.0.2.i = phi ptr [ %2, %bb.ad ], [ %.sroa.0.0.i35, %bb.ae ] ; 2 uses
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dl = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dm = sub nuw i64 %i.dk, %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dm, i1 false), !alias.scope !93, !noalias !101
  resume { ptr, i32 } %i.dj

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1O_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB2e_.exit.i
  %i.dn = shl nuw nsw i64 %i.bm, 1
  %i.do = or disjoint i64 %i.dn, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1X_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1O_.exit
  %.sroa.0.0.i = phi i64 [ %i.do, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1O_.exit ], [ %i.bu, %bb.x ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bd, 1
  br i1 %i.dp, label %bb.u, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.dq = add i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dt, 0
  br i1 %.not30, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ag ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1U_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1U_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1U_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1T_.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load double, ptr %i.q, align 8, !alias.scope !128, !noalias !129, !noundef !4 ; 4 uses
  %.val11.i = load double, ptr %i.o, align 8, !alias.scope !128, !noalias !129, !noundef !4 ; 2 uses
  %brmerge.not.i.i = fcmp uno double %.val10.i, %.val11.i
  br i1 %brmerge.not.i.i, label %bb.l, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i, !prof !5

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11, !noalias !130
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i: ; preds = %bb.k
  %.mux.i.i = fcmp olt double %.val10.i, %.val11.i ; 2 uses
  %.not38.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %.mux.i.i, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i
  br i1 %.not38.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i
  br i1 %.not38.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i, label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.n
  %.val9.i = phi double [ %.val8.i, %bb.n ], [ %.val10.i, %.preheader27.i ] ; 2 uses
  %.sroa.01.0.i31.i = phi i64 [ %i.s, %bb.n ], [ 2, %.preheader27.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i31.i
  %.val8.i = load double, ptr %i.r, align 8, !alias.scope !128, !noalias !129, !noundef !4 ; 3 uses
  %brmerge.not.i12.i = fcmp uno double %.val8.i, %.val9.i
  br i1 %brmerge.not.i12.i, label %bb.m, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit14.i, !prof !5

bb.m:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11, !noalias !130
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit14.i: ; preds = %.lr.ph.i
  %.mux.i13.i = fcmp olt double %.val8.i, %.val9.i
  br i1 %.mux.i13.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1T_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit14.i
  %i.s = add nuw nsw i64 %.sroa.01.0.i31.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1T_.exit.i, label %.lr.ph.i

.lr.ph34.i:                                       ; preds = %.preheader.i, %bb.p
  %.val7.i = phi double [ %.val.i, %bb.p ], [ %.val10.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i33.i = phi i64 [ %i.u, %bb.p ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i33.i
  %.val.i = load double, ptr %i.t, align 8, !alias.scope !128, !noalias !129, !noundef !4 ; 3 uses
  %brmerge.not.i15.i = fcmp uno double %.val.i, %.val7.i
  br i1 %brmerge.not.i15.i, label %bb.o, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit17.i, !prof !5

bb.o:                                             ; preds = %.lr.ph34.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11, !noalias !130
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit17.i: ; preds = %.lr.ph34.i
  %.mux.i16.i = fcmp olt double %.val.i, %.val7.i
  br i1 %.mux.i16.i, label %bb.p, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1T_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit17.i
  %i.u = add nuw nsw i64 %.sroa.01.1.i33.i, 1     ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1T_.exit.i, label %.lr.ph34.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1T_.exit.i: ; preds = %bb.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit14.i, %bb.p, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit17.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.p ], [ %.sroa.01.1.i33.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit17.i ], [ %.sroa.01.0.i31.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit14.i ], [ %i.n, %bb.n ] ; 6 uses
  %i.v = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.v)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1T_.exit.i
  br i1 %.mux.i.i, label %bb.t, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i

bb.r:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.w = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1U_.exit

bb.s:                                             ; preds = %bb.i
  %..i18.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i18.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  %i.x = shl nuw nsw i64 %..i18.i, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1U_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i, %middle.block, %.preheader27.i, %bb.t, %bb.q, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i525963.i, %middle.block ], [ %.sroa.0.0.i525963.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i ]
  %i.z = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1U_.exit

bb.t:                                             ; preds = %bb.q
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.t
  %i.ac = phi i64 [ %i.ab, %bb.t ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i525963.i = phi i64 [ %.sroa.0.0.i.i, %bb.t ], [ 2, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i525963.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ac, 4
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ac, 9223372036854775804     ; 3 uses
  br label %vector.body
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1N_:bb.a
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSd12split_at_mutCs8lmMd0ZksV9_6statrs.exit11.i.i.i, !llvm.loop !112

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_rundNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1U_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSd7reverseCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.y, %bb.s ], [ %i.w, %bb.r ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit
  %.sroa.02.155 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bd, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit ] ; 2 uses
  %.sroa.023.154 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.155, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.154, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.155, %bb.u ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.154, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.154 to i1
  %i.br = or i64 %i.bj, %.sroa.023.154
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1O_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %..i.i33 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i33
  br i1 %i.ci, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1O_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i33, 3             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !139
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 4 uses
  br i1 %.not.i34, label %.preheader.i36, label %.lr.ph.i.i

.preheader.i36:                                   ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.cs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i37 = phi ptr [ %i.co, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %.val.i.i = load double, ptr %i.cn, align 8, !alias.scope !138, !noalias !140, !noundef !4 ; 2 uses
  %.val12.i.i = load double, ptr %i.cm, align 8, !alias.scope !137, !noalias !141, !noundef !4 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno double %.val.i.i, %.val12.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ad, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i, !prof !5

bb.ad:                                            ; preds = %.preheader.i36
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
          to label %.noexc.i unwind label %bb.af, !noalias !139

.noexc.i:                                         ; preds = %bb.ad
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i: ; preds = %.preheader.i36
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i.i37, i64 -8 ; 2 uses
  %.mux.i.i.i = fcmp olt double %.val.i.i, %.val12.i.i ; 3 uses
  %..i17.i = select i1 %.mux.i.i.i, ptr %i.cm, ptr %i.cn
  %i.cp = load i64, ptr %..i17.i, align 8, !alias.scope !139, !noalias !142
  store i64 %i.cp, ptr %i.co, align 8, !alias.scope !137, !noalias !141
  %i.cq = xor i1 %.mux.i.i.i, true
  %i.cr = zext i1 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cr ; 3 uses
  %i.ct = zext i1 %.mux.i.i.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ct ; 3 uses
  %i.cv = icmp eq ptr %i.cs, %i.bo
  %i.cw = icmp eq ptr %i.cu, %2
  %or.cond.i.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2e_.exit.i, label %.preheader.i36

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i ], [ %i.bo, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i35 = phi ptr [ %i.da, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dc, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 8, !alias.scope !137, !noalias !143, !noundef !4 ; 2 uses
  %.val.i19.i = load double, ptr %.sroa.0.0.i35, align 8, !alias.scope !138, !noalias !144, !noundef !4 ; 2 uses
  %brmerge.not.i.i20.i = fcmp uno double %.sroa.0.0.val.i.i, %.val.i19.i
  br i1 %brmerge.not.i.i20.i, label %bb.ae, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i, !prof !5

bb.ae:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #11
          to label %.noexc24.i unwind label %bb.af, !noalias !139

.noexc24.i:                                       ; preds = %bb.ae
  unreachable

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i: ; preds = %.lr.ph.i.i
  %.mux.i.i22.i = fcmp olt double %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cx = xor i1 %.mux.i.i22.i, true
  %.sroa.05.0.i.i = select i1 %.mux.i.i22.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i35
  %i.cy = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !139, !noalias !145
  store i64 %i.cy, ptr %.sroa.13.1.i, align 8, !alias.scope !137, !noalias !143
  %i.cz = zext i1 %i.cx to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i35, i64 %i.cz ; 3 uses
  %i.db = zext i1 %.mux.i.i22.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.de = icmp ne ptr %i.da, %i.cl
  %i.df = icmp ne ptr %i.dc, %i.m
  %or.cond.i23.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2e_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.cs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i ], [ %i.dd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i ]
  %.sroa.7.2.i = phi ptr [ %i.cu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i ], [ %i.cl, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i.i ], [ %i.da, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0BP_.exit.i21.i ] ; 2 uses
  %i.dg = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dh = ptrtoint ptr %.sroa.0.3.i to i64
  %i.di = sub nuw i64 %i.dg, %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.di, i1 false), !alias.scope !139, !noalias !146
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1O_.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %bb.ad ], [ %.sroa.13.1.i, %bb.ae ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %bb.ad ], [ %i.cl, %bb.ae ]
  %.sroa.0.2.i = phi ptr [ %2, %bb.ad ], [ %.sroa.0.0.i35, %bb.ae ] ; 2 uses
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dl = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dm = sub nuw i64 %i.dk, %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dm, i1 false), !alias.scope !139, !noalias !147
  resume { ptr, i32 } %i.dj

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1O_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStatedE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2e_.exit.i
  %i.dn = shl nuw nsw i64 %i.bm, 1
  %i.do = or disjoint i64 %i.dn, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1X_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1O_.exit
  %.sroa.0.0.i = phi i64 [ %i.do, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergedNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1O_.exit ], [ %i.bu, %bb.x ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bd, 1
  br i1 %i.dp, label %bb.u, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.dq = add i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dt, 0
  br i1 %.not30, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs12distribution6normal12sf_unchecked(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = fsub double %0, %1
  %i.b = fmul double %2, f0x3FF6A09E667F3BCD
  %i.c = fdiv double %i.a, %i.b
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf4erfc(double noundef %i.c)
  %i.e = fmul double %i.d, 5.000000e-01
  ret double %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs12distribution6normal13cdf_unchecked(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = fsub double %1, %0
  %i.b = fmul double %2, f0x3FF6A09E667F3BCD
  %i.c = fdiv double %i.a, %i.b
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf4erfc(double noundef %i.c)
  %i.e = fmul double %i.d, 5.000000e-01
  ret double %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic(i64 noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fneg double %1                           ; 5 uses
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.c = icmp ult i64 %0, 4
  br i1 %i.c, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %0, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.0.011.i = phi double [ 0.000000e+00, %.new ], [ %i.w, %bb.c ]
  %.sroa.0.0610.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.d = or disjoint i64 %.sroa.0.0610.i, 1
  %i.e = uitofp i64 %.sroa.0.0610.i to double
  %i.f = fadd double %i.e, 1.000000e+00
  %i.g = tail call double @llvm.pow.f64(double %i.f, double %i.b)
  %i.h = fadd double %.sroa.0.011.i, %i.g
  %i.i = or disjoint i64 %.sroa.0.0610.i, 2
  %i.j = uitofp i64 %i.d to double
  %i.k = fadd double %i.j, 1.000000e+00
  %i.l = tail call double @llvm.pow.f64(double %i.k, double %i.b)
  %i.m = fadd double %i.h, %i.l
  %i.n = or disjoint i64 %.sroa.0.0610.i, 3
  %i.o = uitofp i64 %i.i to double
  %i.p = fadd double %i.o, 1.000000e+00
  %i.q = tail call double @llvm.pow.f64(double %i.p, double %i.b)
  %i.r = fadd double %i.m, %i.q
  %i.s = add nuw i64 %.sroa.0.0610.i, 4           ; 2 uses
  %i.t = uitofp i64 %i.n to double
  %i.u = fadd double %i.t, 1.000000e+00
  %i.v = tail call double @llvm.pow.f64(double %i.u, double %i.b)
  %i.w = fadd double %i.r, %i.v                   ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit.loopexit.unr-lcssa, label %bb.c

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.0.011.i.epil.init = phi double [ 0.000000e+00, %bb.b ], [ %i.w, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit.loopexit.unr-lcssa ]
  %.sroa.0.0610.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.0.011.i.epil = phi double [ %.sroa.0.011.i.epil.init, %.epil.preheader ], [ %i.ab, %bb.d ]
  %.sroa.0.0610.i.epil = phi i64 [ %.sroa.0.0610.i.epil.init, %.epil.preheader ], [ %i.x, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.x = add nuw i64 %.sroa.0.0610.i.epil, 1
  %i.y = uitofp i64 %.sroa.0.0610.i.epil to double
  %i.z = fadd double %i.y, 1.000000e+00
  %i.aa = tail call double @llvm.pow.f64(double %i.z, double %i.b)
  %i.ab = fadd double %.sroa.0.011.i.epil, %i.aa  ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit, label %bb.d, !llvm.loop !148

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0 = phi double [ 1.000000e+00, %bb.a ], [ %i.w, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic12gen_harmonic0EB1E_.exit.loopexit.unr-lcssa ], [ %i.ab, %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function8harmonic8harmonic(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp i64 %0 to double
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef %i.c)
  %i.e = fadd double %i.d, f0x3FE2788CFC6FB619
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi double [ %i.e, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB2_19HypergeometricErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !8, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !9, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 22) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 18) #13
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB2_11NormalErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !8, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !9, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 11) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 49) #13
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
end_hunk_2
