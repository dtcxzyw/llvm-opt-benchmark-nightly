Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.12?download=true
inline.NumInlined: 9660
inline.NumDeleted: 4069
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtB1a_4sort18arg_sort_ascendingB16_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4o_5BlockRSB16_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr:bb.a
.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.preheader, %.lr.ph.i63.us
  %.sroa.9.147.i.us = phi ptr [ %i.fq, %.lr.ph.i63.us ], [ %.sroa.9.0.i51, %.lr.ph.i63.preheader ] ; 3 uses
  %.sroa.27.146.i.us = phi i64 [ %i.fp, %.lr.ph.i63.us ], [ %.sroa.27.0.i50, %.lr.ph.i63.preheader ] ; 2 uses
  %.sroa.43.145.i.us = phi ptr [ %i.fn, %.lr.ph.i63.us ], [ %.sroa.43.0.i49, %.lr.ph.i63.preheader ]
  %i.fj = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.146.i.us, !dbg !56836 ; 2 uses
  %i.fk = load <2 x i64>, ptr %.sroa.9.147.i.us, align 4, !dbg !56837, !alias.scope !56637, !noalias !56638
  store <2 x i64> %i.fk, ptr %i.fj, align 4, !dbg !56837, !alias.scope !56638, !noalias !56637
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i.us, i64 16, !dbg !56838
  %i.fm = getelementptr i8, ptr %i.fj, i64 16, !dbg !56839
  %i.fn = getelementptr inbounds i8, ptr %.sroa.43.145.i.us, i64 -32, !dbg !56840 ; 2 uses
  %i.fo = load <2 x i64>, ptr %i.fl, align 4, !dbg !56841, !alias.scope !56637, !noalias !56638
  store <2 x i64> %i.fo, ptr %i.fm, align 4, !dbg !56841, !alias.scope !56638, !noalias !56637
  %i.fp = add i64 %.sroa.27.146.i.us, 4, !dbg !56842 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i.us, i64 32, !dbg !56843 ; 3 uses
  %i.fr = icmp ult ptr %i.fq, %i.fe, !dbg !56835
  br i1 %i.fr, label %.lr.ph.i63.us, label %._crit_edge.i53, !dbg !56835

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader, %bb.ch
  %.sroa.9.147.i = phi ptr [ %i.hk, %bb.ch ], [ %.sroa.9.0.i51, %.lr.ph.i63.preheader ] ; 7 uses
  %.sroa.27.146.i = phi i64 [ %i.hj, %bb.ch ], [ %.sroa.27.0.i50, %.lr.ph.i63.preheader ] ; 4 uses
  %.sroa.43.145.i = phi ptr [ %i.he, %bb.ch ], [ %.sroa.43.0.i49, %.lr.ph.i63.preheader ] ; 5 uses
  %.val22.i64 = load i16, ptr %.sroa.9.147.i, align 2, !dbg !56844, !alias.scope !56637, !noalias !56638 ; 5 uses
  %i.fs = and i16 %.val22.i64, 32767, !dbg !56845
  %i.ft = icmp samesign ugt i16 %i.fs, 31744, !dbg !56845
  br i1 %i.ft, label %.thread.i, label %bb.bn, !dbg !56846

bb.bn:                                            ; preds = %.lr.ph.i63
  %.not.i4.i.i.i.i = icmp sgt i16 %.val22.i64, -1, !dbg !56847 ; 2 uses
  br i1 %i.fi, label %bb.bo, label %bb.bp, !dbg !56848

bb.bo:                                            ; preds = %bb.bn
  %.not22.i.i.i.i = icmp samesign ult i16 %.val23.i65, %.val22.i64
  %or.cond.i.i.i = select i1 %.not.i4.i.i.i.i, i1 %.not22.i.i.i.i, i1 false, !dbg !56848
  br i1 %or.cond.i.i.i, label %.thread.i, label %.thread31.i, !dbg !56848

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not.i4.i.i.i.i, label %.split.i.i.i.i, label %bb.bq, !dbg !56848

.split.i.i.i.i:                                   ; preds = %bb.bp
  %i.fu = or i16 %i.fg, %.val22.i64, !dbg !56849
  %.not.i.i.i.i = icmp eq i16 %i.fu, 0, !dbg !56849
  br i1 %.not.i.i.i.i, label %.thread31.i, label %.thread.i, !dbg !56850

bb.bq:                                            ; preds = %bb.bp
  %.not21.i.i.i.i = icmp samesign ult i16 %.val22.i64, %.val23.i65, !dbg !56851
  br i1 %.not21.i.i.i.i, label %.thread.i, label %.thread31.i, !dbg !56850

.thread.i:                                        ; preds = %bb.bq, %.split.i.i.i.i, %bb.bo, %.lr.ph.i63
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -8, !dbg !56852
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.sroa.27.146.i, !dbg !56836
  %i.fx = load i64, ptr %.sroa.9.147.i, align 4, !dbg !56837, !alias.scope !56637, !noalias !56641
  store i64 %i.fx, ptr %i.fw, align 4, !dbg !56837, !alias.scope !56638, !noalias !56642
  br label %bb.br, !dbg !56853

.thread31.i:                                      ; preds = %bb.bq, %.split.i.i.i.i, %bb.bo
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.146.i, !dbg !56836
  %i.fz = load i64, ptr %.sroa.9.147.i, align 4, !dbg !56837, !alias.scope !56637, !noalias !56643
  store i64 %i.fz, ptr %i.fy, align 4, !dbg !56837, !alias.scope !56638, !noalias !56644
  %i.ga = add i64 %.sroa.27.146.i, 1, !dbg !56854
  br label %bb.br, !dbg !56853

