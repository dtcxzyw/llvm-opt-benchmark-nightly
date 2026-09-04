Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.15?download=true
inline.NumInlined: 14462
inline.NumDeleted: 3805
loop-unroll.NumCompletelyUnrolled: 212
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNvYB15_NtNtB19_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.fo = icmp ult ptr %.sroa.9.1.lcssa.i, %i.fn, !dbg !226837
  br i1 %i.fo, label %.lr.ph53.i.preheader, label %._crit_edge54.i, !dbg !226837

.lr.ph53.i.preheader:                             ; preds = %._crit_edge.i
  br i1 %i.dh, label %.lr.ph53.i.us, label %.lr.ph53.i

.lr.ph53.i.us:                                    ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i.us
  %.sroa.9.251.i.us = phi ptr [ %i.fu, %.lr.ph53.i.us ], [ %.sroa.9.1.lcssa.i, %.lr.ph53.i.preheader ] ; 2 uses
  %.sroa.27.250.i.us = phi i64 [ %i.ft, %.lr.ph53.i.us ], [ %.sroa.27.1.lcssa.i, %.lr.ph53.i.preheader ] ; 2 uses
  %.sroa.43.249.i.us = phi ptr [ %i.fr, %.lr.ph53.i.us ], [ %.sroa.43.1.lcssa.i, %.lr.ph53.i.preheader ]
  %.val.i.us = load i16, ptr %.sroa.9.251.i.us, align 2, !dbg !226838, !alias.scope !226610, !noalias !226611, !noundef !8787 ; 2 uses
  %i.fp = and i16 %.val.i.us, 32767, !dbg !226839
  %i.fq = icmp samesign ult i16 %i.fp, 31745, !dbg !226839 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.43.249.i.us, i64 -2, !dbg !226840 ; 3 uses
  %. = zext i1 %i.fq to i64, !dbg !226841
  %.138 = select i1 %i.fq, ptr %2, ptr %i.fr, !dbg !226841
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.138, i64 %.sroa.27.250.i.us, !dbg !226842
  store i16 %.val.i.us, ptr %i.fs, align 2, !dbg !226843, !alias.scope !226609, !noalias !226616
  %i.ft = add i64 %.sroa.27.250.i.us, %., !dbg !226844 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.9.251.i.us, i64 2, !dbg !226845 ; 3 uses
  %i.fv = icmp ult ptr %i.fu, %i.fn, !dbg !226837
  br i1 %i.fv, label %.lr.ph53.i.us, label %._crit_edge54.i, !dbg !226837

._crit_edge54.i:                                  ; preds = %bb.cf, %.lr.ph53.i.us, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.fr, %.lr.ph53.i.us ], [ %i.gd, %bb.cf ], !dbg !226776
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.ft, %.lr.ph53.i.us ], [ %i.gg, %bb.cf ], !dbg !226776 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.fu, %.lr.ph53.i.us ], [ %i.gh, %bb.cf ], !dbg !226776 ; 2 uses
  %i.fw = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0122391, !dbg !226846
  br i1 %i.fw, label %bb.ch, label %bb.cg, !dbg !226846

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %bb.cf
  %.sroa.9.251.i = phi ptr [ %i.gh, %bb.cf ], [ %.sroa.9.1.lcssa.i, %.lr.ph53.i.preheader ] ; 2 uses
  %.sroa.27.250.i = phi i64 [ %i.gg, %bb.cf ], [ %.sroa.27.1.lcssa.i, %.lr.ph53.i.preheader ] ; 2 uses
  %.sroa.43.249.i = phi ptr [ %i.gd, %bb.cf ], [ %.sroa.43.1.lcssa.i, %.lr.ph53.i.preheader ] ; 2 uses
  %.val.i = load i16, ptr %.sroa.9.251.i, align 2, !dbg !226838, !alias.scope !226610, !noalias !226611, !noundef !8787 ; 5 uses
  %i.fx = and i16 %.val.i, 32767, !dbg !226839    ; 2 uses
  %i.fy = icmp samesign ugt i16 %i.fx, 31744, !dbg !226839
  br i1 %i.fy, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i, label %bb.ca, !dbg !226847

bb.ca:                                            ; preds = %.lr.ph53.i
  %i.fz = icmp sgt i16 %.val.i, -1, !dbg !226848
  br i1 %i.fz, label %bb.cb, label %bb.cc, !dbg !226848

bb.cb:                                            ; preds = %bb.ca
  %.not22.i.i60.i = icmp samesign ult i16 %.val.i, %.fr
  %or.cond.i61.i = select i1 %.not.i4.i.i.i43, i1 %.not22.i.i60.i, i1 false, !dbg !226848
  br i1 %or.cond.i61.i, label %bb.ce, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i, !dbg !226848

bb.cc:                                            ; preds = %bb.ca
  br i1 %.not.i4.i.i.i43, label %.split.i.i58.i, label %bb.cd, !dbg !226848

.split.i.i58.i:                                   ; preds = %bb.cc
  %i.ga = or i16 %i.fx, %.fr, !dbg !226849
  %.not.i.i59.i = icmp eq i16 %i.ga, 0, !dbg !226849
  br i1 %.not.i.i59.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i, label %bb.ce, !dbg !226850

bb.cd:                                            ; preds = %bb.cc
  %.not21.i.i55.i = icmp samesign ult i16 %.fr, %.val.i, !dbg !226851
  br i1 %.not21.i.i55.i, label %bb.ce, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i, !dbg !226850

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i: ; preds = %bb.cd, %.split.i.i58.i, %bb.cb, %.lr.ph53.i
  %i.gb = getelementptr inbounds i8, ptr %.sroa.43.249.i, i64 -2, !dbg !226840 ; 2 uses
  br label %bb.cf, !dbg !226841

bb.ce:                                            ; preds = %bb.cd, %.split.i.i58.i, %bb.cb
  %i.gc = getelementptr inbounds i8, ptr %.sroa.43.249.i, i64 -2, !dbg !226840
  br label %bb.cf, !dbg !226841

bb.cf:                                            ; preds = %bb.ce, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i
  %i.gd = phi ptr [ %i.gc, %bb.ce ], [ %i.gb, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i ] ; 2 uses
  %.sroa.0.0.i.i.i5742.i = phi i64 [ 1, %bb.ce ], [ 0, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i ]
  %i.ge = phi ptr [ %2, %bb.ce ], [ %i.gb, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBy_NtNtBC_9total_ord8TotalOrd7tot_cmpE0Cs1LHh8CLbVkQ_11polars_core.exit62.i ], !dbg !226841
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %.sroa.27.250.i, !dbg !226842
  store i16 %.val.i, ptr %i.gf, align 2, !dbg !226843, !alias.scope !226609, !noalias !226616
  %i.gg = add i64 %.sroa.0.0.i.i.i5742.i, %.sroa.27.250.i, !dbg !226844 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.9.251.i, i64 2, !dbg !226845 ; 3 uses
  %i.gi = icmp ult ptr %i.gh, %i.fn, !dbg !226837
  br i1 %i.gi, label %.lr.ph53.i, label %._crit_edge54.i, !dbg !226837

bb.cg:                                            ; preds = %._crit_edge54.i
  %i.gj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -2, !dbg !226852 ; 2 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %.sroa.27.2.lcssa.i, !dbg !226853
  %i.gl = load i16, ptr %.sroa.9.2.lcssa.i, align 2, !dbg !226854, !alias.scope !226608, !noalias !226617
  store i16 %i.gl, ptr %i.gk, align 2, !dbg !226854, !alias.scope !226609, !noalias !226618
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 2, !dbg !226855
  br label %bb.bc, !dbg !226774

bb.ch:                                            ; preds = %._crit_edge54.i
  %i.gn = shl i64 %.sroa.27.2.lcssa.i, 1, !dbg !226856
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.0.0.ph135, ptr nonnull align 2 %2, i64 %i.gn, i1 false), !dbg !226856, !alias.scope !226619
  %i.go = sub i64 %.sroa.16.0122391, %.sroa.27.2.lcssa.i, !dbg !226857 ; 9 uses
  %.not62.i = icmp eq i64 %.sroa.16.0122391, %.sroa.27.2.lcssa.i, !dbg !226858
  br i1 %.not62.i, label %.loopexit, label %iter.check454, !dbg !226859

iter.check454:                                    ; preds = %bb.ch
  %i.gp = getelementptr [2 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %min.iters.check439 = icmp ult i64 %i.go, 4, !dbg !226859
  br i1 %min.iters.check439, label %vec.epilog.scalar.ph455.preheader, label %vector.main.loop.iter.check440, !dbg !226859

vector.main.loop.iter.check440:                   ; preds = %iter.check454
  %min.iters.check441 = icmp ult i64 %i.go, 16, !dbg !226859
  br i1 %min.iters.check441, label %vec.epilog.ph458, label %vector.ph442, !dbg !226859

vector.ph442:                                     ; preds = %vector.main.loop.iter.check440
  %i.gq = and i64 %i.go, 12
  %n.vec443 = and i64 %i.go, -16                  ; 4 uses
  br label %vector.body444, !dbg !226859

vector.body444:                                   ; preds = %vector.body444, %vector.ph442
  %index445 = phi i64 [ 0, %vector.ph442 ], [ %index.next450, %vector.body444 ], !dbg !226860 ; 3 uses
  %i.gr = xor i64 %index445, -1, !dbg !226861
  %i.gs = getelementptr [2 x i8], ptr %i.df, i64 %i.gr, !dbg !226862 ; 2 uses
  %i.gt = getelementptr [2 x i8], ptr %i.gp, i64 %index445, !dbg !226863 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gs, i64 -14, !dbg !226864
  %i.gv = getelementptr i8, ptr %i.gs, i64 -30, !dbg !226864
  %wide.load446 = load <8 x i16>, ptr %i.gu, align 2, !dbg !226864, !alias.scope !226609, !noalias !226608
  %wide.load447 = load <8 x i16>, ptr %i.gv, align 2, !dbg !226864, !alias.scope !226609, !noalias !226608
  %reverse448 = shufflevector <8 x i16> %wide.load446, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !226864
  %reverse449 = shufflevector <8 x i16> %wide.load447, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !226864
  %i.gw = getelementptr i8, ptr %i.gt, i64 16, !dbg !226864
  store <8 x i16> %reverse448, ptr %i.gt, align 2, !dbg !226864, !alias.scope !226608, !noalias !226609
  store <8 x i16> %reverse449, ptr %i.gw, align 2, !dbg !226864, !alias.scope !226608, !noalias !226609
  %index.next450 = add nuw i64 %index445, 16, !dbg !226860 ; 2 uses
  %i.gx = icmp eq i64 %index.next450, %n.vec443, !dbg !226859
  br i1 %i.gx, label %middle.block451, label %vector.body444, !dbg !226859, !llvm.loop !226421

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %i.go, %n.vec443, !dbg !226859
  br i1 %cmp.n452, label %.loopexit, label %vec.epilog.iter.check456, !dbg !226859

vec.epilog.iter.check456:                         ; preds = %middle.block451
  %min.epilog.iters.check457 = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check457, label %vec.epilog.scalar.ph455.preheader, label %vec.epilog.ph458, !prof !10037

vec.epilog.ph458:                                 ; preds = %vector.main.loop.iter.check440, %vec.epilog.iter.check456
  %vec.epilog.resume.val453 = phi i64 [ %n.vec443, %vec.epilog.iter.check456 ], [ 0, %vector.main.loop.iter.check440 ]
  %n.vec459 = and i64 %i.go, -4                   ; 3 uses
  br label %vec.epilog.vector.body460

vec.epilog.vector.body460:                        ; preds = %vec.epilog.vector.body460, %vec.epilog.ph458
  %index461 = phi i64 [ %vec.epilog.resume.val453, %vec.epilog.ph458 ], [ %index.next464, %vec.epilog.vector.body460 ], !dbg !226860 ; 3 uses
  %i.gy = xor i64 %index461, -1, !dbg !226861
  %i.gz = getelementptr [2 x i8], ptr %i.df, i64 %i.gy, !dbg !226862
  %i.ha = getelementptr [2 x i8], ptr %i.gp, i64 %index461, !dbg !226863
  %i.hb = getelementptr i8, ptr %i.gz, i64 -6, !dbg !226864
  %wide.load462 = load <4 x i16>, ptr %i.hb, align 2, !dbg !226864, !alias.scope !226609, !noalias !226608
  %reverse463 = shufflevector <4 x i16> %wide.load462, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !226864
  store <4 x i16> %reverse463, ptr %i.ha, align 2, !dbg !226864, !alias.scope !226608, !noalias !226609
  %index.next464 = add nuw i64 %index461, 4, !dbg !226860 ; 2 uses
  %i.hc = icmp eq i64 %index.next464, %n.vec459, !dbg !226859
  br i1 %i.hc, label %vec.epilog.middle.block465, label %vec.epilog.vector.body460, !dbg !226859, !llvm.loop !226422

vec.epilog.middle.block465:                       ; preds = %vec.epilog.vector.body460
  %cmp.n466 = icmp eq i64 %i.go, %n.vec459, !dbg !226859
  br i1 %cmp.n466, label %.loopexit, label %vec.epilog.scalar.ph455.preheader, !dbg !226859

vec.epilog.scalar.ph455.preheader:                ; preds = %iter.check454, %vec.epilog.iter.check456, %vec.epilog.middle.block465
  %.sroa.07.058.i.ph = phi i64 [ 0, %iter.check454 ], [ %n.vec443, %vec.epilog.iter.check456 ], [ %n.vec459, %vec.epilog.middle.block465 ]
  br label %vec.epilog.scalar.ph455, !dbg !226859

vec.epilog.scalar.ph455:                          ; preds = %vec.epilog.scalar.ph455.preheader, %vec.epilog.scalar.ph455
  %.sroa.07.058.i = phi i64 [ %i.hd, %vec.epilog.scalar.ph455 ], [ %.sroa.07.058.i.ph, %vec.epilog.scalar.ph455.preheader ] ; 3 uses
  %i.hd = add nuw i64 %.sroa.07.058.i, 1, !dbg !226860 ; 2 uses
  %i.he = xor i64 %.sroa.07.058.i, -1, !dbg !226861
  %i.hf = getelementptr [2 x i8], ptr %i.df, i64 %i.he, !dbg !226862
  %i.hg = getelementptr [2 x i8], ptr %i.gp, i64 %.sroa.07.058.i, !dbg !226863
  %i.hh = load i16, ptr %i.hf, align 2, !dbg !226864, !alias.scope !226609, !noalias !226608
  store i16 %i.hh, ptr %i.hg, align 2, !dbg !226864, !alias.scope !226608, !noalias !226609
  %exitcond.not.i41 = icmp eq i64 %i.hd, %i.go, !dbg !226858
  br i1 %exitcond.not.i41, label %.loopexit, label %vec.epilog.scalar.ph455, !dbg !226859, !llvm.loop !226423

.loopexit:                                        ; preds = %vec.epilog.scalar.ph455, %middle.block451, %vec.epilog.middle.block465, %bb.ch
  %i.hi = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !226865
  br i1 %i.hi, label %.thread, label %bb.ci, !dbg !226866

bb.ci:                                            ; preds = %.loopexit
  %.not.i50 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0122391, !dbg !226867
  br i1 %.not.i50, label %bb.cj, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !226867, !prof !8988

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #57, !dbg !226868, !noalias !226621
  unreachable, !dbg !226868

_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ci
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i, !dbg !226869
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph135) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNvYB15_NtNtB19_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %i.hj, i64 noundef %i.go, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i32 noundef %i.by, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #54, !dbg !226870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !226871
  %i.hk = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !226641
  br i1 %i.hk, label %.outer._crit_edge, label %bb.b, !dbg !226641

.thread:                                          ; preds = %bb.au, %bb.ax, %.split.i.i, %bb.az, %.loopexit
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph135, i64 %i.cv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !226622), !dbg !226872
  call void @llvm.experimental.noalias.scope.decl(metadata !226623), !dbg !226872
  %.not84 = icmp samesign ult i64 %3, %.sroa.16.0122391, !dbg !226873
  br i1 %.not84, label %bb.cl, label %bb.ck, !dbg !226873, !prof !9308

bb.ck:                                            ; preds = %.thread
  %i.hm = getelementptr [2 x i8], ptr %2, i64 %.sroa.16.0122391, !dbg !226874 ; 4 uses
  br label %bb.cm, !dbg !226875

bb.cl:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !226876
  unreachable, !dbg !226876

bb.cm:                                            ; preds = %bb.do, %bb.ck
  %.sroa.43.0.i53 = phi ptr [ %i.hm, %bb.ck ], [ %i.li, %bb.do ], !dbg !226877 ; 3 uses
  %.sroa.27.0.i54 = phi i64 [ 0, %bb.ck ], [ %i.ll, %bb.do ], !dbg !226877 ; 3 uses
  %.sroa.9.0.i55 = phi ptr [ %.sroa.0.0.ph135, %bb.ck ], [ %i.lm, %bb.do ], !dbg !226877 ; 4 uses
  %.sroa.0.0.i56 = phi i64 [ %.sroa.0.0.i38, %bb.ck ], [ %.sroa.16.0122391, %bb.do ] ; 4 uses
  %i.hn = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i56, i64 3), !dbg !226878
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph135, i64 %i.hn, !dbg !226879 ; 3 uses
  %i.hp = icmp ult ptr %.sroa.9.0.i55, %i.ho, !dbg !226880
  br i1 %i.hp, label %.lr.ph.i67.preheader, label %._crit_edge.i57, !dbg !226880

.lr.ph.i67.preheader:                             ; preds = %bb.cm
  %.val23.i69 = load i16, ptr %i.hl, align 2, !alias.scope !226624, !noalias !226625, !noundef !8787 ; 10 uses
  %i.hq = and i16 %.val23.i69, 32767              ; 5 uses
  %i.hr = icmp samesign ugt i16 %i.hq, 31744
  %i.hs = icmp sgt i16 %.val23.i69, -1            ; 4 uses
  br i1 %i.hr, label %.lr.ph.i67.us, label %.lr.ph.i67

.lr.ph.i67.us:                                    ; preds = %.lr.ph.i67.preheader, %.lr.ph.i67.us
  %.sroa.9.163.i.us = phi ptr [ %i.hx, %.lr.ph.i67.us ], [ %.sroa.9.0.i55, %.lr.ph.i67.preheader ] ; 2 uses
  %.sroa.27.162.i.us = phi i64 [ %i.hw, %.lr.ph.i67.us ], [ %.sroa.27.0.i54, %.lr.ph.i67.preheader ] ; 2 uses
  %.sroa.43.161.i.us = phi ptr [ %i.hu, %.lr.ph.i67.us ], [ %.sroa.43.0.i53, %.lr.ph.i67.preheader ]
  %i.ht = getelementptr [2 x i8], ptr %2, i64 %.sroa.27.162.i.us, !dbg !226881
  %i.hu = getelementptr inbounds i8, ptr %.sroa.43.161.i.us, i64 -8, !dbg !226882 ; 2 uses
  %i.hv = load <4 x i16>, ptr %.sroa.9.163.i.us, align 2, !dbg !226883, !alias.scope !226622, !noalias !226623
  store <4 x i16> %i.hv, ptr %i.ht, align 2, !dbg !226884, !alias.scope !226623, !noalias !226622
  %i.hw = add i64 %.sroa.27.162.i.us, 4, !dbg !226885 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.9.163.i.us, i64 8, !dbg !226886 ; 3 uses
  %i.hy = icmp ult ptr %i.hx, %i.ho, !dbg !226880
  br i1 %i.hy, label %.lr.ph.i67.us, label %._crit_edge.i57, !dbg !226880

.lr.ph.i67:                                       ; preds = %.lr.ph.i67.preheader, %bb.dh
  %.sroa.9.163.i = phi ptr [ %i.jk, %bb.dh ], [ %.sroa.9.0.i55, %.lr.ph.i67.preheader ] ; 5 uses
  %.sroa.27.162.i = phi i64 [ %i.jj, %bb.dh ], [ %.sroa.27.0.i54, %.lr.ph.i67.preheader ] ; 4 uses
  %.sroa.43.161.i = phi ptr [ %i.jf, %bb.dh ], [ %.sroa.43.0.i53, %.lr.ph.i67.preheader ] ; 5 uses
  %.val22.i68 = load i16, ptr %.sroa.9.163.i, align 2, !dbg !226883, !alias.scope !226622, !noalias !226623 ; 7 uses
  %i.hz = and i16 %.val22.i68, 32767, !dbg !226887
  %i.ia = icmp samesign ugt i16 %i.hz, 31744, !dbg !226887
  br i1 %i.ia, label %.thread.i, label %bb.cn, !dbg !226888

bb.cn:                                            ; preds = %.lr.ph.i67
  %.not.i4.i.i.i.i70 = icmp sgt i16 %.val22.i68, -1, !dbg !226889 ; 2 uses
  br i1 %i.hs, label %bb.co, label %bb.cp, !dbg !226890

bb.co:                                            ; preds = %bb.cn
  %.not22.i.i.i.i74 = icmp samesign ult i16 %.val23.i69, %.val22.i68
  %or.cond.i.i.i75 = select i1 %.not.i4.i.i.i.i70, i1 %.not22.i.i.i.i74, i1 false, !dbg !226890
  br i1 %or.cond.i.i.i75, label %.thread.i, label %.thread33.i, !dbg !226890

bb.cp:                                            ; preds = %bb.cn
  br i1 %.not.i4.i.i.i.i70, label %.split.i.i.i.i72, label %bb.cq, !dbg !226890

.split.i.i.i.i72:                                 ; preds = %bb.cp
  %i.ib = or i16 %i.hq, %.val22.i68, !dbg !226891
  %.not.i.i.i.i73 = icmp eq i16 %i.ib, 0, !dbg !226891
  br i1 %.not.i.i.i.i73, label %.thread33.i, label %.thread.i, !dbg !226892

bb.cq:                                            ; preds = %bb.cp
  %.not21.i.i.i.i71 = icmp samesign ult i16 %.val22.i68, %.val23.i69, !dbg !226893
  br i1 %.not21.i.i.i.i71, label %.thread.i, label %.thread33.i, !dbg !226892

.thread.i:                                        ; preds = %bb.cq, %.split.i.i.i.i72, %bb.co, %.lr.ph.i67
  %i.ic = getelementptr inbounds i8, ptr %.sroa.43.161.i, i64 -2, !dbg !226894
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %.sroa.27.162.i, !dbg !226881
  store i16 %.val22.i68, ptr %i.id, align 2, !dbg !226884, !alias.scope !226623, !noalias !226626
  br label %bb.cr, !dbg !226895

.thread33.i:                                      ; preds = %bb.cq, %.split.i.i.i.i72, %bb.co
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.27.162.i, !dbg !226881
  store i16 %.val22.i68, ptr %i.ie, align 2, !dbg !226884, !alias.scope !226623, !noalias !226627
  %i.if = add i64 %.sroa.27.162.i, 1, !dbg !226896
  br label %bb.cr, !dbg !226895

bb.cr:                                            ; preds = %.thread33.i, %.thread.i
  %i.ig = phi i64 [ %.sroa.27.162.i, %.thread.i ], [ %i.if, %.thread33.i ] ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.9.163.i, i64 2, !dbg !226897
  %.val2030.i = load i16, ptr %i.ih, align 2, !dbg !226898, !alias.scope !226622, !noalias !226623 ; 7 uses
  %i.ii = and i16 %.val2030.i, 32767, !dbg !226899
  %i.ij = icmp samesign ugt i16 %i.ii, 31744, !dbg !226899
  br i1 %i.ij, label %.thread37.i, label %bb.cs, !dbg !226900

bb.cs:                                            ; preds = %bb.cr
  %.not.i4.i.i.i24.i = icmp sgt i16 %.val2030.i, -1, !dbg !226901 ; 2 uses
  br i1 %i.hs, label %bb.ct, label %bb.cu, !dbg !226902

bb.ct:                                            ; preds = %bb.cs
  %.not22.i.i.i29.i = icmp samesign ult i16 %.val23.i69, %.val2030.i
  %or.cond.i.i30.i = select i1 %.not.i4.i.i.i24.i, i1 %.not22.i.i.i29.i, i1 false, !dbg !226902
  br i1 %or.cond.i.i30.i, label %.thread37.i, label %.thread44.i, !dbg !226902

bb.cu:                                            ; preds = %bb.cs
  br i1 %.not.i4.i.i.i24.i, label %.split.i.i.i27.i, label %bb.cv, !dbg !226902

.split.i.i.i27.i:                                 ; preds = %bb.cu
  %i.ik = or i16 %.val2030.i, %i.hq, !dbg !226903
  %.not.i.i.i28.i = icmp eq i16 %i.ik, 0, !dbg !226903
  br i1 %.not.i.i.i28.i, label %.thread44.i, label %.thread37.i, !dbg !226904

bb.cv:                                            ; preds = %bb.cu
  %.not21.i.i.i25.i = icmp samesign ult i16 %.val2030.i, %.val23.i69, !dbg !226905
  br i1 %.not21.i.i.i25.i, label %.thread37.i, label %.thread44.i, !dbg !226904

.thread37.i:                                      ; preds = %bb.cv, %.split.i.i.i27.i, %bb.ct, %bb.cr
  %i.il = getelementptr inbounds i8, ptr %.sroa.43.161.i, i64 -4, !dbg !226906
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.ig, !dbg !226907
  store i16 %.val2030.i, ptr %i.im, align 2, !dbg !226908, !alias.scope !226623, !noalias !226628
  br label %bb.cw, !dbg !226909

.thread44.i:                                      ; preds = %bb.cv, %.split.i.i.i27.i, %bb.ct
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ig, !dbg !226907
  store i16 %.val2030.i, ptr %i.in, align 2, !dbg !226908, !alias.scope !226623, !noalias !226629
  %i.io = add i64 %i.ig, 1, !dbg !226910
  br label %bb.cw, !dbg !226909

bb.cw:                                            ; preds = %.thread44.i, %.thread37.i
  %i.ip = phi i64 [ %i.ig, %.thread37.i ], [ %i.io, %.thread44.i ] ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.9.163.i, i64 4, !dbg !226911
  %.val1840.i = load i16, ptr %i.iq, align 2, !dbg !226912, !alias.scope !226622, !noalias !226623 ; 7 uses
  %i.ir = and i16 %.val1840.i, 32767, !dbg !226913
  %i.is = icmp samesign ugt i16 %i.ir, 31744, !dbg !226913
  br i1 %i.is, label %.thread49.i, label %bb.cx, !dbg !226914

bb.cx:                                            ; preds = %bb.cw
  %.not.i4.i.i.i33.i = icmp sgt i16 %.val1840.i, -1, !dbg !226915 ; 2 uses
  br i1 %i.hs, label %bb.cy, label %bb.cz, !dbg !226916

bb.cy:                                            ; preds = %bb.cx
  %.not22.i.i.i38.i = icmp samesign ult i16 %.val23.i69, %.val1840.i
  %or.cond.i.i39.i = select i1 %.not.i4.i.i.i33.i, i1 %.not22.i.i.i38.i, i1 false, !dbg !226916
  br i1 %or.cond.i.i39.i, label %.thread49.i, label %.thread56.i, !dbg !226916

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not.i4.i.i.i33.i, label %.split.i.i.i36.i, label %bb.da, !dbg !226916

.split.i.i.i36.i:                                 ; preds = %bb.cz
  %i.it = or i16 %.val1840.i, %i.hq, !dbg !226917
  %.not.i.i.i37.i = icmp eq i16 %i.it, 0, !dbg !226917
  br i1 %.not.i.i.i37.i, label %.thread56.i, label %.thread49.i, !dbg !226918

bb.da:                                            ; preds = %bb.cz
  %.not21.i.i.i34.i = icmp samesign ult i16 %.val1840.i, %.val23.i69, !dbg !226919
  br i1 %.not21.i.i.i34.i, label %.thread49.i, label %.thread56.i, !dbg !226918

.thread49.i:                                      ; preds = %bb.da, %.split.i.i.i36.i, %bb.cy, %bb.cw
  %i.iu = getelementptr inbounds i8, ptr %.sroa.43.161.i, i64 -6, !dbg !226920
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %i.ip, !dbg !226921
  store i16 %.val1840.i, ptr %i.iv, align 2, !dbg !226922, !alias.scope !226623, !noalias !226630
  br label %bb.db, !dbg !226923

.thread56.i:                                      ; preds = %bb.da, %.split.i.i.i36.i, %bb.cy
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ip, !dbg !226921
  store i16 %.val1840.i, ptr %i.iw, align 2, !dbg !226922, !alias.scope !226623, !noalias !226631
  %i.ix = add i64 %i.ip, 1, !dbg !226924
  br label %bb.db, !dbg !226923

