Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9838
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter13finish_region:bb.a
  store i64 %i.qa, ptr %i.gx, align 8, !alias.scope !27936
  br label %bb.bh

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit102.i
  %i.qb = inttoptr i64 %.sroa.6123.0161.i to ptr
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit168.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.i
  %i.qc = inttoptr i64 %.sroa.6116.0152.i to ptr
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.thread.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.thread.loopexit.i, %bb.av
  %.sroa.6112.0156.i = phi i64 [ %.sroa.9.0151.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.i ], [ 0, %bb.av ], [ %i.nx, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.thread.loopexit.i ] ; 2 uses
  %i.qd = bitcast i64 %.sroa.6112.0156.i to double
  %i.qe = load double, ptr %i.mx, align 8, !alias.scope !27902, !noundef !41
  %i.qf = fadd double %i.qe, %i.qd                ; 2 uses
  %.inv73.i = fcmp ord double %i.qf, 0.000000e+00
  %spec.store.select7.i = select i1 %.inv73.i, double %i.qf, double 0.000000e+00
  store double %spec.store.select7.i, ptr %i.mx, align 8, !alias.scope !27902
  call void @llvm.experimental.noalias.scope.decl(metadata !27939)
  %i.qg = load i64, ptr %i.ge, align 8, !alias.scope !27940, !noundef !41 ; 3 uses
  %i.qh = load i64, ptr %i.my, align 8, !range !45, !alias.scope !27940, !noundef !41
  %i.qi = icmp eq i64 %i.qg, %i.qh
  br i1 %i.qi, label %bb.bk, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8push_mutCs7tN9tvpkfrg_12typst_layout.exit103.i