bb.br:                                            ; preds = %.thread31.i, %.thread.i
  %i.gb = phi i64 [ %.sroa.27.146.i, %.thread.i ], [ %i.ga, %.thread31.i ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 8, !dbg !56855 ; 3 uses
  %.val2030.i = load i16, ptr %i.gc, align 2, !dbg !56856, !alias.scope !56637, !noalias !56638 ; 5 uses
  %i.gd = and i16 %.val2030.i, 32767, !dbg !56857
  %i.ge = icmp samesign ugt i16 %i.gd, 31744, !dbg !56857
  br i1 %i.ge, label %.thread33.i, label %bb.bs, !dbg !56858

bb.bs:                                            ; preds = %bb.br
  %.not.i4.i.i.i24.i = icmp sgt i16 %.val2030.i, -1, !dbg !56859 ; 2 uses
  br i1 %i.fi, label %bb.bt, label %bb.bu, !dbg !56860

bb.bt:                                            ; preds = %bb.bs
  %.not22.i.i.i29.i = icmp samesign ult i16 %.val23.i65, %.val2030.i
  %or.cond.i.i30.i = select i1 %.not.i4.i.i.i24.i, i1 %.not22.i.i.i29.i, i1 false, !dbg !56860
  br i1 %or.cond.i.i30.i, label %.thread33.i, label %.thread37.i, !dbg !56860

bb.bu:                                            ; preds = %bb.bs
  br i1 %.not.i4.i.i.i24.i, label %.split.i.i.i27.i, label %bb.bv, !dbg !56860

.split.i.i.i27.i:                                 ; preds = %bb.bu
  %i.gf = or i16 %.val2030.i, %i.fg, !dbg !56861
  %.not.i.i.i28.i = icmp eq i16 %i.gf, 0, !dbg !56861
  br i1 %.not.i.i.i28.i, label %.thread37.i, label %.thread33.i, !dbg !56862

bb.bv:                                            ; preds = %bb.bu
  %.not21.i.i.i25.i = icmp samesign ult i16 %.val2030.i, %.val23.i65, !dbg !56863
  br i1 %.not21.i.i.i25.i, label %.thread33.i, label %.thread37.i, !dbg !56862

.thread33.i:                                      ; preds = %bb.bv, %.split.i.i.i27.i, %bb.bt, %bb.br
  %i.gg = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -16, !dbg !56864
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gb, !dbg !56865
  %i.gi = load i64, ptr %i.gc, align 4, !dbg !56866, !alias.scope !56637, !noalias !56645
  store i64 %i.gi, ptr %i.gh, align 4, !dbg !56866, !alias.scope !56638, !noalias !56646
  br label %bb.bw, !dbg !56867

.thread37.i:                                      ; preds = %bb.bv, %.split.i.i.i27.i, %bb.bt
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gb, !dbg !56865
  %i.gk = load i64, ptr %i.gc, align 4, !dbg !56866, !alias.scope !56637, !noalias !56647
  store i64 %i.gk, ptr %i.gj, align 4, !dbg !56866, !alias.scope !56638, !noalias !56648
  %i.gl = add i64 %i.gb, 1, !dbg !56868
  br label %bb.bw, !dbg !56867

bb.bw:                                            ; preds = %.thread37.i, %.thread33.i
  %i.gm = phi i64 [ %i.gb, %.thread33.i ], [ %i.gl, %.thread37.i ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 16, !dbg !56838 ; 3 uses
  %.val1835.i = load i16, ptr %i.gn, align 2, !dbg !56869, !alias.scope !56637, !noalias !56638 ; 5 uses
  %i.go = and i16 %.val1835.i, 32767, !dbg !56870
  %i.gp = icmp samesign ugt i16 %i.go, 31744, !dbg !56870
  br i1 %i.gp, label %.thread39.i, label %bb.bx, !dbg !56871

bb.bx:                                            ; preds = %bb.bw
  %.not.i4.i.i.i33.i = icmp sgt i16 %.val1835.i, -1, !dbg !56872 ; 2 uses
  br i1 %i.fi, label %bb.by, label %bb.bz, !dbg !56873

bb.by:                                            ; preds = %bb.bx
  %.not22.i.i.i38.i = icmp samesign ult i16 %.val23.i65, %.val1835.i
  %or.cond.i.i39.i = select i1 %.not.i4.i.i.i33.i, i1 %.not22.i.i.i38.i, i1 false, !dbg !56873
  br i1 %or.cond.i.i39.i, label %.thread39.i, label %.thread43.i, !dbg !56873

bb.bz:                                            ; preds = %bb.bx
  br i1 %.not.i4.i.i.i33.i, label %.split.i.i.i36.i, label %bb.ca, !dbg !56873

.split.i.i.i36.i:                                 ; preds = %bb.bz
  %i.gq = or i16 %.val1835.i, %i.fg, !dbg !56874
  %.not.i.i.i37.i = icmp eq i16 %i.gq, 0, !dbg !56874
  br i1 %.not.i.i.i37.i, label %.thread43.i, label %.thread39.i, !dbg !56875

bb.ca:                                            ; preds = %bb.bz
  %.not21.i.i.i34.i = icmp samesign ult i16 %.val1835.i, %.val23.i65, !dbg !56876
  br i1 %.not21.i.i.i34.i, label %.thread39.i, label %.thread43.i, !dbg !56875

.thread39.i:                                      ; preds = %bb.ca, %.split.i.i.i36.i, %bb.by, %bb.bw
  %i.gr = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -24, !dbg !56877
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gm, !dbg !56839
  %i.gt = load i64, ptr %i.gn, align 4, !dbg !56841, !alias.scope !56637, !noalias !56649
  store i64 %i.gt, ptr %i.gs, align 4, !dbg !56841, !alias.scope !56638, !noalias !56650
  br label %bb.cb, !dbg !56878

.thread43.i:                                      ; preds = %bb.ca, %.split.i.i.i36.i, %bb.by
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gm, !dbg !56839
  %i.gv = load i64, ptr %i.gn, align 4, !dbg !56841, !alias.scope !56637, !noalias !56651
  store i64 %i.gv, ptr %i.gu, align 4, !dbg !56841, !alias.scope !56638, !noalias !56652
  %i.gw = add i64 %i.gm, 1, !dbg !56879
  br label %bb.cb, !dbg !56878

bb.cb:                                            ; preds = %.thread43.i, %.thread39.i
  %i.gx = phi i64 [ %i.gm, %.thread39.i ], [ %i.gw, %.thread43.i ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 24, !dbg !56880 ; 2 uses
  %.val1641.i = load i16, ptr %i.gy, align 2, !dbg !56881, !alias.scope !56637, !noalias !56638 ; 5 uses
  %i.gz = and i16 %.val1641.i, 32767, !dbg !56882
  %i.ha = icmp samesign ugt i16 %i.gz, 31744, !dbg !56882
  br i1 %i.ha, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, label %bb.cc, !dbg !56883

bb.cc:                                            ; preds = %bb.cb
  %.not.i4.i.i.i42.i = icmp sgt i16 %.val1641.i, -1, !dbg !56884 ; 2 uses
  br i1 %i.fi, label %bb.cd, label %bb.ce, !dbg !56885

bb.cd:                                            ; preds = %bb.cc
  %.not22.i.i.i47.i = icmp samesign ult i16 %.val23.i65, %.val1641.i
  %or.cond.i.i48.i = select i1 %.not.i4.i.i.i42.i, i1 %.not22.i.i.i47.i, i1 false, !dbg !56885
  br i1 %or.cond.i.i48.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, label %bb.cg, !dbg !56885

bb.ce:                                            ; preds = %bb.cc
  br i1 %.not.i4.i.i.i42.i, label %.split.i.i.i45.i, label %bb.cf, !dbg !56885

.split.i.i.i45.i:                                 ; preds = %bb.ce
  %i.hb = or i16 %.val1641.i, %i.fg, !dbg !56886
  %.not.i.i.i46.i = icmp eq i16 %i.hb, 0, !dbg !56886
  br i1 %.not.i.i.i46.i, label %bb.cg, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, !dbg !56887

bb.cf:                                            ; preds = %bb.ce
  %.not21.i.i.i43.i = icmp samesign ult i16 %.val1641.i, %.val23.i65, !dbg !56888
  br i1 %.not21.i.i.i43.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, label %bb.cg, !dbg !56887

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i: ; preds = %bb.cf, %.split.i.i.i45.i, %bb.cd, %bb.cb
  %i.hc = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !56840 ; 2 uses
  br label %bb.ch, !dbg !56889

bb.cg:                                            ; preds = %bb.cf, %.split.i.i.i45.i, %bb.cd
  %i.hd = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !56840
  br label %bb.ch, !dbg !56889

bb.ch:                                            ; preds = %bb.cg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i
  %i.he = phi ptr [ %i.hd, %bb.cg ], [ %i.hc, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i ] ; 2 uses
  %i.hf = phi i64 [ 1, %bb.cg ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i ]
  %i.hg = phi ptr [ %2, %bb.cg ], [ %i.hc, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i ], !dbg !56889
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.gx, !dbg !56890
  %i.hi = load i64, ptr %i.gy, align 4, !dbg !56891, !alias.scope !56637, !noalias !56653
  store i64 %i.hi, ptr %i.hh, align 4, !dbg !56891, !alias.scope !56638, !noalias !56654
  %i.hj = add i64 %i.gx, %i.hf, !dbg !56842       ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 32, !dbg !56843 ; 3 uses
  %i.hl = icmp ult ptr %i.hk, %i.fe, !dbg !56835
  br i1 %i.hl, label %.lr.ph.i63, label %._crit_edge.i53, !dbg !56835

._crit_edge.i53:                                  ; preds = %bb.ch, %.lr.ph.i63.us, %bb.bm
  %.sroa.43.1.lcssa.i54 = phi ptr [ %.sroa.43.0.i49, %bb.bm ], [ %i.fn, %.lr.ph.i63.us ], [ %i.he, %bb.ch ], !dbg !56832 ; 4 uses
  %.sroa.27.1.lcssa.i55 = phi i64 [ %.sroa.27.0.i50, %bb.bm ], [ %i.fp, %.lr.ph.i63.us ], [ %i.hj, %bb.ch ], !dbg !56832 ; 5 uses
  %.sroa.9.1.lcssa.i56 = phi ptr [ %.sroa.9.0.i51, %bb.bm ], [ %i.fq, %.lr.ph.i63.us ], [ %i.hk, %bb.ch ], !dbg !56832 ; 7 uses
  %.sroa.9.1.lcssa.i56340 = ptrtoaddr ptr %.sroa.9.1.lcssa.i56 to i64, !dbg !56892
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph117, i64 %.sroa.0.0.i52, !dbg !56892 ; 3 uses
  %i.hn = icmp ult ptr %.sroa.9.1.lcssa.i56, %i.hm, !dbg !56893
  br i1 %i.hn, label %.lr.ph54.i.preheader, label %._crit_edge55.i, !dbg !56893

.lr.ph54.i.preheader:                             ; preds = %._crit_edge.i53
  %.val15.i62 = load i16, ptr %i.af, align 2, !alias.scope !56639, !noalias !56640, !noundef !4427 ; 4 uses
  %i.ho = and i16 %.val15.i62, 32767              ; 2 uses
  %i.hp = icmp samesign ugt i16 %i.ho, 31744
  %i.hq = icmp sgt i16 %.val15.i62, -1
  br i1 %i.hp, label %.lr.ph54.i.us.preheader, label %.lr.ph54.i

.lr.ph54.i.us.preheader:                          ; preds = %.lr.ph54.i.preheader
  %i.hr = shl i64 %.sroa.0.0.i52, 3, !dbg !56893
  %i.hs = add i64 %i.hr, %i.d, !dbg !56893
  %i.ht = xor i64 %.sroa.9.1.lcssa.i56340, -1, !dbg !56893
  %i.hu = add i64 %i.hs, %i.ht, !dbg !56893       ; 2 uses
  %i.hv = lshr i64 %i.hu, 3, !dbg !56893
  %i.hw = add nuw nsw i64 %i.hv, 1, !dbg !56893   ; 2 uses
  %min.iters.check341 = icmp ult i64 %i.hu, 24, !dbg !56893
  br i1 %min.iters.check341, label %.lr.ph54.i.us.preheader370, label %vector.ph342, !dbg !56893

vector.ph342:                                     ; preds = %.lr.ph54.i.us.preheader
  %n.vec343 = and i64 %i.hw, 4611686018427387900  ; 5 uses
  %i.hx = shl i64 %n.vec343, 3
  %i.hy = getelementptr i8, ptr %.sroa.9.1.lcssa.i56, i64 %i.hx ; 2 uses
  %i.hz = add i64 %.sroa.27.1.lcssa.i55, %n.vec343 ; 2 uses
  %i.ia = mul i64 %n.vec343, -8
  %i.ib = getelementptr i8, ptr %.sroa.43.1.lcssa.i54, i64 %i.ia ; 2 uses
  %i.ic = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i55
  br label %vector.body344, !dbg !56893

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next348, %vector.body344 ] ; 3 uses
  %i.id = shl i64 %index345, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i56, i64 %i.id ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %i.ic, i64 %index345, !dbg !56894 ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep, i64 16, !dbg !56895
  %wide.load346 = load <2 x i64>, ptr %next.gep, align 4, !dbg !56895, !alias.scope !56637, !noalias !56655
  %wide.load347 = load <2 x i64>, ptr %i.if, align 4, !dbg !56895, !alias.scope !56637, !noalias !56655
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 16, !dbg !56895
  store <2 x i64> %wide.load346, ptr %i.ie, align 4, !dbg !56895, !alias.scope !56638, !noalias !56656
  store <2 x i64> %wide.load347, ptr %i.ig, align 4, !dbg !56895, !alias.scope !56638, !noalias !56656
  %index.next348 = add nuw i64 %index345, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next348, %n.vec343, !dbg !56893
  br i1 %i.ih, label %middle.block349, label %vector.body344, !dbg !56893, !llvm.loop !56561

middle.block349:                                  ; preds = %vector.body344
  %cmp.n350 = icmp eq i64 %i.hw, %n.vec343, !dbg !56893
  br i1 %cmp.n350, label %._crit_edge55.i, label %.lr.ph54.i.us.preheader370, !dbg !56893

.lr.ph54.i.us.preheader370:                       ; preds = %.lr.ph54.i.us.preheader, %middle.block349
  %.sroa.9.252.i.us.ph = phi ptr [ %.sroa.9.1.lcssa.i56, %.lr.ph54.i.us.preheader ], [ %i.hy, %middle.block349 ]
  %.sroa.27.251.i.us.ph = phi i64 [ %.sroa.27.1.lcssa.i55, %.lr.ph54.i.us.preheader ], [ %i.hz, %middle.block349 ]
  %.sroa.43.250.i.us.ph = phi ptr [ %.sroa.43.1.lcssa.i54, %.lr.ph54.i.us.preheader ], [ %i.ib, %middle.block349 ]
  br label %.lr.ph54.i.us, !dbg !56893

.lr.ph54.i.us:                                    ; preds = %.lr.ph54.i.us.preheader370, %.lr.ph54.i.us
  %.sroa.9.252.i.us = phi ptr [ %i.im, %.lr.ph54.i.us ], [ %.sroa.9.252.i.us.ph, %.lr.ph54.i.us.preheader370 ] ; 2 uses
  %.sroa.27.251.i.us = phi i64 [ %i.il, %.lr.ph54.i.us ], [ %.sroa.27.251.i.us.ph, %.lr.ph54.i.us.preheader370 ] ; 2 uses
  %.sroa.43.250.i.us = phi ptr [ %i.ii, %.lr.ph54.i.us ], [ %.sroa.43.250.i.us.ph, %.lr.ph54.i.us.preheader370 ]
  %i.ii = getelementptr inbounds i8, ptr %.sroa.43.250.i.us, i64 -8, !dbg !56896 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.251.i.us, !dbg !56894
  %i.ik = load i64, ptr %.sroa.9.252.i.us, align 4, !dbg !56895, !alias.scope !56637, !noalias !56655
  store i64 %i.ik, ptr %i.ij, align 4, !dbg !56895, !alias.scope !56638, !noalias !56656
  %i.il = add i64 %.sroa.27.251.i.us, 1, !dbg !56897 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i.us, i64 8, !dbg !56898 ; 3 uses
  %i.in = icmp ult ptr %i.im, %i.hm, !dbg !56893
  br i1 %i.in, label %.lr.ph54.i.us, label %._crit_edge55.i, !dbg !56893, !llvm.loop !56564

._crit_edge55.i:                                  ; preds = %bb.cn, %.lr.ph54.i.us, %middle.block349, %._crit_edge.i53
  %.sroa.43.2.lcssa.i57 = phi ptr [ %.sroa.43.1.lcssa.i54, %._crit_edge.i53 ], [ %i.ii, %.lr.ph54.i.us ], [ %i.ib, %middle.block349 ], [ %i.iu, %bb.cn ], !dbg !56832
  %.sroa.27.2.lcssa.i58 = phi i64 [ %.sroa.27.1.lcssa.i55, %._crit_edge.i53 ], [ %i.il, %.lr.ph54.i.us ], [ %i.hz, %middle.block349 ], [ %i.iz, %bb.cn ], !dbg !56832 ; 9 uses
  %.sroa.9.2.lcssa.i59 = phi ptr [ %.sroa.9.1.lcssa.i56, %._crit_edge.i53 ], [ %i.im, %.lr.ph54.i.us ], [ %i.hy, %middle.block349 ], [ %i.ja, %bb.cn ], !dbg !56832 ; 2 uses
  %i.io = icmp eq i64 %.sroa.0.0.i52, %.sroa.16.0104332, !dbg !56899
  br i1 %i.io, label %bb.cp, label %bb.co, !dbg !56899

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %bb.cn
  %.sroa.9.252.i = phi ptr [ %i.ja, %bb.cn ], [ %.sroa.9.1.lcssa.i56, %.lr.ph54.i.preheader ] ; 3 uses
  %.sroa.27.251.i = phi i64 [ %i.iz, %bb.cn ], [ %.sroa.27.1.lcssa.i55, %.lr.ph54.i.preheader ] ; 2 uses
  %.sroa.43.250.i = phi ptr [ %i.iu, %bb.cn ], [ %.sroa.43.1.lcssa.i54, %.lr.ph54.i.preheader ] ; 2 uses
  %.val.i61 = load i16, ptr %.sroa.9.252.i, align 2, !dbg !56900, !alias.scope !56637, !noalias !56638 ; 5 uses
  %i.ip = and i16 %.val.i61, 32767, !dbg !56901
  %i.iq = icmp samesign ugt i16 %i.ip, 31744, !dbg !56901
  br i1 %i.iq, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, label %bb.ci, !dbg !56902

bb.ci:                                            ; preds = %.lr.ph54.i
  %.not.i4.i.i.i51.i = icmp sgt i16 %.val.i61, -1, !dbg !56903 ; 2 uses
  br i1 %i.hq, label %bb.cj, label %bb.ck, !dbg !56904

bb.cj:                                            ; preds = %bb.ci
  %.not22.i.i.i56.i = icmp samesign ult i16 %.val15.i62, %.val.i61
  %or.cond.i.i57.i = select i1 %.not.i4.i.i.i51.i, i1 %.not22.i.i.i56.i, i1 false, !dbg !56904
  br i1 %or.cond.i.i57.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, label %bb.cm, !dbg !56904

bb.ck:                                            ; preds = %bb.ci
  br i1 %.not.i4.i.i.i51.i, label %.split.i.i.i54.i, label %bb.cl, !dbg !56904

.split.i.i.i54.i:                                 ; preds = %bb.ck
  %i.ir = or i16 %i.ho, %.val.i61, !dbg !56905
  %.not.i.i.i55.i = icmp eq i16 %i.ir, 0, !dbg !56905
  br i1 %.not.i.i.i55.i, label %bb.cm, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, !dbg !56906

bb.cl:                                            ; preds = %bb.ck
  %.not21.i.i.i52.i = icmp samesign ult i16 %.val.i61, %.val15.i62, !dbg !56907
  br i1 %.not21.i.i.i52.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, label %bb.cm, !dbg !56906

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i: ; preds = %bb.cl, %.split.i.i.i54.i, %bb.cj, %.lr.ph54.i
  %i.is = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !56896 ; 2 uses
  br label %bb.cn, !dbg !56908

bb.cm:                                            ; preds = %bb.cl, %.split.i.i.i54.i, %bb.cj
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !56896
  br label %bb.cn, !dbg !56908

bb.cn:                                            ; preds = %bb.cm, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i
  %i.iu = phi ptr [ %i.it, %bb.cm ], [ %i.is, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i ] ; 2 uses
  %i.iv = phi i64 [ 1, %bb.cm ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i ]
  %i.iw = phi ptr [ %2, %bb.cm ], [ %i.is, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i ], !dbg !56908
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.27.251.i, !dbg !56894
  %i.iy = load i64, ptr %.sroa.9.252.i, align 4, !dbg !56895, !alias.scope !56637, !noalias !56655
  store i64 %i.iy, ptr %i.ix, align 4, !dbg !56895, !alias.scope !56638, !noalias !56656
  %i.iz = add i64 %i.iv, %.sroa.27.251.i, !dbg !56897 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i, i64 8, !dbg !56898 ; 3 uses
  %i.jb = icmp ult ptr %i.ja, %i.hm, !dbg !56893
  br i1 %i.jb, label %.lr.ph54.i, label %._crit_edge55.i, !dbg !56893

bb.co:                                            ; preds = %._crit_edge55.i
  %i.jc = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i57, i64 -8, !dbg !56909
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i58, !dbg !56910
  %i.je = load i64, ptr %.sroa.9.2.lcssa.i59, align 4, !dbg !56911, !alias.scope !56637, !noalias !56657
  store i64 %i.je, ptr %i.jd, align 4, !dbg !56911, !alias.scope !56638, !noalias !56658
  %i.jf = add i64 %.sroa.27.2.lcssa.i58, 1, !dbg !56912
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i59, i64 8, !dbg !56913
  br label %bb.bm, !dbg !56830

bb.cp:                                            ; preds = %._crit_edge55.i
  %i.jh = shl i64 %.sroa.27.2.lcssa.i58, 3, !dbg !56914
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph117, ptr nonnull align 4 %2, i64 %i.jh, i1 false), !dbg !56914, !alias.scope !56659
  %i.ji = sub i64 %.sroa.16.0104332, %.sroa.27.2.lcssa.i58, !dbg !56915 ; 7 uses
  %.not63.i = icmp eq i64 %.sroa.16.0104332, %.sroa.27.2.lcssa.i58, !dbg !56916
  %i.jj = getelementptr [8 x i8], ptr %.sroa.0.0.ph117, i64 %.sroa.27.2.lcssa.i58 ; 3 uses
  br i1 %.not63.i, label %.outer.thread, label %.lr.ph61.i, !dbg !56917

.lr.ph61.i:                                       ; preds = %bb.cp
  %min.iters.check = icmp ult i64 %i.ji, 4, !dbg !56917
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !56917

vector.ph:                                        ; preds = %.lr.ph61.i
  %n.vec = and i64 %i.ji, -4                      ; 3 uses
  br label %vector.body, !dbg !56917

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !56918 ; 3 uses
  %i.jk = xor i64 %index, -1, !dbg !56919
  %i.jl = getelementptr [8 x i8], ptr %i.fc, i64 %i.jk, !dbg !56920 ; 2 uses
  %i.jm = getelementptr [8 x i8], ptr %i.jj, i64 %index, !dbg !56921 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jl, i64 -8, !dbg !56922
  %i.jo = getelementptr i8, ptr %i.jl, i64 -24, !dbg !56922
  %wide.load = load <2 x i64>, ptr %i.jn, align 4, !dbg !56922, !alias.scope !56638, !noalias !56637
  %wide.load338 = load <2 x i64>, ptr %i.jo, align 4, !dbg !56922, !alias.scope !56638, !noalias !56637
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !56922
  %reverse339 = shufflevector <2 x i64> %wide.load338, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !56922
  %i.jp = getelementptr i8, ptr %i.jm, i64 16, !dbg !56922
  store <2 x i64> %reverse, ptr %i.jm, align 4, !dbg !56922, !alias.scope !56637, !noalias !56638
  store <2 x i64> %reverse339, ptr %i.jp, align 4, !dbg !56922, !alias.scope !56637, !noalias !56638
  %index.next = add nuw i64 %index, 4, !dbg !56918 ; 2 uses
  %i.jq = icmp eq i64 %index.next, %n.vec, !dbg !56917
  br i1 %i.jq, label %middle.block, label %vector.body, !dbg !56917, !llvm.loop !56602

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ji, %n.vec, !dbg !56917
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !56917

scalar.ph.preheader:                              ; preds = %.lr.ph61.i, %middle.block
  %.sroa.07.059.i.ph = phi i64 [ 0, %.lr.ph61.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !56917

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.059.i = phi i64 [ %i.jr, %scalar.ph ], [ %.sroa.07.059.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.jr = add nuw i64 %.sroa.07.059.i, 1, !dbg !56918 ; 2 uses
  %i.js = xor i64 %.sroa.07.059.i, -1, !dbg !56919
  %i.jt = getelementptr [8 x i8], ptr %i.fc, i64 %i.js, !dbg !56920
  %i.ju = getelementptr [8 x i8], ptr %i.jj, i64 %.sroa.07.059.i, !dbg !56921
  %i.jv = load i64, ptr %i.jt, align 4, !dbg !56922, !alias.scope !56638, !noalias !56637
  store i64 %i.jv, ptr %i.ju, align 4, !dbg !56922, !alias.scope !56637, !noalias !56638
  %exitcond.not.i60 = icmp eq i64 %i.jr, %i.ji, !dbg !56916
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !56917, !llvm.loop !56603

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block
  %i.jw = icmp ugt i64 %.sroa.27.2.lcssa.i58, %.sroa.16.0104332, !dbg !56923
  br i1 %i.jw, label %bb.cq, label %.outer, !dbg !56923, !prof !4441

.outer.thread:                                    ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !56826
  br label %.outer._crit_edge, !dbg !56664

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph117, i64 %.sroa.27.2.lcssa.i58, !dbg !56924 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !56826
  %i.jy = icmp ult i64 %i.ji, 33, !dbg !56664
  br i1 %i.jy, label %.outer._crit_edge, label %.lr.ph, !dbg !56664

bb.cq:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i58, i64 noundef %.sroa.16.0104332, i64 noundef %.sroa.16.0104332, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #50, !dbg !56925
  unreachable, !dbg !56925
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 !dbg !56926 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !57313
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !57313

.lr.ph.lr.ph:                                     ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr:bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.bg, %.lr.ph.i ], !dbg !57963 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.bk, %.lr.ph.i ], !dbg !57963 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.bl, %.lr.ph.i ], !dbg !57963 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.0.0.i37, !dbg !58011 ; 2 uses
  %i.bo = icmp ult ptr %.sroa.9.1.lcssa.i, %i.bn, !dbg !58012
  br i1 %i.bo, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !58012

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bs, %.lr.ph38.i ], !dbg !57963
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bw, %.lr.ph38.i ], !dbg !57963 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bx, %.lr.ph38.i ], !dbg !57963 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113280, !dbg !58013
  br i1 %i.bp, label %bb.n, label %bb.m, !dbg !58013

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.bx, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.bw, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bs, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load float, ptr %.sroa.9.236.i, align 4, !dbg !58014, !alias.scope !57881, !noalias !57882, !noundef !4427 ; 2 uses
  %i.bq = fcmp ord float %.val.i, 0.000000e+00, !dbg !58015
  %i.br = fcmp ult float %.val.i, %i.x, !dbg !58016
  %.not2.i.i.i30.i = and i1 %i.bq, %i.br, !dbg !58017 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !58018 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.bs, !dbg !58019
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !58020
  %i.bu = load i64, ptr %.sroa.9.236.i, align 4, !dbg !58021, !alias.scope !57879, !noalias !57891
  store i64 %i.bu, ptr %i.bt, align 4, !dbg !58021, !alias.scope !57880, !noalias !57892
  %i.bv = zext i1 %.not2.i.i.i30.i to i64, !dbg !58022
  %i.bw = add i64 %.sroa.27.235.i, %i.bv, !dbg !58023 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !58024 ; 3 uses
  %i.by = icmp ult ptr %i.bx, %i.bn, !dbg !58012
  br i1 %i.by, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !58012

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !58025 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.sroa.27.2.lcssa.i, !dbg !58026
  %i.cb = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !58027, !alias.scope !57879, !noalias !57893
  store i64 %i.cb, ptr %i.ca, align 4, !dbg !58027, !alias.scope !57880, !noalias !57894
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !58028
  br label %bb.l, !dbg !57961