bb.db:                                            ; preds = %.thread56.i, %.thread49.i
  %i.iy = phi i64 [ %i.ip, %.thread49.i ], [ %i.ix, %.thread56.i ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.9.163.i, i64 6, !dbg !226925
  %.val1652.i = load i16, ptr %i.iz, align 2, !dbg !226926, !alias.scope !226622, !noalias !226623 ; 6 uses
  %i.ja = and i16 %.val1652.i, 32767, !dbg !226927
  %i.jb = icmp samesign ugt i16 %i.ja, 31744, !dbg !226927
  br i1 %i.jb, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i, label %bb.dc, !dbg !226928

bb.dc:                                            ; preds = %bb.db
  %.not.i4.i.i.i42.i = icmp sgt i16 %.val1652.i, -1, !dbg !226929 ; 2 uses
  br i1 %i.hs, label %bb.dd, label %bb.de, !dbg !226930

bb.dd:                                            ; preds = %bb.dc
  %.not22.i.i.i47.i = icmp samesign ult i16 %.val23.i69, %.val1652.i
  %or.cond.i.i48.i = select i1 %.not.i4.i.i.i42.i, i1 %.not22.i.i.i47.i, i1 false, !dbg !226930
  br i1 %or.cond.i.i48.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i, label %bb.dg, !dbg !226930

bb.de:                                            ; preds = %bb.dc
  br i1 %.not.i4.i.i.i42.i, label %.split.i.i.i45.i, label %bb.df, !dbg !226930

.split.i.i.i45.i:                                 ; preds = %bb.de
  %i.jc = or i16 %.val1652.i, %i.hq, !dbg !226931
  %.not.i.i.i46.i = icmp eq i16 %i.jc, 0, !dbg !226931
  br i1 %.not.i.i.i46.i, label %bb.dg, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i, !dbg !226932

bb.df:                                            ; preds = %bb.de
  %.not21.i.i.i43.i = icmp samesign ult i16 %.val1652.i, %.val23.i69, !dbg !226933
  br i1 %.not21.i.i.i43.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i, label %bb.dg, !dbg !226932

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i: ; preds = %bb.df, %.split.i.i.i45.i, %bb.dd, %bb.db
  %i.jd = getelementptr inbounds i8, ptr %.sroa.43.161.i, i64 -8, !dbg !226882 ; 2 uses
  br label %bb.dh, !dbg !226934

bb.dg:                                            ; preds = %bb.df, %.split.i.i.i45.i, %bb.dd
  %i.je = getelementptr inbounds i8, ptr %.sroa.43.161.i, i64 -8, !dbg !226882
  br label %bb.dh, !dbg !226934

bb.dh:                                            ; preds = %bb.dg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i
  %i.jf = phi ptr [ %i.je, %bb.dg ], [ %i.jd, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i ] ; 2 uses
  %i.jg = phi i64 [ 1, %bb.dg ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i ]
  %i.jh = phi ptr [ %2, %bb.dg ], [ %i.jd, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit49.thread.i ], !dbg !226934
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %i.iy, !dbg !226935
  store i16 %.val1652.i, ptr %i.ji, align 2, !dbg !226936, !alias.scope !226623, !noalias !226632
  %i.jj = add i64 %i.iy, %i.jg, !dbg !226885      ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.9.163.i, i64 8, !dbg !226886 ; 3 uses
  %i.jl = icmp ult ptr %i.jk, %i.ho, !dbg !226880
  br i1 %i.jl, label %.lr.ph.i67, label %._crit_edge.i57, !dbg !226880

._crit_edge.i57:                                  ; preds = %bb.dh, %.lr.ph.i67.us, %bb.cm
  %.sroa.43.1.lcssa.i58 = phi ptr [ %.sroa.43.0.i53, %bb.cm ], [ %i.hu, %.lr.ph.i67.us ], [ %i.jf, %bb.dh ], !dbg !226877 ; 5 uses
  %.sroa.27.1.lcssa.i59 = phi i64 [ %.sroa.27.0.i54, %bb.cm ], [ %i.hw, %.lr.ph.i67.us ], [ %i.jj, %bb.dh ], !dbg !226877 ; 7 uses
  %.sroa.9.1.lcssa.i60 = phi ptr [ %.sroa.9.0.i55, %bb.cm ], [ %i.hx, %.lr.ph.i67.us ], [ %i.jk, %bb.dh ], !dbg !226877 ; 9 uses
  %.sroa.9.1.lcssa.i60406 = ptrtoaddr ptr %.sroa.9.1.lcssa.i60 to i64, !dbg !226937 ; 2 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.0.0.i56, !dbg !226937 ; 3 uses
  %i.jn = icmp ult ptr %.sroa.9.1.lcssa.i60, %i.jm, !dbg !226938
  br i1 %i.jn, label %.lr.ph70.i.preheader, label %._crit_edge71.i, !dbg !226938

.lr.ph70.i.preheader:                             ; preds = %._crit_edge.i57
  %.val15.i66 = load i16, ptr %i.hl, align 2, !alias.scope !226624, !noalias !226625, !noundef !8787 ; 4 uses
  %i.jo = and i16 %.val15.i66, 32767              ; 2 uses
  %i.jp = icmp samesign ugt i16 %i.jo, 31744
  %i.jq = icmp sgt i16 %.val15.i66, -1
  br i1 %i.jp, label %iter.check423, label %.lr.ph70.i

iter.check423:                                    ; preds = %.lr.ph70.i.preheader
  %i.jr = shl i64 %.sroa.0.0.i56, 1, !dbg !226938
  %7 = add i64 %i.jr, %i.c, !dbg !226938
  %i.js = add i64 %.sroa.9.1.lcssa.i60406, 2, !dbg !226938
  %umax = call i64 @llvm.umax.i64(i64 %7, i64 %i.js), !dbg !226938
  %8 = xor i64 %.sroa.9.1.lcssa.i60406, -1, !dbg !226938
  %9 = add i64 %umax, %8, !dbg !226938            ; 3 uses
  %i.jt = lshr i64 %9, 1, !dbg !226938
  %i.ju = add nuw i64 %i.jt, 1, !dbg !226938      ; 5 uses
  %min.iters.check407 = icmp ult i64 %9, 6, !dbg !226938
  br i1 %min.iters.check407, label %.lr.ph70.i.us.preheader, label %vector.main.loop.iter.check408, !dbg !226938

vector.main.loop.iter.check408:                   ; preds = %iter.check423
  %min.iters.check409 = icmp ult i64 %9, 30, !dbg !226938
  br i1 %min.iters.check409, label %vec.epilog.ph427, label %vector.ph410, !dbg !226938

vector.ph410:                                     ; preds = %vector.main.loop.iter.check408
  %i.jv = and i64 %i.ju, 12
  %n.vec411 = and i64 %i.ju, -16                  ; 6 uses
  %i.jw = shl i64 %n.vec411, 1
  %i.jx = getelementptr i8, ptr %.sroa.9.1.lcssa.i60, i64 %i.jw ; 2 uses
  %i.jy = add i64 %.sroa.27.1.lcssa.i59, %n.vec411 ; 2 uses
  %i.jz = mul i64 %n.vec411, -2
  %i.ka = getelementptr i8, ptr %.sroa.43.1.lcssa.i58, i64 %i.jz ; 2 uses
  %i.kb = getelementptr [2 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i59
  br label %vector.body412, !dbg !226938

vector.body412:                                   ; preds = %vector.body412, %vector.ph410
  %index413 = phi i64 [ 0, %vector.ph410 ], [ %index.next416, %vector.body412 ] ; 3 uses
  %i.kc = shl i64 %index413, 1
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i60, i64 %i.kc ; 2 uses
  %i.kd = getelementptr i8, ptr %next.gep, i64 16, !dbg !226939
  %wide.load414 = load <8 x i16>, ptr %next.gep, align 2, !dbg !226939, !alias.scope !226622, !noalias !226623
  %wide.load415 = load <8 x i16>, ptr %i.kd, align 2, !dbg !226939, !alias.scope !226622, !noalias !226623
  %i.ke = getelementptr [2 x i8], ptr %i.kb, i64 %index413, !dbg !226940 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16, !dbg !226941
  store <8 x i16> %wide.load414, ptr %i.ke, align 2, !dbg !226941, !alias.scope !226623, !noalias !226633
  store <8 x i16> %wide.load415, ptr %i.kf, align 2, !dbg !226941, !alias.scope !226623, !noalias !226633
  %index.next416 = add nuw i64 %index413, 16      ; 2 uses
  %i.kg = icmp eq i64 %index.next416, %n.vec411, !dbg !226938
  br i1 %i.kg, label %middle.block417, label %vector.body412, !dbg !226938, !llvm.loop !226545

middle.block417:                                  ; preds = %vector.body412
  %cmp.n418 = icmp eq i64 %i.ju, %n.vec411, !dbg !226938
  br i1 %cmp.n418, label %._crit_edge71.i, label %vec.epilog.iter.check425, !dbg !226938

vec.epilog.iter.check425:                         ; preds = %middle.block417
  %min.epilog.iters.check426 = icmp eq i64 %i.jv, 0
  br i1 %min.epilog.iters.check426, label %.lr.ph70.i.us.preheader, label %vec.epilog.ph427, !prof !10037

vec.epilog.ph427:                                 ; preds = %vector.main.loop.iter.check408, %vec.epilog.iter.check425
  %vec.epilog.resume.val419 = phi i64 [ %n.vec411, %vec.epilog.iter.check425 ], [ 0, %vector.main.loop.iter.check408 ]
  %n.vec428 = and i64 %i.ju, -4                   ; 5 uses
  %i.kh = shl i64 %n.vec428, 1
  %i.ki = getelementptr i8, ptr %.sroa.9.1.lcssa.i60, i64 %i.kh ; 2 uses
  %i.kj = add i64 %.sroa.27.1.lcssa.i59, %n.vec428 ; 2 uses
  %i.kk = mul i64 %n.vec428, -2
  %i.kl = getelementptr i8, ptr %.sroa.43.1.lcssa.i58, i64 %i.kk ; 2 uses
  %i.km = getelementptr [2 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i59
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph427
  %index430 = phi i64 [ %vec.epilog.resume.val419, %vec.epilog.ph427 ], [ %index.next433, %vec.epilog.vector.body429 ] ; 3 uses
  %i.kn = shl i64 %index430, 1
  %next.gep431 = getelementptr i8, ptr %.sroa.9.1.lcssa.i60, i64 %i.kn
  %wide.load432 = load <4 x i16>, ptr %next.gep431, align 2, !dbg !226939, !alias.scope !226622, !noalias !226623
  %i.ko = getelementptr [2 x i8], ptr %i.km, i64 %index430, !dbg !226940
  store <4 x i16> %wide.load432, ptr %i.ko, align 2, !dbg !226941, !alias.scope !226623, !noalias !226633
  %index.next433 = add nuw i64 %index430, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next433, %n.vec428, !dbg !226938
  br i1 %i.kp, label %vec.epilog.middle.block434, label %vec.epilog.vector.body429, !dbg !226938, !llvm.loop !226546

vec.epilog.middle.block434:                       ; preds = %vec.epilog.vector.body429
  %cmp.n435 = icmp eq i64 %i.ju, %n.vec428, !dbg !226938
  br i1 %cmp.n435, label %._crit_edge71.i, label %.lr.ph70.i.us.preheader, !dbg !226938

.lr.ph70.i.us.preheader:                          ; preds = %iter.check423, %vec.epilog.iter.check425, %vec.epilog.middle.block434
  %.sroa.9.268.i.us.ph = phi ptr [ %.sroa.9.1.lcssa.i60, %iter.check423 ], [ %i.jx, %vec.epilog.iter.check425 ], [ %i.ki, %vec.epilog.middle.block434 ]
  %.sroa.27.267.i.us.ph = phi i64 [ %.sroa.27.1.lcssa.i59, %iter.check423 ], [ %i.jy, %vec.epilog.iter.check425 ], [ %i.kj, %vec.epilog.middle.block434 ]
  %.sroa.43.266.i.us.ph = phi ptr [ %.sroa.43.1.lcssa.i58, %iter.check423 ], [ %i.ka, %vec.epilog.iter.check425 ], [ %i.kl, %vec.epilog.middle.block434 ]
  br label %.lr.ph70.i.us, !dbg !226938

.lr.ph70.i.us:                                    ; preds = %.lr.ph70.i.us.preheader, %.lr.ph70.i.us
  %.sroa.9.268.i.us = phi ptr [ %i.kt, %.lr.ph70.i.us ], [ %.sroa.9.268.i.us.ph, %.lr.ph70.i.us.preheader ] ; 2 uses
  %.sroa.27.267.i.us = phi i64 [ %i.ks, %.lr.ph70.i.us ], [ %.sroa.27.267.i.us.ph, %.lr.ph70.i.us.preheader ] ; 2 uses
  %.sroa.43.266.i.us = phi ptr [ %i.kq, %.lr.ph70.i.us ], [ %.sroa.43.266.i.us.ph, %.lr.ph70.i.us.preheader ]
  %.val.i65.us = load i16, ptr %.sroa.9.268.i.us, align 2, !dbg !226939, !alias.scope !226622, !noalias !226623
  %i.kq = getelementptr inbounds i8, ptr %.sroa.43.266.i.us, i64 -2, !dbg !226942 ; 2 uses
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.27.267.i.us, !dbg !226940
  store i16 %.val.i65.us, ptr %i.kr, align 2, !dbg !226941, !alias.scope !226623, !noalias !226633
  %i.ks = add i64 %.sroa.27.267.i.us, 1, !dbg !226943 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.9.268.i.us, i64 2, !dbg !226944 ; 3 uses
  %i.ku = icmp ult ptr %i.kt, %i.jm, !dbg !226938
  br i1 %i.ku, label %.lr.ph70.i.us, label %._crit_edge71.i, !dbg !226938, !llvm.loop !226549

._crit_edge71.i:                                  ; preds = %bb.dn, %.lr.ph70.i.us, %middle.block417, %vec.epilog.middle.block434, %._crit_edge.i57
  %.sroa.43.2.lcssa.i61 = phi ptr [ %.sroa.43.1.lcssa.i58, %._crit_edge.i57 ], [ %i.kq, %.lr.ph70.i.us ], [ %i.kl, %vec.epilog.middle.block434 ], [ %i.ka, %middle.block417 ], [ %i.lb, %bb.dn ], !dbg !226877
  %.sroa.27.2.lcssa.i62 = phi i64 [ %.sroa.27.1.lcssa.i59, %._crit_edge.i57 ], [ %i.ks, %.lr.ph70.i.us ], [ %i.kj, %vec.epilog.middle.block434 ], [ %i.jy, %middle.block417 ], [ %i.lf, %bb.dn ], !dbg !226877 ; 9 uses
  %.sroa.9.2.lcssa.i63 = phi ptr [ %.sroa.9.1.lcssa.i60, %._crit_edge.i57 ], [ %i.kt, %.lr.ph70.i.us ], [ %i.ki, %vec.epilog.middle.block434 ], [ %i.jx, %middle.block417 ], [ %i.lg, %bb.dn ], !dbg !226877 ; 2 uses
  %i.kv = icmp eq i64 %.sroa.0.0.i56, %.sroa.16.0122391, !dbg !226945
  br i1 %i.kv, label %bb.dp, label %bb.do, !dbg !226945

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader, %bb.dn
  %.sroa.9.268.i = phi ptr [ %i.lg, %bb.dn ], [ %.sroa.9.1.lcssa.i60, %.lr.ph70.i.preheader ] ; 2 uses
  %.sroa.27.267.i = phi i64 [ %i.lf, %bb.dn ], [ %.sroa.27.1.lcssa.i59, %.lr.ph70.i.preheader ] ; 2 uses
  %.sroa.43.266.i = phi ptr [ %i.lb, %bb.dn ], [ %.sroa.43.1.lcssa.i58, %.lr.ph70.i.preheader ] ; 2 uses
  %.val.i65 = load i16, ptr %.sroa.9.268.i, align 2, !dbg !226939, !alias.scope !226622, !noalias !226623 ; 6 uses
  %i.kw = and i16 %.val.i65, 32767, !dbg !226946
  %i.kx = icmp samesign ugt i16 %i.kw, 31744, !dbg !226946
  br i1 %i.kx, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i, label %bb.di, !dbg !226947

bb.di:                                            ; preds = %.lr.ph70.i
  %.not.i4.i.i.i51.i = icmp sgt i16 %.val.i65, -1, !dbg !226948 ; 2 uses
  br i1 %i.jq, label %bb.dj, label %bb.dk, !dbg !226949

bb.dj:                                            ; preds = %bb.di
  %.not22.i.i.i56.i = icmp samesign ult i16 %.val15.i66, %.val.i65
  %or.cond.i.i57.i = select i1 %.not.i4.i.i.i51.i, i1 %.not22.i.i.i56.i, i1 false, !dbg !226949
  br i1 %or.cond.i.i57.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i, label %bb.dm, !dbg !226949

bb.dk:                                            ; preds = %bb.di
  br i1 %.not.i4.i.i.i51.i, label %.split.i.i.i54.i, label %bb.dl, !dbg !226949

.split.i.i.i54.i:                                 ; preds = %bb.dk
  %i.ky = or i16 %i.jo, %.val.i65, !dbg !226950
  %.not.i.i.i55.i = icmp eq i16 %i.ky, 0, !dbg !226950
  br i1 %.not.i.i.i55.i, label %bb.dm, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i, !dbg !226951

bb.dl:                                            ; preds = %bb.dk
  %.not21.i.i.i52.i = icmp samesign ult i16 %.val.i65, %.val15.i66, !dbg !226952
  br i1 %.not21.i.i.i52.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i, label %bb.dm, !dbg !226951

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i: ; preds = %bb.dl, %.split.i.i.i54.i, %bb.dj, %.lr.ph70.i
  %i.kz = getelementptr inbounds i8, ptr %.sroa.43.266.i, i64 -2, !dbg !226942 ; 2 uses
  br label %bb.dn, !dbg !226953

bb.dm:                                            ; preds = %bb.dl, %.split.i.i.i54.i, %bb.dj
  %i.la = getelementptr inbounds i8, ptr %.sroa.43.266.i, i64 -2, !dbg !226942
  br label %bb.dn, !dbg !226953

bb.dn:                                            ; preds = %bb.dm, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i
  %i.lb = phi ptr [ %i.la, %bb.dm ], [ %i.kz, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i ] ; 2 uses
  %i.lc = phi i64 [ 1, %bb.dm ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i ]
  %i.ld = phi ptr [ %2, %bb.dm ], [ %i.kz, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core.exit58.thread.i ], !dbg !226953
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %.sroa.27.267.i, !dbg !226940
  store i16 %.val.i65, ptr %i.le, align 2, !dbg !226941, !alias.scope !226623, !noalias !226633
  %i.lf = add i64 %i.lc, %.sroa.27.267.i, !dbg !226943 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.9.268.i, i64 2, !dbg !226944 ; 3 uses
  %i.lh = icmp ult ptr %i.lg, %i.jm, !dbg !226938
  br i1 %i.lh, label %.lr.ph70.i, label %._crit_edge71.i, !dbg !226938

bb.do:                                            ; preds = %._crit_edge71.i
  %i.li = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i61, i64 -2, !dbg !226954
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i62, !dbg !226955
  %i.lk = load i16, ptr %.sroa.9.2.lcssa.i63, align 2, !dbg !226956, !alias.scope !226622, !noalias !226634
  store i16 %i.lk, ptr %i.lj, align 2, !dbg !226956, !alias.scope !226623, !noalias !226635
  %i.ll = add i64 %.sroa.27.2.lcssa.i62, 1, !dbg !226957
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i63, i64 2, !dbg !226958
  br label %bb.cm, !dbg !226875

bb.dp:                                            ; preds = %._crit_edge71.i
  %i.ln = shl i64 %.sroa.27.2.lcssa.i62, 1, !dbg !226959
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.0.0.ph135, ptr nonnull align 2 %2, i64 %i.ln, i1 false), !dbg !226959, !alias.scope !226636
  %i.lo = sub i64 %.sroa.16.0122391, %.sroa.27.2.lcssa.i62, !dbg !226960 ; 11 uses
  %.not79.i = icmp eq i64 %.sroa.16.0122391, %.sroa.27.2.lcssa.i62, !dbg !226961
  br i1 %.not79.i, label %.outer._crit_edge.thread, label %iter.check, !dbg !226962

iter.check:                                       ; preds = %bb.dp
  %i.lp = getelementptr [2 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i62 ; 3 uses
  %min.iters.check = icmp ult i64 %i.lo, 4, !dbg !226962
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !226962

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check397 = icmp ult i64 %i.lo, 16, !dbg !226962
  br i1 %min.iters.check397, label %vec.epilog.ph, label %vector.ph, !dbg !226962

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lq = and i64 %i.lo, 12
  %n.vec = and i64 %i.lo, -16                     ; 4 uses
  br label %vector.body, !dbg !226962

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !226963 ; 3 uses
  %i.lr = xor i64 %index, -1, !dbg !226964
  %i.ls = getelementptr [2 x i8], ptr %i.hm, i64 %i.lr, !dbg !226965 ; 2 uses
  %i.lt = getelementptr [2 x i8], ptr %i.lp, i64 %index, !dbg !226966 ; 2 uses
  %i.lu = getelementptr i8, ptr %i.ls, i64 -14, !dbg !226967
  %i.lv = getelementptr i8, ptr %i.ls, i64 -30, !dbg !226967
  %wide.load = load <8 x i16>, ptr %i.lu, align 2, !dbg !226967, !alias.scope !226623, !noalias !226622
  %wide.load398 = load <8 x i16>, ptr %i.lv, align 2, !dbg !226967, !alias.scope !226623, !noalias !226622
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !226967
  %reverse399 = shufflevector <8 x i16> %wide.load398, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !226967
  %i.lw = getelementptr i8, ptr %i.lt, i64 16, !dbg !226967
  store <8 x i16> %reverse, ptr %i.lt, align 2, !dbg !226967, !alias.scope !226622, !noalias !226623
  store <8 x i16> %reverse399, ptr %i.lw, align 2, !dbg !226967, !alias.scope !226622, !noalias !226623
  %index.next = add nuw i64 %index, 16, !dbg !226963 ; 2 uses
  %i.lx = icmp eq i64 %index.next, %n.vec, !dbg !226962
  br i1 %i.lx, label %middle.block, label %vector.body, !dbg !226962, !llvm.loop !226587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lo, %n.vec, !dbg !226962
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.iter.check, !dbg !226962

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !10037

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec400 = and i64 %i.lo, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index401 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next404, %vec.epilog.vector.body ], !dbg !226963 ; 3 uses
  %i.ly = xor i64 %index401, -1, !dbg !226964
  %i.lz = getelementptr [2 x i8], ptr %i.hm, i64 %i.ly, !dbg !226965
  %i.ma = getelementptr [2 x i8], ptr %i.lp, i64 %index401, !dbg !226966
  %i.mb = getelementptr i8, ptr %i.lz, i64 -6, !dbg !226967
  %wide.load402 = load <4 x i16>, ptr %i.mb, align 2, !dbg !226967, !alias.scope !226623, !noalias !226622
  %reverse403 = shufflevector <4 x i16> %wide.load402, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !226967
  store <4 x i16> %reverse403, ptr %i.ma, align 2, !dbg !226967, !alias.scope !226622, !noalias !226623
  %index.next404 = add nuw i64 %index401, 4, !dbg !226963 ; 2 uses
  %i.mc = icmp eq i64 %index.next404, %n.vec400, !dbg !226962
  br i1 %i.mc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !226962, !llvm.loop !226588

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n405 = icmp eq i64 %i.lo, %n.vec400, !dbg !226962
  br i1 %cmp.n405, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph.preheader, !dbg !226962

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.07.075.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec400, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !226962

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.07.075.i = phi i64 [ %i.md, %vec.epilog.scalar.ph ], [ %.sroa.07.075.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.md = add nuw i64 %.sroa.07.075.i, 1, !dbg !226963 ; 2 uses
  %i.me = xor i64 %.sroa.07.075.i, -1, !dbg !226964
  %i.mf = getelementptr [2 x i8], ptr %i.hm, i64 %i.me, !dbg !226965
  %i.mg = getelementptr [2 x i8], ptr %i.lp, i64 %.sroa.07.075.i, !dbg !226966
  %i.mh = load i16, ptr %i.mf, align 2, !dbg !226967, !alias.scope !226623, !noalias !226622
  store i16 %i.mh, ptr %i.mg, align 2, !dbg !226967, !alias.scope !226622, !noalias !226623
  %exitcond.not.i64 = icmp eq i64 %i.md, %i.lo, !dbg !226961
  br i1 %exitcond.not.i64, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %vec.epilog.scalar.ph, !dbg !226962, !llvm.loop !226589

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.mi = icmp ugt i64 %.sroa.27.2.lcssa.i62, %.sroa.16.0122391, !dbg !226968
  br i1 %i.mi, label %bb.dq, label %.outer, !dbg !226968, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !226871
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNvYB1s_NtNtB1w_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !226644

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph135, i64 %.sroa.27.2.lcssa.i62, !dbg !226969 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !226871
  %i.mk = icmp ult i64 %i.lo, 33, !dbg !226641
  br i1 %i.mk, label %.outer._crit_edge, label %.lr.ph, !dbg !226641

bb.dq:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i62, i64 noundef %.sroa.16.0122391, i64 noundef %.sroa.16.0122391, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !226970
  unreachable, !dbg !226970
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNvMs_NtB19_7explodeNtNtB19_9dataframe9DataFrame12explode_impl0E0EB1b_(ptr noalias noundef nonnull align 16 %0, i64 noundef range(i64 0, 57646075230342349) %1, ptr noalias noundef nonnull align 16 %2, i64 noundef range(i64 0, 57646075230342349) %3, i32 noundef %4, ptr noundef align 16 captures(address, read_provenance) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !226971 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 6 uses
  %i.b = icmp samesign ult i64 %1, 17, !dbg !227189
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !227189

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph100 = phi ptr [ %i.cs, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph99 = phi i64 [ %i.cd, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph98 = phi i32 [ %i.q, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph97 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph100 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph97, null
  %i.d = icmp eq i32 %.sroa.025.0.ph98, 0, !dbg !227190
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph231, !dbg !227190

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_.exit
  %i.e = icmp eq i32 %i.q, 0, !dbg !227190
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph231, !dbg !227190

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_.exit, %bb.a
  %.sroa.0.0.ph.lcssa91 = phi ptr [ %.sroa.0.0.ph100, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_.exit ], [ %0, %bb.a ], [ %i.cs, %.outer ] ; 6 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_.exit ], [ %1, %bb.a ], [ %i.cd, %.outer ] ; 2 uses
  %i.f = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1, !dbg !227191
  br i1 %i.f, label %.lr.ph.i, label %_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNvMs_NtB10_7explodeNtNtB10_9dataframe9DataFrame12explode_impl0E0EB12_.exit, !dbg !227191

.lr.ph.i:                                         ; preds = %.outer._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227167), !dbg !227192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227168), !dbg !227192
  %i.g = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %.sroa.16.0.lcssa, !dbg !227193
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa91, i64 160, !dbg !227194
  %.val.i = load ptr, ptr %6, align 8, !alias.scope !227168, !noalias !227167, !nonnull !8787, !align !8965, !noundef !8787 ; 2 uses
  br label %bb.c, !dbg !227195

bb.c:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_11sort_by_keyjNCNvMs_NtB1c_7explodeNtNtB1c_9dataframe9DataFrame12explode_impl0E0EB1e_.exit.i, %.lr.ph.i
  %.sroa.0.06.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_11sort_by_keyjNCNvMs_NtB1c_7explodeNtNtB1c_9dataframe9DataFrame12explode_impl0E0EB1e_.exit.i ] ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -160, !dbg !227196 ; 4 uses
  %i.j = call fastcc noundef zeroext i1 @_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column11sort_by_keyjNCNvMs_NtBC_7explodeNtNtBC_9dataframe9DataFrame12explode_impl0E0BE_(ptr nonnull readonly %.val.i, ptr noundef nonnull align 16 %.sroa.0.06.i, ptr noundef nonnull align 16 %i.i) #58, !dbg !227197, !noalias !227168
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_11sort_by_keyjNCNvMs_NtB1c_7explodeNtNtB1c_9dataframe9DataFrame12explode_impl0E0EB1e_.exit.i, !dbg !227197

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !227198, !noalias !227169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.a, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0.06.i, i64 160, i1 false), !dbg !227199, !noalias !227168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0.06.i, ptr noundef nonnull align 16 dereferenceable(160) %i.i, i64 160, i1 false), !dbg !227200, !alias.scope !227167, !noalias !227168
  %i.k = icmp eq ptr %i.i, %.sroa.0.0.ph.lcssa91, !dbg !227201
  br i1 %i.k, label %._crit_edge238, label %.lr.ph237, !dbg !227201

bb.e:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0.0.i.i235, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !227200, !alias.scope !227167, !noalias !227168
  %i.l = icmp eq ptr %i.m, %.sroa.0.0.ph.lcssa91, !dbg !227201
  br i1 %i.l, label %._crit_edge238, label %.lr.ph237, !dbg !227201

.lr.ph237:                                        ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i235 = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i.i235, i64 -160, !dbg !227202 ; 4 uses
  %i.n = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column11sort_by_keyjNCNvMs_NtBC_7explodeNtNtBC_9dataframe9DataFrame12explode_impl0E0BE_(ptr nonnull readonly %.val.i, ptr noundef nonnull align 16 %i.a, ptr noundef nonnull align 16 %i.m)
          to label %bb.f unwind label %bb.g, !dbg !227203, !noalias !227168

bb.f:                                             ; preds = %.lr.ph237
  br i1 %i.n, label %bb.e, label %._crit_edge238, !dbg !227203

._crit_edge238:                                   ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.0.0.ph.lcssa91, %bb.d ], [ %.sroa.0.0.ph.lcssa91, %bb.e ], [ %.sroa.0.0.i.i235, %bb.f ], !dbg !227204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0.0.i.lcssa.i, ptr noundef nonnull align 16 dereferenceable(160) %i.a, i64 160, i1 false), !dbg !227205, !noalias !227170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !227206, !noalias !227169
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_11sort_by_keyjNCNvMs_NtB1c_7explodeNtNtB1c_9dataframe9DataFrame12explode_impl0E0EB1e_.exit.i, !dbg !227207