bb.bk:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.thread.i
  call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.my) #58, !inline_history !27768
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8push_mutCs7tN9tvpkfrg_12typst_layout.exit103.i

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8push_mutCs7tN9tvpkfrg_12typst_layout.exit103.i: ; preds = %bb.bk, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_header_rows.exit.thread.i
  %i.qj = load ptr, ptr %i.ng, align 8, !alias.scope !27940, !nonnull !41, !noundef !41
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.qg
  store i64 %.sroa.6112.0156.i, ptr %i.qk, align 8, !noalias !27939
  %i.ql = add i64 %i.qg, 1
  store i64 %i.ql, ptr %i.ge, align 8, !alias.scope !27940
  %i.qm = add nuw i64 %.sroa.025.0199.i, 1        ; 2 uses
  %i.qn = load i64, ptr %i.gx, align 8, !alias.scope !27902, !noundef !41
  %i.qo = icmp ult i64 %i.qm, %i.qn
  br i1 %i.qo, label %bb.av, label %._crit_edge.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit: ; preds = %bb.ap, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit168.i
  %.sroa.6.1.i = phi i64 [ %.sroa.9124.0160.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit.i ], [ %i.ml, %bb.ap ], [ %.sroa.9.0151.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit168.i ]
  %.sroa.0.1.i = phi ptr [ %i.qb, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit.i ], [ %i.mj, %bb.ap ], [ %i.qc, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit.loopexit168.i ] ; 3 uses
  %i.qp = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.qq = insertvalue { ptr, i64 } %i.qp, i64 %.sroa.6.1.i, 1
  %.not168 = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not168, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread404, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit, %bb.ab
  %.pn = phi { ptr, i64 } [ %i.gn, %bb.ab ], [ %i.qq, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit ], [ %i.ie, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread404 ]
  %.sroa.0.0 = phi ptr [ %i.go, %bb.ab ], [ %.sroa.0.1.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit ], [ %i.hw, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread404 ]
  %.sroa.7.0 = extractvalue { ptr, i64 } %.pn, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit211

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit211: ; preds = %bb.cv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceEEB1e_.exit, %bb.bl
  %.sroa.7.1 = phi i64 [ %.sroa.7.0, %bb.bl ], [ %.sroa.7.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceEEB1e_.exit ], [ %.sroa.7.3, %bb.cv ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.bl ], [ %.sroa.0.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceEEB1e_.exit ], [ %.sroa.0.3, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit414, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit211, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread
  %.sroa.7.2 = phi i64 [ %.sroa.7.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit211 ], [ undef, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread ], [ %.sroa.8.015.i, %.loopexit414 ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit211 ], [ null, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread ], [ %.sroa.6.016.i, %.loopexit414 ]
  %i.qr = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %i.qs = insertvalue { ptr, i64 } %i.qr, i64 %.sroa.7.2, 1
  ret { ptr, i64 } %i.qs

bb.bn:                                            ; preds = %bb.x
  %i.qt = load double, ptr %i.fg, align 8, !noundef !41
  %i.qu = fadd double %spec.store.select4, %i.qt  ; 2 uses
  %.inv169 = fcmp ord double %i.qu, 0.000000e+00
  %spec.store.select5 = select i1 %.inv169, double %i.qu, double 0.000000e+00
  %i.qv = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout2frNtB2_2Fr5share(double noundef %.sroa.10.16.copyload, double noundef %.sroa.0103.0.lcssa, double noundef %spec.store.select5)
          to label %bb.bq unwind label %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.x
  %.sroa.14.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.qw = bitcast double %.sroa.10.16.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.963, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.16..sroa.7.0..sroa_idx2.i.sroa_idx, i64 16, i1 false)
  %i.qx = trunc nuw i8 %.sroa.16.16.copyload to i1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %bb.bo
  %.sroa.762.0 = phi i64 [ %.sroa.6127.0.copyload, %bb.bt ], [ %.sroa.13.16.copyload, %bb.bo ]
  %.sroa.561.0 = phi i64 [ %i.re, %bb.bt ], [ %.sroa.12.16.copyload, %bb.bo ]
  %.sroa.360.0 = phi i64 [ %i.rf, %bb.bt ], [ %i.qw, %bb.bo ]
  %.sroa.059.0 = phi i64 [ %i.rb, %bb.bt ], [ %.sroa.0.0.copyload1.i, %bb.bo ]
  %.sroa.047.0 = phi i64 [ %.sroa.12.16.copyload, %bb.bt ], [ %.sroa.15.16.copyload, %bb.bo ] ; 7 uses
  %.sroa.045.0 = phi i1 [ true, %bb.bt ], [ %i.qx, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.059.0, ptr %i.s, align 8
  store i64 %.sroa.360.0, ptr %.sroa.360.0..sroa_idx, align 8
  store i64 %.sroa.561.0, ptr %.sroa.561.0..sroa_idx, align 8
  store i64 %.sroa.762.0, ptr %.sroa.762.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.963.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.963, i64 16, i1 false)
  %i.qy = load double, ptr %.sroa.963.0..sroa_idx, align 8, !noundef !41 ; 4 uses
  %i.qz = load i64, ptr %i.fj, align 8, !noundef !41
  %i.ra = icmp ult i64 %i.fv, %i.qz
  br i1 %i.ra, label %bb.bu, label %bb.bv

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter17layout_single_row(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.r, ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i64 noundef %.sroa.13.16.copyload, double noundef %i.qv, i64 noundef %.sroa.12.16.copyload)
          to label %bb.br unwind label %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.rb = load i64, ptr %i.r, align 8, !range !52, !noundef !41 ; 2 uses
  %i.rc = icmp eq i64 %i.rb, 2
  %i.rd = load ptr, ptr %.sroa.4125.0..sroa_idx, align 8 ; 2 uses
  %i.re = load i64, ptr %.sroa.5126.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.rc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ci

bb.bt:                                            ; preds = %bb.br
  %.sroa.6127.0.copyload = load i64, ptr %.sroa.6127.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.963, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7128.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.rf = ptrtoint ptr %i.rd to i64
  br label %bb.bp