bb.n:                                             ; preds = %._crit_edge39.i
  %i.cd = shl i64 %.sroa.27.2.lcssa.i, 3, !dbg !58029
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph122, ptr nonnull align 4 %2, i64 %i.cd, i1 false), !dbg !58029, !alias.scope !57895
  %i.ce = sub i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i, !dbg !58030 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i, !dbg !58031
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !58032

.lr.ph45.i:                                       ; preds = %bb.n
  %i.cf = getelementptr [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.ce, 4, !dbg !58032
  br i1 %min.iters.check303, label %scalar.ph302.preheader, label %vector.ph304, !dbg !58032

vector.ph304:                                     ; preds = %.lr.ph45.i
  %n.vec305 = and i64 %i.ce, -4                   ; 3 uses
  br label %vector.body306, !dbg !58032

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body306 ], !dbg !58033 ; 3 uses
  %i.cg = xor i64 %index307, -1, !dbg !58034
  %i.ch = getelementptr [8 x i8], ptr %i.ac, i64 %i.cg, !dbg !58035 ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.cf, i64 %index307, !dbg !58036 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -8, !dbg !58037
  %i.ck = getelementptr i8, ptr %i.ch, i64 -24, !dbg !58037
  %wide.load308 = load <2 x i64>, ptr %i.cj, align 4, !dbg !58037, !alias.scope !57880, !noalias !57879
  %wide.load309 = load <2 x i64>, ptr %i.ck, align 4, !dbg !58037, !alias.scope !57880, !noalias !57879
  %reverse310 = shufflevector <2 x i64> %wide.load308, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58037
  %reverse311 = shufflevector <2 x i64> %wide.load309, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58037
  %i.cl = getelementptr i8, ptr %i.ci, i64 16, !dbg !58037
  store <2 x i64> %reverse310, ptr %i.ci, align 4, !dbg !58037, !alias.scope !57879, !noalias !57880
  store <2 x i64> %reverse311, ptr %i.cl, align 4, !dbg !58037, !alias.scope !57879, !noalias !57880
  %index.next312 = add nuw i64 %index307, 4, !dbg !58033 ; 2 uses
  %i.cm = icmp eq i64 %index.next312, %n.vec305, !dbg !58032
  br i1 %i.cm, label %middle.block313, label %vector.body306, !dbg !58032, !llvm.loop !57723