bb.g:                                             ; preds = %.lr.ph237
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0.0.i.i235, ptr noundef nonnull align 16 dereferenceable(160) %i.a, i64 160, i1 false), !dbg !227208, !noalias !227171
  resume { ptr, i32 } %i.o, !dbg !227209

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_11sort_by_keyjNCNvMs_NtB1c_7explodeNtNtB1c_9dataframe9DataFrame12explode_impl0E0EB1e_.exit.i: ; preds = %._crit_edge238, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 160, !dbg !227210 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.g, !dbg !227195
  br i1 %.not.i, label %_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNvMs_NtB10_7explodeNtNtB10_9dataframe9DataFrame12explode_impl0E0EB12_.exit, label %bb.c, !dbg !227195

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.093.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph99, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNvMs_NtB10_7explodeNtNtB10_9dataframe9DataFrame12explode_impl0E0EB12_(ptr noalias noundef nonnull align 16 %.sroa.0.0.ph100, i64 noundef %.sroa.16.093.lcssa, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !227211
  br label %_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNvMs_NtB10_7explodeNtNtB10_9dataframe9DataFrame12explode_impl0E0EB12_.exit, !dbg !227212

.lr.ph231:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.092230 = phi i32 [ %i.q, %bb.b ], [ %.sroa.025.0.ph98, %.lr.ph ]
  %.sroa.16.093229 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph99, %.lr.ph ] ; 21 uses
  %i.q = add i32 %.sroa.025.092230, -1, !dbg !227213 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227173), !dbg !227214
  %i.r = lshr i64 %.sroa.16.093229, 3, !dbg !227215 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.r, 640, !dbg !227216
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph100, i64 %.idx.i, !dbg !227216 ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.r, 1120, !dbg !227217
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph100, i64 %.idx2.i, !dbg !227217 ; 4 uses
  %i.u = icmp samesign ult i64 %.sroa.16.093229, 64, !dbg !227218
  br i1 %i.u, label %bb.i, label %bb.h, !dbg !227218
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB17_E0E0EB2P_:bb.a
.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader, %bb.df
  %.sroa.9.147.i = phi ptr [ %i.lb, %bb.df ], [ %.sroa.9.0.i56, %.lr.ph.i68.preheader ] ; 10 uses
  %.sroa.27.146.i = phi i64 [ %i.la, %bb.df ], [ %.sroa.27.0.i55, %.lr.ph.i68.preheader ] ; 4 uses
  %.sroa.43.145.i = phi ptr [ %i.kv, %bb.df ], [ %.sroa.43.0.i54, %.lr.ph.i68.preheader ] ; 5 uses
  %i.ji = getelementptr i8, ptr %.sroa.9.147.i, i64 4, !dbg !273373
  %.val22.i69 = load i16, ptr %i.ji, align 2, !dbg !273373, !alias.scope !273100, !noalias !273101 ; 5 uses
  %i.jj = and i16 %.val22.i69, 32767, !dbg !273374
  %i.jk = icmp samesign ugt i16 %i.jj, 31744, !dbg !273374
  br i1 %i.jk, label %.thread.i, label %bb.cl, !dbg !273375

bb.cl:                                            ; preds = %.lr.ph.i68
  %.not.i4.i.i.i.i71 = icmp sgt i16 %.val22.i69, -1, !dbg !273376 ; 2 uses
  br i1 %i.iy, label %bb.cm, label %bb.cn, !dbg !273377

bb.cm:                                            ; preds = %bb.cl
  %.not22.i.i.i.i75 = icmp samesign ult i16 %.val23.i70, %.val22.i69
  %or.cond.i.i.i76 = select i1 %.not.i4.i.i.i.i71, i1 %.not22.i.i.i.i75, i1 false, !dbg !273377
  br i1 %or.cond.i.i.i76, label %.thread.i, label %.thread31.i, !dbg !273377

bb.cn:                                            ; preds = %bb.cl
  br i1 %.not.i4.i.i.i.i71, label %.split.i.i.i.i73, label %bb.co, !dbg !273377

.split.i.i.i.i73:                                 ; preds = %bb.cn
  %i.jl = or i16 %i.iw, %.val22.i69, !dbg !273378
  %.not.i.i.i.i74 = icmp eq i16 %i.jl, 0, !dbg !273378
  br i1 %.not.i.i.i.i74, label %.thread31.i, label %.thread.i, !dbg !273379

bb.co:                                            ; preds = %bb.cn
  %.not21.i.i.i.i72 = icmp samesign ult i16 %.val22.i69, %.val23.i70, !dbg !273380
  br i1 %.not21.i.i.i.i72, label %.thread.i, label %.thread31.i, !dbg !273379

.thread.i:                                        ; preds = %bb.co, %.split.i.i.i.i73, %bb.cm, %.lr.ph.i68
  %i.jm = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -8, !dbg !273381
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.sroa.27.146.i, !dbg !273365
  %i.jo = load i64, ptr %.sroa.9.147.i, align 4, !dbg !273366, !alias.scope !273100, !noalias !273104
  store i64 %i.jo, ptr %i.jn, align 4, !dbg !273366, !alias.scope !273101, !noalias !273105
  br label %bb.cp, !dbg !273382

.thread31.i:                                      ; preds = %bb.co, %.split.i.i.i.i73, %bb.cm
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.146.i, !dbg !273365
  %i.jq = load i64, ptr %.sroa.9.147.i, align 4, !dbg !273366, !alias.scope !273100, !noalias !273106
  store i64 %i.jq, ptr %i.jp, align 4, !dbg !273366, !alias.scope !273101, !noalias !273107
  %i.jr = add i64 %.sroa.27.146.i, 1, !dbg !273383
  br label %bb.cp, !dbg !273382

bb.cp:                                            ; preds = %.thread31.i, %.thread.i
  %i.js = phi i64 [ %.sroa.27.146.i, %.thread.i ], [ %i.jr, %.thread31.i ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 8, !dbg !273384 ; 2 uses
  %.val2030.in.i = getelementptr i8, ptr %.sroa.9.147.i, i64 12, !dbg !273385
  %.val2030.i = load i16, ptr %.val2030.in.i, align 2, !dbg !273385, !alias.scope !273100, !noalias !273101 ; 5 uses
  %i.ju = and i16 %.val2030.i, 32767, !dbg !273386
  %i.jv = icmp samesign ugt i16 %i.ju, 31744, !dbg !273386
  br i1 %i.jv, label %.thread33.i, label %bb.cq, !dbg !273387

bb.cq:                                            ; preds = %bb.cp
  %.not.i4.i.i.i24.i = icmp sgt i16 %.val2030.i, -1, !dbg !273388 ; 2 uses
  br i1 %i.iy, label %bb.cr, label %bb.cs, !dbg !273389

bb.cr:                                            ; preds = %bb.cq
  %.not22.i.i.i29.i = icmp samesign ult i16 %.val23.i70, %.val2030.i
  %or.cond.i.i30.i = select i1 %.not.i4.i.i.i24.i, i1 %.not22.i.i.i29.i, i1 false, !dbg !273389
  br i1 %or.cond.i.i30.i, label %.thread33.i, label %.thread37.i, !dbg !273389

bb.cs:                                            ; preds = %bb.cq
  br i1 %.not.i4.i.i.i24.i, label %.split.i.i.i27.i, label %bb.ct, !dbg !273389

.split.i.i.i27.i:                                 ; preds = %bb.cs
  %i.jw = or i16 %.val2030.i, %i.iw, !dbg !273390
  %.not.i.i.i28.i = icmp eq i16 %i.jw, 0, !dbg !273390
  br i1 %.not.i.i.i28.i, label %.thread37.i, label %.thread33.i, !dbg !273391

bb.ct:                                            ; preds = %bb.cs
  %.not21.i.i.i25.i = icmp samesign ult i16 %.val2030.i, %.val23.i70, !dbg !273392
  br i1 %.not21.i.i.i25.i, label %.thread33.i, label %.thread37.i, !dbg !273391

.thread33.i:                                      ; preds = %bb.ct, %.split.i.i.i27.i, %bb.cr, %bb.cp
  %i.jx = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -16, !dbg !273393
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.js, !dbg !273394
  %i.jz = load i64, ptr %i.jt, align 4, !dbg !273395, !alias.scope !273100, !noalias !273108
  store i64 %i.jz, ptr %i.jy, align 4, !dbg !273395, !alias.scope !273101, !noalias !273109
  br label %bb.cu, !dbg !273396

.thread37.i:                                      ; preds = %bb.ct, %.split.i.i.i27.i, %bb.cr
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.js, !dbg !273394
  %i.kb = load i64, ptr %i.jt, align 4, !dbg !273395, !alias.scope !273100, !noalias !273110
  store i64 %i.kb, ptr %i.ka, align 4, !dbg !273395, !alias.scope !273101, !noalias !273111
  %i.kc = add i64 %i.js, 1, !dbg !273397
  br label %bb.cu, !dbg !273396

bb.cu:                                            ; preds = %.thread37.i, %.thread33.i
  %i.kd = phi i64 [ %i.js, %.thread33.i ], [ %i.kc, %.thread37.i ] ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 16, !dbg !273367 ; 2 uses
  %.val1835.in.i = getelementptr i8, ptr %.sroa.9.147.i, i64 20, !dbg !273398
  %.val1835.i = load i16, ptr %.val1835.in.i, align 2, !dbg !273398, !alias.scope !273100, !noalias !273101 ; 5 uses
  %i.kf = and i16 %.val1835.i, 32767, !dbg !273399
  %i.kg = icmp samesign ugt i16 %i.kf, 31744, !dbg !273399
  br i1 %i.kg, label %.thread39.i, label %bb.cv, !dbg !273400

bb.cv:                                            ; preds = %bb.cu
  %.not.i4.i.i.i33.i = icmp sgt i16 %.val1835.i, -1, !dbg !273401 ; 2 uses
  br i1 %i.iy, label %bb.cw, label %bb.cx, !dbg !273402

bb.cw:                                            ; preds = %bb.cv
  %.not22.i.i.i38.i = icmp samesign ult i16 %.val23.i70, %.val1835.i
  %or.cond.i.i39.i = select i1 %.not.i4.i.i.i33.i, i1 %.not22.i.i.i38.i, i1 false, !dbg !273402
  br i1 %or.cond.i.i39.i, label %.thread39.i, label %.thread43.i, !dbg !273402

bb.cx:                                            ; preds = %bb.cv
  br i1 %.not.i4.i.i.i33.i, label %.split.i.i.i36.i, label %bb.cy, !dbg !273402

.split.i.i.i36.i:                                 ; preds = %bb.cx
  %i.kh = or i16 %.val1835.i, %i.iw, !dbg !273403
  %.not.i.i.i37.i = icmp eq i16 %i.kh, 0, !dbg !273403
  br i1 %.not.i.i.i37.i, label %.thread43.i, label %.thread39.i, !dbg !273404

bb.cy:                                            ; preds = %bb.cx
  %.not21.i.i.i34.i = icmp samesign ult i16 %.val1835.i, %.val23.i70, !dbg !273405
  br i1 %.not21.i.i.i34.i, label %.thread39.i, label %.thread43.i, !dbg !273404

.thread39.i:                                      ; preds = %bb.cy, %.split.i.i.i36.i, %bb.cw, %bb.cu
  %i.ki = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -24, !dbg !273406
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kd, !dbg !273368
  %i.kk = load i64, ptr %i.ke, align 4, !dbg !273370, !alias.scope !273100, !noalias !273112
  store i64 %i.kk, ptr %i.kj, align 4, !dbg !273370, !alias.scope !273101, !noalias !273113
  br label %bb.cz, !dbg !273407

.thread43.i:                                      ; preds = %bb.cy, %.split.i.i.i36.i, %bb.cw
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kd, !dbg !273368
  %i.km = load i64, ptr %i.ke, align 4, !dbg !273370, !alias.scope !273100, !noalias !273114
  store i64 %i.km, ptr %i.kl, align 4, !dbg !273370, !alias.scope !273101, !noalias !273115
  %i.kn = add i64 %i.kd, 1, !dbg !273408
  br label %bb.cz, !dbg !273407

bb.cz:                                            ; preds = %.thread43.i, %.thread39.i
  %i.ko = phi i64 [ %i.kd, %.thread39.i ], [ %i.kn, %.thread43.i ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 24, !dbg !273409
  %.val1641.in.i = getelementptr i8, ptr %.sroa.9.147.i, i64 28, !dbg !273410
  %.val1641.i = load i16, ptr %.val1641.in.i, align 2, !dbg !273410, !alias.scope !273100, !noalias !273101 ; 5 uses
  %i.kq = and i16 %.val1641.i, 32767, !dbg !273411
  %i.kr = icmp samesign ugt i16 %i.kq, 31744, !dbg !273411
  br i1 %i.kr, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, label %bb.da, !dbg !273412

bb.da:                                            ; preds = %bb.cz
  %.not.i4.i.i.i42.i = icmp sgt i16 %.val1641.i, -1, !dbg !273413 ; 2 uses
  br i1 %i.iy, label %bb.db, label %bb.dc, !dbg !273414

bb.db:                                            ; preds = %bb.da
  %.not22.i.i.i47.i = icmp samesign ult i16 %.val23.i70, %.val1641.i
  %or.cond.i.i48.i = select i1 %.not.i4.i.i.i42.i, i1 %.not22.i.i.i47.i, i1 false, !dbg !273414
  br i1 %or.cond.i.i48.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, label %bb.de, !dbg !273414

bb.dc:                                            ; preds = %bb.da
  br i1 %.not.i4.i.i.i42.i, label %.split.i.i.i45.i, label %bb.dd, !dbg !273414

.split.i.i.i45.i:                                 ; preds = %bb.dc
  %i.ks = or i16 %.val1641.i, %i.iw, !dbg !273415
  %.not.i.i.i46.i = icmp eq i16 %i.ks, 0, !dbg !273415
  br i1 %.not.i.i.i46.i, label %bb.de, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, !dbg !273416

bb.dd:                                            ; preds = %bb.dc
  %.not21.i.i.i43.i = icmp samesign ult i16 %.val1641.i, %.val23.i70, !dbg !273417
  br i1 %.not21.i.i.i43.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, label %bb.de, !dbg !273416

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i: ; preds = %bb.dd, %.split.i.i.i45.i, %bb.db, %bb.cz
  %i.kt = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !273369 ; 2 uses
  br label %bb.df, !dbg !273418

bb.de:                                            ; preds = %bb.dd, %.split.i.i.i45.i, %bb.db
  %i.ku = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !273369
  br label %bb.df, !dbg !273418

bb.df:                                            ; preds = %bb.de, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i
  %i.kv = phi ptr [ %i.ku, %bb.de ], [ %i.kt, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i ] ; 2 uses
  %i.kw = phi i64 [ 1, %bb.de ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i ]
  %i.kx = phi ptr [ %2, %bb.de ], [ %i.kt, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i ], !dbg !273418
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.ko, !dbg !273419
  %i.kz = load i64, ptr %i.kp, align 4, !dbg !273420, !alias.scope !273100, !noalias !273116
  store i64 %i.kz, ptr %i.ky, align 4, !dbg !273420, !alias.scope !273101, !noalias !273117
  %i.la = add i64 %i.ko, %i.kw, !dbg !273371      ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 32, !dbg !273372 ; 3 uses
  %i.lc = icmp ult ptr %i.lb, %i.iu, !dbg !273364
  br i1 %i.lc, label %.lr.ph.i68, label %._crit_edge.i58, !dbg !273364

._crit_edge.i58:                                  ; preds = %bb.df, %.lr.ph.i68.us, %bb.ck
  %.sroa.43.1.lcssa.i59 = phi ptr [ %.sroa.43.0.i54, %bb.ck ], [ %i.jd, %.lr.ph.i68.us ], [ %i.kv, %bb.df ], !dbg !273361 ; 4 uses
  %.sroa.27.1.lcssa.i60 = phi i64 [ %.sroa.27.0.i55, %bb.ck ], [ %i.jf, %.lr.ph.i68.us ], [ %i.la, %bb.df ], !dbg !273361 ; 5 uses
  %.sroa.9.1.lcssa.i61 = phi ptr [ %.sroa.9.0.i56, %bb.ck ], [ %i.jg, %.lr.ph.i68.us ], [ %i.lb, %bb.df ], !dbg !273361 ; 7 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.0.0.i57, !dbg !273421 ; 3 uses
  %i.le = icmp ult ptr %.sroa.9.1.lcssa.i61, %i.ld, !dbg !273422
  br i1 %i.le, label %.lr.ph54.i.preheader, label %._crit_edge55.i, !dbg !273422

.lr.ph54.i.preheader:                             ; preds = %._crit_edge.i58
  %.val15.i67 = load i16, ptr %i.ir, align 2, !alias.scope !273102, !noalias !273103, !noundef !8787 ; 4 uses
  %i.lf = and i16 %.val15.i67, 32767              ; 2 uses
  %i.lg = icmp samesign ugt i16 %i.lf, 31744
  %i.lh = icmp sgt i16 %.val15.i67, -1
  br i1 %i.lg, label %.lr.ph54.i.us.preheader, label %.lr.ph54.i

.lr.ph54.i.us.preheader:                          ; preds = %.lr.ph54.i.preheader
  %i.li = shl i64 %.sroa.0.0.i57, 3, !dbg !273422
  %7 = add i64 %i.li, %i.e, !dbg !273422
  %i.lj = ptrtoaddr ptr %.sroa.9.1.lcssa.i61 to i64, !dbg !273422 ; 2 uses
  %i.lk = add i64 %i.lj, 8, !dbg !273422
  %8 = call i64 @llvm.umax.i64(i64 %7, i64 %i.lk), !dbg !273422
  %i.ll = xor i64 %i.lj, -1, !dbg !273422
  %i.lm = add i64 %8, %i.ll, !dbg !273422         ; 2 uses
  %i.ln = lshr i64 %i.lm, 3, !dbg !273422
  %i.lo = add nuw nsw i64 %i.ln, 1, !dbg !273422  ; 2 uses
  %min.iters.check389 = icmp ult i64 %i.lm, 24, !dbg !273422
  br i1 %min.iters.check389, label %.lr.ph54.i.us.preheader422, label %vector.ph390, !dbg !273422

vector.ph390:                                     ; preds = %.lr.ph54.i.us.preheader
  %n.vec391 = and i64 %i.lo, 4611686018427387900  ; 5 uses
  %i.lp = shl i64 %n.vec391, 3
  %i.lq = getelementptr i8, ptr %.sroa.9.1.lcssa.i61, i64 %i.lp ; 2 uses
  %i.lr = add i64 %.sroa.27.1.lcssa.i60, %n.vec391 ; 2 uses
  %i.ls = mul i64 %n.vec391, -8
  %i.lt = getelementptr i8, ptr %.sroa.43.1.lcssa.i59, i64 %i.ls ; 2 uses
  %i.lu = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i60
  br label %vector.body392, !dbg !273422

vector.body392:                                   ; preds = %vector.body392, %vector.ph390
  %index393 = phi i64 [ 0, %vector.ph390 ], [ %index.next396, %vector.body392 ] ; 3 uses
  %i.lv = shl i64 %index393, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i61, i64 %i.lv ; 2 uses
  %i.lw = getelementptr [8 x i8], ptr %i.lu, i64 %index393, !dbg !273423 ; 2 uses
  %i.lx = getelementptr i8, ptr %next.gep, i64 16, !dbg !273424
  %wide.load394 = load <2 x i64>, ptr %next.gep, align 4, !dbg !273424, !alias.scope !273100, !noalias !273118
  %wide.load395 = load <2 x i64>, ptr %i.lx, align 4, !dbg !273424, !alias.scope !273100, !noalias !273118
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16, !dbg !273424
  store <2 x i64> %wide.load394, ptr %i.lw, align 4, !dbg !273424, !alias.scope !273101, !noalias !273119
  store <2 x i64> %wide.load395, ptr %i.ly, align 4, !dbg !273424, !alias.scope !273101, !noalias !273119
  %index.next396 = add nuw i64 %index393, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next396, %n.vec391, !dbg !273422
  br i1 %i.lz, label %middle.block397, label %vector.body392, !dbg !273422, !llvm.loop !273020

middle.block397:                                  ; preds = %vector.body392
  %cmp.n398 = icmp eq i64 %i.lo, %n.vec391, !dbg !273422
  br i1 %cmp.n398, label %._crit_edge55.i, label %.lr.ph54.i.us.preheader422, !dbg !273422

.lr.ph54.i.us.preheader422:                       ; preds = %.lr.ph54.i.us.preheader, %middle.block397
  %.sroa.9.252.i.us.ph = phi ptr [ %.sroa.9.1.lcssa.i61, %.lr.ph54.i.us.preheader ], [ %i.lq, %middle.block397 ]
  %.sroa.27.251.i.us.ph = phi i64 [ %.sroa.27.1.lcssa.i60, %.lr.ph54.i.us.preheader ], [ %i.lr, %middle.block397 ]
  %.sroa.43.250.i.us.ph = phi ptr [ %.sroa.43.1.lcssa.i59, %.lr.ph54.i.us.preheader ], [ %i.lt, %middle.block397 ]
  br label %.lr.ph54.i.us, !dbg !273422

.lr.ph54.i.us:                                    ; preds = %.lr.ph54.i.us.preheader422, %.lr.ph54.i.us
  %.sroa.9.252.i.us = phi ptr [ %i.me, %.lr.ph54.i.us ], [ %.sroa.9.252.i.us.ph, %.lr.ph54.i.us.preheader422 ] ; 2 uses
  %.sroa.27.251.i.us = phi i64 [ %i.md, %.lr.ph54.i.us ], [ %.sroa.27.251.i.us.ph, %.lr.ph54.i.us.preheader422 ] ; 2 uses
  %.sroa.43.250.i.us = phi ptr [ %i.ma, %.lr.ph54.i.us ], [ %.sroa.43.250.i.us.ph, %.lr.ph54.i.us.preheader422 ]
  %i.ma = getelementptr inbounds i8, ptr %.sroa.43.250.i.us, i64 -8, !dbg !273425 ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.251.i.us, !dbg !273423
  %i.mc = load i64, ptr %.sroa.9.252.i.us, align 4, !dbg !273424, !alias.scope !273100, !noalias !273118
  store i64 %i.mc, ptr %i.mb, align 4, !dbg !273424, !alias.scope !273101, !noalias !273119
  %i.md = add i64 %.sroa.27.251.i.us, 1, !dbg !273426 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i.us, i64 8, !dbg !273427 ; 3 uses
  %i.mf = icmp ult ptr %i.me, %i.ld, !dbg !273422
  br i1 %i.mf, label %.lr.ph54.i.us, label %._crit_edge55.i, !dbg !273422, !llvm.loop !273023

._crit_edge55.i:                                  ; preds = %bb.dl, %.lr.ph54.i.us, %middle.block397, %._crit_edge.i58
  %.sroa.43.2.lcssa.i62 = phi ptr [ %.sroa.43.1.lcssa.i59, %._crit_edge.i58 ], [ %i.ma, %.lr.ph54.i.us ], [ %i.lt, %middle.block397 ], [ %i.mn, %bb.dl ], !dbg !273361
  %.sroa.27.2.lcssa.i63 = phi i64 [ %.sroa.27.1.lcssa.i60, %._crit_edge.i58 ], [ %i.md, %.lr.ph54.i.us ], [ %i.lr, %middle.block397 ], [ %i.ms, %bb.dl ], !dbg !273361 ; 9 uses
  %.sroa.9.2.lcssa.i64 = phi ptr [ %.sroa.9.1.lcssa.i61, %._crit_edge.i58 ], [ %i.me, %.lr.ph54.i.us ], [ %i.lq, %middle.block397 ], [ %i.mt, %bb.dl ], !dbg !273361 ; 2 uses
  %i.mg = icmp eq i64 %.sroa.0.0.i57, %.sroa.16.0120380, !dbg !273428
  br i1 %i.mg, label %bb.dn, label %bb.dm, !dbg !273428

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %bb.dl
  %.sroa.9.252.i = phi ptr [ %i.mt, %bb.dl ], [ %.sroa.9.1.lcssa.i61, %.lr.ph54.i.preheader ] ; 3 uses
  %.sroa.27.251.i = phi i64 [ %i.ms, %bb.dl ], [ %.sroa.27.1.lcssa.i60, %.lr.ph54.i.preheader ] ; 2 uses
  %.sroa.43.250.i = phi ptr [ %i.mn, %bb.dl ], [ %.sroa.43.1.lcssa.i59, %.lr.ph54.i.preheader ] ; 2 uses
  %i.mh = getelementptr i8, ptr %.sroa.9.252.i, i64 4, !dbg !273429
  %.val.i66 = load i16, ptr %i.mh, align 2, !dbg !273429, !alias.scope !273100, !noalias !273101 ; 5 uses
  %i.mi = and i16 %.val.i66, 32767, !dbg !273430
  %i.mj = icmp samesign ugt i16 %i.mi, 31744, !dbg !273430
  br i1 %i.mj, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, label %bb.dg, !dbg !273431

bb.dg:                                            ; preds = %.lr.ph54.i
  %.not.i4.i.i.i51.i = icmp sgt i16 %.val.i66, -1, !dbg !273432 ; 2 uses
  br i1 %i.lh, label %bb.dh, label %bb.di, !dbg !273433

bb.dh:                                            ; preds = %bb.dg
  %.not22.i.i.i56.i = icmp samesign ult i16 %.val15.i67, %.val.i66
  %or.cond.i.i57.i = select i1 %.not.i4.i.i.i51.i, i1 %.not22.i.i.i56.i, i1 false, !dbg !273433
  br i1 %or.cond.i.i57.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, label %bb.dk, !dbg !273433

bb.di:                                            ; preds = %bb.dg
  br i1 %.not.i4.i.i.i51.i, label %.split.i.i.i54.i, label %bb.dj, !dbg !273433

.split.i.i.i54.i:                                 ; preds = %bb.di
  %i.mk = or i16 %i.lf, %.val.i66, !dbg !273434
  %.not.i.i.i55.i = icmp eq i16 %i.mk, 0, !dbg !273434
  br i1 %.not.i.i.i55.i, label %bb.dk, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, !dbg !273435

bb.dj:                                            ; preds = %bb.di
  %.not21.i.i.i52.i = icmp samesign ult i16 %.val.i66, %.val15.i67, !dbg !273436
  br i1 %.not21.i.i.i52.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, label %bb.dk, !dbg !273435

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i: ; preds = %bb.dj, %.split.i.i.i54.i, %bb.dh, %.lr.ph54.i
  %i.ml = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !273425 ; 2 uses
  br label %bb.dl, !dbg !273437

bb.dk:                                            ; preds = %bb.dj, %.split.i.i.i54.i, %bb.dh
  %i.mm = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !273425
  br label %bb.dl, !dbg !273437

bb.dl:                                            ; preds = %bb.dk, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i
  %i.mn = phi ptr [ %i.mm, %bb.dk ], [ %i.ml, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i ] ; 2 uses
  %i.mo = phi i64 [ 1, %bb.dk ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i ]
  %i.mp = phi ptr [ %2, %bb.dk ], [ %i.ml, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i ], !dbg !273437
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.sroa.27.251.i, !dbg !273423
  %i.mr = load i64, ptr %.sroa.9.252.i, align 4, !dbg !273424, !alias.scope !273100, !noalias !273118
  store i64 %i.mr, ptr %i.mq, align 4, !dbg !273424, !alias.scope !273101, !noalias !273119
  %i.ms = add i64 %i.mo, %.sroa.27.251.i, !dbg !273426 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i, i64 8, !dbg !273427 ; 3 uses
  %i.mu = icmp ult ptr %i.mt, %i.ld, !dbg !273422
  br i1 %i.mu, label %.lr.ph54.i, label %._crit_edge55.i, !dbg !273422

bb.dm:                                            ; preds = %._crit_edge55.i
  %i.mv = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i62, i64 -8, !dbg !273438
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i63, !dbg !273439
  %i.mx = load i64, ptr %.sroa.9.2.lcssa.i64, align 4, !dbg !273440, !alias.scope !273100, !noalias !273120
  store i64 %i.mx, ptr %i.mw, align 4, !dbg !273440, !alias.scope !273101, !noalias !273121
  %i.my = add i64 %.sroa.27.2.lcssa.i63, 1, !dbg !273441
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i64, i64 8, !dbg !273442
  br label %bb.ck, !dbg !273359

bb.dn:                                            ; preds = %._crit_edge55.i
  %i.na = shl i64 %.sroa.27.2.lcssa.i63, 3, !dbg !273443
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph133, ptr nonnull align 4 %2, i64 %i.na, i1 false), !dbg !273443, !alias.scope !273122
  %i.nb = sub i64 %.sroa.16.0120380, %.sroa.27.2.lcssa.i63, !dbg !273444 ; 7 uses
  %.not63.i = icmp eq i64 %.sroa.16.0120380, %.sroa.27.2.lcssa.i63, !dbg !273445
  br i1 %.not63.i, label %.outer._crit_edge.thread, label %.lr.ph61.i, !dbg !273446

.lr.ph61.i:                                       ; preds = %bb.dn
  %i.nc = getelementptr [8 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.27.2.lcssa.i63 ; 2 uses
  %min.iters.check = icmp ult i64 %i.nb, 4, !dbg !273446
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !273446

vector.ph:                                        ; preds = %.lr.ph61.i
  %n.vec = and i64 %i.nb, -4                      ; 3 uses
  br label %vector.body, !dbg !273446

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !273447 ; 3 uses
  %i.nd = xor i64 %index, -1, !dbg !273448
  %i.ne = getelementptr [8 x i8], ptr %i.is, i64 %i.nd, !dbg !273449 ; 2 uses
  %i.nf = getelementptr [8 x i8], ptr %i.nc, i64 %index, !dbg !273450 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.ne, i64 -8, !dbg !273451
  %i.nh = getelementptr i8, ptr %i.ne, i64 -24, !dbg !273451
  %wide.load = load <2 x i64>, ptr %i.ng, align 4, !dbg !273451, !alias.scope !273101, !noalias !273100
  %wide.load386 = load <2 x i64>, ptr %i.nh, align 4, !dbg !273451, !alias.scope !273101, !noalias !273100
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !273451
  %reverse387 = shufflevector <2 x i64> %wide.load386, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !273451
  %i.ni = getelementptr i8, ptr %i.nf, i64 16, !dbg !273451
  store <2 x i64> %reverse, ptr %i.nf, align 4, !dbg !273451, !alias.scope !273100, !noalias !273101
  store <2 x i64> %reverse387, ptr %i.ni, align 4, !dbg !273451, !alias.scope !273100, !noalias !273101
  %index.next = add nuw i64 %index, 4, !dbg !273447 ; 2 uses
  %i.nj = icmp eq i64 %index.next, %n.vec, !dbg !273446
  br i1 %i.nj, label %middle.block, label %vector.body, !dbg !273446, !llvm.loop !273061

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nb, %n.vec, !dbg !273446
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit, label %scalar.ph.preheader, !dbg !273446

scalar.ph.preheader:                              ; preds = %.lr.ph61.i, %middle.block
  %.sroa.07.059.i.ph = phi i64 [ 0, %.lr.ph61.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !273446

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.059.i = phi i64 [ %i.nk, %scalar.ph ], [ %.sroa.07.059.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.nk = add nuw i64 %.sroa.07.059.i, 1, !dbg !273447 ; 2 uses
  %i.nl = xor i64 %.sroa.07.059.i, -1, !dbg !273448
  %i.nm = getelementptr [8 x i8], ptr %i.is, i64 %i.nl, !dbg !273449
  %i.nn = getelementptr [8 x i8], ptr %i.nc, i64 %.sroa.07.059.i, !dbg !273450
  %i.no = load i64, ptr %i.nm, align 4, !dbg !273451, !alias.scope !273101, !noalias !273100
  store i64 %i.no, ptr %i.nn, align 4, !dbg !273451, !alias.scope !273100, !noalias !273101
  %exitcond.not.i65 = icmp eq i64 %i.nk, %i.nb, !dbg !273445
  br i1 %exitcond.not.i65, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit, label %scalar.ph, !dbg !273446, !llvm.loop !273062

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit: ; preds = %scalar.ph, %middle.block
  %i.np = icmp ugt i64 %.sroa.27.2.lcssa.i63, %.sroa.16.0120380, !dbg !273452
  br i1 %i.np, label %bb.do, label %.outer, !dbg !273452, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !273355
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1u_E0E0EB3c_.exit, !dbg !273130

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.27.2.lcssa.i63, !dbg !273453 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !273355
  %i.nr = icmp ult i64 %i.nb, 33, !dbg !273127
  br i1 %i.nr, label %.outer._crit_edge, label %.lr.ph, !dbg !273127

bb.do:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i63, i64 noundef %.sroa.16.0120380, i64 noundef %.sroa.16.0120380, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !273454
  unreachable, !dbg !273454
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmRShENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyB17_NCNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple24argsort_multiple_row_fmts_0E0EB2h_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !273455 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !273908
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !273908

.lr.ph:                                           ; preds = %bb.a, %.outer
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmfENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0EB27_:bb.a
  %.sroa.9.236.i = phi ptr [ %i.jh, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.jg, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.jc, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.iz = getelementptr i8, ptr %.sroa.9.236.i, i64 4, !dbg !285336
  %.val.i = load float, ptr %i.iz, align 4, !dbg !285336, !alias.scope !285025, !noalias !285026, !noundef !8787 ; 2 uses
  %i.ja = fcmp ord float %.val.i, 0.000000e+00, !dbg !285337
  %i.jb = fcmp ult float %.val.i, %i.he, !dbg !285338
  %.not2.i.i.i30.i = and i1 %i.ja, %i.jb, !dbg !285339 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !285340 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.jc, !dbg !285341
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !285342
  %i.je = load i64, ptr %.sroa.9.236.i, align 4, !dbg !285343, !alias.scope !285023, !noalias !285035
  store i64 %i.je, ptr %i.jd, align 4, !dbg !285343, !alias.scope !285024, !noalias !285036
  %i.jf = zext i1 %.not2.i.i.i30.i to i64, !dbg !285344
  %i.jg = add i64 %.sroa.27.235.i, %i.jf, !dbg !285345 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !285346 ; 3 uses
  %i.ji = icmp ult ptr %i.jh, %i.iw, !dbg !285334
  br i1 %i.ji, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !285334

bb.x:                                             ; preds = %._crit_edge39.i
  %i.jj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !285347 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %.sroa.27.2.lcssa.i, !dbg !285348
  %i.jl = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !285349, !alias.scope !285023, !noalias !285037
  store i64 %i.jl, ptr %i.jk, align 4, !dbg !285349, !alias.scope !285024, !noalias !285038
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !285350
  br label %bb.w, !dbg !285283

bb.y:                                             ; preds = %._crit_edge39.i
  %i.jn = shl i64 %.sroa.27.2.lcssa.i, 3, !dbg !285351
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.jn, i1 false), !dbg !285351, !alias.scope !285039
  %i.jo = sub i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i, !dbg !285352 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i, !dbg !285353
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !285354

.lr.ph45.i:                                       ; preds = %bb.y
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check354 = icmp ult i64 %i.jo, 4, !dbg !285354
  br i1 %min.iters.check354, label %scalar.ph353.preheader, label %vector.ph355, !dbg !285354

vector.ph355:                                     ; preds = %.lr.ph45.i
  %n.vec356 = and i64 %i.jo, -4                   ; 3 uses
  br label %vector.body357, !dbg !285354

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body357 ], !dbg !285355 ; 3 uses
  %i.jq = xor i64 %index358, -1, !dbg !285356
  %i.jr = getelementptr [8 x i8], ptr %i.hh, i64 %i.jq, !dbg !285357 ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %i.jp, i64 %index358, !dbg !285358 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jr, i64 -8, !dbg !285359
  %i.ju = getelementptr i8, ptr %i.jr, i64 -24, !dbg !285359
  %wide.load359 = load <2 x i64>, ptr %i.jt, align 4, !dbg !285359, !alias.scope !285024, !noalias !285023
  %wide.load360 = load <2 x i64>, ptr %i.ju, align 4, !dbg !285359, !alias.scope !285024, !noalias !285023
  %reverse361 = shufflevector <2 x i64> %wide.load359, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !285359
  %reverse362 = shufflevector <2 x i64> %wide.load360, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !285359
  %i.jv = getelementptr i8, ptr %i.js, i64 16, !dbg !285359
  store <2 x i64> %reverse361, ptr %i.js, align 4, !dbg !285359, !alias.scope !285023, !noalias !285024
  store <2 x i64> %reverse362, ptr %i.jv, align 4, !dbg !285359, !alias.scope !285023, !noalias !285024
  %index.next363 = add nuw i64 %index358, 4, !dbg !285355 ; 2 uses
  %i.jw = icmp eq i64 %index.next363, %n.vec356, !dbg !285354
  br i1 %i.jw, label %middle.block364, label %vector.body357, !dbg !285354, !llvm.loop !284842

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.jo, %n.vec356, !dbg !285354
  br i1 %cmp.n365, label %.loopexit, label %scalar.ph353.preheader, !dbg !285354

scalar.ph353.preheader:                           ; preds = %.lr.ph45.i, %middle.block364
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec356, %middle.block364 ]
  br label %scalar.ph353, !dbg !285354

scalar.ph353:                                     ; preds = %scalar.ph353.preheader, %scalar.ph353
  %.sroa.07.043.i = phi i64 [ %i.jx, %scalar.ph353 ], [ %.sroa.07.043.i.ph, %scalar.ph353.preheader ] ; 3 uses
  %i.jx = add nuw i64 %.sroa.07.043.i, 1, !dbg !285355 ; 2 uses
  %i.jy = xor i64 %.sroa.07.043.i, -1, !dbg !285356
  %i.jz = getelementptr [8 x i8], ptr %i.hh, i64 %i.jy, !dbg !285357
  %i.ka = getelementptr [8 x i8], ptr %i.jp, i64 %.sroa.07.043.i, !dbg !285358
  %i.kb = load i64, ptr %i.jz, align 4, !dbg !285359, !alias.scope !285024, !noalias !285023
  store i64 %i.kb, ptr %i.ka, align 4, !dbg !285359, !alias.scope !285023, !noalias !285024
  %exitcond.not.i39 = icmp eq i64 %i.jx, %i.jo, !dbg !285353
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph353, !dbg !285354, !llvm.loop !284843

.loopexit:                                        ; preds = %scalar.ph353, %middle.block364, %bb.y
  %i.kc = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !285360
  br i1 %i.kc, label %.thread, label %bb.z, !dbg !285361

bb.z:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0122315, !dbg !285362
  br i1 %.not.i42, label %bb.aa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmfE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !285362, !prof !8988

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #57, !dbg !285363, !noalias !285041
  unreachable, !dbg !285363

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmfE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.z
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i, !dbg !285364
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph131) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmfENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0EB27_(ptr noalias noundef nonnull align 4 %i.kd, i64 noundef %i.jo, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.gj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #54, !dbg !285365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !285366
  %i.ke = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !285065
  br i1 %i.ke, label %.outer._crit_edge, label %bb.b, !dbg !285065

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285042), !dbg !285367
  call void @llvm.experimental.noalias.scope.decl(metadata !285043), !dbg !285367
  %.not85 = icmp samesign ult i64 %3, %.sroa.16.0122315, !dbg !285368
  br i1 %.not85, label %bb.ac, label %bb.ab, !dbg !285368, !prof !9308

bb.ab:                                            ; preds = %.thread
  %i.kg = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0122315, !dbg !285369 ; 3 uses
  br label %bb.ad, !dbg !285370

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !285371
  unreachable, !dbg !285371

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.43.0.i45 = phi ptr [ %i.kg, %bb.ab ], [ %i.nd, %bb.ae ], !dbg !285372 ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.ab ], [ %i.ng, %bb.ae ], !dbg !285372 ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph131, %bb.ab ], [ %i.nh, %bb.ae ], !dbg !285372 ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i37, %bb.ab ], [ %.sroa.16.0122315, %bb.ae ] ; 4 uses
  %i.kh = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3), !dbg !285373
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %i.kh, !dbg !285374 ; 2 uses
  %i.kj = icmp ult ptr %.sroa.9.0.i47, %i.ki, !dbg !285375
  br i1 %i.kj, label %.lr.ph.i68.preheader, label %._crit_edge.i49, !dbg !285375