bb.bu:                                            ; preds = %bb.bp
  %i.rg = fadd double %.sroa.0129.0316, %i.qy     ; 2 uses
  %.inv170 = fcmp ord double %i.rg, 0.000000e+00
  %spec.store.select6 = select i1 %.inv170, double %i.rg, double 0.000000e+00
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bp, %bb.bu
  %.sroa.0129.1 = phi double [ %spec.store.select6, %bb.bu ], [ %.sroa.0129.0316, %bb.bp ] ; 3 uses
  %i.rh = load ptr, ptr %i.fk, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.ri = load i64, ptr %i.fl, align 8, !noundef !41 ; 2 uses
  %.idx321 = mul nuw nsw i64 %i.ri, 112
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.idx321 ; 2 uses
  %i.rk = icmp eq i64 %i.ri, 0
  br i1 %i.rk, label %._crit_edge311, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %.lr.ph.i.backedge
  %i.rl = phi ptr [ %i.rm, %.lr.ph.i.backedge ], [ %i.rh, %bb.bv ] ; 14 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 112 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 48
  %i.ro = load i64, ptr %i.rn, align 8, !alias.scope !27941, !noalias !27942, !noundef !41 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 64
  %i.rq = load i64, ptr %i.rp, align 8, !alias.scope !27941, !noalias !27942, !noundef !41
  %i.rr = add i64 %i.rq, %i.ro
  %.not.i.i.i.i = icmp ule i64 %i.ro, %.sroa.047.0
  %i.rs = icmp ult i64 %.sroa.047.0, %i.rr
  %.sroa.0.0.i.i.i.i = and i1 %.not.i.i.i.i, %i.rs
  br i1 %.sroa.0.0.i.i.i.i, label %bb.bw, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldQNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtB1a_8layouterNtB2S_12GridLayouter13finish_regions0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2N_s1_0E0E0B1c_.exit.i

bb.bw:                                            ; preds = %.lr.ph.i
  %i.rt = load i64, ptr %i.rl, align 8, !range !49, !alias.scope !27943, !noalias !27942, !noundef !41
  %i.ru = trunc nuw i64 %i.rt to i1
  br i1 %i.ru, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtBV_12GridLayouter13finish_regions1_0INtB7_5FnMutTRQNtNtBX_8rowspans7RowspanEE8call_mutBZ_.exit.i.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters6filter15filter_try_foldQBM_uINtNtNtBa_3ops12control_flow11ControlFlowB3g_ENCNvMs_NtBQ_8layouterNtB4c_12GridLayouter13finish_regions0_0NCINvNvB1H_4find5checkB3g_QNCB47_s1_0E0E0B3l_EBS_.exit

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtBV_12GridLayouter13finish_regions1_0INtB7_5FnMutTRQNtNtBX_8rowspans7RowspanEE8call_mutBZ_.exit.i.i.i: ; preds = %bb.bw
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !alias.scope !27943, !noalias !27942
  %.fr.i.i.i = freeze i64 %i.rw
  %i.rx = icmp ugt i64 %.sroa.047.0, %.fr.i.i.i
  br i1 %i.rx, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters6filter15filter_try_foldQBM_uINtNtNtBa_3ops12control_flow11ControlFlowB3g_ENCNvMs_NtBQ_8layouterNtB4c_12GridLayouter13finish_regions0_0NCINvNvB1H_4find5checkB3g_QNCB47_s1_0E0E0B3l_EBS_.exit, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldQNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtB1a_8layouterNtB2S_12GridLayouter13finish_regions0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2N_s1_0E0E0B1c_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldQNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtB1a_8layouterNtB2S_12GridLayouter13finish_regions0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2N_s1_0E0E0B1c_.exit.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtBV_12GridLayouter13finish_regions1_0INtB7_5FnMutTRQNtNtBX_8rowspans7RowspanEE8call_mutBZ_.exit.i.i.i, %.lr.ph.i
  %i.ry = icmp eq ptr %i.rm, %i.rj
  br i1 %i.ry, label %.loopexit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldQNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtB1a_8layouterNtB2S_12GridLayouter13finish_regions0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2N_s1_0E0E0B1c_.exit.i, %bb.cp
  br label %.lr.ph.i