middle.block313:                                  ; preds = %vector.body306
  %cmp.n314 = icmp eq i64 %i.ce, %n.vec305, !dbg !58032
  br i1 %cmp.n314, label %.loopexit, label %scalar.ph302.preheader, !dbg !58032

scalar.ph302.preheader:                           ; preds = %.lr.ph45.i, %middle.block313
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec305, %middle.block313 ]
  br label %scalar.ph302, !dbg !58032

scalar.ph302:                                     ; preds = %scalar.ph302.preheader, %scalar.ph302
  %.sroa.07.043.i = phi i64 [ %i.cn, %scalar.ph302 ], [ %.sroa.07.043.i.ph, %scalar.ph302.preheader ] ; 3 uses
  %i.cn = add nuw i64 %.sroa.07.043.i, 1, !dbg !58033 ; 2 uses
  %i.co = xor i64 %.sroa.07.043.i, -1, !dbg !58034
  %i.cp = getelementptr [8 x i8], ptr %i.ac, i64 %i.co, !dbg !58035
  %i.cq = getelementptr [8 x i8], ptr %i.cf, i64 %.sroa.07.043.i, !dbg !58036
  %i.cr = load i64, ptr %i.cp, align 4, !dbg !58037, !alias.scope !57880, !noalias !57879
  store i64 %i.cr, ptr %i.cq, align 4, !dbg !58037, !alias.scope !57879, !noalias !57880
  %exitcond.not.i = icmp eq i64 %i.cn, %i.ce, !dbg !58031
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph302, !dbg !58032, !llvm.loop !57724