.lr.ph.i68.preheader:                             ; preds = %bb.ad
  %.val23.i73 = load float, ptr %i.kf, align 4, !alias.scope !285044, !noalias !285045, !noundef !8787 ; 5 uses
  %i.kk = fcmp uno float %.val23.i73, 0.000000e+00 ; 4 uses
  br label %.lr.ph.i68, !dbg !285375

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader, %.lr.ph.i68
  %.sroa.9.131.i69 = phi ptr [ %i.lq, %.lr.ph.i68 ], [ %.sroa.9.0.i47, %.lr.ph.i68.preheader ] ; 9 uses
  %.sroa.27.130.i70 = phi i64 [ %i.lp, %.lr.ph.i68 ], [ %.sroa.27.0.i46, %.lr.ph.i68.preheader ] ; 2 uses
  %.sroa.43.129.i71 = phi ptr [ %i.ll, %.lr.ph.i68 ], [ %.sroa.43.0.i45, %.lr.ph.i68.preheader ] ; 4 uses
  %i.kl = getelementptr i8, ptr %.sroa.9.131.i69, i64 4, !dbg !285376
  %.val22.i72 = load float, ptr %i.kl, align 4, !dbg !285376, !alias.scope !285046, !noalias !285047, !noundef !8787
  %i.km = fcmp oge float %.val23.i73, %.val22.i72, !dbg !285377
  %.not2.i.i.i.not.i.i = or i1 %i.kk, %i.km, !dbg !285378 ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -8, !dbg !285379
  %.sroa.01.0.i.i74 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.kn, !dbg !285380
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i74, i64 %.sroa.27.130.i70, !dbg !285381
  %i.kp = load i64, ptr %.sroa.9.131.i69, align 4, !dbg !285382, !alias.scope !285042, !noalias !285048
  store i64 %i.kp, ptr %i.ko, align 4, !dbg !285382, !alias.scope !285043, !noalias !285049
  %i.kq = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !285383
  %i.kr = add i64 %.sroa.27.130.i70, %i.kq, !dbg !285384 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 8, !dbg !285385
  %i.kt = getelementptr i8, ptr %.sroa.9.131.i69, i64 12, !dbg !285386
  %.val20.i75 = load float, ptr %i.kt, align 4, !dbg !285386, !alias.scope !285046, !noalias !285047, !noundef !8787
  %i.ku = fcmp oge float %.val23.i73, %.val20.i75, !dbg !285387
  %.not2.i.i.i.not.i24.i = or i1 %i.kk, %i.ku, !dbg !285388 ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -16, !dbg !285389
  %.sroa.01.0.i25.i76 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.kv, !dbg !285390
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.kr, !dbg !285391
  %i.kx = load i64, ptr %i.ks, align 4, !dbg !285392, !alias.scope !285042, !noalias !285050
  store i64 %i.kx, ptr %i.kw, align 4, !dbg !285392, !alias.scope !285043, !noalias !285051
  %i.ky = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !285393
  %i.kz = add i64 %i.kr, %i.ky, !dbg !285394      ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 16, !dbg !285395
  %i.lb = getelementptr i8, ptr %.sroa.9.131.i69, i64 20, !dbg !285396
  %.val18.i77 = load float, ptr %i.lb, align 4, !dbg !285396, !alias.scope !285046, !noalias !285047, !noundef !8787
  %i.lc = fcmp oge float %.val23.i73, %.val18.i77, !dbg !285397
  %.not2.i.i.i.not.i26.i = or i1 %i.kk, %i.lc, !dbg !285398 ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -24, !dbg !285399
  %.sroa.01.0.i27.i78 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.ld, !dbg !285400
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i78, i64 %i.kz, !dbg !285401
  %i.lf = load i64, ptr %i.la, align 4, !dbg !285402, !alias.scope !285042, !noalias !285052
  store i64 %i.lf, ptr %i.le, align 4, !dbg !285402, !alias.scope !285043, !noalias !285053
  %i.lg = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !285403
  %i.lh = add i64 %i.kz, %i.lg, !dbg !285404      ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 24, !dbg !285405
  %i.lj = getelementptr i8, ptr %.sroa.9.131.i69, i64 28, !dbg !285406
  %.val16.i79 = load float, ptr %i.lj, align 4, !dbg !285406, !alias.scope !285046, !noalias !285047, !noundef !8787
  %i.lk = fcmp oge float %.val23.i73, %.val16.i79, !dbg !285407
  %.not2.i.i.i.not.i28.i = or i1 %i.kk, %i.lk, !dbg !285408 ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -32, !dbg !285409 ; 3 uses
  %.sroa.01.0.i29.i80 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.ll, !dbg !285410
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i80, i64 %i.lh, !dbg !285411
  %i.ln = load i64, ptr %i.li, align 4, !dbg !285412, !alias.scope !285042, !noalias !285054
  store i64 %i.ln, ptr %i.lm, align 4, !dbg !285412, !alias.scope !285043, !noalias !285055
  %i.lo = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !285413
  %i.lp = add i64 %i.lh, %i.lo, !dbg !285414      ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 32, !dbg !285415 ; 3 uses
  %i.lr = icmp ult ptr %i.lq, %i.ki, !dbg !285375
  br i1 %i.lr, label %.lr.ph.i68, label %._crit_edge.i49, !dbg !285375

._crit_edge.i49:                                  ; preds = %.lr.ph.i68, %bb.ad
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.ad ], [ %i.ll, %.lr.ph.i68 ], !dbg !285372 ; 4 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.ad ], [ %i.lp, %.lr.ph.i68 ], !dbg !285372 ; 5 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.ad ], [ %i.lq, %.lr.ph.i68 ], !dbg !285372 ; 7 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i48, !dbg !285416 ; 3 uses
  %i.lt = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.ls, !dbg !285417
  br i1 %i.lt, label %.lr.ph38.i61.preheader, label %._crit_edge39.i53, !dbg !285417

.lr.ph38.i61.preheader:                           ; preds = %._crit_edge.i49
  %.val15.i66 = load float, ptr %i.kf, align 4, !alias.scope !285044, !noalias !285045, !noundef !8787 ; 2 uses
  %i.lu = fcmp uno float %.val15.i66, 0.000000e+00
  br i1 %i.lu, label %.lr.ph38.i61.us.preheader, label %.lr.ph38.i61

.lr.ph38.i61.us.preheader:                        ; preds = %.lr.ph38.i61.preheader
  %i.lv = shl i64 %.sroa.0.0.i48, 3, !dbg !285417
  %7 = add i64 %i.lv, %i.e, !dbg !285417
  %i.lw = ptrtoaddr ptr %.sroa.9.1.lcssa.i52 to i64, !dbg !285417 ; 2 uses
  %i.lx = add i64 %i.lw, 8, !dbg !285417
  %8 = call i64 @llvm.umax.i64(i64 %7, i64 %i.lx), !dbg !285417
  %i.ly = xor i64 %i.lw, -1, !dbg !285417
  %i.lz = add i64 %8, %i.ly, !dbg !285417         ; 2 uses
  %i.ma = lshr i64 %i.lz, 3, !dbg !285417
  %i.mb = add nuw nsw i64 %i.ma, 1, !dbg !285417  ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.lz, 24, !dbg !285417
  br i1 %min.iters.check340, label %.lr.ph38.i61.us.preheader372, label %vector.ph341, !dbg !285417

vector.ph341:                                     ; preds = %.lr.ph38.i61.us.preheader
  %n.vec342 = and i64 %i.mb, 4611686018427387900  ; 5 uses
  %i.mc = shl i64 %n.vec342, 3
  %i.md = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.mc ; 2 uses
  %i.me = add i64 %.sroa.27.1.lcssa.i51, %n.vec342 ; 2 uses
  %i.mf = mul i64 %n.vec342, -8
  %i.mg = getelementptr i8, ptr %.sroa.43.1.lcssa.i50, i64 %i.mf ; 2 uses
  %i.mh = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i51
  br label %vector.body343, !dbg !285417

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next347, %vector.body343 ] ; 3 uses
  %i.mi = shl i64 %index344, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.mi ; 2 uses
  %i.mj = getelementptr [8 x i8], ptr %i.mh, i64 %index344, !dbg !285418 ; 2 uses
  %i.mk = getelementptr i8, ptr %next.gep, i64 16, !dbg !285419
  %wide.load345 = load <2 x i64>, ptr %next.gep, align 4, !dbg !285419, !alias.scope !285042, !noalias !285056
  %wide.load346 = load <2 x i64>, ptr %i.mk, align 4, !dbg !285419, !alias.scope !285042, !noalias !285056
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 16, !dbg !285419
  store <2 x i64> %wide.load345, ptr %i.mj, align 4, !dbg !285419, !alias.scope !285043, !noalias !285057
  store <2 x i64> %wide.load346, ptr %i.ml, align 4, !dbg !285419, !alias.scope !285043, !noalias !285057
  %index.next347 = add nuw i64 %index344, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next347, %n.vec342, !dbg !285417
  br i1 %i.mm, label %middle.block348, label %vector.body343, !dbg !285417, !llvm.loop !284944

middle.block348:                                  ; preds = %vector.body343
  %cmp.n349 = icmp eq i64 %i.mb, %n.vec342, !dbg !285417
  br i1 %cmp.n349, label %._crit_edge39.i53, label %.lr.ph38.i61.us.preheader372, !dbg !285417

.lr.ph38.i61.us.preheader372:                     ; preds = %.lr.ph38.i61.us.preheader, %middle.block348
  %.sroa.9.236.i62.us.ph = phi ptr [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.us.preheader ], [ %i.md, %middle.block348 ]
  %.sroa.27.235.i63.us.ph = phi i64 [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.us.preheader ], [ %i.me, %middle.block348 ]
  %.sroa.43.234.i64.us.ph = phi ptr [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.us.preheader ], [ %i.mg, %middle.block348 ]
  br label %.lr.ph38.i61.us, !dbg !285417

.lr.ph38.i61.us:                                  ; preds = %.lr.ph38.i61.us.preheader372, %.lr.ph38.i61.us
  %.sroa.9.236.i62.us = phi ptr [ %i.mr, %.lr.ph38.i61.us ], [ %.sroa.9.236.i62.us.ph, %.lr.ph38.i61.us.preheader372 ] ; 2 uses
  %.sroa.27.235.i63.us = phi i64 [ %i.mq, %.lr.ph38.i61.us ], [ %.sroa.27.235.i63.us.ph, %.lr.ph38.i61.us.preheader372 ] ; 2 uses
  %.sroa.43.234.i64.us = phi ptr [ %i.mn, %.lr.ph38.i61.us ], [ %.sroa.43.234.i64.us.ph, %.lr.ph38.i61.us.preheader372 ]
  %i.mn = getelementptr inbounds i8, ptr %.sroa.43.234.i64.us, i64 -8, !dbg !285420 ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.235.i63.us, !dbg !285418
  %i.mp = load i64, ptr %.sroa.9.236.i62.us, align 4, !dbg !285419, !alias.scope !285042, !noalias !285056
  store i64 %i.mp, ptr %i.mo, align 4, !dbg !285419, !alias.scope !285043, !noalias !285057
  %i.mq = add i64 %.sroa.27.235.i63.us, 1, !dbg !285421 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62.us, i64 8, !dbg !285422 ; 3 uses
  %i.ms = icmp ult ptr %i.mr, %i.ls, !dbg !285417
  br i1 %i.ms, label %.lr.ph38.i61.us, label %._crit_edge39.i53, !dbg !285417, !llvm.loop !284947

._crit_edge39.i53:                                ; preds = %.lr.ph38.i61, %.lr.ph38.i61.us, %middle.block348, %._crit_edge.i49
  %.sroa.43.2.lcssa.i54 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.mn, %.lr.ph38.i61.us ], [ %i.mg, %middle.block348 ], [ %i.mw, %.lr.ph38.i61 ], !dbg !285372
  %.sroa.27.2.lcssa.i55 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.mq, %.lr.ph38.i61.us ], [ %i.me, %middle.block348 ], [ %i.na, %.lr.ph38.i61 ], !dbg !285372 ; 9 uses
  %.sroa.9.2.lcssa.i56 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.mr, %.lr.ph38.i61.us ], [ %i.md, %middle.block348 ], [ %i.nb, %.lr.ph38.i61 ], !dbg !285372 ; 2 uses
  %i.mt = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0122315, !dbg !285423
  br i1 %i.mt, label %bb.af, label %bb.ae, !dbg !285423

.lr.ph38.i61:                                     ; preds = %.lr.ph38.i61.preheader, %.lr.ph38.i61
  %.sroa.9.236.i62 = phi ptr [ %i.nb, %.lr.ph38.i61 ], [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.preheader ] ; 3 uses
  %.sroa.27.235.i63 = phi i64 [ %i.na, %.lr.ph38.i61 ], [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.43.234.i64 = phi ptr [ %i.mw, %.lr.ph38.i61 ], [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.preheader ]
  %i.mu = getelementptr i8, ptr %.sroa.9.236.i62, i64 4, !dbg !285424
  %.val.i65 = load float, ptr %i.mu, align 4, !dbg !285424, !alias.scope !285046, !noalias !285047, !noundef !8787
  %i.mv = fcmp oge float %.val15.i66, %.val.i65, !dbg !285425 ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %.sroa.43.234.i64, i64 -8, !dbg !285420 ; 3 uses
  %spec.select = select i1 %i.mv, ptr %2, ptr %i.mw, !dbg !285426
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.27.235.i63, !dbg !285418
  %i.my = load i64, ptr %.sroa.9.236.i62, align 4, !dbg !285419, !alias.scope !285042, !noalias !285056
  store i64 %i.my, ptr %i.mx, align 4, !dbg !285419, !alias.scope !285043, !noalias !285057
  %i.mz = zext i1 %i.mv to i64, !dbg !285427
  %i.na = add i64 %.sroa.27.235.i63, %i.mz, !dbg !285421 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62, i64 8, !dbg !285422 ; 3 uses
  %i.nc = icmp ult ptr %i.nb, %i.ls, !dbg !285417
  br i1 %i.nc, label %.lr.ph38.i61, label %._crit_edge39.i53, !dbg !285417

bb.ae:                                            ; preds = %._crit_edge39.i53
  %i.nd = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i54, i64 -8, !dbg !285428
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i55, !dbg !285429
  %i.nf = load i64, ptr %.sroa.9.2.lcssa.i56, align 4, !dbg !285430, !alias.scope !285042, !noalias !285058
  store i64 %i.nf, ptr %i.ne, align 4, !dbg !285430, !alias.scope !285043, !noalias !285059
  %i.ng = add i64 %.sroa.27.2.lcssa.i55, 1, !dbg !285431
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i56, i64 8, !dbg !285432
  br label %bb.ad, !dbg !285370

bb.af:                                            ; preds = %._crit_edge39.i53
  %i.ni = shl i64 %.sroa.27.2.lcssa.i55, 3, !dbg !285433
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.ni, i1 false), !dbg !285433, !alias.scope !285060
  %i.nj = sub i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i55, !dbg !285434 ; 7 uses
  %.not47.i57 = icmp eq i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i55, !dbg !285435
  br i1 %.not47.i57, label %.outer._crit_edge.thread, label %.lr.ph45.i58, !dbg !285436

.lr.ph45.i58:                                     ; preds = %bb.af
  %i.nk = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55 ; 2 uses
  %min.iters.check = icmp ult i64 %i.nj, 4, !dbg !285436
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !285436

vector.ph:                                        ; preds = %.lr.ph45.i58
  %n.vec = and i64 %i.nj, -4                      ; 3 uses
  br label %vector.body, !dbg !285436

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !285437 ; 3 uses
  %i.nl = xor i64 %index, -1, !dbg !285438
  %i.nm = getelementptr [8 x i8], ptr %i.kg, i64 %i.nl, !dbg !285439 ; 2 uses
  %i.nn = getelementptr [8 x i8], ptr %i.nk, i64 %index, !dbg !285440 ; 2 uses
  %i.no = getelementptr i8, ptr %i.nm, i64 -8, !dbg !285441
  %i.np = getelementptr i8, ptr %i.nm, i64 -24, !dbg !285441
  %wide.load = load <2 x i64>, ptr %i.no, align 4, !dbg !285441, !alias.scope !285043, !noalias !285042
  %wide.load337 = load <2 x i64>, ptr %i.np, align 4, !dbg !285441, !alias.scope !285043, !noalias !285042
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !285441
  %reverse338 = shufflevector <2 x i64> %wide.load337, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !285441
  %i.nq = getelementptr i8, ptr %i.nn, i64 16, !dbg !285441
  store <2 x i64> %reverse, ptr %i.nn, align 4, !dbg !285441, !alias.scope !285042, !noalias !285043
  store <2 x i64> %reverse338, ptr %i.nq, align 4, !dbg !285441, !alias.scope !285042, !noalias !285043
  %index.next = add nuw i64 %index, 4, !dbg !285437 ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec, !dbg !285436
  br i1 %i.nr, label %middle.block, label %vector.body, !dbg !285436, !llvm.loop !284982

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nj, %n.vec, !dbg !285436
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit, label %scalar.ph.preheader, !dbg !285436