.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %bb.bq, %bb.bz, %._crit_edge311, %bb.cg
  %lpad.loopexit.split-lp665 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters6filter15filter_try_foldQBM_uINtNtNtBa_3ops12control_flow11ControlFlowB3g_ENCNvMs_NtBQ_8layouterNtB4c_12GridLayouter13finish_regions0_0NCINvNvB1H_4find5checkB3g_QNCB47_s1_0E0E0B3l_EBS_.exit: ; preds = %bb.bw, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtBV_12GridLayouter13finish_regions1_0INtB7_5FnMutTRQNtNtBX_8rowspans7RowspanEE8call_mutBZ_.exit.i.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rl, i64 88 ; 2 uses
  %i.sa = load i64, ptr %i.rz, align 8, !noundef !41 ; 2 uses
  %i.sb = icmp ugt i64 %i.sa, %i.fd
  br i1 %i.sb, label %bb.cj, label %bb.ck

.loopexit:                                        ; preds = %bb.cp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldQNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtB1a_8layouterNtB2S_12GridLayouter13finish_regions0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2N_s1_0E0E0B1c_.exit.i
  %.pr = load i64, ptr %i.fl, align 8             ; 2 uses
  %.not322 = icmp eq i64 %.pr, 0
  br i1 %.not322, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %.loopexit
  %i.sc = icmp ult i64 %.sroa.047.0, %.sroa.4.1368
  %i.sd = add i64 %.sroa.047.0, 1                 ; 2 uses
  %i.se = load ptr, ptr %i.fk, align 8, !nonnull !41
  %i.sf = select i1 %.sroa.014.1369.not, i1 true, i1 %i.sc
  br label %bb.bx

._crit_edge311:                                   ; preds = %bb.cc, %bb.bv, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u, double noundef 0.000000e+00, double noundef %.sroa.624.0317, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.by unwind label %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %.lr.ph310, %bb.cc
  %i.sg = phi i64 [ %.pr, %.lr.ph310 ], [ %i.te, %bb.cc ] ; 4 uses
  %.sroa.071.0308 = phi i64 [ 0, %.lr.ph310 ], [ %.sroa.071.1, %bb.cc ] ; 6 uses
  %i.sh = load ptr, ptr %i.fk, align 8, !nonnull !41, !noundef !41
  %i.si = getelementptr inbounds nuw [112 x i8], ptr %i.sh, i64 %.sroa.071.0308 ; 2 uses
  %i.sj = getelementptr i8, ptr %i.si, i64 48
  %.val198 = load i64, ptr %i.sj, align 8         ; 2 uses
  %i.sk = icmp uge i64 %.val198, %.sroa.4.1368
  %or.cond382 = select i1 %i.sf, i1 true, i1 %i.sk
  br i1 %or.cond382, label %._crit_edge337, label %bb.cb

bb.by:                                            ; preds = %._crit_edge311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.sl = load i64, ptr %i.n, align 8, !range !45, !noundef !41
  %i.sm = icmp eq i64 %i.fv, %i.sl
  br i1 %i.sm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #58
          to label %._crit_edge339 unwind label %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge339:                                   ; preds = %bb.bz
  %.pre340 = load ptr, ptr %i.fa, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge339, %bb.by
  %i.sn = phi ptr [ %.pre340, %._crit_edge339 ], [ %i.fu, %bb.by ] ; 2 uses
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sn, i64 %i.fv ; 2 uses
  store double %i.qy, ptr %i.so, align 8, !noalias !27944
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store i64 %.sroa.047.0, ptr %i.sp, align 8, !noalias !27944
  store i64 %i.fy, ptr %i.fb, align 8
  %i.sq = fadd double %.sroa.624.0317, %i.qy      ; 2 uses
  %.inv172 = fcmp ord double %i.sq, 0.000000e+00
  %spec.store.select7 = select i1 %.inv172, double %i.sq, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.sr = icmp eq ptr %i.fx, %i.ek
  br i1 %i.sr, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i