.loopexit:                                        ; preds = %scalar.ph302, %middle.block313, %bb.n
  %i.cs = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !58038
  br i1 %i.cs, label %.thread, label %bb.o, !dbg !58039

bb.o:                                             ; preds = %.loopexit
  %.not.i39 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113280, !dbg !58040
  br i1 %.not.i39, label %bb.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !58040, !prof !4441

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @110, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #50, !dbg !58041, !noalias !57897
  unreachable, !dbg !58041

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i, !dbg !58042
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph122) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %i.ct, i64 noundef %i.ce, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #44, !dbg !58043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58044
  %i.cu = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !57921
  br i1 %i.cu, label %.outer._crit_edge, label %bb.b, !dbg !57921

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !57898), !dbg !58045
  call void @llvm.experimental.noalias.scope.decl(metadata !57899), !dbg !58045
  %.not82 = icmp samesign ult i64 %3, %.sroa.16.0113280, !dbg !58046
  br i1 %.not82, label %bb.r, label %bb.q, !dbg !58046, !prof !5113

bb.q:                                             ; preds = %.thread
  %i.cv = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0113280, !dbg !58047 ; 3 uses
  br label %bb.s, !dbg !58048

bb.r:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !58049
  unreachable, !dbg !58049

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i42 = phi ptr [ %i.cv, %bb.q ], [ %i.fm, %bb.u ], !dbg !58050 ; 2 uses
  %.sroa.27.0.i43 = phi i64 [ 0, %bb.q ], [ %i.fp, %bb.u ], !dbg !58050 ; 2 uses
  %.sroa.9.0.i44 = phi ptr [ %.sroa.0.0.ph122, %bb.q ], [ %i.fq, %bb.u ], !dbg !58050 ; 3 uses
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0113280, %bb.u ] ; 4 uses
  %i.cw = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i45, i64 3), !dbg !58051
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %i.cw, !dbg !58052 ; 2 uses
  %i.cy = icmp ult ptr %.sroa.9.0.i44, %i.cx, !dbg !58053
  br i1 %i.cy, label %.lr.ph.i65, label %._crit_edge.i46, !dbg !58053