scalar.ph.preheader:                              ; preds = %.lr.ph45.i58, %middle.block
  %.sroa.07.043.i59.ph = phi i64 [ 0, %.lr.ph45.i58 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !285436

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i59 = phi i64 [ %i.ns, %scalar.ph ], [ %.sroa.07.043.i59.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ns = add nuw i64 %.sroa.07.043.i59, 1, !dbg !285437 ; 2 uses
  %i.nt = xor i64 %.sroa.07.043.i59, -1, !dbg !285438
  %i.nu = getelementptr [8 x i8], ptr %i.kg, i64 %i.nt, !dbg !285439
  %i.nv = getelementptr [8 x i8], ptr %i.nk, i64 %.sroa.07.043.i59, !dbg !285440
  %i.nw = load i64, ptr %i.nu, align 4, !dbg !285441, !alias.scope !285043, !noalias !285042
  store i64 %i.nw, ptr %i.nv, align 4, !dbg !285441, !alias.scope !285042, !noalias !285043
  %exitcond.not.i60 = icmp eq i64 %i.ns, %i.nj, !dbg !285435
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit, label %scalar.ph, !dbg !285436, !llvm.loop !284983

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit: ; preds = %scalar.ph, %middle.block
  %i.nx = icmp ugt i64 %.sroa.27.2.lcssa.i55, %.sroa.16.0122315, !dbg !285442
  br i1 %i.nx, label %bb.ag, label %.outer, !dbg !285442, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !285366
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmfENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0EB2u_.exit, !dbg !285068

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55, !dbg !285443 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !285366
  %i.nz = icmp ult i64 %i.nj, 33, !dbg !285065
  br i1 %i.nz, label %.outer._crit_edge, label %.lr.ph, !dbg !285065

bb.ag:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i55, i64 noundef %.sroa.16.0122315, i64 noundef %.sroa.16.0122315, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !285444
  unreachable, !dbg !285444
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmhENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB15_NCINvNtB1Z_8arg_sort9sort_implhE0Es_0E0EB25_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !285445 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !285972
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !285972

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph, !dbg !285972

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph129 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.ly, %.outer ] ; 22 uses
  %.sroa.16.0.ph128 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.lj, %.outer ] ; 2 uses
  %.sroa.025.0.ph127 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.fr, %.outer ] ; 2 uses
  %.sroa.028.0.ph126 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph129, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph129 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph126, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph126, i64 4
  %i.g = icmp eq i32 %.sroa.025.0.ph127, 0, !dbg !285973
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph300, !dbg !285973

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.h = icmp eq i32 %i.fr, 0, !dbg !285973
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph300, !dbg !285973

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph129, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %0, %bb.a ], [ %i.ly, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %1, %bb.a ], [ %i.lj, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285897), !dbg !285974
  call void @llvm.experimental.noalias.scope.decl(metadata !285898), !dbg !285974
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !285975
  br i1 %i.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmhENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB1s_NCINvNtB2m_8arg_sort9sort_implhE0Es_0E0EB2s_.exit, label %bb.c, !dbg !285975

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !285976
  %i.k = icmp samesign ult i64 %3, %i.j, !dbg !285977
  br i1 %i.k, label %bb.e, label %bb.d, !dbg !285977

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  br i1 %i.gu, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !302071

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gy, %.lr.ph38.i ], !dbg !302022
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hb, %.lr.ph38.i ], !dbg !302022 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hc, %.lr.ph38.i ], !dbg !302022 ; 2 uses
  %i.gv = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0122313, !dbg !302072
  br i1 %i.gv, label %bb.y, label %bb.x, !dbg !302072

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hc, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.hb, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gy, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load double, ptr %.sroa.9.236.i, align 8, !dbg !302073, !alias.scope !301765, !noalias !301766, !noundef !8787 ; 3 uses
  %i.gw = fcmp ord double %.val.i, 0.000000e+00, !dbg !302074
  %i.gx = fcmp ult double %.val.i, %i.fj, !dbg !302075
  %.not2.i.i.i30.i = and i1 %i.gw, %i.gx, !dbg !302076 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !302077 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.gy, !dbg !302078
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !302079
  store double %.val.i, ptr %i.gz, align 8, !dbg !302080, !alias.scope !301764, !noalias !301771
  %i.ha = zext i1 %.not2.i.i.i30.i to i64, !dbg !302081
  %i.hb = add i64 %.sroa.27.235.i, %i.ha, !dbg !302082 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !302083 ; 3 uses
  %i.hd = icmp ult ptr %i.hc, %i.gt, !dbg !302071
  br i1 %i.hd, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !302071

bb.x:                                             ; preds = %._crit_edge39.i
  %i.he = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !302084 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.27.2.lcssa.i, !dbg !302085
  %i.hg = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !dbg !302086, !alias.scope !301763, !noalias !301772
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !302086, !alias.scope !301764, !noalias !301773
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !302087
  br label %bb.w, !dbg !302020

bb.y:                                             ; preds = %._crit_edge39.i
  %i.hi = shl i64 %.sroa.27.2.lcssa.i, 3, !dbg !302088
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph131, ptr nonnull align 8 %2, i64 %i.hi, i1 false), !dbg !302088, !alias.scope !301774
  %i.hj = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !302089 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !302090
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !302091

.lr.ph45.i:                                       ; preds = %bb.y
  %i.hk = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.hj, 4, !dbg !302091
  br i1 %min.iters.check346, label %scalar.ph345.preheader, label %vector.ph347, !dbg !302091

vector.ph347:                                     ; preds = %.lr.ph45.i
  %n.vec348 = and i64 %i.hj, -4                   ; 3 uses
  br label %vector.body349, !dbg !302091

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next355, %vector.body349 ], !dbg !302092 ; 3 uses
  %i.hl = xor i64 %index350, -1, !dbg !302093
  %i.hm = getelementptr [8 x i8], ptr %i.fm, i64 %i.hl, !dbg !302094 ; 2 uses
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %index350, !dbg !302095 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hm, i64 -8, !dbg !302096
  %i.hp = getelementptr i8, ptr %i.hm, i64 -24, !dbg !302096
  %wide.load351 = load <2 x i64>, ptr %i.ho, align 8, !dbg !302096, !alias.scope !301764, !noalias !301763
  %wide.load352 = load <2 x i64>, ptr %i.hp, align 8, !dbg !302096, !alias.scope !301764, !noalias !301763
  %reverse353 = shufflevector <2 x i64> %wide.load351, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !302096
  %reverse354 = shufflevector <2 x i64> %wide.load352, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !302096
  %i.hq = getelementptr i8, ptr %i.hn, i64 16, !dbg !302096
  store <2 x i64> %reverse353, ptr %i.hn, align 8, !dbg !302096, !alias.scope !301763, !noalias !301764
  store <2 x i64> %reverse354, ptr %i.hq, align 8, !dbg !302096, !alias.scope !301763, !noalias !301764
  %index.next355 = add nuw i64 %index350, 4, !dbg !302092 ; 2 uses
  %i.hr = icmp eq i64 %index.next355, %n.vec348, !dbg !302091
  br i1 %i.hr, label %middle.block356, label %vector.body349, !dbg !302091, !llvm.loop !301578

middle.block356:                                  ; preds = %vector.body349
  %cmp.n357 = icmp eq i64 %i.hj, %n.vec348, !dbg !302091
  br i1 %cmp.n357, label %.loopexit, label %scalar.ph345.preheader, !dbg !302091

scalar.ph345.preheader:                           ; preds = %.lr.ph45.i, %middle.block356
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec348, %middle.block356 ]
  br label %scalar.ph345, !dbg !302091

scalar.ph345:                                     ; preds = %scalar.ph345.preheader, %scalar.ph345
  %.sroa.07.043.i = phi i64 [ %i.hs, %scalar.ph345 ], [ %.sroa.07.043.i.ph, %scalar.ph345.preheader ] ; 3 uses
  %i.hs = add nuw i64 %.sroa.07.043.i, 1, !dbg !302092 ; 2 uses
  %i.ht = xor i64 %.sroa.07.043.i, -1, !dbg !302093
  %i.hu = getelementptr [8 x i8], ptr %i.fm, i64 %i.ht, !dbg !302094
  %i.hv = getelementptr [8 x i8], ptr %i.hk, i64 %.sroa.07.043.i, !dbg !302095
  %i.hw = load i64, ptr %i.hu, align 8, !dbg !302096, !alias.scope !301764, !noalias !301763
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !302096, !alias.scope !301763, !noalias !301764
  %exitcond.not.i39 = icmp eq i64 %i.hs, %i.hj, !dbg !302090
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph345, !dbg !302091, !llvm.loop !301579

.loopexit:                                        ; preds = %scalar.ph345, %middle.block356, %bb.y
  %i.hx = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !302097
  br i1 %i.hx, label %.thread, label %bb.z, !dbg !302098

bb.z:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0122313, !dbg !302099
  br i1 %.not.i42, label %bb.aa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !302099, !prof !8988

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #57, !dbg !302100, !noalias !301776
  unreachable, !dbg !302100

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.z
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i, !dbg !302101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph131) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %i.hy, i64 noundef %i.hj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #54, !dbg !302102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !302103
  %i.hz = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !301795
  br i1 %i.hz, label %.outer._crit_edge, label %bb.b, !dbg !301795

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %i.fg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301777), !dbg !302104
  call void @llvm.experimental.noalias.scope.decl(metadata !301778), !dbg !302104
  %.not85 = icmp samesign ult i64 %3, %.sroa.16.0122313, !dbg !302105
  br i1 %.not85, label %bb.ac, label %bb.ab, !dbg !302105, !prof !9308

bb.ab:                                            ; preds = %.thread
  %i.ib = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0122313, !dbg !302106 ; 3 uses
  br label %bb.ad, !dbg !302107

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !302108
  unreachable, !dbg !302108

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i45 = phi ptr [ %i.ib, %bb.ab ], [ %i.kn, %bb.af ], !dbg !302109 ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.ab ], [ %i.kq, %bb.af ], !dbg !302109 ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph131, %bb.ab ], [ %i.kr, %bb.af ], !dbg !302109 ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i37, %bb.ab ], [ %.sroa.16.0122313, %bb.af ] ; 4 uses
  %i.ic = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3), !dbg !302110
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %i.ic, !dbg !302111 ; 2 uses
  %i.ie = icmp ult ptr %.sroa.9.0.i47, %i.id, !dbg !302112
  br i1 %i.ie, label %.lr.ph.i68, label %._crit_edge.i49, !dbg !302112

.lr.ph.i68:                                       ; preds = %bb.ad
  %.val23.i69 = load double, ptr %i.ia, align 8, !alias.scope !301779, !noalias !301780, !noundef !8787 ; 5 uses
  %i.if = fcmp uno double %.val23.i69, 0.000000e+00 ; 4 uses
  br label %bb.ae, !dbg !302112

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i47, %.lr.ph.i68 ], [ %i.jd, %bb.ae ] ; 5 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i46, %.lr.ph.i68 ], [ %i.jc, %bb.ae ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i45, %.lr.ph.i68 ], [ %i.iz, %bb.ae ] ; 4 uses
  %.val22.i73 = load double, ptr %.sroa.9.131.i70, align 8, !dbg !302113, !alias.scope !301781, !noalias !301782, !noundef !8787 ; 2 uses
  %i.ig = fcmp oge double %.val23.i69, %.val22.i73, !dbg !302114
  %.not2.i.i.i.not.i.i = or i1 %i.if, %i.ig, !dbg !302115 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8, !dbg !302116
  %.sroa.01.0.i.i74 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.ih, !dbg !302117
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i74, i64 %.sroa.27.130.i71, !dbg !302118
  store double %.val22.i73, ptr %i.ii, align 8, !dbg !302119, !alias.scope !301778, !noalias !301783
  %i.ij = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !302120
  %i.ik = add i64 %.sroa.27.130.i71, %i.ij, !dbg !302121 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8, !dbg !302122
  %.val20.i75 = load double, ptr %i.il, align 8, !dbg !302123, !alias.scope !301781, !noalias !301782, !noundef !8787 ; 2 uses
  %i.im = fcmp oge double %.val23.i69, %.val20.i75, !dbg !302124
  %.not2.i.i.i.not.i24.i = or i1 %i.if, %i.im, !dbg !302125 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16, !dbg !302126
  %.sroa.01.0.i25.i76 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.in, !dbg !302127
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.ik, !dbg !302128
  store double %.val20.i75, ptr %i.io, align 8, !dbg !302129, !alias.scope !301778, !noalias !301784
  %i.ip = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !302130
  %i.iq = add i64 %i.ik, %i.ip, !dbg !302131      ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16, !dbg !302132
  %.val18.i77 = load double, ptr %i.ir, align 8, !dbg !302133, !alias.scope !301781, !noalias !301782, !noundef !8787 ; 2 uses
  %i.is = fcmp oge double %.val23.i69, %.val18.i77, !dbg !302134
  %.not2.i.i.i.not.i26.i = or i1 %i.if, %i.is, !dbg !302135 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -24, !dbg !302136
  %.sroa.01.0.i27.i78 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.it, !dbg !302137
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i78, i64 %i.iq, !dbg !302138
  store double %.val18.i77, ptr %i.iu, align 8, !dbg !302139, !alias.scope !301778, !noalias !301785
  %i.iv = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !302140
  %i.iw = add i64 %i.iq, %i.iv, !dbg !302141      ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 24, !dbg !302142
  %.val16.i79 = load double, ptr %i.ix, align 8, !dbg !302143, !alias.scope !301781, !noalias !301782, !noundef !8787 ; 2 uses
  %i.iy = fcmp oge double %.val23.i69, %.val16.i79, !dbg !302144
  %.not2.i.i.i.not.i28.i = or i1 %i.if, %i.iy, !dbg !302145 ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -32, !dbg !302146 ; 3 uses
  %.sroa.01.0.i29.i80 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.iz, !dbg !302147
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i80, i64 %i.iw, !dbg !302148
  store double %.val16.i79, ptr %i.ja, align 8, !dbg !302149, !alias.scope !301778, !noalias !301786
  %i.jb = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !302150
  %i.jc = add i64 %i.iw, %i.jb, !dbg !302151      ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 32, !dbg !302152 ; 3 uses
  %i.je = icmp ult ptr %i.jd, %i.id, !dbg !302112
  br i1 %i.je, label %bb.ae, label %._crit_edge.i49, !dbg !302112

._crit_edge.i49:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.ad ], [ %i.iz, %bb.ae ], !dbg !302109 ; 4 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.ad ], [ %i.jc, %bb.ae ], !dbg !302109 ; 5 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.ad ], [ %i.jd, %bb.ae ], !dbg !302109 ; 7 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i48, !dbg !302153 ; 3 uses
  %i.jg = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.jf, !dbg !302154
  br i1 %i.jg, label %.lr.ph38.i61.preheader, label %._crit_edge39.i53, !dbg !302154

.lr.ph38.i61.preheader:                           ; preds = %._crit_edge.i49
  %.val15.i66 = load double, ptr %i.ia, align 8, !alias.scope !301779, !noalias !301780, !noundef !8787 ; 2 uses
  %i.jh = fcmp uno double %.val15.i66, 0.000000e+00
  br i1 %i.jh, label %.lr.ph38.i61.us.preheader, label %.lr.ph38.i61

.lr.ph38.i61.us.preheader:                        ; preds = %.lr.ph38.i61.preheader
  %i.ji = shl i64 %.sroa.0.0.i48, 3, !dbg !302154
  %7 = add i64 %i.ji, %i.c, !dbg !302154
  %i.jj = ptrtoaddr ptr %.sroa.9.1.lcssa.i52 to i64, !dbg !302154 ; 2 uses
  %i.jk = add i64 %i.jj, 8, !dbg !302154
  %8 = call i64 @llvm.umax.i64(i64 %7, i64 %i.jk), !dbg !302154
  %i.jl = xor i64 %i.jj, -1, !dbg !302154
  %i.jm = add i64 %8, %i.jl, !dbg !302154         ; 2 uses
  %i.jn = lshr i64 %i.jm, 3, !dbg !302154
  %i.jo = add nuw nsw i64 %i.jn, 1, !dbg !302154  ; 2 uses
  %min.iters.check332 = icmp ult i64 %i.jm, 24, !dbg !302154
  br i1 %min.iters.check332, label %.lr.ph38.i61.us.preheader364, label %vector.ph333, !dbg !302154

vector.ph333:                                     ; preds = %.lr.ph38.i61.us.preheader
  %n.vec334 = and i64 %i.jo, 4611686018427387900  ; 5 uses
  %i.jp = shl i64 %n.vec334, 3
  %i.jq = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.jp ; 2 uses
  %i.jr = add i64 %.sroa.27.1.lcssa.i51, %n.vec334 ; 2 uses
  %i.js = mul i64 %n.vec334, -8
  %i.jt = getelementptr i8, ptr %.sroa.43.1.lcssa.i50, i64 %i.js ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i51
  br label %vector.body335, !dbg !302154

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.jv = shl i64 %index336, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.jv ; 2 uses
  %i.jw = getelementptr i8, ptr %next.gep, i64 16, !dbg !302155
  %wide.load337 = load <2 x double>, ptr %next.gep, align 8, !dbg !302155, !alias.scope !301781, !noalias !301782
  %wide.load338 = load <2 x double>, ptr %i.jw, align 8, !dbg !302155, !alias.scope !301781, !noalias !301782
  %i.jx = getelementptr [8 x i8], ptr %i.ju, i64 %index336, !dbg !302156 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16, !dbg !302157
  store <2 x double> %wide.load337, ptr %i.jx, align 8, !dbg !302157, !alias.scope !301778, !noalias !301787
  store <2 x double> %wide.load338, ptr %i.jy, align 8, !dbg !302157, !alias.scope !301778, !noalias !301787
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next339, %n.vec334, !dbg !302154
  br i1 %i.jz, label %middle.block340, label %vector.body335, !dbg !302154, !llvm.loop !301686

middle.block340:                                  ; preds = %vector.body335
  %cmp.n341 = icmp eq i64 %i.jo, %n.vec334, !dbg !302154
  br i1 %cmp.n341, label %._crit_edge39.i53, label %.lr.ph38.i61.us.preheader364, !dbg !302154

.lr.ph38.i61.us.preheader364:                     ; preds = %.lr.ph38.i61.us.preheader, %middle.block340
  %.sroa.9.236.i62.us.ph = phi ptr [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.us.preheader ], [ %i.jq, %middle.block340 ]
  %.sroa.27.235.i63.us.ph = phi i64 [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.us.preheader ], [ %i.jr, %middle.block340 ]
  %.sroa.43.234.i64.us.ph = phi ptr [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.us.preheader ], [ %i.jt, %middle.block340 ]
  br label %.lr.ph38.i61.us, !dbg !302154

.lr.ph38.i61.us:                                  ; preds = %.lr.ph38.i61.us.preheader364, %.lr.ph38.i61.us
  %.sroa.9.236.i62.us = phi ptr [ %i.kd, %.lr.ph38.i61.us ], [ %.sroa.9.236.i62.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.27.235.i63.us = phi i64 [ %i.kc, %.lr.ph38.i61.us ], [ %.sroa.27.235.i63.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.43.234.i64.us = phi ptr [ %i.ka, %.lr.ph38.i61.us ], [ %.sroa.43.234.i64.us.ph, %.lr.ph38.i61.us.preheader364 ]
  %.val.i65.us = load double, ptr %.sroa.9.236.i62.us, align 8, !dbg !302155, !alias.scope !301781, !noalias !301782, !noundef !8787
  %i.ka = getelementptr inbounds i8, ptr %.sroa.43.234.i64.us, i64 -8, !dbg !302158 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.235.i63.us, !dbg !302156
  store double %.val.i65.us, ptr %i.kb, align 8, !dbg !302157, !alias.scope !301778, !noalias !301787
  %i.kc = add i64 %.sroa.27.235.i63.us, 1, !dbg !302159 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62.us, i64 8, !dbg !302160 ; 3 uses
  %i.ke = icmp ult ptr %i.kd, %i.jf, !dbg !302154
  br i1 %i.ke, label %.lr.ph38.i61.us, label %._crit_edge39.i53, !dbg !302154, !llvm.loop !301689

._crit_edge39.i53:                                ; preds = %.lr.ph38.i61, %.lr.ph38.i61.us, %middle.block340, %._crit_edge.i49
  %.sroa.43.2.lcssa.i54 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.ka, %.lr.ph38.i61.us ], [ %i.jt, %middle.block340 ], [ %i.kh, %.lr.ph38.i61 ], !dbg !302109
  %.sroa.27.2.lcssa.i55 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.kc, %.lr.ph38.i61.us ], [ %i.jr, %middle.block340 ], [ %i.kk, %.lr.ph38.i61 ], !dbg !302109 ; 9 uses
  %.sroa.9.2.lcssa.i56 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.kd, %.lr.ph38.i61.us ], [ %i.jq, %middle.block340 ], [ %i.kl, %.lr.ph38.i61 ], !dbg !302109 ; 2 uses
  %i.kf = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0122313, !dbg !302161
  br i1 %i.kf, label %bb.ag, label %bb.af, !dbg !302161

.lr.ph38.i61:                                     ; preds = %.lr.ph38.i61.preheader, %.lr.ph38.i61
  %.sroa.9.236.i62 = phi ptr [ %i.kl, %.lr.ph38.i61 ], [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.27.235.i63 = phi i64 [ %i.kk, %.lr.ph38.i61 ], [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.43.234.i64 = phi ptr [ %i.kh, %.lr.ph38.i61 ], [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.preheader ]
  %.val.i65 = load double, ptr %.sroa.9.236.i62, align 8, !dbg !302155, !alias.scope !301781, !noalias !301782, !noundef !8787 ; 2 uses
  %i.kg = fcmp oge double %.val15.i66, %.val.i65, !dbg !302162 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.sroa.43.234.i64, i64 -8, !dbg !302158 ; 3 uses
  %spec.select = select i1 %i.kg, ptr %2, ptr %i.kh, !dbg !302163
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.27.235.i63, !dbg !302156
  store double %.val.i65, ptr %i.ki, align 8, !dbg !302157, !alias.scope !301778, !noalias !301787
  %i.kj = zext i1 %i.kg to i64, !dbg !302164
  %i.kk = add i64 %.sroa.27.235.i63, %i.kj, !dbg !302159 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62, i64 8, !dbg !302160 ; 3 uses
  %i.km = icmp ult ptr %i.kl, %i.jf, !dbg !302154
  br i1 %i.km, label %.lr.ph38.i61, label %._crit_edge39.i53, !dbg !302154

bb.af:                                            ; preds = %._crit_edge39.i53
  %i.kn = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i54, i64 -8, !dbg !302165
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i55, !dbg !302166
  %i.kp = load i64, ptr %.sroa.9.2.lcssa.i56, align 8, !dbg !302167, !alias.scope !301777, !noalias !301788
  store i64 %i.kp, ptr %i.ko, align 8, !dbg !302167, !alias.scope !301778, !noalias !301789
  %i.kq = add i64 %.sroa.27.2.lcssa.i55, 1, !dbg !302168
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i56, i64 8, !dbg !302169
  br label %bb.ad, !dbg !302107

bb.ag:                                            ; preds = %._crit_edge39.i53
  %i.ks = shl i64 %.sroa.27.2.lcssa.i55, 3, !dbg !302170
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph131, ptr nonnull align 8 %2, i64 %i.ks, i1 false), !dbg !302170, !alias.scope !301790
  %i.kt = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !302171 ; 7 uses
  %.not47.i57 = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !302172
  br i1 %.not47.i57, label %.outer._crit_edge.thread, label %.lr.ph45.i58, !dbg !302173

.lr.ph45.i58:                                     ; preds = %bb.ag
  %i.ku = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55 ; 2 uses
  %min.iters.check = icmp ult i64 %i.kt, 4, !dbg !302173
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !302173

vector.ph:                                        ; preds = %.lr.ph45.i58
  %n.vec = and i64 %i.kt, -4                      ; 3 uses
  br label %vector.body, !dbg !302173

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !302174 ; 3 uses
  %i.kv = xor i64 %index, -1, !dbg !302175
  %i.kw = getelementptr [8 x i8], ptr %i.ib, i64 %i.kv, !dbg !302176 ; 2 uses
  %i.kx = getelementptr [8 x i8], ptr %i.ku, i64 %index, !dbg !302177 ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kw, i64 -8, !dbg !302178
  %i.kz = getelementptr i8, ptr %i.kw, i64 -24, !dbg !302178
  %wide.load = load <2 x i64>, ptr %i.ky, align 8, !dbg !302178, !alias.scope !301778, !noalias !301777
  %wide.load329 = load <2 x i64>, ptr %i.kz, align 8, !dbg !302178, !alias.scope !301778, !noalias !301777
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !302178
  %reverse330 = shufflevector <2 x i64> %wide.load329, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !302178
  %i.la = getelementptr i8, ptr %i.kx, i64 16, !dbg !302178
  store <2 x i64> %reverse, ptr %i.kx, align 8, !dbg !302178, !alias.scope !301777, !noalias !301778
  store <2 x i64> %reverse330, ptr %i.la, align 8, !dbg !302178, !alias.scope !301777, !noalias !301778
  %index.next = add nuw i64 %index, 4, !dbg !302174 ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec, !dbg !302173
  br i1 %i.lb, label %middle.block, label %vector.body, !dbg !302173, !llvm.loop !301724

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kt, %n.vec, !dbg !302173
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !302173

scalar.ph.preheader:                              ; preds = %.lr.ph45.i58, %middle.block
  %.sroa.07.043.i59.ph = phi i64 [ 0, %.lr.ph45.i58 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !302173

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i59 = phi i64 [ %i.lc, %scalar.ph ], [ %.sroa.07.043.i59.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lc = add nuw i64 %.sroa.07.043.i59, 1, !dbg !302174 ; 2 uses
  %i.ld = xor i64 %.sroa.07.043.i59, -1, !dbg !302175
  %i.le = getelementptr [8 x i8], ptr %i.ib, i64 %i.ld, !dbg !302176
  %i.lf = getelementptr [8 x i8], ptr %i.ku, i64 %.sroa.07.043.i59, !dbg !302177
  %i.lg = load i64, ptr %i.le, align 8, !dbg !302178, !alias.scope !301778, !noalias !301777
  store i64 %i.lg, ptr %i.lf, align 8, !dbg !302178, !alias.scope !301777, !noalias !301778
  %exitcond.not.i60 = icmp eq i64 %i.lc, %i.kt, !dbg !302172
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !302173, !llvm.loop !301725

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block
  %i.lh = icmp ugt i64 %.sroa.27.2.lcssa.i55, %.sroa.16.0122313, !dbg !302179
  br i1 %i.lh, label %bb.ah, label %.outer, !dbg !302179, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !302103
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !301798

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55, !dbg !302180 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !302103
  %i.lj = icmp ult i64 %i.kt, 33, !dbg !301795
  br i1 %i.lj, label %.outer._crit_edge, label %.lr.ph, !dbg !301795

bb.ah:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i55, i64 noundef %.sroa.16.0122313, i64 noundef %.sroa.16.0122313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !302181
  unreachable, !dbg !302181
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !302182 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !302883
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !302883

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph131 = phi ptr [ %i.li, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph130 = phi i64 [ %i.kt, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph129 = phi i32 [ %i.es, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph128 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph131 to i64     ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0.ph128, null
  %i.d = icmp eq i32 %.sroa.025.0.ph129, 0, !dbg !302884
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph315, !dbg !302884

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.e = icmp eq i32 %i.es, 0, !dbg !302884
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph315, !dbg !302884

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph131, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %0, %bb.a ], [ %i.li, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %1, %bb.a ], [ %i.kt, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302820), !dbg !302885
  call void @llvm.experimental.noalias.scope.decl(metadata !302821), !dbg !302885
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !302886
  br i1 %i.f, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !302886

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !302887
  %i.h = icmp samesign ult i64 %3, %i.g, !dbg !302888
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !302888

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1, !dbg !302889 ; 12 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15, !dbg !302890
  br i1 %i.j, label %bb.g, label %bb.f, !dbg !302890

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap(), !dbg !302891
  unreachable, !dbg !302891

end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  br i1 %i.gu, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !303159

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gy, %.lr.ph38.i ], !dbg !303110
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hb, %.lr.ph38.i ], !dbg !303110 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hc, %.lr.ph38.i ], !dbg !303110 ; 2 uses
  %i.gv = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0122313, !dbg !303160
  br i1 %i.gv, label %bb.y, label %bb.x, !dbg !303160

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hc, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.hb, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gy, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load float, ptr %.sroa.9.236.i, align 4, !dbg !303161, !alias.scope !302853, !noalias !302854, !noundef !8787 ; 3 uses
  %i.gw = fcmp ord float %.val.i, 0.000000e+00, !dbg !303162
  %i.gx = fcmp ult float %.val.i, %i.fj, !dbg !303163
  %.not2.i.i.i30.i = and i1 %i.gw, %i.gx, !dbg !303164 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -4, !dbg !303165 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.gy, !dbg !303166
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !303167
  store float %.val.i, ptr %i.gz, align 4, !dbg !303168, !alias.scope !302852, !noalias !302859
  %i.ha = zext i1 %.not2.i.i.i30.i to i64, !dbg !303169
  %i.hb = add i64 %.sroa.27.235.i, %i.ha, !dbg !303170 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 4, !dbg !303171 ; 3 uses
  %i.hd = icmp ult ptr %i.hc, %i.gt, !dbg !303159
  br i1 %i.hd, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !303159

bb.x:                                             ; preds = %._crit_edge39.i
  %i.he = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -4, !dbg !303172 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.sroa.27.2.lcssa.i, !dbg !303173
  %i.hg = load i32, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !303174, !alias.scope !302851, !noalias !302860
  store i32 %i.hg, ptr %i.hf, align 4, !dbg !303174, !alias.scope !302852, !noalias !302861
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 4, !dbg !303175
  br label %bb.w, !dbg !303108

bb.y:                                             ; preds = %._crit_edge39.i
  %i.hi = shl i64 %.sroa.27.2.lcssa.i, 2, !dbg !303176
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.hi, i1 false), !dbg !303176, !alias.scope !302862
  %i.hj = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !303177 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !303178
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !303179

.lr.ph45.i:                                       ; preds = %bb.y
  %i.hk = getelementptr [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.hj, 8, !dbg !303179
  br i1 %min.iters.check346, label %scalar.ph345.preheader, label %vector.ph347, !dbg !303179

vector.ph347:                                     ; preds = %.lr.ph45.i
  %n.vec348 = and i64 %i.hj, -8                   ; 3 uses
  br label %vector.body349, !dbg !303179

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next355, %vector.body349 ], !dbg !303180 ; 3 uses
  %i.hl = xor i64 %index350, -1, !dbg !303181
  %i.hm = getelementptr [4 x i8], ptr %i.fm, i64 %i.hl, !dbg !303182 ; 2 uses
  %i.hn = getelementptr [4 x i8], ptr %i.hk, i64 %index350, !dbg !303183 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hm, i64 -12, !dbg !303184
  %i.hp = getelementptr i8, ptr %i.hm, i64 -28, !dbg !303184
  %wide.load351 = load <4 x i32>, ptr %i.ho, align 4, !dbg !303184, !alias.scope !302852, !noalias !302851
  %wide.load352 = load <4 x i32>, ptr %i.hp, align 4, !dbg !303184, !alias.scope !302852, !noalias !302851
  %reverse353 = shufflevector <4 x i32> %wide.load351, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !303184
  %reverse354 = shufflevector <4 x i32> %wide.load352, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !303184
  %i.hq = getelementptr i8, ptr %i.hn, i64 16, !dbg !303184
  store <4 x i32> %reverse353, ptr %i.hn, align 4, !dbg !303184, !alias.scope !302851, !noalias !302852
  store <4 x i32> %reverse354, ptr %i.hq, align 4, !dbg !303184, !alias.scope !302851, !noalias !302852
  %index.next355 = add nuw i64 %index350, 8, !dbg !303180 ; 2 uses
  %i.hr = icmp eq i64 %index.next355, %n.vec348, !dbg !303179
  br i1 %i.hr, label %middle.block356, label %vector.body349, !dbg !303179, !llvm.loop !302666

middle.block356:                                  ; preds = %vector.body349
  %cmp.n357 = icmp eq i64 %i.hj, %n.vec348, !dbg !303179
  br i1 %cmp.n357, label %.loopexit, label %scalar.ph345.preheader, !dbg !303179

scalar.ph345.preheader:                           ; preds = %.lr.ph45.i, %middle.block356
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec348, %middle.block356 ]
  br label %scalar.ph345, !dbg !303179