._crit_edge337:                                   ; preds = %bb.bx
  %i.ss = getelementptr inbounds nuw i8, ptr %i.si, i64 64
  %i.st = load i64, ptr %i.ss, align 8, !noundef !41
  %i.su = add i64 %i.st, %.val198                 ; 2 uses
  %i.sv = icmp ult i64 %i.su, %i.sd
  %i.sw = icmp eq i64 %i.su, %i.sd
  %or.cond = select i1 %i.sw, i1 %.sroa.045.0, i1 false
  %or.cond190 = select i1 %i.sv, i1 true, i1 %or.cond
  br i1 %or.cond190, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.bx, %._crit_edge337
  %i.sx = add nuw i64 %.sroa.071.0308, 1
  br label %bb.cc

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.i: ; preds = %._crit_edge337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !27945)
  call void @llvm.experimental.noalias.scope.decl(metadata !27946)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !27947)
  %3 = icmp ult i64 %i.sg, 82351536043346213
  call void @llvm.assume(i1 %3)
  %i.sy = getelementptr inbounds nuw [112 x i8], ptr %i.se, i64 %.sroa.071.0308 ; 4 uses
  %.sroa.0.0.copyload1.i204 = load i64, ptr %i.sy, align 8, !noalias !27948 ; 2 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx2.i, i64 104, i1 false), !noalias !27948
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 112
  %i.ta = xor i64 %.sroa.071.0308, -1
  %i.tb = add nsw i64 %i.sg, %i.ta
  %i.tc = mul nuw nsw i64 %i.tb, 112
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sy, ptr nonnull align 8 %i.sz, i64 %i.tc, i1 false), !noalias !27949
  %i.td = add nsw i64 %i.sg, -1                   ; 3 uses
  store i64 %i.td, ptr %i.fl, align 8, !alias.scope !27950
  %.not.i205 = icmp eq i64 %.sroa.0.0.copyload1.i204, 2
  br i1 %.not.i205, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.thread.i, label %bb.cd, !prof !47

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.thread.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.i
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.071.0308, i64 noundef %i.td, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #53
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.thread.i
  unreachable

bb.cc:                                            ; preds = %bb.ch, %bb.cb
  %i.te = phi i64 [ %i.td, %bb.ch ], [ %i.sg, %bb.cb ] ; 2 uses
  %.sroa.071.1 = phi i64 [ %.sroa.071.0308, %bb.ch ], [ %i.sx, %bb.cb ] ; 2 uses
  %i.tf = icmp ult i64 %.sroa.071.1, %i.te
  br i1 %i.tf, label %bb.bx, label %._crit_edge311

bb.cd:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.i
  store i64 %.sroa.0.0.copyload1.i204, ptr %i.q, align 8, !alias.scope !27945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.i, i64 104, i1 false), !noalias !27946
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.tg = invoke fastcc { ptr, i64 } @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter14layout_rowspan(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(48) %i.u, double %.sroa.0129.1, ptr noalias nofree noundef align 8 dereferenceable(200) %1)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.th = extractvalue { ptr, i64 } %i.tg, 0      ; 2 uses
  %.not173 = icmp eq ptr %i.th, null
  br i1 %.not173, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ti = extractvalue { ptr, i64 } %i.tg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !27951)
  call void @llvm.experimental.noalias.scope.decl(metadata !27952)
  call void @llvm.experimental.noalias.scope.decl(metadata !27953)
  %i.tj = load ptr, ptr %.sroa.561.0..sroa_idx, align 8, !alias.scope !27954, !nonnull !41, !noundef !41
  %i.tk = atomicrmw add ptr %i.tj, i64 -1 release, align 8, !noalias !27954
  %i.tl = icmp eq i64 %i.tk, 1
  br i1 %i.tl, label %bb.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.561.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.bs
  %.sroa.7.3 = phi i64 [ %i.re, %bb.bs ], [ %i.ti, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.rd, %bb.bs ], [ %i.th, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t)
          to label %bb.ct unwind label %bb.y