.lr.ph.i65:                                       ; preds = %bb.s
  %.val23.i66 = load float, ptr %i.w, align 4, !alias.scope !57900, !noalias !57901, !noundef !4427 ; 5 uses
  %i.cz = fcmp uno float %.val23.i66, 0.000000e+00 ; 4 uses
  br label %bb.t, !dbg !58053

bb.t:                                             ; preds = %bb.t, %.lr.ph.i65
  %.sroa.9.131.i67 = phi ptr [ %.sroa.9.0.i44, %.lr.ph.i65 ], [ %i.eb, %bb.t ] ; 6 uses
  %.sroa.27.130.i68 = phi i64 [ %.sroa.27.0.i43, %.lr.ph.i65 ], [ %i.ea, %bb.t ] ; 2 uses
  %.sroa.43.129.i69 = phi ptr [ %.sroa.43.0.i42, %.lr.ph.i65 ], [ %i.dw, %bb.t ] ; 4 uses
  %.val22.i70 = load float, ptr %.sroa.9.131.i67, align 4, !dbg !58054, !alias.scope !57902, !noalias !57903, !noundef !4427
  %i.da = fcmp oge float %.val23.i66, %.val22.i70, !dbg !58055
  %.not2.i.i.i.not.i.i = or i1 %i.cz, %i.da, !dbg !58056 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -8, !dbg !58057
  %.sroa.01.0.i.i71 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.db, !dbg !58058
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i71, i64 %.sroa.27.130.i68, !dbg !58059
  %i.dd = load i64, ptr %.sroa.9.131.i67, align 4, !dbg !58060, !alias.scope !57898, !noalias !57904
  store i64 %i.dd, ptr %i.dc, align 4, !dbg !58060, !alias.scope !57899, !noalias !57905
  %i.de = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !58061
  %i.df = add i64 %.sroa.27.130.i68, %i.de, !dbg !58062 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 8, !dbg !58063 ; 2 uses
  %.val20.i72 = load float, ptr %i.dg, align 4, !dbg !58064, !alias.scope !57902, !noalias !57903, !noundef !4427
  %i.dh = fcmp oge float %.val23.i66, %.val20.i72, !dbg !58065
  %.not2.i.i.i.not.i24.i = or i1 %i.cz, %i.dh, !dbg !58066 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -16, !dbg !58067
  %.sroa.01.0.i25.i73 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.di, !dbg !58068
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i73, i64 %i.df, !dbg !58069
  %i.dk = load i64, ptr %i.dg, align 4, !dbg !58070, !alias.scope !57898, !noalias !57906
  store i64 %i.dk, ptr %i.dj, align 4, !dbg !58070, !alias.scope !57899, !noalias !57907
  %i.dl = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !58071
  %i.dm = add i64 %i.df, %i.dl, !dbg !58072       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 16, !dbg !58073 ; 2 uses
  %.val18.i74 = load float, ptr %i.dn, align 4, !dbg !58074, !alias.scope !57902, !noalias !57903, !noundef !4427
  %i.do = fcmp oge float %.val23.i66, %.val18.i74, !dbg !58075
  %.not2.i.i.i.not.i26.i = or i1 %i.cz, %i.do, !dbg !58076 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -24, !dbg !58077
  %.sroa.01.0.i27.i75 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.dp, !dbg !58078
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i75, i64 %i.dm, !dbg !58079
  %i.dr = load i64, ptr %i.dn, align 4, !dbg !58080, !alias.scope !57898, !noalias !57908
  store i64 %i.dr, ptr %i.dq, align 4, !dbg !58080, !alias.scope !57899, !noalias !57909
  %i.ds = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !58081
  %i.dt = add i64 %i.dm, %i.ds, !dbg !58082       ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 24, !dbg !58083 ; 2 uses
  %.val16.i76 = load float, ptr %i.du, align 4, !dbg !58084, !alias.scope !57902, !noalias !57903, !noundef !4427
  %i.dv = fcmp oge float %.val23.i66, %.val16.i76, !dbg !58085
  %.not2.i.i.i.not.i28.i = or i1 %i.cz, %i.dv, !dbg !58086 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -32, !dbg !58087 ; 3 uses
  %.sroa.01.0.i29.i77 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.dw, !dbg !58088
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i77, i64 %i.dt, !dbg !58089
  %i.dy = load i64, ptr %i.du, align 4, !dbg !58090, !alias.scope !57898, !noalias !57910
  store i64 %i.dy, ptr %i.dx, align 4, !dbg !58090, !alias.scope !57899, !noalias !57911
  %i.dz = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !58091
  %i.ea = add i64 %i.dt, %i.dz, !dbg !58092       ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 32, !dbg !58093 ; 3 uses
  %i.ec = icmp ult ptr %i.eb, %i.cx, !dbg !58053
  br i1 %i.ec, label %bb.t, label %._crit_edge.i46, !dbg !58053

._crit_edge.i46:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i47 = phi ptr [ %.sroa.43.0.i42, %bb.s ], [ %i.dw, %bb.t ], !dbg !58050 ; 4 uses
  %.sroa.27.1.lcssa.i48 = phi i64 [ %.sroa.27.0.i43, %bb.s ], [ %i.ea, %bb.t ], !dbg !58050 ; 5 uses
  %.sroa.9.1.lcssa.i49 = phi ptr [ %.sroa.9.0.i44, %bb.s ], [ %i.eb, %bb.t ], !dbg !58050 ; 7 uses
  %.sroa.9.1.lcssa.i49288 = ptrtoaddr ptr %.sroa.9.1.lcssa.i49 to i64, !dbg !58094
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.0.0.i45, !dbg !58094 ; 3 uses
  %i.ee = icmp ult ptr %.sroa.9.1.lcssa.i49, %i.ed, !dbg !58095
  br i1 %i.ee, label %.lr.ph38.i58.preheader, label %._crit_edge39.i50, !dbg !58095