scalar.ph345:                                     ; preds = %scalar.ph345.preheader, %scalar.ph345
  %.sroa.07.043.i = phi i64 [ %i.hs, %scalar.ph345 ], [ %.sroa.07.043.i.ph, %scalar.ph345.preheader ] ; 3 uses
  %i.hs = add nuw i64 %.sroa.07.043.i, 1, !dbg !303180 ; 2 uses
  %i.ht = xor i64 %.sroa.07.043.i, -1, !dbg !303181
  %i.hu = getelementptr [4 x i8], ptr %i.fm, i64 %i.ht, !dbg !303182
  %i.hv = getelementptr [4 x i8], ptr %i.hk, i64 %.sroa.07.043.i, !dbg !303183
  %i.hw = load i32, ptr %i.hu, align 4, !dbg !303184, !alias.scope !302852, !noalias !302851
  store i32 %i.hw, ptr %i.hv, align 4, !dbg !303184, !alias.scope !302851, !noalias !302852
  %exitcond.not.i39 = icmp eq i64 %i.hs, %i.hj, !dbg !303178
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph345, !dbg !303179, !llvm.loop !302667

.loopexit:                                        ; preds = %scalar.ph345, %middle.block356, %bb.y
  %i.hx = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !303185
  br i1 %i.hx, label %.thread, label %bb.z, !dbg !303186

bb.z:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0122313, !dbg !303187
  br i1 %.not.i42, label %bb.aa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !303187, !prof !8988

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #57, !dbg !303188, !noalias !302864
  unreachable, !dbg !303188

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.z
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i, !dbg !303189
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph131) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %i.hy, i64 noundef %i.hj, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.es, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #54, !dbg !303190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !303191
  %i.hz = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !302883
  br i1 %i.hz, label %.outer._crit_edge, label %bb.b, !dbg !302883

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %i.fg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302865), !dbg !303192
  call void @llvm.experimental.noalias.scope.decl(metadata !302866), !dbg !303192
  %.not85 = icmp samesign ult i64 %3, %.sroa.16.0122313, !dbg !303193
  br i1 %.not85, label %bb.ac, label %bb.ab, !dbg !303193, !prof !9308

bb.ab:                                            ; preds = %.thread
  %i.ib = getelementptr [4 x i8], ptr %2, i64 %.sroa.16.0122313, !dbg !303194 ; 3 uses
  br label %bb.ad, !dbg !303195

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !303196
  unreachable, !dbg !303196

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i45 = phi ptr [ %i.ib, %bb.ab ], [ %i.kn, %bb.af ], !dbg !303197 ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.ab ], [ %i.kq, %bb.af ], !dbg !303197 ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph131, %bb.ab ], [ %i.kr, %bb.af ], !dbg !303197 ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i37, %bb.ab ], [ %.sroa.16.0122313, %bb.af ] ; 4 uses
  %i.ic = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3), !dbg !303198
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %i.ic, !dbg !303199 ; 2 uses
  %i.ie = icmp ult ptr %.sroa.9.0.i47, %i.id, !dbg !303200
  br i1 %i.ie, label %.lr.ph.i68, label %._crit_edge.i49, !dbg !303200

.lr.ph.i68:                                       ; preds = %bb.ad
  %.val23.i69 = load float, ptr %i.ia, align 4, !alias.scope !302867, !noalias !302868, !noundef !8787 ; 5 uses
  %i.if = fcmp uno float %.val23.i69, 0.000000e+00 ; 4 uses
  br label %bb.ae, !dbg !303200

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i47, %.lr.ph.i68 ], [ %i.jd, %bb.ae ] ; 5 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i46, %.lr.ph.i68 ], [ %i.jc, %bb.ae ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i45, %.lr.ph.i68 ], [ %i.iz, %bb.ae ] ; 4 uses
  %.val22.i73 = load float, ptr %.sroa.9.131.i70, align 4, !dbg !303201, !alias.scope !302869, !noalias !302870, !noundef !8787 ; 2 uses
  %i.ig = fcmp oge float %.val23.i69, %.val22.i73, !dbg !303202
  %.not2.i.i.i.not.i.i = or i1 %i.if, %i.ig, !dbg !303203 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -4, !dbg !303204
  %.sroa.01.0.i.i74 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.ih, !dbg !303205
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i.i74, i64 %.sroa.27.130.i71, !dbg !303206
  store float %.val22.i73, ptr %i.ii, align 4, !dbg !303207, !alias.scope !302866, !noalias !302871
  %i.ij = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !303208
  %i.ik = add i64 %.sroa.27.130.i71, %i.ij, !dbg !303209 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 4, !dbg !303210
  %.val20.i75 = load float, ptr %i.il, align 4, !dbg !303211, !alias.scope !302869, !noalias !302870, !noundef !8787 ; 2 uses
  %i.im = fcmp oge float %.val23.i69, %.val20.i75, !dbg !303212
  %.not2.i.i.i.not.i24.i = or i1 %i.if, %i.im, !dbg !303213 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8, !dbg !303214
  %.sroa.01.0.i25.i76 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.in, !dbg !303215
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.ik, !dbg !303216
  store float %.val20.i75, ptr %i.io, align 4, !dbg !303217, !alias.scope !302866, !noalias !302872
  %i.ip = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !303218
  %i.iq = add i64 %i.ik, %i.ip, !dbg !303219      ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8, !dbg !303220
  %.val18.i77 = load float, ptr %i.ir, align 4, !dbg !303221, !alias.scope !302869, !noalias !302870, !noundef !8787 ; 2 uses
  %i.is = fcmp oge float %.val23.i69, %.val18.i77, !dbg !303222
  %.not2.i.i.i.not.i26.i = or i1 %i.if, %i.is, !dbg !303223 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -12, !dbg !303224
  %.sroa.01.0.i27.i78 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.it, !dbg !303225
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i27.i78, i64 %i.iq, !dbg !303226
  store float %.val18.i77, ptr %i.iu, align 4, !dbg !303227, !alias.scope !302866, !noalias !302873
  %i.iv = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !303228
  %i.iw = add i64 %i.iq, %i.iv, !dbg !303229      ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 12, !dbg !303230
  %.val16.i79 = load float, ptr %i.ix, align 4, !dbg !303231, !alias.scope !302869, !noalias !302870, !noundef !8787 ; 2 uses
  %i.iy = fcmp oge float %.val23.i69, %.val16.i79, !dbg !303232
  %.not2.i.i.i.not.i28.i = or i1 %i.if, %i.iy, !dbg !303233 ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16, !dbg !303234 ; 3 uses
  %.sroa.01.0.i29.i80 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.iz, !dbg !303235
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i29.i80, i64 %i.iw, !dbg !303236
  store float %.val16.i79, ptr %i.ja, align 4, !dbg !303237, !alias.scope !302866, !noalias !302874
  %i.jb = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !303238
  %i.jc = add i64 %i.iw, %i.jb, !dbg !303239      ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16, !dbg !303240 ; 3 uses
  %i.je = icmp ult ptr %i.jd, %i.id, !dbg !303200
  br i1 %i.je, label %bb.ae, label %._crit_edge.i49, !dbg !303200

._crit_edge.i49:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.ad ], [ %i.iz, %bb.ae ], !dbg !303197 ; 4 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.ad ], [ %i.jc, %bb.ae ], !dbg !303197 ; 5 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.ad ], [ %i.jd, %bb.ae ], !dbg !303197 ; 7 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i48, !dbg !303241 ; 3 uses
  %i.jg = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.jf, !dbg !303242
  br i1 %i.jg, label %.lr.ph38.i61.preheader, label %._crit_edge39.i53, !dbg !303242

.lr.ph38.i61.preheader:                           ; preds = %._crit_edge.i49
  %.val15.i66 = load float, ptr %i.ia, align 4, !alias.scope !302867, !noalias !302868, !noundef !8787 ; 2 uses
  %i.jh = fcmp uno float %.val15.i66, 0.000000e+00
  br i1 %i.jh, label %.lr.ph38.i61.us.preheader, label %.lr.ph38.i61

.lr.ph38.i61.us.preheader:                        ; preds = %.lr.ph38.i61.preheader
  %i.ji = shl i64 %.sroa.0.0.i48, 2, !dbg !303242
  %7 = add i64 %i.ji, %i.c, !dbg !303242
  %i.jj = ptrtoaddr ptr %.sroa.9.1.lcssa.i52 to i64, !dbg !303242 ; 2 uses
  %i.jk = add i64 %i.jj, 4, !dbg !303242
  %8 = call i64 @llvm.umax.i64(i64 %7, i64 %i.jk), !dbg !303242
  %i.jl = xor i64 %i.jj, -1, !dbg !303242
  %i.jm = add i64 %8, %i.jl, !dbg !303242         ; 2 uses
  %i.jn = lshr i64 %i.jm, 2, !dbg !303242
  %i.jo = add nuw nsw i64 %i.jn, 1, !dbg !303242  ; 2 uses
  %min.iters.check332 = icmp ult i64 %i.jm, 28, !dbg !303242
  br i1 %min.iters.check332, label %.lr.ph38.i61.us.preheader364, label %vector.ph333, !dbg !303242

vector.ph333:                                     ; preds = %.lr.ph38.i61.us.preheader
  %n.vec334 = and i64 %i.jo, 9223372036854775800  ; 5 uses
  %i.jp = shl i64 %n.vec334, 2
  %i.jq = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.jp ; 2 uses
  %i.jr = add i64 %.sroa.27.1.lcssa.i51, %n.vec334 ; 2 uses
  %i.js = mul i64 %n.vec334, -4
  %i.jt = getelementptr i8, ptr %.sroa.43.1.lcssa.i50, i64 %i.js ; 2 uses
  %i.ju = getelementptr [4 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i51
  br label %vector.body335, !dbg !303242

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.jv = shl i64 %index336, 2
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.jv ; 2 uses
  %i.jw = getelementptr i8, ptr %next.gep, i64 16, !dbg !303243
  %wide.load337 = load <4 x float>, ptr %next.gep, align 4, !dbg !303243, !alias.scope !302869, !noalias !302870
  %wide.load338 = load <4 x float>, ptr %i.jw, align 4, !dbg !303243, !alias.scope !302869, !noalias !302870
  %i.jx = getelementptr [4 x i8], ptr %i.ju, i64 %index336, !dbg !303244 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16, !dbg !303245
  store <4 x float> %wide.load337, ptr %i.jx, align 4, !dbg !303245, !alias.scope !302866, !noalias !302875
  store <4 x float> %wide.load338, ptr %i.jy, align 4, !dbg !303245, !alias.scope !302866, !noalias !302875
  %index.next339 = add nuw i64 %index336, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next339, %n.vec334, !dbg !303242
  br i1 %i.jz, label %middle.block340, label %vector.body335, !dbg !303242, !llvm.loop !302774

middle.block340:                                  ; preds = %vector.body335
  %cmp.n341 = icmp eq i64 %i.jo, %n.vec334, !dbg !303242
  br i1 %cmp.n341, label %._crit_edge39.i53, label %.lr.ph38.i61.us.preheader364, !dbg !303242

.lr.ph38.i61.us.preheader364:                     ; preds = %.lr.ph38.i61.us.preheader, %middle.block340
  %.sroa.9.236.i62.us.ph = phi ptr [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.us.preheader ], [ %i.jq, %middle.block340 ]
  %.sroa.27.235.i63.us.ph = phi i64 [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.us.preheader ], [ %i.jr, %middle.block340 ]
  %.sroa.43.234.i64.us.ph = phi ptr [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.us.preheader ], [ %i.jt, %middle.block340 ]
  br label %.lr.ph38.i61.us, !dbg !303242

.lr.ph38.i61.us:                                  ; preds = %.lr.ph38.i61.us.preheader364, %.lr.ph38.i61.us
  %.sroa.9.236.i62.us = phi ptr [ %i.kd, %.lr.ph38.i61.us ], [ %.sroa.9.236.i62.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.27.235.i63.us = phi i64 [ %i.kc, %.lr.ph38.i61.us ], [ %.sroa.27.235.i63.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.43.234.i64.us = phi ptr [ %i.ka, %.lr.ph38.i61.us ], [ %.sroa.43.234.i64.us.ph, %.lr.ph38.i61.us.preheader364 ]
  %.val.i65.us = load float, ptr %.sroa.9.236.i62.us, align 4, !dbg !303243, !alias.scope !302869, !noalias !302870, !noundef !8787
  %i.ka = getelementptr inbounds i8, ptr %.sroa.43.234.i64.us, i64 -4, !dbg !303246 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.27.235.i63.us, !dbg !303244
  store float %.val.i65.us, ptr %i.kb, align 4, !dbg !303245, !alias.scope !302866, !noalias !302875
  %i.kc = add i64 %.sroa.27.235.i63.us, 1, !dbg !303247 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62.us, i64 4, !dbg !303248 ; 3 uses
  %i.ke = icmp ult ptr %i.kd, %i.jf, !dbg !303242
  br i1 %i.ke, label %.lr.ph38.i61.us, label %._crit_edge39.i53, !dbg !303242, !llvm.loop !302777

._crit_edge39.i53:                                ; preds = %.lr.ph38.i61, %.lr.ph38.i61.us, %middle.block340, %._crit_edge.i49
  %.sroa.43.2.lcssa.i54 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.ka, %.lr.ph38.i61.us ], [ %i.jt, %middle.block340 ], [ %i.kh, %.lr.ph38.i61 ], !dbg !303197
  %.sroa.27.2.lcssa.i55 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.kc, %.lr.ph38.i61.us ], [ %i.jr, %middle.block340 ], [ %i.kk, %.lr.ph38.i61 ], !dbg !303197 ; 9 uses
  %.sroa.9.2.lcssa.i56 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.kd, %.lr.ph38.i61.us ], [ %i.jq, %middle.block340 ], [ %i.kl, %.lr.ph38.i61 ], !dbg !303197 ; 2 uses
  %i.kf = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0122313, !dbg !303249
  br i1 %i.kf, label %bb.ag, label %bb.af, !dbg !303249