bb.cj:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters6filter15filter_try_foldQBM_uINtNtNtBa_3ops12control_flow11ControlFlowB3g_ENCNvMs_NtBQ_8layouterNtB4c_12GridLayouter13finish_regions0_0NCINvNvB1H_4find5checkB3g_QNCB47_s1_0E0E0B3l_EBS_.exit
  store i64 %i.fd, ptr %i.rz, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rl, i64 80
  store double %.sroa.624.0317, ptr %i.tm, align 8
  %i.tn = load double, ptr %i.fg, align 8, !noundef !41
  %i.to = getelementptr inbounds nuw i8, ptr %i.rl, i64 96
  store double %i.tn, ptr %i.to, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters6filter15filter_try_foldQBM_uINtNtNtBa_3ops12control_flow11ControlFlowB3g_ENCNvMs_NtBQ_8layouterNtB4c_12GridLayouter13finish_regions0_0NCINvNvB1H_4find5checkB3g_QNCB47_s1_0E0E0B3l_EBS_.exit, %bb.cj
  %i.tp = phi i64 [ %i.sa, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7IterMutNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters6filter15filter_try_foldQBM_uINtNtNtBa_3ops12control_flow11ControlFlowB3g_ENCNvMs_NtBQ_8layouterNtB4c_12GridLayouter13finish_regions0_0NCINvNvB1H_4find5checkB3g_QNCB47_s1_0E0E0B3l_EBS_.exit ], [ %i.fd, %bb.cj ]
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.rl, i64 32 ; 3 uses
  %i.ts = load i64, ptr %i.tr, align 8, !noundef !41 ; 6 uses
  %i.tt = icmp ult i64 %i.ts, 1152921504606846976
  call void @llvm.assume(i1 %i.tt)
  %i.tu = add nuw nsw i64 %i.ts, %i.tp            ; 2 uses
  %.not174.not.not = icmp samesign ult i64 %i.fd, %i.tu
  br i1 %.not174.not.not, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tv = sub nuw nsw i64 %i.fm, %i.tu            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27955)
  %i.tw = load i64, ptr %i.tq, align 8, !range !45, !alias.scope !27956, !noundef !41
  %i.tx = sub nsw i64 %i.tw, %i.ts
  %i.ty = icmp ugt i64 %i.tv, %i.tx
  br i1 %i.ty, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.thread.i, label %.lr.ph.i.i.i, !prof !147

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.thread.i: ; preds = %bb.cl
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tq, i64 noundef %i.ts, i64 noundef range(i64 0, 192153584101141164) %i.tv, i64 noundef 8, i64 noundef 8)
          to label %.noexc208 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc208:                                        ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.thread.i
  %i.tz = load i64, ptr %i.tr, align 8, !alias.scope !27955, !noundef !41
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cl, %.noexc208
  %i.ua = phi i64 [ %i.tz, %.noexc208 ], [ %i.ts, %bb.cl ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.ub = load ptr, ptr %.in.i, align 8, !alias.scope !27955, !nonnull !41, !noundef !41
  %i.uc = shl i64 %i.ua, 3
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.ub, i64 %i.uc
  %i.ud = shl nuw nsw i64 %i.tv, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i, i8 0, i64 %i.ud, i1 false), !noalias !27957
  %i.ue = add i64 %i.ua, %i.tv
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.thread

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.thread: ; preds = %bb.ck, %.lr.ph.i.i.i
  %.val6.i.i.i = phi i64 [ %i.ue, %.lr.ph.i.i.i ], [ %i.ts, %bb.ck ] ; 3 uses
  store i64 %.val6.i.i.i, ptr %i.tr, align 8, !alias.scope !27955, !noalias !27958
  %.not175 = icmp eq i64 %.val6.i.i.i, 0
  br i1 %.not175, label %bb.cm, label %bb.cn, !prof !44