.lr.ph38.i58.preheader:                           ; preds = %._crit_edge.i46
  %.val15.i63 = load float, ptr %i.w, align 4, !alias.scope !57900, !noalias !57901, !noundef !4427 ; 2 uses
  %i.ef = fcmp uno float %.val15.i63, 0.000000e+00
  br i1 %i.ef, label %.lr.ph38.i58.us.preheader, label %.lr.ph38.i58

.lr.ph38.i58.us.preheader:                        ; preds = %.lr.ph38.i58.preheader
  %i.eg = shl i64 %.sroa.0.0.i45, 3, !dbg !58095
  %i.eh = add i64 %i.eg, %i.d, !dbg !58095
  %i.ei = xor i64 %.sroa.9.1.lcssa.i49288, -1, !dbg !58095
  %i.ej = add i64 %i.eh, %i.ei, !dbg !58095       ; 2 uses
  %i.ek = lshr i64 %i.ej, 3, !dbg !58095
  %i.el = add nuw nsw i64 %i.ek, 1, !dbg !58095   ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.ej, 24, !dbg !58095
  br i1 %min.iters.check289, label %.lr.ph38.i58.us.preheader316, label %vector.ph290, !dbg !58095

vector.ph290:                                     ; preds = %.lr.ph38.i58.us.preheader
  %n.vec291 = and i64 %i.el, 4611686018427387900  ; 5 uses
  %i.em = shl i64 %n.vec291, 3
  %i.en = getelementptr i8, ptr %.sroa.9.1.lcssa.i49, i64 %i.em ; 2 uses
  %i.eo = add i64 %.sroa.27.1.lcssa.i48, %n.vec291 ; 2 uses
  %i.ep = mul i64 %n.vec291, -8
  %i.eq = getelementptr i8, ptr %.sroa.43.1.lcssa.i47, i64 %i.ep ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i48
  br label %vector.body292, !dbg !58095

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body292 ] ; 3 uses
  %i.es = shl i64 %index293, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i49, i64 %i.es ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.er, i64 %index293, !dbg !58096 ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep, i64 16, !dbg !58097
  %wide.load294 = load <2 x i64>, ptr %next.gep, align 4, !dbg !58097, !alias.scope !57898, !noalias !57912
  %wide.load295 = load <2 x i64>, ptr %i.eu, align 4, !dbg !58097, !alias.scope !57898, !noalias !57912
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16, !dbg !58097
  store <2 x i64> %wide.load294, ptr %i.et, align 4, !dbg !58097, !alias.scope !57899, !noalias !57913
  store <2 x i64> %wide.load295, ptr %i.ev, align 4, !dbg !58097, !alias.scope !57899, !noalias !57913
  %index.next296 = add nuw i64 %index293, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next296, %n.vec291, !dbg !58095
  br i1 %i.ew, label %middle.block297, label %vector.body292, !dbg !58095, !llvm.loop !57825

middle.block297:                                  ; preds = %vector.body292
  %cmp.n298 = icmp eq i64 %i.el, %n.vec291, !dbg !58095
  br i1 %cmp.n298, label %._crit_edge39.i50, label %.lr.ph38.i58.us.preheader316, !dbg !58095

.lr.ph38.i58.us.preheader316:                     ; preds = %.lr.ph38.i58.us.preheader, %middle.block297
  %.sroa.9.236.i59.us.ph = phi ptr [ %.sroa.9.1.lcssa.i49, %.lr.ph38.i58.us.preheader ], [ %i.en, %middle.block297 ]
  %.sroa.27.235.i60.us.ph = phi i64 [ %.sroa.27.1.lcssa.i48, %.lr.ph38.i58.us.preheader ], [ %i.eo, %middle.block297 ]
  %.sroa.43.234.i61.us.ph = phi ptr [ %.sroa.43.1.lcssa.i47, %.lr.ph38.i58.us.preheader ], [ %i.eq, %middle.block297 ]
  br label %.lr.ph38.i58.us, !dbg !58095

.lr.ph38.i58.us:                                  ; preds = %.lr.ph38.i58.us.preheader316, %.lr.ph38.i58.us
  %.sroa.9.236.i59.us = phi ptr [ %i.fb, %.lr.ph38.i58.us ], [ %.sroa.9.236.i59.us.ph, %.lr.ph38.i58.us.preheader316 ] ; 2 uses
  %.sroa.27.235.i60.us = phi i64 [ %i.fa, %.lr.ph38.i58.us ], [ %.sroa.27.235.i60.us.ph, %.lr.ph38.i58.us.preheader316 ] ; 2 uses
  %.sroa.43.234.i61.us = phi ptr [ %i.ex, %.lr.ph38.i58.us ], [ %.sroa.43.234.i61.us.ph, %.lr.ph38.i58.us.preheader316 ]
  %i.ex = getelementptr inbounds i8, ptr %.sroa.43.234.i61.us, i64 -8, !dbg !58098 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.235.i60.us, !dbg !58096
  %i.ez = load i64, ptr %.sroa.9.236.i59.us, align 4, !dbg !58097, !alias.scope !57898, !noalias !57912
  store i64 %i.ez, ptr %i.ey, align 4, !dbg !58097, !alias.scope !57899, !noalias !57913
  %i.fa = add i64 %.sroa.27.235.i60.us, 1, !dbg !58099 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i59.us, i64 8, !dbg !58100 ; 3 uses
  %i.fc = icmp ult ptr %i.fb, %i.ed, !dbg !58095
  br i1 %i.fc, label %.lr.ph38.i58.us, label %._crit_edge39.i50, !dbg !58095, !llvm.loop !57828

._crit_edge39.i50:                                ; preds = %.lr.ph38.i58, %.lr.ph38.i58.us, %middle.block297, %._crit_edge.i46
  %.sroa.43.2.lcssa.i51 = phi ptr [ %.sroa.43.1.lcssa.i47, %._crit_edge.i46 ], [ %i.ex, %.lr.ph38.i58.us ], [ %i.eq, %middle.block297 ], [ %i.ff, %.lr.ph38.i58 ], !dbg !58050
  %.sroa.27.2.lcssa.i52 = phi i64 [ %.sroa.27.1.lcssa.i48, %._crit_edge.i46 ], [ %i.fa, %.lr.ph38.i58.us ], [ %i.eo, %middle.block297 ], [ %i.fj, %.lr.ph38.i58 ], !dbg !58050 ; 9 uses
  %.sroa.9.2.lcssa.i53 = phi ptr [ %.sroa.9.1.lcssa.i49, %._crit_edge.i46 ], [ %i.fb, %.lr.ph38.i58.us ], [ %i.en, %middle.block297 ], [ %i.fk, %.lr.ph38.i58 ], !dbg !58050 ; 2 uses
  %i.fd = icmp eq i64 %.sroa.0.0.i45, %.sroa.16.0113280, !dbg !58101
  br i1 %i.fd, label %bb.v, label %bb.u, !dbg !58101