.lr.ph38.i61:                                     ; preds = %.lr.ph38.i61.preheader, %.lr.ph38.i61
  %.sroa.9.236.i62 = phi ptr [ %i.kl, %.lr.ph38.i61 ], [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.27.235.i63 = phi i64 [ %i.kk, %.lr.ph38.i61 ], [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.43.234.i64 = phi ptr [ %i.kh, %.lr.ph38.i61 ], [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.preheader ]
  %.val.i65 = load float, ptr %.sroa.9.236.i62, align 4, !dbg !303243, !alias.scope !302869, !noalias !302870, !noundef !8787 ; 2 uses
  %i.kg = fcmp oge float %.val15.i66, %.val.i65, !dbg !303250 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.sroa.43.234.i64, i64 -4, !dbg !303246 ; 3 uses
  %spec.select = select i1 %i.kg, ptr %2, ptr %i.kh, !dbg !303251
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %.sroa.27.235.i63, !dbg !303244
  store float %.val.i65, ptr %i.ki, align 4, !dbg !303245, !alias.scope !302866, !noalias !302875
  %i.kj = zext i1 %i.kg to i64, !dbg !303252
  %i.kk = add i64 %.sroa.27.235.i63, %i.kj, !dbg !303247 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62, i64 4, !dbg !303248 ; 3 uses
  %i.km = icmp ult ptr %i.kl, %i.jf, !dbg !303242
  br i1 %i.km, label %.lr.ph38.i61, label %._crit_edge39.i53, !dbg !303242

bb.af:                                            ; preds = %._crit_edge39.i53
  %i.kn = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i54, i64 -4, !dbg !303253
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i55, !dbg !303254
  %i.kp = load i32, ptr %.sroa.9.2.lcssa.i56, align 4, !dbg !303255, !alias.scope !302865, !noalias !302876
  store i32 %i.kp, ptr %i.ko, align 4, !dbg !303255, !alias.scope !302866, !noalias !302877
  %i.kq = add i64 %.sroa.27.2.lcssa.i55, 1, !dbg !303256
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i56, i64 4, !dbg !303257
  br label %bb.ad, !dbg !303195

bb.ag:                                            ; preds = %._crit_edge39.i53
  %i.ks = shl i64 %.sroa.27.2.lcssa.i55, 2, !dbg !303258
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.ks, i1 false), !dbg !303258, !alias.scope !302878
  %i.kt = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !303259 ; 7 uses
  %.not47.i57 = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !303260
  br i1 %.not47.i57, label %.outer._crit_edge.thread, label %.lr.ph45.i58, !dbg !303261

.lr.ph45.i58:                                     ; preds = %bb.ag
  %i.ku = getelementptr [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55 ; 2 uses
  %min.iters.check = icmp ult i64 %i.kt, 8, !dbg !303261
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !303261

vector.ph:                                        ; preds = %.lr.ph45.i58
  %n.vec = and i64 %i.kt, -8                      ; 3 uses
  br label %vector.body, !dbg !303261

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !303262 ; 3 uses
  %i.kv = xor i64 %index, -1, !dbg !303263
  %i.kw = getelementptr [4 x i8], ptr %i.ib, i64 %i.kv, !dbg !303264 ; 2 uses
  %i.kx = getelementptr [4 x i8], ptr %i.ku, i64 %index, !dbg !303265 ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kw, i64 -12, !dbg !303266
  %i.kz = getelementptr i8, ptr %i.kw, i64 -28, !dbg !303266
  %wide.load = load <4 x i32>, ptr %i.ky, align 4, !dbg !303266, !alias.scope !302866, !noalias !302865
  %wide.load329 = load <4 x i32>, ptr %i.kz, align 4, !dbg !303266, !alias.scope !302866, !noalias !302865
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !303266
  %reverse330 = shufflevector <4 x i32> %wide.load329, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !303266
  %i.la = getelementptr i8, ptr %i.kx, i64 16, !dbg !303266
  store <4 x i32> %reverse, ptr %i.kx, align 4, !dbg !303266, !alias.scope !302865, !noalias !302866
  store <4 x i32> %reverse330, ptr %i.la, align 4, !dbg !303266, !alias.scope !302865, !noalias !302866
  %index.next = add nuw i64 %index, 8, !dbg !303262 ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec, !dbg !303261
  br i1 %i.lb, label %middle.block, label %vector.body, !dbg !303261, !llvm.loop !302812

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kt, %n.vec, !dbg !303261
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !303261

scalar.ph.preheader:                              ; preds = %.lr.ph45.i58, %middle.block
  %.sroa.07.043.i59.ph = phi i64 [ 0, %.lr.ph45.i58 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !303261

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i59 = phi i64 [ %i.lc, %scalar.ph ], [ %.sroa.07.043.i59.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lc = add nuw i64 %.sroa.07.043.i59, 1, !dbg !303262 ; 2 uses
  %i.ld = xor i64 %.sroa.07.043.i59, -1, !dbg !303263
  %i.le = getelementptr [4 x i8], ptr %i.ib, i64 %i.ld, !dbg !303264
  %i.lf = getelementptr [4 x i8], ptr %i.ku, i64 %.sroa.07.043.i59, !dbg !303265
  %i.lg = load i32, ptr %i.le, align 4, !dbg !303266, !alias.scope !302866, !noalias !302865
  store i32 %i.lg, ptr %i.lf, align 4, !dbg !303266, !alias.scope !302865, !noalias !302866
  %exitcond.not.i60 = icmp eq i64 %i.lc, %i.kt, !dbg !303260
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !303261, !llvm.loop !302813

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block
  %i.lh = icmp ugt i64 %.sroa.27.2.lcssa.i55, %.sroa.16.0122313, !dbg !303267
  br i1 %i.lh, label %bb.ah, label %.outer, !dbg !303267, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !303191
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !302886

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55, !dbg !303268 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !303191
  %i.lj = icmp ult i64 %i.kt, 33, !dbg !302883
  br i1 %i.lj, label %.outer._crit_edge, label %.lr.ph, !dbg !302883

bb.ah:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i55, i64 noundef %.sroa.16.0122313, i64 noundef %.sroa.16.0122313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !303269
  unreachable, !dbg !303269
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksorthNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %4, ptr noalias noundef readonly captures(address) dereferenceable_or_null(1) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !303270 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !303803
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !303803

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph131 = phi ptr [ %i.lg, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph130 = phi i64 [ %i.kl, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph129 = phi i32 [ %i.ee, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph128 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph131 to i64     ; 7 uses
  %.not = icmp eq ptr %.sroa.028.0.ph128, null
  %i.d = icmp eq i32 %.sroa.025.0.ph129, 0, !dbg !303804
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph287.preheader, !dbg !303804

.lr.ph287.preheader:                              ; preds = %.lr.ph
  %i.e = add i64 %i.c, -1, !dbg !303805
  br label %.lr.ph287, !dbg !303806

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.f = icmp eq i32 %i.ee, 0, !dbg !303804
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph287, !dbg !303804

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.a
  %.sroa.0.0.ph.lcssa121 = phi ptr [ %.sroa.0.0.ph131, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %0, %bb.a ], [ %i.lg, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %1, %bb.a ], [ %i.kl, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303740), !dbg !303807
  call void @llvm.experimental.noalias.scope.decl(metadata !303741), !dbg !303807
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !303808
  br i1 %i.g, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchhNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !303808

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !303809
  %i.i = icmp samesign ult i64 %3, %i.h, !dbg !303810
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !303810

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1, !dbg !303811 ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15, !dbg !303812
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !303812

end_hunk_4
begin_hunk_5_@llvm.vector.reduce.or.v4i32
!226254 = distinct !DILocation(line: 60, column: 40, scope: !226253)
!226255 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226254)
!226256 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226255)
!226257 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226256)
!226258 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226257)
!226259 = distinct !DILocation(line: 364, column: 22, scope: !1895, inlinedAt: !226258)
!226260 = distinct !DILocation(line: 77, column: 16, scope: !1894, inlinedAt: !226259)
!226261 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226258)
!226262 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226261)
!226263 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226262)
!226264 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226263)
!226265 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226262)
!226266 = distinct !{!226266, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core"}
!226267 = distinct !{!226267, !226266, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core: argument 0"}
!226268 = distinct !DILexicalBlock(scope: !226252, file: !10028, line: 63, column: 9)
!226269 = distinct !{!226269, !226266, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core: argument 1"}
!226270 = distinct !DISubprogram(name: "stable_partition<polars_utils::float16::pf16, alloc::slice::{impl#0}::sort_by::{closure_env#0}<polars_utils::float16::pf16, fn(&polars_utils::float16::pf16, &polars_utils::float16::pf16) -> core::cmp::Ordering>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core", scope: !10030, file: !10028, line: 89, type: !8812, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226271 = distinct !DILexicalBlock(scope: !226270, file: !10028, line: 96, column: 5)
!226272 = distinct !DILocation(line: 65, column: 34, scope: !226268)
!226273 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils7float164pf163addCs1LHh8CLbVkQ_11polars_core", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226274 = distinct !DISubprogram(name: "new<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E3newCs1LHh8CLbVkQ_11polars_core", scope: !10034, file: !10028, line: 201, type: !8788, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226275 = distinct !DILexicalBlock(scope: !226271, file: !10028, line: 102, column: 5)
!226276 = distinct !DILexicalBlock(scope: !226275, file: !10028, line: 103, column: 5)
!226277 = distinct !DILexicalBlock(scope: !226276, file: !10028, line: 114, column: 9)
!226278 = distinct !DILocation(line: 115, column: 25, scope: !226277, inlinedAt: !226272)
!226279 = distinct !DILocation(line: 203, column: 88, scope: !226274, inlinedAt: !226278)
!226280 = distinct !DILexicalBlock(scope: !226277, file: !10028, line: 115, column: 9)
!226281 = distinct !DILexicalBlock(scope: !226280, file: !10028, line: 117, column: 9)
!226282 = distinct !DILexicalBlock(scope: !226281, file: !10028, line: 118, column: 9)
!226283 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj14saturating_sub", scope: !8928, file: !8926, line: 2398, type: !8788, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226284 = distinct !DILocation(line: 130, column: 58, scope: !226282, inlinedAt: !226272)
!226285 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtCs2mZqlW55729_12polars_utils7float164pf163addCs1LHh8CLbVkQ_11polars_core", scope: !8957, file: !8955, line: 829, type: !8788, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226286 = distinct !DILocation(line: 130, column: 41, scope: !226282, inlinedAt: !226272)
!226287 = distinct !DILexicalBlock(scope: !226282, file: !10028, line: 130, column: 17)
!226288 = distinct !{!226288, !"_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp"}
!226289 = distinct !{!226289, !226288, !"_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp: argument 0"}
!226290 = distinct !{!226290, !226288, !"_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp: argument 1"}
!226291 = distinct !DILocation(line: 132, column: 41, scope: !226287, inlinedAt: !226272)
!226292 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226291)
!226293 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226292)
!226294 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226293)
!226295 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226294)
!226296 = distinct !DILocation(line: 364, column: 22, scope: !1895, inlinedAt: !226295)
!226297 = distinct !DILocation(line: 77, column: 16, scope: !1894, inlinedAt: !226296)
!226298 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226295)
!226299 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226298)
!226300 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226299)
!226301 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226300)
!226302 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226299)
!226303 = distinct !DISubprogram(name: "sub<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils7float164pf163subCs1LHh8CLbVkQ_11polars_core", scope: !8798, file: !8796, line: 1033, type: !8788, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226304 = distinct !DISubprogram(name: "partition_one<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core", scope: !10034, file: !10028, line: 215, type: !8788, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226305 = distinct !DILocation(line: 132, column: 27, scope: !226287, inlinedAt: !226272)
!226306 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226305)
!226307 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils7float164pf163addCs1LHh8CLbVkQ_11polars_core", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226308 = distinct !DILexicalBlock(scope: !226304, file: !10028, line: 226, column: 13)
!226309 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226305)
!226310 = distinct !{!226310, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226311 = distinct !{!226311, !226310, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226312 = distinct !DISubprogram(name: "copy_nonoverlapping<polars_utils::float16::pf16>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core", scope: !8790, file: !8834, line: 531, type: !8788, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226313 = distinct !DILexicalBlock(scope: !226308, file: !10028, line: 227, column: 13)
!226314 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226305)
!226315 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtCs2mZqlW55729_12polars_utils7float164pf163addCs1LHh8CLbVkQ_11polars_core", scope: !8957, file: !8955, line: 829, type: !8788, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226316 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226305)
!226317 = distinct !DILocation(line: 133, column: 41, scope: !226287, inlinedAt: !226272)
!226318 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226317)
!226319 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226318)
!226320 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226319)
!226321 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226320)
!226322 = distinct !DILocation(line: 364, column: 22, scope: !1895, inlinedAt: !226321)
!226323 = distinct !DILocation(line: 77, column: 16, scope: !1894, inlinedAt: !226322)
!226324 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226321)
!226325 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226324)
!226326 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226325)
!226327 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226326)
!226328 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226325)
!226329 = distinct !DILocation(line: 133, column: 27, scope: !226287, inlinedAt: !226272)
!226330 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226329)
!226331 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226329)
!226332 = distinct !{!226332, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226333 = distinct !{!226333, !226332, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226334 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226329)
!226335 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226329)
!226336 = distinct !DILocation(line: 134, column: 41, scope: !226287, inlinedAt: !226272)
!226337 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226336)
!226338 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226337)
!226339 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226338)
!226340 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226339)
!226341 = distinct !DILocation(line: 364, column: 22, scope: !1895, inlinedAt: !226340)
!226342 = distinct !DILocation(line: 77, column: 16, scope: !1894, inlinedAt: !226341)
!226343 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226340)
!226344 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226343)
!226345 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226344)
!226346 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226345)
!226347 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226344)
!226348 = distinct !DILocation(line: 134, column: 27, scope: !226287, inlinedAt: !226272)
!226349 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226348)
!226350 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226348)
!226351 = distinct !{!226351, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226352 = distinct !{!226352, !226351, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226353 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226348)
!226354 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226348)
!226355 = distinct !DILocation(line: 135, column: 41, scope: !226287, inlinedAt: !226272)
!226356 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226355)
!226357 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226356)
!226358 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226357)
!226359 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226358)
!226360 = distinct !DILocation(line: 364, column: 22, scope: !1895, inlinedAt: !226359)
!226361 = distinct !DILocation(line: 77, column: 16, scope: !1894, inlinedAt: !226360)
!226362 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226359)
!226363 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226362)
!226364 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226363)
!226365 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226364)
!226366 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226363)
!226367 = distinct !DILocation(line: 135, column: 27, scope: !226287, inlinedAt: !226272)
!226368 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226367)
!226369 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226367)
!226370 = distinct !{!226370, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226371 = distinct !{!226371, !226370, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226372 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226367)
!226373 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226367)
!226374 = distinct !DILocation(line: 139, column: 35, scope: !226282, inlinedAt: !226272)
!226375 = distinct !DILexicalBlock(scope: !226282, file: !10028, line: 139, column: 13)
!226376 = distinct !DILocation(line: 141, column: 37, scope: !226375, inlinedAt: !226272)
!226377 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226376)
!226378 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226377)
!226379 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226378)
!226380 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226379)
!226381 = distinct !DILocation(line: 364, column: 22, scope: !1895, inlinedAt: !226380)
!226382 = distinct !DILocation(line: 77, column: 16, scope: !1894, inlinedAt: !226381)
!226383 = distinct !DILocation(line: 141, column: 23, scope: !226375, inlinedAt: !226272)
!226384 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226383)
!226385 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226383)
!226386 = distinct !{!226386, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226387 = distinct !{!226387, !226386, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226388 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226383)
!226389 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226383)
!226390 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226380)
!226391 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226390)
!226392 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226391)
!226393 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226392)
!226394 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226391)
!226395 = distinct !DILocation(line: 150, column: 38, scope: !226375, inlinedAt: !226272)
!226396 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226395)
!226397 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226395)
!226398 = distinct !{!226398, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226399 = distinct !{!226399, !226398, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226400 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226395)
!226401 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226395)
!226402 = distinct !DISubprogram(name: "copy_nonoverlapping<polars_utils::float16::pf16>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core", scope: !8790, file: !8834, line: 531, type: !8788, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226403 = distinct !DILexicalBlock(scope: !226282, file: !10028, line: 168, column: 9)
!226404 = distinct !DILocation(line: 169, column: 9, scope: !226403, inlinedAt: !226272)
!226405 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !9003, file: !8984, line: 1917, type: !8788, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226406 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs1LHh8CLbVkQ_11polars_core", scope: !9006, file: !9004, line: 780, type: !8788, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226407 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !9007, file: !9004, line: 865, type: !8788, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226408 = distinct !DILexicalBlock(scope: !226403, file: !10028, line: 172, column: 9)
!226409 = distinct !DILocation(line: 172, column: 18, scope: !226620, inlinedAt: !226272)
!226410 = distinct !DILocation(line: 866, column: 14, scope: !226407, inlinedAt: !226409)
!226411 = distinct !DILocation(line: 781, column: 12, scope: !226406, inlinedAt: !226410)
!226412 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !8928, file: !8926, line: 886, type: !8788, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226413 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !9008, file: !9004, line: 212, type: !8788, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226414 = distinct !DILexicalBlock(scope: !226406, file: !9004, line: 782, column: 13)
!226415 = distinct !DILocation(line: 784, column: 35, scope: !226414, inlinedAt: !226410)
!226416 = distinct !DILocation(line: 214, column: 28, scope: !226413, inlinedAt: !226415)
!226417 = distinct !DILexicalBlock(scope: !226408, file: !10028, line: 172, column: 9)
!226418 = distinct !DILocation(line: 174, column: 30, scope: !226417, inlinedAt: !226272)
!226419 = distinct !DILocation(line: 175, column: 24, scope: !226417, inlinedAt: !226272)
!226420 = distinct !DILocation(line: 173, column: 13, scope: !226417, inlinedAt: !226272)
!226421 = distinct !{!226421, !10035, !10036}
!226422 = distinct !{!226422, !10035, !10036}
!226423 = distinct !{!226423, !10036, !10035}
!226424 = distinct !DISubprogram(name: "split_at_mut_checked<polars_utils::float16::pf16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1620split_at_mut_checkedCs1LHh8CLbVkQ_11polars_core", scope: !8786, file: !8783, line: 2192, type: !8788, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226425 = distinct !DISubprogram(name: "split_at_mut<polars_utils::float16::pf16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core", scope: !8786, file: !8783, line: 1986, type: !8812, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226426 = distinct !DILocation(line: 77, column: 31, scope: !226268)
!226427 = distinct !DILocation(line: 1987, column: 20, scope: !226425, inlinedAt: !226426)
!226428 = distinct !{!226428, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core"}
!226429 = distinct !{!226429, !226428, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core: argument 1"}
!226430 = distinct !{!226430, !226428, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1612split_at_mutCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226431 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils7float164pf163addCs1LHh8CLbVkQ_11polars_core", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226432 = distinct !DISubprogram(name: "split_at_mut_unchecked<polars_utils::float16::pf16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf1622split_at_mut_uncheckedCs1LHh8CLbVkQ_11polars_core", scope: !8786, file: !8783, line: 2092, type: !8812, scopeLine: 2092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226433 = distinct !DILexicalBlock(scope: !226432, file: !8783, line: 2093, column: 9)
!226434 = distinct !DILexicalBlock(scope: !226433, file: !8783, line: 2094, column: 9)
!226435 = distinct !DILocation(line: 2196, column: 32, scope: !226424, inlinedAt: !226427)
!226436 = distinct !DILocation(line: 2109, column: 40, scope: !226434, inlinedAt: !226435)
!226437 = distinct !DILexicalBlock(scope: !226268, file: !10028, line: 77, column: 9)
!226438 = distinct !{!226438, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core"}
!226439 = distinct !{!226439, !226438, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core: argument 0"}
!226440 = distinct !{!226440, !226438, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core: argument 1"}
!226441 = distinct !DISubprogram(name: "stable_partition<polars_utils::float16::pf16, core::slice::sort::stable::quicksort::quicksort::{closure_env#0}<polars_utils::float16::pf16, alloc::slice::{impl#0}::sort_by::{closure_env#0}<polars_utils::float16::pf16, fn(&polars_utils::float16::pf16, &polars_utils::float16::pf16) -> core::cmp::Ordering>>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNvYB1d_NtNtB1h_9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core", scope: !10030, file: !10028, line: 89, type: !8812, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226442 = distinct !DILexicalBlock(scope: !226441, file: !10028, line: 96, column: 5)
!226443 = distinct !DILocation(line: 70, column: 26, scope: !226268)
!226444 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs2mZqlW55729_12polars_utils7float164pf163addCs1LHh8CLbVkQ_11polars_core", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226445 = distinct !DISubprogram(name: "new<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E3newCs1LHh8CLbVkQ_11polars_core", scope: !10034, file: !10028, line: 201, type: !8788, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226446 = distinct !DILexicalBlock(scope: !226442, file: !10028, line: 102, column: 5)
!226447 = distinct !DILexicalBlock(scope: !226446, file: !10028, line: 103, column: 5)
!226448 = distinct !DILexicalBlock(scope: !226447, file: !10028, line: 114, column: 9)
!226449 = distinct !DILocation(line: 115, column: 25, scope: !226448, inlinedAt: !226443)
!226450 = distinct !DILocation(line: 203, column: 88, scope: !226445, inlinedAt: !226449)
!226451 = distinct !DILexicalBlock(scope: !226448, file: !10028, line: 115, column: 9)
!226452 = distinct !DILexicalBlock(scope: !226451, file: !10028, line: 117, column: 9)
!226453 = distinct !DILexicalBlock(scope: !226452, file: !10028, line: 118, column: 9)
!226454 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj14saturating_sub", scope: !8928, file: !8926, line: 2398, type: !8788, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226455 = distinct !DILocation(line: 130, column: 58, scope: !226453, inlinedAt: !226443)
!226456 = distinct !DISubprogram(name: "add<polars_utils::float16::pf16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtCs2mZqlW55729_12polars_utils7float164pf163addCs1LHh8CLbVkQ_11polars_core", scope: !8957, file: !8955, line: 829, type: !8788, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226457 = distinct !DILocation(line: 130, column: 41, scope: !226453, inlinedAt: !226443)
!226458 = distinct !DILexicalBlock(scope: !226453, file: !10028, line: 130, column: 17)
!226459 = distinct !{!226459, !"_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp"}
!226460 = distinct !{!226460, !226459, !"_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp: argument 0"}
!226461 = distinct !{!226461, !226459, !"_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp: argument 1"}
!226462 = distinct !DILocation(line: 132, column: 27, scope: !226458, inlinedAt: !226443)
!226463 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226462)
!226464 = distinct !DILocation(line: 135, column: 27, scope: !226458, inlinedAt: !226443)
!226465 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226464)
!226466 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226462)
!226467 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226464)
!226468 = distinct !DISubprogram(name: "{closure#0}<polars_utils::float16::pf16, alloc::slice::{impl#0}::sort_by::{closure_env#0}<polars_utils::float16::pf16, fn(&polars_utils::float16::pf16, &polars_utils::float16::pf16) -> core::cmp::Ordering>>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNvYB17_NtNtB1b_9total_ord8TotalOrd7tot_cmpE0E0Cs1LHh8CLbVkQ_11polars_core", scope: !10038, file: !10028, line: 70, type: !8812, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226469 = distinct !DILocation(line: 132, column: 41, scope: !226458, inlinedAt: !226443)
!226470 = distinct !DILocation(line: 70, column: 85, scope: !226468, inlinedAt: !226469)
!226471 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226470)
!226472 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226471)
!226473 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226472)
!226474 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226473)
!226475 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226474)
!226476 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226475)
!226477 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226476)
!226478 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226477)
!226479 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226476)
!226480 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226462)
!226481 = distinct !{!226481, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226482 = distinct !{!226482, !226481, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226483 = distinct !DILocation(line: 133, column: 41, scope: !226458, inlinedAt: !226443)
!226484 = distinct !DILocation(line: 70, column: 85, scope: !226468, inlinedAt: !226483)
!226485 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226484)
!226486 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226485)
!226487 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226486)
!226488 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226487)
!226489 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226488)
!226490 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226489)
!226491 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226490)
!226492 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226491)
!226493 = distinct !{!226493, !226481, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0:thread"}
!226494 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226462)
!226495 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226490)
!226496 = distinct !DILocation(line: 133, column: 27, scope: !226458, inlinedAt: !226443)
!226497 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226496)
!226498 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226496)
!226499 = distinct !{!226499, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226500 = distinct !{!226500, !226499, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226501 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226496)
!226502 = distinct !DILocation(line: 134, column: 41, scope: !226458, inlinedAt: !226443)
!226503 = distinct !DILocation(line: 70, column: 85, scope: !226468, inlinedAt: !226502)
!226504 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226503)
!226505 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226504)
!226506 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226505)
!226507 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226506)
!226508 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226507)
!226509 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226508)
!226510 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226509)
!226511 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226510)
!226512 = distinct !{!226512, !226499, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0:thread"}
!226513 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226496)
!226514 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226509)
!226515 = distinct !DILocation(line: 134, column: 27, scope: !226458, inlinedAt: !226443)
!226516 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226515)
!226517 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226515)
!226518 = distinct !{!226518, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226519 = distinct !{!226519, !226518, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226520 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226515)
!226521 = distinct !DILocation(line: 135, column: 41, scope: !226458, inlinedAt: !226443)
!226522 = distinct !DILocation(line: 70, column: 85, scope: !226468, inlinedAt: !226521)
!226523 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226522)
!226524 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226523)
!226525 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226524)
!226526 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226525)
!226527 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226526)
!226528 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226527)
!226529 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226528)
!226530 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226529)
!226531 = distinct !{!226531, !226518, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0:thread"}
!226532 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226515)
!226533 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226528)
!226534 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226464)
!226535 = distinct !{!226535, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226536 = distinct !{!226536, !226535, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226537 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226464)
!226538 = distinct !DILocation(line: 139, column: 35, scope: !226453, inlinedAt: !226443)
!226539 = distinct !DILexicalBlock(scope: !226453, file: !10028, line: 139, column: 13)
!226540 = distinct !DILocation(line: 141, column: 23, scope: !226539, inlinedAt: !226443)
!226541 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226540)
!226542 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226540)
!226543 = distinct !{!226543, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226544 = distinct !{!226544, !226543, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226545 = distinct !{!226545, !10035, !10036}
!226546 = distinct !{!226546, !10035, !10036}
!226547 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226540)
!226548 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226540)
!226549 = distinct !{!226549, !10036, !10035}
!226550 = distinct !DILocation(line: 141, column: 37, scope: !226539, inlinedAt: !226443)
!226551 = distinct !DILocation(line: 70, column: 85, scope: !226468, inlinedAt: !226550)
!226552 = distinct !DILocation(line: 196, column: 34, scope: !1970, inlinedAt: !226551)
!226553 = distinct !DILocation(line: 166, column: 5, scope: !1968, inlinedAt: !226552)
!226554 = distinct !DILocation(line: 333, column: 25, scope: !1897, inlinedAt: !226553)
!226555 = distinct !DILocation(line: 344, column: 23, scope: !1896, inlinedAt: !226554)
!226556 = distinct !DILocation(line: 364, column: 33, scope: !1895, inlinedAt: !226555)
!226557 = distinct !DILocation(line: 2155, column: 13, scope: !1904, inlinedAt: !226556)
!226558 = distinct !DILocation(line: 1466, column: 14, scope: !1903, inlinedAt: !226557)
!226559 = distinct !DILocation(line: 33, column: 5, scope: !1902, inlinedAt: !226558)
!226560 = distinct !DILocation(line: 1466, column: 33, scope: !1903, inlinedAt: !226557)
!226561 = distinct !DILocation(line: 150, column: 38, scope: !226539, inlinedAt: !226443)
!226562 = distinct !DILocation(line: 222, column: 49, scope: !226304, inlinedAt: !226561)
!226563 = distinct !DILocation(line: 227, column: 32, scope: !226308, inlinedAt: !226561)
!226564 = distinct !{!226564, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core"}
!226565 = distinct !{!226565, !226564, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCs2mZqlW55729_12polars_utils7float164pf16E13partition_oneCs1LHh8CLbVkQ_11polars_core: argument 0"}
!226566 = distinct !DILocation(line: 228, column: 13, scope: !226313, inlinedAt: !226561)
!226567 = distinct !DILocation(line: 231, column: 35, scope: !226313, inlinedAt: !226561)
!226568 = distinct !DISubprogram(name: "copy_nonoverlapping<polars_utils::float16::pf16>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core", scope: !8790, file: !8834, line: 531, type: !8788, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226569 = distinct !DILexicalBlock(scope: !226453, file: !10028, line: 168, column: 9)
!226570 = distinct !DILocation(line: 169, column: 9, scope: !226569, inlinedAt: !226443)
!226571 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !9003, file: !8984, line: 1917, type: !8788, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226572 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs1LHh8CLbVkQ_11polars_core", scope: !9006, file: !9004, line: 780, type: !8788, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226573 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !9007, file: !9004, line: 865, type: !8788, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226574 = distinct !DILexicalBlock(scope: !226569, file: !10028, line: 172, column: 9)
!226575 = distinct !DILocation(line: 172, column: 18, scope: !226637, inlinedAt: !226443)
!226576 = distinct !DILocation(line: 866, column: 14, scope: !226573, inlinedAt: !226575)
!226577 = distinct !DILocation(line: 781, column: 12, scope: !226572, inlinedAt: !226576)
!226578 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !8928, file: !8926, line: 886, type: !8788, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226579 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !9008, file: !9004, line: 212, type: !8788, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226580 = distinct !DILexicalBlock(scope: !226572, file: !9004, line: 782, column: 13)
!226581 = distinct !DILocation(line: 784, column: 35, scope: !226580, inlinedAt: !226576)
!226582 = distinct !DILocation(line: 214, column: 28, scope: !226579, inlinedAt: !226581)
!226583 = distinct !DILexicalBlock(scope: !226574, file: !10028, line: 172, column: 9)
!226584 = distinct !DILocation(line: 174, column: 30, scope: !226583, inlinedAt: !226443)
!226585 = distinct !DILocation(line: 175, column: 24, scope: !226583, inlinedAt: !226443)
!226586 = distinct !DILocation(line: 173, column: 13, scope: !226583, inlinedAt: !226443)
!226587 = distinct !{!226587, !10035, !10036}
!226588 = distinct !{!226588, !10035, !10036}
!226589 = distinct !{!226589, !10036, !10035}
!226590 = distinct !DISubprogram(name: "index_mut<polars_utils::float16::pf16>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSNtNtCs2mZqlW55729_12polars_utils7float164pf16E9index_mutCs1LHh8CLbVkQ_11polars_core", scope: !9246, file: !8897, line: 579, type: !8788, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226591 = distinct !DILexicalBlock(scope: !226268, file: !10028, line: 70, column: 13)
!226592 = distinct !DISubprogram(name: "index_mut<polars_utils::float16::pf16, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtB8_3ops5index8IndexMutINtNtB1s_5range9RangeFromjEE9index_mutCs1LHh8CLbVkQ_11polars_core", scope: !10039, file: !8897, line: 30, type: !8788, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226593 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<polars_utils::float16::pf16>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core", scope: !8898, file: !8897, line: 94, type: !8788, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226594 = distinct !DILexicalBlock(scope: !226593, file: !8897, line: 99, column: 5)
!226595 = distinct !DILexicalBlock(scope: !226590, file: !8897, line: 585, column: 13)
!226596 = !{!226092}
!226597 = !{!226095}
!226598 = !DILexicalBlockFile(scope: !226131, file: !9332, discriminator: 2)
!226599 = !{!226170, !226168, !226092}
!226600 = !{!226092, !226095}
!226601 = !{!226186, !226184}
!226602 = !DILexicalBlockFile(scope: !226090, file: !8819, discriminator: 0)
!226603 = !{!226201, !226199}
!226604 = !{!226203, !226202}
!226605 = !{!226199}
!226606 = !{!226202}
!226607 = !DILocation(line: 45, column: 35, scope: !226248)
!226608 = !{!226267}
!226609 = !{!226269}
!226610 = !{!226289, !226267}
!226611 = !{!226290, !226269}
!226612 = !{!226311, !226267}
!226613 = !{!226333, !226267}
!226614 = !{!226352, !226267}
!226615 = !{!226371, !226267}
!226616 = !{!226387, !226267}
!226617 = !{!226399, !226269}
!226618 = !{!226399, !226267}
!226619 = !{!226267, !226269}
!226620 = !DILexicalBlockFile(scope: !226408, file: !10028, discriminator: 2)
!226621 = !{!226430, !226429}
!226622 = !{!226439}
!226623 = !{!226440}
!226624 = !{!226460, !226439}
!226625 = !{!226461, !226440}
!226626 = !{!226482, !226439}
!226627 = !{!226493, !226439}
!226628 = !{!226500, !226439}
!226629 = !{!226512, !226439}
!226630 = !{!226519, !226439}
!226631 = !{!226531, !226439}
!226632 = !{!226536, !226439}
!226633 = !{!226544, !226439}
!226634 = !{!226565, !226440}
!226635 = !{!226565, !226439}
!226636 = !{!226439, !226440}
!226637 = !DILexicalBlockFile(scope: !226574, file: !10028, discriminator: 2)
!226638 = !DILocation(line: 71, column: 23, scope: !226591)
!226639 = !DILocation(line: 31, column: 15, scope: !226592, inlinedAt: !226638)
!226640 = !DILocation(line: 586, column: 19, scope: !226595, inlinedAt: !226639)
!226641 = !DILocation(line: 26, column: 12, scope: !226090)
!226642 = !DILocation(line: 31, column: 12, scope: !226090)
!226643 = !DILocation(line: 61, column: 9, scope: !226093, inlinedAt: !226094)
!226644 = !DILocation(line: 226, column: 8, scope: !226097, inlinedAt: !226098)
!226645 = !DILocation(line: 230, column: 24, scope: !226097, inlinedAt: !226098)
!226646 = !DILocation(line: 230, column: 8, scope: !226097, inlinedAt: !226098)
!226647 = !DILocation(line: 235, column: 21, scope: !226099, inlinedAt: !226098)
!226648 = !DILocation(line: 241, column: 66, scope: !226101, inlinedAt: !226098)
!226649 = !DILocation(line: 231, column: 9, scope: !226097, inlinedAt: !226098)
!226650 = !DILocation(line: 252, column: 19, scope: !226101, inlinedAt: !226098)
!226651 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226103)
!226652 = !DILocation(line: 671, column: 9, scope: !226104, inlinedAt: !226105)
!226653 = !DILocation(line: 961, column: 18, scope: !226106, inlinedAt: !226107)
!226654 = !DILocation(line: 961, column: 18, scope: !226106, inlinedAt: !226108)
!226655 = !DILocation(line: 672, column: 9, scope: !226104, inlinedAt: !226105)
!226656 = !DILocation(line: 678, column: 9, scope: !226104, inlinedAt: !226105)
!226657 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226109)
!226658 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226110)
!226659 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226111)
!226660 = !DILocation(line: 671, column: 9, scope: !226104, inlinedAt: !226112)
!226661 = !DILocation(line: 961, column: 18, scope: !226106, inlinedAt: !226113)
!226662 = !DILocation(line: 961, column: 18, scope: !226106, inlinedAt: !226114)
!226663 = !DILocation(line: 672, column: 9, scope: !226104, inlinedAt: !226112)
!226664 = !DILocation(line: 678, column: 9, scope: !226104, inlinedAt: !226112)
!226665 = !DILocation(line: 241, column: 29, scope: !226101, inlinedAt: !226098)
!226666 = !DILocation(line: 254, column: 13, scope: !226101, inlinedAt: !226098)
!226667 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226115)
!226668 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226116)
!226669 = !DILocation(line: 255, column: 13, scope: !226101, inlinedAt: !226098)
!226670 = !DILocation(line: 252, column: 16, scope: !226101, inlinedAt: !226098)
!226671 = !DILocation(line: 552, column: 14, scope: !226117, inlinedAt: !226118)
!226672 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226119)
!226673 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226120)
!226674 = !DILocation(line: 552, column: 14, scope: !226117, inlinedAt: !226121)
!226675 = !DILocation(line: 0, scope: !226101, inlinedAt: !226098)
!226676 = !DILocation(line: 1917, column: 50, scope: !226122, inlinedAt: !226134)
!226677 = !DILocation(line: 781, column: 12, scope: !226123, inlinedAt: !226133)
!226678 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226135)
!226679 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226136)
!226680 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226138)
!226681 = !DILocation(line: 961, column: 18, scope: !226102, inlinedAt: !226139)
!226682 = !DILocation(line: 552, column: 14, scope: !226117, inlinedAt: !226140)
!226683 = !DILocation(line: 1072, column: 22, scope: !7001, inlinedAt: !226142)
!226684 = !DILocation(line: 547, column: 13, scope: !7000, inlinedAt: !226141)
!226685 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226149)
!226686 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226153)
!226687 = !DILocation(line: 0, scope: !1897, inlinedAt: !226145)
!226688 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226153)
!226689 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226153)
!226690 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226153)
!226691 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226154)
!226692 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226145)
!226693 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226153)
!226694 = !DILocation(line: 552, column: 14, scope: !7002, inlinedAt: !226155)
!226695 = !DILocation(line: 566, column: 16, scope: !7004, inlinedAt: !226141)
!226696 = !DILocation(line: 1072, column: 22, scope: !7001, inlinedAt: !226156)
!226697 = !DILocation(line: 572, column: 17, scope: !7004, inlinedAt: !226141)
!226698 = !DILocation(line: 0, scope: !1897, inlinedAt: !226159)
!226699 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226165)
!226700 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226165)
!226701 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226165)
!226702 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226166)
!226703 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226159)
!226704 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226165)
!226705 = !DILocation(line: 0, scope: !6999, inlinedAt: !226141)
!226706 = !DILocation(line: 552, column: 14, scope: !5826, inlinedAt: !226173)
!226707 = !DILocation(line: 577, column: 2, scope: !6999, inlinedAt: !226141)
!226708 = !DILocation(line: 898, column: 17, scope: !226174, inlinedAt: !226178)
!226709 = !DILocation(line: 286, column: 9, scope: !226179, inlinedAt: !226098)
!226710 = !DILocation(line: 552, column: 14, scope: !5826, inlinedAt: !226182)
!226711 = !DILocation(line: 220, column: 1, scope: !226096, inlinedAt: !226098)
!226712 = !DILocation(line: 34, column: 13, scope: !226090)
!226713 = !DILocation(line: 0, scope: !226602)
!226714 = !DILocation(line: 37, column: 9, scope: !226090)
!226715 = !DILocation(line: 28, column: 25, scope: !226189, inlinedAt: !226190)
!226716 = !DILocation(line: 863, column: 18, scope: !226191, inlinedAt: !226194)
!226717 = !DILocation(line: 863, column: 18, scope: !226191, inlinedAt: !226196)
!226718 = !DILocation(line: 34, column: 12, scope: !226197, inlinedAt: !226190)
!226719 = !DILocation(line: 37, column: 13, scope: !226197, inlinedAt: !226190)
!226720 = !DILocation(line: 34, column: 9, scope: !226197, inlinedAt: !226190)
!226721 = !DILocation(line: 82, column: 13, scope: !226204, inlinedAt: !226205)
!226722 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226212)
!226723 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226216)
!226724 = !DILocation(line: 0, scope: !1897, inlinedAt: !226208)
!226725 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226216)
!226726 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226216)
!226727 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226216)
!226728 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226216)
!226729 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226208)
!226730 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226217)
!226731 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226227)
!226732 = !DILocation(line: 83, column: 13, scope: !226218, inlinedAt: !226205)
!226733 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226235)
!226734 = !DILocation(line: 84, column: 8, scope: !226228, inlinedAt: !226205)
!226735 = !DILocation(line: 0, scope: !1897, inlinedAt: !226221)
!226736 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226227)
!226737 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226227)
!226738 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226227)
!226739 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226227)
!226740 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226221)
!226741 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226236)
!226742 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226240)
!226743 = !DILocation(line: 0, scope: !1897, inlinedAt: !226231)
!226744 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226240)
!226745 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226240)
!226746 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226240)
!226747 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226240)
!226748 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226231)
!226749 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226241)
!226750 = !DILocation(line: 335, column: 27, scope: !1897, inlinedAt: !226231)
!226751 = !DILocation(line: 89, column: 12, scope: !226242, inlinedAt: !226205)
!226752 = !DILocation(line: 89, column: 9, scope: !226242, inlinedAt: !226205)
!226753 = !DILocation(line: 81, column: 2, scope: !226089)
!226754 = !DILocation(line: 729, column: 18, scope: !226243, inlinedAt: !226244)
!226755 = !DILocation(line: 42, column: 32, scope: !226245, inlinedAt: !226190)
!226756 = !DILocation(line: 210, column: 9, scope: !226246, inlinedAt: !226247)
!226757 = !DILocation(line: 45, column: 13, scope: !226248)
!226758 = !DILocation(line: 45, column: 45, scope: !226248)
!226759 = !DILocation(line: 1721, column: 9, scope: !226249, inlinedAt: !226607)
!226760 = !DILocation(line: 59, column: 16, scope: !226253)
!226761 = !DILocation(line: 60, column: 40, scope: !226253)
!226762 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226260)
!226763 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226264)
!226764 = !DILocation(line: 0, scope: !1897, inlinedAt: !226256)
!226765 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226264)
!226766 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226264)
!226767 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226264)
!226768 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226264)
!226769 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226256)
!226770 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226265)
!226771 = !DILocation(line: 65, column: 34, scope: !226268)
!226772 = !DILocation(line: 98, column: 29, scope: !226271, inlinedAt: !226272)
!226773 = !DILocation(line: 961, column: 18, scope: !226273, inlinedAt: !226279)
!226774 = !DILocation(line: 122, column: 9, scope: !226282, inlinedAt: !226272)
!226775 = !DILocation(line: 99, column: 9, scope: !226271, inlinedAt: !226272)
!226776 = !DILocation(line: 0, scope: !226277, inlinedAt: !226272)
!226777 = !DILocation(line: 2399, column: 13, scope: !226283, inlinedAt: !226284)
!226778 = !DILocation(line: 863, column: 18, scope: !226285, inlinedAt: !226286)
!226779 = !DILocation(line: 131, column: 23, scope: !226287, inlinedAt: !226272)
!226780 = !DILocation(line: 132, column: 41, scope: !226287, inlinedAt: !226272)
!226781 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226297)
!226782 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226301)
!226783 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226301)
!226784 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226301)
!226785 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226301)
!226786 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226293)
!226787 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226302)
!226788 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226306)
!226789 = !DILocation(line: 226, column: 31, scope: !226304, inlinedAt: !226305)
!226790 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226309)
!226791 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226314)
!226792 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226305)
!226793 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226316)
!226794 = !DILocation(line: 133, column: 41, scope: !226287, inlinedAt: !226272)
!226795 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226323)
!226796 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226327)
!226797 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226327)
!226798 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226327)
!226799 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226327)
!226800 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226319)
!226801 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226328)
!226802 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226330)
!226803 = !DILocation(line: 226, column: 31, scope: !226304, inlinedAt: !226329)
!226804 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226331)
!226805 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226334)
!226806 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226329)
!226807 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226335)
!226808 = !DILocation(line: 134, column: 41, scope: !226287, inlinedAt: !226272)
!226809 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226342)
!226810 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226346)
!226811 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226346)
!226812 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226346)
!226813 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226346)
!226814 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226338)
!226815 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226347)
!226816 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226349)
!226817 = !DILocation(line: 226, column: 31, scope: !226304, inlinedAt: !226348)
!226818 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226350)
!226819 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226353)
!226820 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226348)
!226821 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226354)
!226822 = !DILocation(line: 135, column: 41, scope: !226287, inlinedAt: !226272)
!226823 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226361)
!226824 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226365)
!226825 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226365)
!226826 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226365)
!226827 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226365)
!226828 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226357)
!226829 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226366)
!226830 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226368)
!226831 = !DILocation(line: 226, column: 31, scope: !226304, inlinedAt: !226367)
!226832 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226369)
!226833 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226372)
!226834 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226367)
!226835 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226373)
!226836 = !DILocation(line: 863, column: 18, scope: !226285, inlinedAt: !226374)
!226837 = !DILocation(line: 140, column: 19, scope: !226375, inlinedAt: !226272)
!226838 = !DILocation(line: 141, column: 37, scope: !226375, inlinedAt: !226272)
!226839 = !DILocation(line: 296, column: 9, scope: !1893, inlinedAt: !226382)
!226840 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226384)
!226841 = !DILocation(line: 226, column: 31, scope: !226304, inlinedAt: !226383)
!226842 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226385)
!226843 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226388)
!226844 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226383)
!226845 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226389)
!226846 = !DILocation(line: 144, column: 16, scope: !226375, inlinedAt: !226272)
!226847 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226393)
!226848 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226393)
!226849 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226393)
!226850 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226378)
!226851 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226394)
!226852 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226396)
!226853 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226397)
!226854 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226400)
!226855 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226401)
!226856 = !DILocation(line: 552, column: 14, scope: !226402, inlinedAt: !226404)
!226857 = !DILocation(line: 172, column: 21, scope: !226403, inlinedAt: !226272)
!226858 = !DILocation(line: 1917, column: 50, scope: !226405, inlinedAt: !226411)
!226859 = !DILocation(line: 781, column: 12, scope: !226406, inlinedAt: !226410)
!226860 = !DILocation(line: 898, column: 17, scope: !226412, inlinedAt: !226416)
!226861 = !DILocation(line: 174, column: 34, scope: !226417, inlinedAt: !226272)
!226862 = !DILocation(line: 961, column: 18, scope: !226273, inlinedAt: !226418)
!226863 = !DILocation(line: 961, column: 18, scope: !226273, inlinedAt: !226419)
!226864 = !DILocation(line: 552, column: 14, scope: !226402, inlinedAt: !226420)
!226865 = !DILocation(line: 66, column: 13, scope: !226268)
!226866 = !DILocation(line: 69, column: 12, scope: !226268)
!226867 = !DILocation(line: 2193, column: 12, scope: !226424, inlinedAt: !226427)
!226868 = !DILocation(line: 1989, column: 21, scope: !226425, inlinedAt: !226426)
!226869 = !DILocation(line: 961, column: 18, scope: !226431, inlinedAt: !226436)
!226870 = !DILocation(line: 78, column: 9, scope: !226437)
!226871 = !DILocation(line: 80, column: 5, scope: !226248)
!226872 = !DILocation(line: 70, column: 26, scope: !226268)
!226873 = !DILocation(line: 98, column: 29, scope: !226442, inlinedAt: !226443)
!226874 = !DILocation(line: 961, column: 18, scope: !226444, inlinedAt: !226450)
!226875 = !DILocation(line: 122, column: 9, scope: !226453, inlinedAt: !226443)
!226876 = !DILocation(line: 99, column: 9, scope: !226442, inlinedAt: !226443)
!226877 = !DILocation(line: 0, scope: !226448, inlinedAt: !226443)
!226878 = !DILocation(line: 2399, column: 13, scope: !226454, inlinedAt: !226455)
!226879 = !DILocation(line: 863, column: 18, scope: !226456, inlinedAt: !226457)
!226880 = !DILocation(line: 131, column: 23, scope: !226458, inlinedAt: !226443)
!226881 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226463)
!226882 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226465)
!226883 = !DILocation(line: 132, column: 41, scope: !226458, inlinedAt: !226443)
!226884 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226466)
!226885 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226464)
!226886 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226467)
!226887 = !DILocation(line: 0, scope: !1897, inlinedAt: !226472)
!226888 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226478)
!226889 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226478)
!226890 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226478)
!226891 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226478)
!226892 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226472)
!226893 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226479)
!226894 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226480)
!226895 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226492)
!226896 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226462)
!226897 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226494)
!226898 = !DILocation(line: 133, column: 41, scope: !226458, inlinedAt: !226443)
!226899 = !DILocation(line: 0, scope: !1897, inlinedAt: !226486)
!226900 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226492)
!226901 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226492)
!226902 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226492)
!226903 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226492)
!226904 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226486)
!226905 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226495)
!226906 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226497)
!226907 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226498)
!226908 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226501)
!226909 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226511)
!226910 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226496)
!226911 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226513)
!226912 = !DILocation(line: 134, column: 41, scope: !226458, inlinedAt: !226443)
!226913 = !DILocation(line: 0, scope: !1897, inlinedAt: !226505)
!226914 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226511)
!226915 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226511)
!226916 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226511)
!226917 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226511)
!226918 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226505)
!226919 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226514)
!226920 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226516)
!226921 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226517)
!226922 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226520)
!226923 = !DILocation(line: 841, column: 12, scope: !1901, inlinedAt: !226530)
!226924 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226515)
!226925 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226532)
!226926 = !DILocation(line: 135, column: 41, scope: !226458, inlinedAt: !226443)
!226927 = !DILocation(line: 0, scope: !1897, inlinedAt: !226524)
!226928 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226530)
!226929 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226530)
!226930 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226530)
!226931 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226530)
!226932 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226524)
!226933 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226533)
!226934 = !DILocation(line: 226, column: 31, scope: !226304, inlinedAt: !226464)
!226935 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226534)
!226936 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226537)
!226937 = !DILocation(line: 863, column: 18, scope: !226456, inlinedAt: !226538)
!226938 = !DILocation(line: 140, column: 19, scope: !226539, inlinedAt: !226443)
!226939 = !DILocation(line: 141, column: 37, scope: !226539, inlinedAt: !226443)
!226940 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226541)
!226941 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226542)
!226942 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226547)
!226943 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226540)
!226944 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226548)
!226945 = !DILocation(line: 144, column: 16, scope: !226539, inlinedAt: !226443)
!226946 = !DILocation(line: 0, scope: !1897, inlinedAt: !226553)
!226947 = !DILocation(line: 841, column: 29, scope: !1901, inlinedAt: !226559)
!226948 = !DILocation(line: 845, column: 29, scope: !1905, inlinedAt: !226559)
!226949 = !DILocation(line: 846, column: 13, scope: !1906, inlinedAt: !226559)
!226950 = !DILocation(line: 856, column: 24, scope: !1906, inlinedAt: !226559)
!226951 = !DILocation(line: 333, column: 20, scope: !1897, inlinedAt: !226553)
!226952 = !DILocation(line: 662, column: 9, scope: !1907, inlinedAt: !226560)
!226953 = !DILocation(line: 226, column: 31, scope: !226304, inlinedAt: !226540)
!226954 = !DILocation(line: 1072, column: 22, scope: !226303, inlinedAt: !226562)
!226955 = !DILocation(line: 961, column: 18, scope: !226307, inlinedAt: !226563)
!226956 = !DILocation(line: 552, column: 14, scope: !226312, inlinedAt: !226566)
!226957 = !DILocation(line: 230, column: 13, scope: !226313, inlinedAt: !226561)
!226958 = !DILocation(line: 863, column: 18, scope: !226315, inlinedAt: !226567)
!226959 = !DILocation(line: 552, column: 14, scope: !226568, inlinedAt: !226570)
!226960 = !DILocation(line: 172, column: 21, scope: !226569, inlinedAt: !226443)
!226961 = !DILocation(line: 1917, column: 50, scope: !226571, inlinedAt: !226577)
!226962 = !DILocation(line: 781, column: 12, scope: !226572, inlinedAt: !226576)
!226963 = !DILocation(line: 898, column: 17, scope: !226578, inlinedAt: !226582)
!226964 = !DILocation(line: 174, column: 34, scope: !226583, inlinedAt: !226443)
!226965 = !DILocation(line: 961, column: 18, scope: !226444, inlinedAt: !226584)
!226966 = !DILocation(line: 961, column: 18, scope: !226444, inlinedAt: !226585)
!226967 = !DILocation(line: 552, column: 14, scope: !226568, inlinedAt: !226586)
!226968 = !DILocation(line: 580, column: 12, scope: !226590, inlinedAt: !226639)
!226969 = !DILocation(line: 101, column: 24, scope: !226594, inlinedAt: !226640)
!226970 = !DILocation(line: 581, column: 13, scope: !226590, inlinedAt: !226639)
!226971 = distinct !DISubprogram(name: "quicksort<polars_core::frame::column::Column, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<polars_core::frame::column::Column, usize, polars_core::frame::explode::{impl#1}::explode_impl::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNvMs_NtB19_7explodeNtNtB19_9dataframe9DataFrame12explode_impl0E0EB1b_", scope: !10030, file: !10028, line: 16, type: !8788, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226972 = distinct !DILexicalBlock(scope: !226971, file: !10028, line: 24, column: 9)
!226973 = distinct !DISubprogram(name: "small_sort<polars_core::frame::column::Column, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<polars_core::frame::column::Column, usize, polars_core::frame::explode::{impl#1}::explode_impl::{closure_env#0}>>", linkageName: "_RINvXNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_11sort_by_keyjNCNvMs_NtB10_7explodeNtNtB10_9dataframe9DataFrame12explode_impl0E0EB12_", scope: !227166, file: !9332, line: 38, type: !8788, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!226974 = distinct !DILocation(line: 27, column: 13, scope: !226972)
!226975 = distinct !{!226975, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_11sort_by_keyjNCNvMs_NtB1q_7explodeNtNtB1q_9dataframe9DataFrame12explode_impl0E0EB1s_"}
!226976 = distinct !{!226976, !226975, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_11sort_by_keyjNCNvMs_NtB1q_7explodeNtNtB1q_9dataframe9DataFrame12explode_impl0E0EB1s_: argument 0"}
!226977 = distinct !{!226977, !226975, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_11sort_by_keyjNCNvMs_NtB1q_7explodeNtNtB1q_9dataframe9DataFrame12explode_impl0E0EB1s_: argument 1"}
!226978 = distinct !DILocation(line: 44, column: 13, scope: !226973, inlinedAt: !226974)
!226979 = distinct !DILocation(line: 597, column: 28, scope: !7008, inlinedAt: !226978)
!226980 = distinct !DILocation(line: 598, column: 31, scope: !7009, inlinedAt: !226978)
!226981 = distinct !DILocation(line: 602, column: 13, scope: !7010, inlinedAt: !226978)
!226982 = distinct !DILocation(line: 546, column: 29, scope: !7012, inlinedAt: !226981)
!226983 = distinct !DILocation(line: 556, column: 42, scope: !7013, inlinedAt: !226981)
!226984 = distinct !DILocation(line: 1263, column: 18, scope: !7015, inlinedAt: !226983)
!226985 = distinct !DILocation(line: 563, column: 13, scope: !7018, inlinedAt: !226981)
!226986 = distinct !DILocation(line: 571, column: 25, scope: !7018, inlinedAt: !226981)
!226987 = distinct !{!226987, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEB1E_"}
!226988 = distinct !{!226988, !226987, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEB1E_: argument 0"}
!226989 = distinct !{!226989, !"_RNvXs5_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtBd_3ops4drop4Drop4dropB1m_"}
!226990 = distinct !{!226990, !226989, !"_RNvXs5_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtBd_3ops4drop4Drop4dropB1m_: argument 0"}
!226991 = distinct !DILocation(line: 576, column: 5, scope: !7017, inlinedAt: !226981)
!226992 = distinct !DILocation(line: 810, column: 1, scope: !7021, inlinedAt: !226991)
!226993 = distinct !DILocation(line: 306, column: 13, scope: !7020, inlinedAt: !226992)
!226994 = distinct !{!226994, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEB1E_"}
!226995 = distinct !{!226995, !226994, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEB1E_: argument 0"}
!226996 = distinct !{!226996, !"_RNvXs5_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtBd_3ops4drop4Drop4dropB1m_"}
!226997 = distinct !{!226997, !226996, !"_RNvXs5_NtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtBd_3ops4drop4Drop4dropB1m_: argument 0"}
!226998 = distinct !DILocation(line: 576, column: 5, scope: !7017, inlinedAt: !226981)
!226999 = distinct !DILocation(line: 810, column: 1, scope: !7021, inlinedAt: !226998)
!227000 = distinct !DILocation(line: 306, column: 13, scope: !7020, inlinedAt: !226999)
!227001 = distinct !DILocation(line: 605, column: 25, scope: !7010, inlinedAt: !226978)
!227002 = distinct !{!227002, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNvMs_NtB19_7explodeNtNtB19_9dataframe9DataFrame12explode_impl0E0EB1b_"}
!227003 = distinct !{!227003, !227002, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNvMs_NtB19_7explodeNtNtB19_9dataframe9DataFrame12explode_impl0E0EB1b_: argument 0"}
!227004 = distinct !DISubprogram(name: "choose_pivot<polars_core::frame::column::Column, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<polars_core::frame::column::Column, usize, polars_core::frame::explode::{impl#1}::explode_impl::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyjNCNvMs_NtB19_7explodeNtNtB19_9dataframe9DataFrame12explode_impl0E0EB1b_", scope: !10033, file: !10032, line: 13, type: !8788, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227005 = distinct !DILexicalBlock(scope: !227004, file: !10032, line: 18, column: 5)
!227006 = distinct !DILexicalBlock(scope: !227005, file: !10032, line: 27, column: 9)
!227007 = distinct !DILocation(line: 39, column: 25, scope: !226972)
!227008 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBK_", scope: !8957, file: !8955, line: 829, type: !8788, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227009 = distinct !DILexicalBlock(scope: !227006, file: !10032, line: 28, column: 9)
!227010 = distinct !DILexicalBlock(scope: !227009, file: !10032, line: 30, column: 9)
!227011 = distinct !DILocation(line: 31, column: 24, scope: !227010, inlinedAt: !227007)
!227012 = distinct !DILexicalBlock(scope: !227010, file: !10032, line: 31, column: 9)
!227013 = distinct !DILocation(line: 32, column: 24, scope: !227012, inlinedAt: !227007)
!227014 = distinct !DILexicalBlock(scope: !227012, file: !10032, line: 32, column: 9)
!227015 = distinct !DISubprogram(name: "median3<polars_core::frame::column::Column, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<polars_core::frame::column::Column, usize, polars_core::frame::explode::{impl#1}::explode_impl::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_11sort_by_keyjNCNvMs_NtB13_7explodeNtNtB13_9dataframe9DataFrame12explode_impl0E0EB15_", scope: !10033, file: !10032, line: 79, type: !8788, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227016 = distinct !DILocation(line: 35, column: 13, scope: !227014, inlinedAt: !227007)
!227017 = distinct !DILexicalBlock(scope: !227015, file: !10032, line: 82, column: 5)
!227018 = distinct !DILexicalBlock(scope: !227017, file: !10032, line: 83, column: 5)
!227019 = distinct !DILexicalBlock(scope: !227018, file: !10032, line: 88, column: 9)
!227020 = distinct !DISubprogram(name: "offset_from_unsigned<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column20offset_from_unsignedBK_", scope: !8957, file: !8955, line: 701, type: !8788, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227021 = distinct !DILocation(line: 0, scope: !227014, inlinedAt: !227007)
!227022 = distinct !DILexicalBlock(scope: !227005, file: !10032, line: 26, column: 5)
!227023 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !9242, file: !9241, line: 202, type: !8788, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227024 = distinct !DILocation(line: 42, column: 9, scope: !227022, inlinedAt: !227007)
!227025 = distinct !DILexicalBlock(scope: !226972, file: !10028, line: 39, column: 9)
!227026 = distinct !DILexicalBlock(scope: !227025, file: !10028, line: 45, column: 9)
!227027 = distinct !DILexicalBlock(scope: !227026, file: !10028, line: 46, column: 9)
!227028 = distinct !DILexicalBlock(scope: !227027, file: !10028, line: 58, column: 9)
!227029 = distinct !DILexicalBlock(scope: !227028, file: !10028, line: 59, column: 53)
!227030 = distinct !DILexicalBlock(scope: !227028, file: !10028, line: 63, column: 9)
!227031 = distinct !{!227031, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0EB1j_"}
!227032 = distinct !{!227032, !227031, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0EB1j_: argument 1"}
!227033 = distinct !DISubprogram(name: "stable_partition<polars_core::frame::column::Column, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<polars_core::frame::column::Column, usize, polars_core::frame::explode::{impl#1}::explode_impl::{closure_env#0}>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0EB1j_", scope: !10030, file: !10028, line: 89, type: !8812, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227034 = distinct !DILexicalBlock(scope: !227033, file: !10028, line: 96, column: 5)
!227035 = distinct !DILocation(line: 65, column: 34, scope: !227030)
!227036 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBI_", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227037 = distinct !DISubprogram(name: "new<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE3newB1n_", scope: !10034, file: !10028, line: 201, type: !8788, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227038 = distinct !DILexicalBlock(scope: !227034, file: !10028, line: 102, column: 5)
!227039 = distinct !DILexicalBlock(scope: !227038, file: !10028, line: 103, column: 5)
!227040 = distinct !DILexicalBlock(scope: !227039, file: !10028, line: 114, column: 9)
!227041 = distinct !DILocation(line: 115, column: 25, scope: !227040, inlinedAt: !227035)
!227042 = distinct !DILocation(line: 203, column: 88, scope: !227037, inlinedAt: !227041)
!227043 = distinct !DILexicalBlock(scope: !227040, file: !10028, line: 115, column: 9)
!227044 = distinct !DILexicalBlock(scope: !227043, file: !10028, line: 117, column: 9)
!227045 = distinct !DILexicalBlock(scope: !227044, file: !10028, line: 118, column: 9)
!227046 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBK_", scope: !8957, file: !8955, line: 829, type: !8788, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227047 = distinct !DILocation(line: 139, column: 35, scope: !227045, inlinedAt: !227035)
!227048 = distinct !DILexicalBlock(scope: !227045, file: !10028, line: 139, column: 13)
!227049 = distinct !DISubprogram(name: "sub<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3subBI_", scope: !8798, file: !8796, line: 1033, type: !8788, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227050 = distinct !DISubprogram(name: "partition_one<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_", scope: !10034, file: !10028, line: 215, type: !8788, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227051 = distinct !DILocation(line: 141, column: 23, scope: !227048, inlinedAt: !227035)
!227052 = distinct !DILocation(line: 222, column: 49, scope: !227050, inlinedAt: !227051)
!227053 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBI_", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227054 = distinct !DILexicalBlock(scope: !227050, file: !10028, line: 226, column: 13)
!227055 = distinct !DILocation(line: 227, column: 32, scope: !227054, inlinedAt: !227051)
!227056 = distinct !{!227056, !227031, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0EB1j_: argument 0"}
!227057 = distinct !{!227057, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_"}
!227058 = distinct !{!227058, !227057, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_: argument 0"}
!227059 = distinct !DISubprogram(name: "copy_nonoverlapping<polars_core::frame::column::Column>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEBS_", scope: !8790, file: !8834, line: 531, type: !8788, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227060 = distinct !DILexicalBlock(scope: !227054, file: !10028, line: 227, column: 13)
!227061 = distinct !DILocation(line: 228, column: 13, scope: !227060, inlinedAt: !227051)
!227062 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBK_", scope: !8957, file: !8955, line: 829, type: !8788, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227063 = distinct !DILocation(line: 231, column: 35, scope: !227060, inlinedAt: !227051)
!227064 = distinct !DILocation(line: 150, column: 38, scope: !227048, inlinedAt: !227035)
!227065 = distinct !DILocation(line: 222, column: 49, scope: !227050, inlinedAt: !227064)
!227066 = distinct !DILocation(line: 227, column: 32, scope: !227054, inlinedAt: !227064)
!227067 = distinct !{!227067, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_"}
!227068 = distinct !{!227068, !227067, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_: argument 0"}
!227069 = distinct !DILocation(line: 228, column: 13, scope: !227060, inlinedAt: !227064)
!227070 = distinct !DILocation(line: 231, column: 35, scope: !227060, inlinedAt: !227064)
!227071 = distinct !DISubprogram(name: "copy_nonoverlapping<polars_core::frame::column::Column>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEBS_", scope: !8790, file: !8834, line: 531, type: !8788, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227072 = distinct !DILocation(line: 158, column: 13, scope: !227045, inlinedAt: !227035)
!227073 = distinct !DILexicalBlock(scope: !227045, file: !10028, line: 168, column: 9)
!227074 = distinct !DILocation(line: 169, column: 9, scope: !227073, inlinedAt: !227035)
!227075 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !9003, file: !8984, line: 1917, type: !8788, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227076 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs1LHh8CLbVkQ_11polars_core", scope: !9006, file: !9004, line: 780, type: !8788, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227077 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !9007, file: !9004, line: 865, type: !8788, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227078 = distinct !DILexicalBlock(scope: !227073, file: !10028, line: 172, column: 9)
!227079 = distinct !DILocation(line: 172, column: 18, scope: !227178, inlinedAt: !227035)
!227080 = distinct !DILocation(line: 866, column: 14, scope: !227077, inlinedAt: !227079)
!227081 = distinct !DILocation(line: 781, column: 12, scope: !227076, inlinedAt: !227080)
!227082 = distinct !DILexicalBlock(scope: !227078, file: !10028, line: 172, column: 9)
!227083 = distinct !DILocation(line: 174, column: 30, scope: !227082, inlinedAt: !227035)
!227084 = distinct !DILocation(line: 175, column: 24, scope: !227082, inlinedAt: !227035)
!227085 = distinct !DILocation(line: 173, column: 13, scope: !227082, inlinedAt: !227035)
!227086 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !8928, file: !8926, line: 886, type: !8788, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227087 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !9008, file: !9004, line: 212, type: !8788, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227088 = distinct !DILexicalBlock(scope: !227076, file: !9004, line: 782, column: 13)
!227089 = distinct !DILocation(line: 784, column: 35, scope: !227088, inlinedAt: !227080)
!227090 = distinct !DILocation(line: 214, column: 28, scope: !227087, inlinedAt: !227089)
!227091 = distinct !DISubprogram(name: "split_at_mut_checked<polars_core::frame::column::Column>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column20split_at_mut_checkedBA_", scope: !8786, file: !8783, line: 2192, type: !8788, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227092 = distinct !DISubprogram(name: "split_at_mut<polars_core::frame::column::Column>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_", scope: !8786, file: !8783, line: 1986, type: !8812, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227093 = distinct !DILocation(line: 77, column: 31, scope: !227030)
!227094 = distinct !DILocation(line: 1987, column: 20, scope: !227092, inlinedAt: !227093)
!227095 = distinct !{!227095, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_"}
!227096 = distinct !{!227096, !227095, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_: argument 1"}
!227097 = distinct !{!227097, !227095, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column12split_at_mutBA_: argument 0"}
!227098 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBI_", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227099 = distinct !DISubprogram(name: "split_at_mut_unchecked<polars_core::frame::column::Column>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column22split_at_mut_uncheckedBA_", scope: !8786, file: !8783, line: 2092, type: !8812, scopeLine: 2092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227100 = distinct !DILexicalBlock(scope: !227099, file: !8783, line: 2093, column: 9)
!227101 = distinct !DILexicalBlock(scope: !227100, file: !8783, line: 2094, column: 9)
!227102 = distinct !DILocation(line: 2196, column: 32, scope: !227091, inlinedAt: !227094)
!227103 = distinct !DILocation(line: 2109, column: 40, scope: !227101, inlinedAt: !227102)
!227104 = distinct !DILexicalBlock(scope: !227030, file: !10028, line: 77, column: 9)
!227105 = distinct !{!227105, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0E0EB1j_"}
!227106 = distinct !{!227106, !227105, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0E0EB1j_: argument 0"}
!227107 = distinct !{!227107, !227105, !"_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0E0EB1j_: argument 1"}
!227108 = distinct !DISubprogram(name: "stable_partition<polars_core::frame::column::Column, core::slice::sort::stable::quicksort::quicksort::{closure_env#0}<polars_core::frame::column::Column, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<polars_core::frame::column::Column, usize, polars_core::frame::explode::{impl#1}::explode_impl::{closure_env#0}>>>", linkageName: "_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_11sort_by_keyjNCNvMs_NtB1h_7explodeNtNtB1h_9dataframe9DataFrame12explode_impl0E0E0EB1j_", scope: !10030, file: !10028, line: 89, type: !8812, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227109 = distinct !DILexicalBlock(scope: !227108, file: !10028, line: 96, column: 5)
!227110 = distinct !DILocation(line: 70, column: 26, scope: !227030)
!227111 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBI_", scope: !8798, file: !8796, line: 927, type: !8788, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227112 = distinct !DISubprogram(name: "new<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE3newB1n_", scope: !10034, file: !10028, line: 201, type: !8788, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227113 = distinct !DILexicalBlock(scope: !227109, file: !10028, line: 102, column: 5)
!227114 = distinct !DILexicalBlock(scope: !227113, file: !10028, line: 103, column: 5)
!227115 = distinct !DILexicalBlock(scope: !227114, file: !10028, line: 114, column: 9)
!227116 = distinct !DILocation(line: 115, column: 25, scope: !227115, inlinedAt: !227110)
!227117 = distinct !DILocation(line: 203, column: 88, scope: !227112, inlinedAt: !227116)
!227118 = distinct !DILexicalBlock(scope: !227115, file: !10028, line: 115, column: 9)
!227119 = distinct !DILexicalBlock(scope: !227118, file: !10028, line: 117, column: 9)
!227120 = distinct !DILexicalBlock(scope: !227119, file: !10028, line: 118, column: 9)
!227121 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addBK_", scope: !8957, file: !8955, line: 829, type: !8788, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227122 = distinct !DILocation(line: 139, column: 35, scope: !227120, inlinedAt: !227110)
!227123 = distinct !DILexicalBlock(scope: !227120, file: !10028, line: 139, column: 13)
!227124 = distinct !DISubprogram(name: "{closure#0}<polars_core::frame::column::Column, alloc::slice::{impl#0}::sort_by_key::{closure_env#0}<polars_core::frame::column::Column, usize, polars_core::frame::explode::{impl#1}::explode_impl::{closure_env#0}>>", linkageName: "_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_11sort_by_keyjNCNvMs_NtB1b_7explodeNtNtB1b_9dataframe9DataFrame12explode_impl0E0E0B1d_", scope: !10038, file: !10028, line: 70, type: !8812, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227125 = distinct !DILocation(line: 141, column: 37, scope: !227123, inlinedAt: !227110)
!227126 = distinct !DILocation(line: 141, column: 23, scope: !227123, inlinedAt: !227110)
!227127 = distinct !DILocation(line: 222, column: 49, scope: !227050, inlinedAt: !227126)
!227128 = distinct !DILocation(line: 227, column: 32, scope: !227054, inlinedAt: !227126)
!227129 = distinct !{!227129, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_"}
!227130 = distinct !{!227130, !227129, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_: argument 0"}
!227131 = distinct !DILocation(line: 228, column: 13, scope: !227060, inlinedAt: !227126)
!227132 = distinct !DILocation(line: 231, column: 35, scope: !227060, inlinedAt: !227126)
!227133 = distinct !DILocation(line: 150, column: 38, scope: !227123, inlinedAt: !227110)
!227134 = distinct !DILocation(line: 222, column: 49, scope: !227050, inlinedAt: !227133)
!227135 = distinct !DILocation(line: 227, column: 32, scope: !227054, inlinedAt: !227133)
!227136 = distinct !{!227136, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_"}
!227137 = distinct !{!227137, !227136, !"_RNvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE13partition_oneB1n_: argument 0"}
!227138 = distinct !DILocation(line: 228, column: 13, scope: !227060, inlinedAt: !227133)
!227139 = distinct !DILocation(line: 231, column: 35, scope: !227060, inlinedAt: !227133)
!227140 = distinct !DISubprogram(name: "copy_nonoverlapping<polars_core::frame::column::Column>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEBS_", scope: !8790, file: !8834, line: 531, type: !8788, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227141 = distinct !DILocation(line: 158, column: 13, scope: !227120, inlinedAt: !227110)
!227142 = distinct !DILexicalBlock(scope: !227120, file: !10028, line: 168, column: 9)
!227143 = distinct !DILocation(line: 169, column: 9, scope: !227142, inlinedAt: !227110)
!227144 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !9003, file: !8984, line: 1917, type: !8788, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
!227145 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs1LHh8CLbVkQ_11polars_core", scope: !9006, file: !9004, line: 780, type: !8788, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !8787)
end_hunk_5