bb.cm:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.thread
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #57
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.thread
  %i.uf = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.ug = load ptr, ptr %i.uf, align 8, !nonnull !41, !noundef !41
  %i.uh = getelementptr [8 x i8], ptr %i.ug, i64 %.val6.i.i.i
  %i.ui = getelementptr i8, ptr %i.uh, i64 -8     ; 2 uses
  %i.uj = load double, ptr %i.ui, align 8, !noundef !41
  %i.uk = fadd double %i.qy, %i.uj                ; 2 uses
  %.inv178 = fcmp ord double %i.uk, 0.000000e+00
  %spec.store.select9 = select i1 %.inv178, double %i.uk, double 0.000000e+00
  store double %spec.store.select9, ptr %i.ui, align 8
  br i1 %.sroa.045.0, label %bb.cq, label %bb.cp

bb.co:                                            ; preds = %bb.cm
  unreachable

bb.cp:                                            ; preds = %bb.cq, %bb.cn
  %i.ul = icmp eq ptr %i.rm, %i.rj
  br i1 %i.ul, label %.loopexit, label %.lr.ph.i.backedge

bb.cq:                                            ; preds = %bb.cn
  store i64 1, ptr %i.rl, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store i64 %.sroa.047.0, ptr %i.um, align 8
  br label %bb.cp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cd, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.thread.i, %bb.cm, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanE10try_removeBK_.exit.thread.i
  %lpad.loopexit.split-lp662 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27959)
  call void @llvm.experimental.noalias.scope.decl(metadata !27960)
  call void @llvm.experimental.noalias.scope.decl(metadata !27961)
  %i.un = load ptr, ptr %.sroa.561.0..sroa_idx, align 8, !alias.scope !27962, !nonnull !41, !noundef !41
  %i.uo = atomicrmw add ptr %i.un, i64 -1 release, align 8, !noalias !27962
  %i.up = icmp eq i64 %i.uo, 1
  br i1 %i.up, label %bb.cr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210

bb.cr:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.561.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cy, %bb.cr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.ct:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val192 = load i64, ptr %i.n, align 8          ; 2 uses
  %i.ur = icmp eq i64 %.val192, 0
  br i1 %i.ur, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceEEB1e_.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.val193 = load ptr, ptr %i.fa, align 8, !nonnull !41, !noundef !41
  %i.us = shl nuw i64 %.val192, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val193, i64 noundef %i.us, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceEEB1e_.exit: ; preds = %bb.cu, %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !27963)
  %i.ut = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27964)
  call void @llvm.experimental.noalias.scope.decl(metadata !27965)
  %i.uu = load ptr, ptr %i.ut, align 8, !alias.scope !27966, !nonnull !41, !noundef !41
  %i.uv = atomicrmw add ptr %i.uu, i64 -1 release, align 8, !noalias !27966
  %i.uw = icmp eq i64 %i.uv, 1
  br i1 %i.uw, label %bb.cv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit211

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceEEB1e_.exit
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ut) #58
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit211

.thread236:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210, %bb.y
  %.pn179240 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.y ], [ %.pn176, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210 ] ; 2 uses
  %.val = load i64, ptr %i.n, align 8             ; 2 uses
  %i.ux = icmp eq i64 %.val, 0
  br i1 %i.ux, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.thread236
  %.val191 = load ptr, ptr %i.fa, align 8, !nonnull !41, !noundef !41
  %i.uy = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val191, i64 noundef %i.uy, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %bb.cx

bb.cx:                                            ; preds = %.thread236, %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !27967)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27968)
end_hunk_0