.lr.ph38.i58:                                     ; preds = %.lr.ph38.i58.preheader, %.lr.ph38.i58
  %.sroa.9.236.i59 = phi ptr [ %i.fk, %.lr.ph38.i58 ], [ %.sroa.9.1.lcssa.i49, %.lr.ph38.i58.preheader ] ; 3 uses
  %.sroa.27.235.i60 = phi i64 [ %i.fj, %.lr.ph38.i58 ], [ %.sroa.27.1.lcssa.i48, %.lr.ph38.i58.preheader ] ; 2 uses
  %.sroa.43.234.i61 = phi ptr [ %i.ff, %.lr.ph38.i58 ], [ %.sroa.43.1.lcssa.i47, %.lr.ph38.i58.preheader ]
  %.val.i62 = load float, ptr %.sroa.9.236.i59, align 4, !dbg !58102, !alias.scope !57902, !noalias !57903, !noundef !4427
  %i.fe = fcmp oge float %.val15.i63, %.val.i62, !dbg !58103 ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.43.234.i61, i64 -8, !dbg !58098 ; 3 uses
  %spec.select = select i1 %i.fe, ptr %2, ptr %i.ff, !dbg !58104
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.27.235.i60, !dbg !58096
  %i.fh = load i64, ptr %.sroa.9.236.i59, align 4, !dbg !58097, !alias.scope !57898, !noalias !57912
  store i64 %i.fh, ptr %i.fg, align 4, !dbg !58097, !alias.scope !57899, !noalias !57913
  %i.fi = zext i1 %i.fe to i64, !dbg !58105
  %i.fj = add i64 %.sroa.27.235.i60, %i.fi, !dbg !58099 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i59, i64 8, !dbg !58100 ; 3 uses
  %i.fl = icmp ult ptr %i.fk, %i.ed, !dbg !58095
  br i1 %i.fl, label %.lr.ph38.i58, label %._crit_edge39.i50, !dbg !58095

bb.u:                                             ; preds = %._crit_edge39.i50
  %i.fm = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i51, i64 -8, !dbg !58106
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i52, !dbg !58107
  %i.fo = load i64, ptr %.sroa.9.2.lcssa.i53, align 4, !dbg !58108, !alias.scope !57898, !noalias !57914
  store i64 %i.fo, ptr %i.fn, align 4, !dbg !58108, !alias.scope !57899, !noalias !57915
  %i.fp = add i64 %.sroa.27.2.lcssa.i52, 1, !dbg !58109
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i53, i64 8, !dbg !58110
  br label %bb.s, !dbg !58048

bb.v:                                             ; preds = %._crit_edge39.i50
  %i.fr = shl i64 %.sroa.27.2.lcssa.i52, 3, !dbg !58111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph122, ptr nonnull align 4 %2, i64 %i.fr, i1 false), !dbg !58111, !alias.scope !57916
  %i.fs = sub i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i52, !dbg !58112 ; 7 uses
  %.not47.i54 = icmp eq i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i52, !dbg !58113
  %i.ft = getelementptr [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i52 ; 3 uses
  br i1 %.not47.i54, label %.outer.thread, label %.lr.ph45.i55, !dbg !58114

.lr.ph45.i55:                                     ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.fs, 4, !dbg !58114
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !58114

vector.ph:                                        ; preds = %.lr.ph45.i55
  %n.vec = and i64 %i.fs, -4                      ; 3 uses
  br label %vector.body, !dbg !58114

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !58115 ; 3 uses
  %i.fu = xor i64 %index, -1, !dbg !58116
  %i.fv = getelementptr [8 x i8], ptr %i.cv, i64 %i.fu, !dbg !58117 ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.ft, i64 %index, !dbg !58118 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fv, i64 -8, !dbg !58119
  %i.fy = getelementptr i8, ptr %i.fv, i64 -24, !dbg !58119
  %wide.load = load <2 x i64>, ptr %i.fx, align 4, !dbg !58119, !alias.scope !57899, !noalias !57898
  %wide.load286 = load <2 x i64>, ptr %i.fy, align 4, !dbg !58119, !alias.scope !57899, !noalias !57898
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58119
  %reverse287 = shufflevector <2 x i64> %wide.load286, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58119
  %i.fz = getelementptr i8, ptr %i.fw, i64 16, !dbg !58119
  store <2 x i64> %reverse, ptr %i.fw, align 4, !dbg !58119, !alias.scope !57898, !noalias !57899
  store <2 x i64> %reverse287, ptr %i.fz, align 4, !dbg !58119, !alias.scope !57898, !noalias !57899
  %index.next = add nuw i64 %index, 4, !dbg !58115 ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec, !dbg !58114
  br i1 %i.ga, label %middle.block, label %vector.body, !dbg !58114, !llvm.loop !57863

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fs, %n.vec, !dbg !58114
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !58114

scalar.ph.preheader:                              ; preds = %.lr.ph45.i55, %middle.block
  %.sroa.07.043.i56.ph = phi i64 [ 0, %.lr.ph45.i55 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !58114

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i56 = phi i64 [ %i.gb, %scalar.ph ], [ %.sroa.07.043.i56.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gb = add nuw i64 %.sroa.07.043.i56, 1, !dbg !58115 ; 2 uses
  %i.gc = xor i64 %.sroa.07.043.i56, -1, !dbg !58116
  %i.gd = getelementptr [8 x i8], ptr %i.cv, i64 %i.gc, !dbg !58117
  %i.ge = getelementptr [8 x i8], ptr %i.ft, i64 %.sroa.07.043.i56, !dbg !58118
  %i.gf = load i64, ptr %i.gd, align 4, !dbg !58119, !alias.scope !57899, !noalias !57898
  store i64 %i.gf, ptr %i.ge, align 4, !dbg !58119, !alias.scope !57898, !noalias !57899
  %exitcond.not.i57 = icmp eq i64 %i.gb, %i.fs, !dbg !58113
  br i1 %exitcond.not.i57, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !58114, !llvm.loop !57864

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block
  %i.gg = icmp ugt i64 %.sroa.27.2.lcssa.i52, %.sroa.16.0113280, !dbg !58120
  br i1 %i.gg, label %bb.w, label %.outer, !dbg !58120, !prof !4441

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58044
  br label %.outer._crit_edge, !dbg !57921

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i52, !dbg !58121 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58044
  %i.gi = icmp ult i64 %i.fs, 33, !dbg !57921
  br i1 %i.gi, label %.outer._crit_edge, label %.lr.ph, !dbg !57921

bb.w:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i52, i64 noundef %.sroa.16.0113280, i64 noundef %.sroa.16.0113280, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #50, !dbg !58122
  unreachable, !dbg !58122
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1Z_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 !dbg !58123 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !58682
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !58682

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph336 = phi ptr [ %i.qr, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph335 = phi i64 [ %i.qc, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph334 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph333 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph336 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph333, null
  %i.d = icmp eq i32 %.sroa.025.0.ph334, 0, !dbg !58683
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph978, !dbg !58683

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.e = icmp eq i32 %i.f, 0, !dbg !58683
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph978, !dbg !58683

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa265 = phi ptr [ %i.qd, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph336, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.qr, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.qc, %.outer ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2i_10WindowExprNtB2k_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB2m_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph.lcssa265, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !58684
  br label %bb.m, !dbg !58685

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0329.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph335, %.lr.ph ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1M_10WindowExprNtB1O_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1Q_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph336, i64 noundef %.sroa.16.0329.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !58686
  br label %bb.m, !dbg !58685

.lr.ph978:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0328977 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph334, %.lr.ph ]
  %.sroa.16.0329976 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph335, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0328977, -1, !dbg !58687 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58633), !dbg !58688
  call void @llvm.experimental.noalias.scope.decl(metadata !58634), !dbg !58688
  %i.g = lshr i64 %.sroa.16.0329976, 3, !dbg !58689 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 4, !dbg !58690
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph336, i64 %.idx.i, !dbg !58690 ; 3 uses
end_hunk_1
