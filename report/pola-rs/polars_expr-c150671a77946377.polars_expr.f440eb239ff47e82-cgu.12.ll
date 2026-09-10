Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.12?download=true
inline.NumInlined: 9660
inline.NumDeleted: 4069
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtB1a_4sort18arg_sort_ascendingB16_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4o_5BlockRSB16_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i.us, i64 32, !dbg !56846 ; 3 uses
  %i.fr = icmp ult ptr %i.fq, %i.fe, !dbg !56838
  br i1 %i.fr, label %.lr.ph.i63.us, label %._crit_edge.i53, !dbg !56838

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader, %bb.ch
  %.sroa.9.147.i = phi ptr [ %i.hk, %bb.ch ], [ %.sroa.9.0.i51, %.lr.ph.i63.preheader ] ; 7 uses
  %.sroa.27.146.i = phi i64 [ %i.hj, %bb.ch ], [ %.sroa.27.0.i50, %.lr.ph.i63.preheader ] ; 4 uses
  %.sroa.43.145.i = phi ptr [ %i.he, %bb.ch ], [ %.sroa.43.0.i49, %.lr.ph.i63.preheader ] ; 5 uses
  %.val22.i64 = load i16, ptr %.sroa.9.147.i, align 2, !dbg !56847, !alias.scope !56640, !noalias !56641 ; 5 uses
  %i.fs = and i16 %.val22.i64, 32767, !dbg !56848
  %i.ft = icmp samesign ugt i16 %i.fs, 31744, !dbg !56848
  br i1 %i.ft, label %.thread.i, label %bb.bn, !dbg !56849

bb.bn:                                            ; preds = %.lr.ph.i63
  %.not.i4.i.i.i.i = icmp sgt i16 %.val22.i64, -1, !dbg !56850 ; 2 uses
  br i1 %i.fi, label %bb.bo, label %bb.bp, !dbg !56851

bb.bo:                                            ; preds = %bb.bn
  %.not22.i.i.i.i = icmp samesign ult i16 %.val23.i65, %.val22.i64
  %or.cond.i.i.i = select i1 %.not.i4.i.i.i.i, i1 %.not22.i.i.i.i, i1 false, !dbg !56851
  br i1 %or.cond.i.i.i, label %.thread.i, label %.thread31.i, !dbg !56851

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not.i4.i.i.i.i, label %.split.i.i.i.i, label %bb.bq, !dbg !56851

.split.i.i.i.i:                                   ; preds = %bb.bp
  %i.fu = or i16 %i.fg, %.val22.i64, !dbg !56852
  %.not.i.i.i.i = icmp eq i16 %i.fu, 0, !dbg !56852
  br i1 %.not.i.i.i.i, label %.thread31.i, label %.thread.i, !dbg !56853

bb.bq:                                            ; preds = %bb.bp
  %.not21.i.i.i.i = icmp samesign ult i16 %.val22.i64, %.val23.i65, !dbg !56854
  br i1 %.not21.i.i.i.i, label %.thread.i, label %.thread31.i, !dbg !56853

.thread.i:                                        ; preds = %bb.bq, %.split.i.i.i.i, %bb.bo, %.lr.ph.i63
  %i.fv = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -8, !dbg !56855
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.sroa.27.146.i, !dbg !56839
  %i.fx = load i64, ptr %.sroa.9.147.i, align 4, !dbg !56840, !alias.scope !56640, !noalias !56644
  store i64 %i.fx, ptr %i.fw, align 4, !dbg !56840, !alias.scope !56641, !noalias !56645
  br label %bb.br, !dbg !56856

.thread31.i:                                      ; preds = %bb.bq, %.split.i.i.i.i, %bb.bo
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.146.i, !dbg !56839
  %i.fz = load i64, ptr %.sroa.9.147.i, align 4, !dbg !56840, !alias.scope !56640, !noalias !56646
  store i64 %i.fz, ptr %i.fy, align 4, !dbg !56840, !alias.scope !56641, !noalias !56647
  %i.ga = add i64 %.sroa.27.146.i, 1, !dbg !56857
  br label %bb.br, !dbg !56856

bb.br:                                            ; preds = %.thread31.i, %.thread.i
  %i.gb = phi i64 [ %.sroa.27.146.i, %.thread.i ], [ %i.ga, %.thread31.i ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 8, !dbg !56858 ; 3 uses
  %.val2030.i = load i16, ptr %i.gc, align 2, !dbg !56859, !alias.scope !56640, !noalias !56641 ; 5 uses
  %i.gd = and i16 %.val2030.i, 32767, !dbg !56860
  %i.ge = icmp samesign ugt i16 %i.gd, 31744, !dbg !56860
  br i1 %i.ge, label %.thread33.i, label %bb.bs, !dbg !56861

bb.bs:                                            ; preds = %bb.br
  %.not.i4.i.i.i24.i = icmp sgt i16 %.val2030.i, -1, !dbg !56862 ; 2 uses
  br i1 %i.fi, label %bb.bt, label %bb.bu, !dbg !56863

bb.bt:                                            ; preds = %bb.bs
  %.not22.i.i.i29.i = icmp samesign ult i16 %.val23.i65, %.val2030.i
  %or.cond.i.i30.i = select i1 %.not.i4.i.i.i24.i, i1 %.not22.i.i.i29.i, i1 false, !dbg !56863
  br i1 %or.cond.i.i30.i, label %.thread33.i, label %.thread37.i, !dbg !56863

bb.bu:                                            ; preds = %bb.bs
  br i1 %.not.i4.i.i.i24.i, label %.split.i.i.i27.i, label %bb.bv, !dbg !56863

.split.i.i.i27.i:                                 ; preds = %bb.bu
  %i.gf = or i16 %.val2030.i, %i.fg, !dbg !56864
  %.not.i.i.i28.i = icmp eq i16 %i.gf, 0, !dbg !56864
  br i1 %.not.i.i.i28.i, label %.thread37.i, label %.thread33.i, !dbg !56865

bb.bv:                                            ; preds = %bb.bu
  %.not21.i.i.i25.i = icmp samesign ult i16 %.val2030.i, %.val23.i65, !dbg !56866
  br i1 %.not21.i.i.i25.i, label %.thread33.i, label %.thread37.i, !dbg !56865

.thread33.i:                                      ; preds = %bb.bv, %.split.i.i.i27.i, %bb.bt, %bb.br
  %i.gg = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -16, !dbg !56867
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gb, !dbg !56868
  %i.gi = load i64, ptr %i.gc, align 4, !dbg !56869, !alias.scope !56640, !noalias !56648
  store i64 %i.gi, ptr %i.gh, align 4, !dbg !56869, !alias.scope !56641, !noalias !56649
  br label %bb.bw, !dbg !56870

.thread37.i:                                      ; preds = %bb.bv, %.split.i.i.i27.i, %bb.bt
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gb, !dbg !56868
  %i.gk = load i64, ptr %i.gc, align 4, !dbg !56869, !alias.scope !56640, !noalias !56650
  store i64 %i.gk, ptr %i.gj, align 4, !dbg !56869, !alias.scope !56641, !noalias !56651
  %i.gl = add i64 %i.gb, 1, !dbg !56871
  br label %bb.bw, !dbg !56870

bb.bw:                                            ; preds = %.thread37.i, %.thread33.i
  %i.gm = phi i64 [ %i.gb, %.thread33.i ], [ %i.gl, %.thread37.i ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 16, !dbg !56841 ; 3 uses
  %.val1835.i = load i16, ptr %i.gn, align 2, !dbg !56872, !alias.scope !56640, !noalias !56641 ; 5 uses
  %i.go = and i16 %.val1835.i, 32767, !dbg !56873
  %i.gp = icmp samesign ugt i16 %i.go, 31744, !dbg !56873
  br i1 %i.gp, label %.thread39.i, label %bb.bx, !dbg !56874

bb.bx:                                            ; preds = %bb.bw
  %.not.i4.i.i.i33.i = icmp sgt i16 %.val1835.i, -1, !dbg !56875 ; 2 uses
  br i1 %i.fi, label %bb.by, label %bb.bz, !dbg !56876

bb.by:                                            ; preds = %bb.bx
  %.not22.i.i.i38.i = icmp samesign ult i16 %.val23.i65, %.val1835.i
  %or.cond.i.i39.i = select i1 %.not.i4.i.i.i33.i, i1 %.not22.i.i.i38.i, i1 false, !dbg !56876
  br i1 %or.cond.i.i39.i, label %.thread39.i, label %.thread43.i, !dbg !56876

bb.bz:                                            ; preds = %bb.bx
  br i1 %.not.i4.i.i.i33.i, label %.split.i.i.i36.i, label %bb.ca, !dbg !56876

.split.i.i.i36.i:                                 ; preds = %bb.bz
  %i.gq = or i16 %.val1835.i, %i.fg, !dbg !56877
  %.not.i.i.i37.i = icmp eq i16 %i.gq, 0, !dbg !56877
  br i1 %.not.i.i.i37.i, label %.thread43.i, label %.thread39.i, !dbg !56878

bb.ca:                                            ; preds = %bb.bz
  %.not21.i.i.i34.i = icmp samesign ult i16 %.val1835.i, %.val23.i65, !dbg !56879
  br i1 %.not21.i.i.i34.i, label %.thread39.i, label %.thread43.i, !dbg !56878

.thread39.i:                                      ; preds = %bb.ca, %.split.i.i.i36.i, %bb.by, %bb.bw
  %i.gr = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -24, !dbg !56880
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gm, !dbg !56842
  %i.gt = load i64, ptr %i.gn, align 4, !dbg !56844, !alias.scope !56640, !noalias !56652
  store i64 %i.gt, ptr %i.gs, align 4, !dbg !56844, !alias.scope !56641, !noalias !56653
  br label %bb.cb, !dbg !56881

.thread43.i:                                      ; preds = %bb.ca, %.split.i.i.i36.i, %bb.by
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gm, !dbg !56842
  %i.gv = load i64, ptr %i.gn, align 4, !dbg !56844, !alias.scope !56640, !noalias !56654
  store i64 %i.gv, ptr %i.gu, align 4, !dbg !56844, !alias.scope !56641, !noalias !56655
  %i.gw = add i64 %i.gm, 1, !dbg !56882
  br label %bb.cb, !dbg !56881

bb.cb:                                            ; preds = %.thread43.i, %.thread39.i
  %i.gx = phi i64 [ %i.gm, %.thread39.i ], [ %i.gw, %.thread43.i ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 24, !dbg !56883 ; 2 uses
  %.val1641.i = load i16, ptr %i.gy, align 2, !dbg !56884, !alias.scope !56640, !noalias !56641 ; 5 uses
  %i.gz = and i16 %.val1641.i, 32767, !dbg !56885
  %i.ha = icmp samesign ugt i16 %i.gz, 31744, !dbg !56885
  br i1 %i.ha, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, label %bb.cc, !dbg !56886

bb.cc:                                            ; preds = %bb.cb
  %.not.i4.i.i.i42.i = icmp sgt i16 %.val1641.i, -1, !dbg !56887 ; 2 uses
  br i1 %i.fi, label %bb.cd, label %bb.ce, !dbg !56888

bb.cd:                                            ; preds = %bb.cc
  %.not22.i.i.i47.i = icmp samesign ult i16 %.val23.i65, %.val1641.i
  %or.cond.i.i48.i = select i1 %.not.i4.i.i.i42.i, i1 %.not22.i.i.i47.i, i1 false, !dbg !56888
  br i1 %or.cond.i.i48.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, label %bb.cg, !dbg !56888

bb.ce:                                            ; preds = %bb.cc
  br i1 %.not.i4.i.i.i42.i, label %.split.i.i.i45.i, label %bb.cf, !dbg !56888

.split.i.i.i45.i:                                 ; preds = %bb.ce
  %i.hb = or i16 %.val1641.i, %i.fg, !dbg !56889
  %.not.i.i.i46.i = icmp eq i16 %i.hb, 0, !dbg !56889
  br i1 %.not.i.i.i46.i, label %bb.cg, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, !dbg !56890

bb.cf:                                            ; preds = %bb.ce
  %.not21.i.i.i43.i = icmp samesign ult i16 %.val1641.i, %.val23.i65, !dbg !56891
  br i1 %.not21.i.i.i43.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i, label %bb.cg, !dbg !56890

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i: ; preds = %bb.cf, %.split.i.i.i45.i, %bb.cd, %bb.cb
  %i.hc = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !56843 ; 2 uses
  br label %bb.ch, !dbg !56892

bb.cg:                                            ; preds = %bb.cf, %.split.i.i.i45.i, %bb.cd
  %i.hd = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !56843
  br label %bb.ch, !dbg !56892

bb.ch:                                            ; preds = %bb.cg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i
  %i.he = phi ptr [ %i.hd, %bb.cg ], [ %i.hc, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i ] ; 2 uses
  %i.hf = phi i64 [ 1, %bb.cg ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i ]
  %i.hg = phi ptr [ %2, %bb.cg ], [ %i.hc, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit49.thread.i ], !dbg !56892
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.gx, !dbg !56893
  %i.hi = load i64, ptr %i.gy, align 4, !dbg !56894, !alias.scope !56640, !noalias !56656
  store i64 %i.hi, ptr %i.hh, align 4, !dbg !56894, !alias.scope !56641, !noalias !56657
  %i.hj = add i64 %i.gx, %i.hf, !dbg !56845       ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 32, !dbg !56846 ; 3 uses
  %i.hl = icmp ult ptr %i.hk, %i.fe, !dbg !56838
  br i1 %i.hl, label %.lr.ph.i63, label %._crit_edge.i53, !dbg !56838

._crit_edge.i53:                                  ; preds = %bb.ch, %.lr.ph.i63.us, %bb.bm
  %.sroa.43.1.lcssa.i54 = phi ptr [ %.sroa.43.0.i49, %bb.bm ], [ %i.fn, %.lr.ph.i63.us ], [ %i.he, %bb.ch ], !dbg !56835 ; 4 uses
  %.sroa.27.1.lcssa.i55 = phi i64 [ %.sroa.27.0.i50, %bb.bm ], [ %i.fp, %.lr.ph.i63.us ], [ %i.hj, %bb.ch ], !dbg !56835 ; 5 uses
  %.sroa.9.1.lcssa.i56 = phi ptr [ %.sroa.9.0.i51, %bb.bm ], [ %i.fq, %.lr.ph.i63.us ], [ %i.hk, %bb.ch ], !dbg !56835 ; 7 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph117, i64 %.sroa.0.0.i52, !dbg !56895 ; 3 uses
  %i.hn = icmp ult ptr %.sroa.9.1.lcssa.i56, %i.hm, !dbg !56896
  br i1 %i.hn, label %.lr.ph54.i.preheader, label %._crit_edge55.i, !dbg !56896

.lr.ph54.i.preheader:                             ; preds = %._crit_edge.i53
  %.val15.i62 = load i16, ptr %i.af, align 2, !alias.scope !56642, !noalias !56643, !noundef !4431 ; 4 uses
  %i.ho = and i16 %.val15.i62, 32767              ; 2 uses
  %i.hp = icmp samesign ugt i16 %i.ho, 31744
  %i.hq = icmp sgt i16 %.val15.i62, -1
  br i1 %i.hp, label %.lr.ph54.i.us.preheader, label %.lr.ph54.i

.lr.ph54.i.us.preheader:                          ; preds = %.lr.ph54.i.preheader
  %i.hr = shl i64 %.sroa.0.0.i52, 3, !dbg !56896
  %7 = add i64 %i.hr, %i.d, !dbg !56896
  %i.hs = ptrtoaddr ptr %.sroa.9.1.lcssa.i56 to i64, !dbg !56896 ; 2 uses
  %i.ht = add i64 %i.hs, 8, !dbg !56896
  %8 = call i64 @llvm.umax.i64(i64 %7, i64 %i.ht), !dbg !56896
  %i.hu = xor i64 %i.hs, -1, !dbg !56896
  %i.hv = add i64 %8, %i.hu, !dbg !56896          ; 2 uses
  %i.hw = lshr i64 %i.hv, 3, !dbg !56896
  %i.hx = add nuw nsw i64 %i.hw, 1, !dbg !56896   ; 2 uses
  %min.iters.check341 = icmp ult i64 %i.hv, 24, !dbg !56896
  br i1 %min.iters.check341, label %.lr.ph54.i.us.preheader370, label %vector.ph342, !dbg !56896

vector.ph342:                                     ; preds = %.lr.ph54.i.us.preheader
  %n.vec343 = and i64 %i.hx, 4611686018427387900  ; 5 uses
  %i.hy = shl i64 %n.vec343, 3
  %i.hz = getelementptr i8, ptr %.sroa.9.1.lcssa.i56, i64 %i.hy ; 2 uses
  %i.ia = add i64 %.sroa.27.1.lcssa.i55, %n.vec343 ; 2 uses
  %i.ib = mul i64 %n.vec343, -8
  %i.ic = getelementptr i8, ptr %.sroa.43.1.lcssa.i54, i64 %i.ib ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i55
  br label %vector.body344, !dbg !56896

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next348, %vector.body344 ] ; 3 uses
  %i.ie = shl i64 %index345, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i56, i64 %i.ie ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.id, i64 %index345, !dbg !56897 ; 2 uses
  %i.ig = getelementptr i8, ptr %next.gep, i64 16, !dbg !56898
  %wide.load346 = load <2 x i64>, ptr %next.gep, align 4, !dbg !56898, !alias.scope !56640, !noalias !56658
  %wide.load347 = load <2 x i64>, ptr %i.ig, align 4, !dbg !56898, !alias.scope !56640, !noalias !56658
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 16, !dbg !56898
  store <2 x i64> %wide.load346, ptr %i.if, align 4, !dbg !56898, !alias.scope !56641, !noalias !56659
  store <2 x i64> %wide.load347, ptr %i.ih, align 4, !dbg !56898, !alias.scope !56641, !noalias !56659
  %index.next348 = add nuw i64 %index345, 4       ; 2 uses
  %i.ii = icmp eq i64 %index.next348, %n.vec343, !dbg !56896
  br i1 %i.ii, label %middle.block349, label %vector.body344, !dbg !56896, !llvm.loop !56564

middle.block349:                                  ; preds = %vector.body344
  %cmp.n350 = icmp eq i64 %i.hx, %n.vec343, !dbg !56896
  br i1 %cmp.n350, label %._crit_edge55.i, label %.lr.ph54.i.us.preheader370, !dbg !56896

.lr.ph54.i.us.preheader370:                       ; preds = %.lr.ph54.i.us.preheader, %middle.block349
  %.sroa.9.252.i.us.ph = phi ptr [ %.sroa.9.1.lcssa.i56, %.lr.ph54.i.us.preheader ], [ %i.hz, %middle.block349 ]
  %.sroa.27.251.i.us.ph = phi i64 [ %.sroa.27.1.lcssa.i55, %.lr.ph54.i.us.preheader ], [ %i.ia, %middle.block349 ]
  %.sroa.43.250.i.us.ph = phi ptr [ %.sroa.43.1.lcssa.i54, %.lr.ph54.i.us.preheader ], [ %i.ic, %middle.block349 ]
  br label %.lr.ph54.i.us, !dbg !56896

.lr.ph54.i.us:                                    ; preds = %.lr.ph54.i.us.preheader370, %.lr.ph54.i.us
  %.sroa.9.252.i.us = phi ptr [ %i.in, %.lr.ph54.i.us ], [ %.sroa.9.252.i.us.ph, %.lr.ph54.i.us.preheader370 ] ; 2 uses
  %.sroa.27.251.i.us = phi i64 [ %i.im, %.lr.ph54.i.us ], [ %.sroa.27.251.i.us.ph, %.lr.ph54.i.us.preheader370 ] ; 2 uses
  %.sroa.43.250.i.us = phi ptr [ %i.ij, %.lr.ph54.i.us ], [ %.sroa.43.250.i.us.ph, %.lr.ph54.i.us.preheader370 ]
  %i.ij = getelementptr inbounds i8, ptr %.sroa.43.250.i.us, i64 -8, !dbg !56899 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.251.i.us, !dbg !56897
  %i.il = load i64, ptr %.sroa.9.252.i.us, align 4, !dbg !56898, !alias.scope !56640, !noalias !56658
  store i64 %i.il, ptr %i.ik, align 4, !dbg !56898, !alias.scope !56641, !noalias !56659
  %i.im = add i64 %.sroa.27.251.i.us, 1, !dbg !56900 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i.us, i64 8, !dbg !56901 ; 3 uses
  %i.io = icmp ult ptr %i.in, %i.hm, !dbg !56896
  br i1 %i.io, label %.lr.ph54.i.us, label %._crit_edge55.i, !dbg !56896, !llvm.loop !56567

._crit_edge55.i:                                  ; preds = %bb.cn, %.lr.ph54.i.us, %middle.block349, %._crit_edge.i53
  %.sroa.43.2.lcssa.i57 = phi ptr [ %.sroa.43.1.lcssa.i54, %._crit_edge.i53 ], [ %i.ij, %.lr.ph54.i.us ], [ %i.ic, %middle.block349 ], [ %i.iv, %bb.cn ], !dbg !56835
  %.sroa.27.2.lcssa.i58 = phi i64 [ %.sroa.27.1.lcssa.i55, %._crit_edge.i53 ], [ %i.im, %.lr.ph54.i.us ], [ %i.ia, %middle.block349 ], [ %i.ja, %bb.cn ], !dbg !56835 ; 9 uses
  %.sroa.9.2.lcssa.i59 = phi ptr [ %.sroa.9.1.lcssa.i56, %._crit_edge.i53 ], [ %i.in, %.lr.ph54.i.us ], [ %i.hz, %middle.block349 ], [ %i.jb, %bb.cn ], !dbg !56835 ; 2 uses
  %i.ip = icmp eq i64 %.sroa.0.0.i52, %.sroa.16.0104332, !dbg !56902
  br i1 %i.ip, label %bb.cp, label %bb.co, !dbg !56902

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %bb.cn
  %.sroa.9.252.i = phi ptr [ %i.jb, %bb.cn ], [ %.sroa.9.1.lcssa.i56, %.lr.ph54.i.preheader ] ; 3 uses
  %.sroa.27.251.i = phi i64 [ %i.ja, %bb.cn ], [ %.sroa.27.1.lcssa.i55, %.lr.ph54.i.preheader ] ; 2 uses
  %.sroa.43.250.i = phi ptr [ %i.iv, %bb.cn ], [ %.sroa.43.1.lcssa.i54, %.lr.ph54.i.preheader ] ; 2 uses
  %.val.i61 = load i16, ptr %.sroa.9.252.i, align 2, !dbg !56903, !alias.scope !56640, !noalias !56641 ; 5 uses
  %i.iq = and i16 %.val.i61, 32767, !dbg !56904
  %i.ir = icmp samesign ugt i16 %i.iq, 31744, !dbg !56904
  br i1 %i.ir, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, label %bb.ci, !dbg !56905

bb.ci:                                            ; preds = %.lr.ph54.i
  %.not.i4.i.i.i51.i = icmp sgt i16 %.val.i61, -1, !dbg !56906 ; 2 uses
  br i1 %i.hq, label %bb.cj, label %bb.ck, !dbg !56907

bb.cj:                                            ; preds = %bb.ci
  %.not22.i.i.i56.i = icmp samesign ult i16 %.val15.i62, %.val.i61
  %or.cond.i.i57.i = select i1 %.not.i4.i.i.i51.i, i1 %.not22.i.i.i56.i, i1 false, !dbg !56907
  br i1 %or.cond.i.i57.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, label %bb.cm, !dbg !56907

bb.ck:                                            ; preds = %bb.ci
  br i1 %.not.i4.i.i.i51.i, label %.split.i.i.i54.i, label %bb.cl, !dbg !56907

.split.i.i.i54.i:                                 ; preds = %bb.ck
  %i.is = or i16 %i.ho, %.val.i61, !dbg !56908
  %.not.i.i.i55.i = icmp eq i16 %i.is, 0, !dbg !56908
  br i1 %.not.i.i.i55.i, label %bb.cm, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, !dbg !56909

bb.cl:                                            ; preds = %bb.ck
  %.not21.i.i.i52.i = icmp samesign ult i16 %.val.i61, %.val15.i62, !dbg !56910
  br i1 %.not21.i.i.i52.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i, label %bb.cm, !dbg !56909

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i: ; preds = %bb.cl, %.split.i.i.i54.i, %bb.cj, %.lr.ph54.i
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !56899 ; 2 uses
  br label %bb.cn, !dbg !56911

bb.cm:                                            ; preds = %bb.cl, %.split.i.i.i54.i, %bb.cj
  %i.iu = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !56899
  br label %bb.cn, !dbg !56911

bb.cn:                                            ; preds = %bb.cm, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i
  %i.iv = phi ptr [ %i.iu, %bb.cm ], [ %i.it, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i ] ; 2 uses
  %i.iw = phi i64 [ 1, %bb.cm ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i ]
  %i.ix = phi ptr [ %2, %bb.cm ], [ %i.it, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtB1c_4sort18arg_sort_ascendingB18_mINtNtNtNtBc_4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4q_5BlockRSB18_E3new0EE0E0E0CskY9G75ZWc4U_11polars_expr.exit58.thread.i ], !dbg !56911
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.27.251.i, !dbg !56897
  %i.iz = load i64, ptr %.sroa.9.252.i, align 4, !dbg !56898, !alias.scope !56640, !noalias !56658
  store i64 %i.iz, ptr %i.iy, align 4, !dbg !56898, !alias.scope !56641, !noalias !56659
  %i.ja = add i64 %i.iw, %.sroa.27.251.i, !dbg !56900 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i, i64 8, !dbg !56901 ; 3 uses
  %i.jc = icmp ult ptr %i.jb, %i.hm, !dbg !56896
  br i1 %i.jc, label %.lr.ph54.i, label %._crit_edge55.i, !dbg !56896

bb.co:                                            ; preds = %._crit_edge55.i
  %i.jd = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i57, i64 -8, !dbg !56912
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i58, !dbg !56913
  %i.jf = load i64, ptr %.sroa.9.2.lcssa.i59, align 4, !dbg !56914, !alias.scope !56640, !noalias !56660
  store i64 %i.jf, ptr %i.je, align 4, !dbg !56914, !alias.scope !56641, !noalias !56661
  %i.jg = add i64 %.sroa.27.2.lcssa.i58, 1, !dbg !56915
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i59, i64 8, !dbg !56916
  br label %bb.bm, !dbg !56833

bb.cp:                                            ; preds = %._crit_edge55.i
  %i.ji = shl i64 %.sroa.27.2.lcssa.i58, 3, !dbg !56917
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph117, ptr nonnull align 4 %2, i64 %i.ji, i1 false), !dbg !56917, !alias.scope !56662
  %i.jj = sub i64 %.sroa.16.0104332, %.sroa.27.2.lcssa.i58, !dbg !56918 ; 7 uses
  %.not63.i = icmp eq i64 %.sroa.16.0104332, %.sroa.27.2.lcssa.i58, !dbg !56919
  %i.jk = getelementptr [8 x i8], ptr %.sroa.0.0.ph117, i64 %.sroa.27.2.lcssa.i58 ; 3 uses
  br i1 %.not63.i, label %.outer.thread, label %.lr.ph61.i, !dbg !56920

.lr.ph61.i:                                       ; preds = %bb.cp
  %min.iters.check = icmp ult i64 %i.jj, 4, !dbg !56920
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !56920

vector.ph:                                        ; preds = %.lr.ph61.i
  %n.vec = and i64 %i.jj, -4                      ; 3 uses
  br label %vector.body, !dbg !56920

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !56921 ; 3 uses
  %i.jl = xor i64 %index, -1, !dbg !56922
  %i.jm = getelementptr [8 x i8], ptr %i.fc, i64 %i.jl, !dbg !56923 ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %i.jk, i64 %index, !dbg !56924 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jm, i64 -8, !dbg !56925
  %i.jp = getelementptr i8, ptr %i.jm, i64 -24, !dbg !56925
  %wide.load = load <2 x i64>, ptr %i.jo, align 4, !dbg !56925, !alias.scope !56641, !noalias !56640
  %wide.load338 = load <2 x i64>, ptr %i.jp, align 4, !dbg !56925, !alias.scope !56641, !noalias !56640
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !56925
  %reverse339 = shufflevector <2 x i64> %wide.load338, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !56925
  %i.jq = getelementptr i8, ptr %i.jn, i64 16, !dbg !56925
  store <2 x i64> %reverse, ptr %i.jn, align 4, !dbg !56925, !alias.scope !56640, !noalias !56641
  store <2 x i64> %reverse339, ptr %i.jq, align 4, !dbg !56925, !alias.scope !56640, !noalias !56641
  %index.next = add nuw i64 %index, 4, !dbg !56921 ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec, !dbg !56920
  br i1 %i.jr, label %middle.block, label %vector.body, !dbg !56920, !llvm.loop !56605

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jj, %n.vec, !dbg !56920
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !56920

scalar.ph.preheader:                              ; preds = %.lr.ph61.i, %middle.block
  %.sroa.07.059.i.ph = phi i64 [ 0, %.lr.ph61.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !56920

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.059.i = phi i64 [ %i.js, %scalar.ph ], [ %.sroa.07.059.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.js = add nuw i64 %.sroa.07.059.i, 1, !dbg !56921 ; 2 uses
  %i.jt = xor i64 %.sroa.07.059.i, -1, !dbg !56922
  %i.ju = getelementptr [8 x i8], ptr %i.fc, i64 %i.jt, !dbg !56923
  %i.jv = getelementptr [8 x i8], ptr %i.jk, i64 %.sroa.07.059.i, !dbg !56924
  %i.jw = load i64, ptr %i.ju, align 4, !dbg !56925, !alias.scope !56641, !noalias !56640
  store i64 %i.jw, ptr %i.jv, align 4, !dbg !56925, !alias.scope !56640, !noalias !56641
  %exitcond.not.i60 = icmp eq i64 %i.js, %i.jj, !dbg !56919
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !56920, !llvm.loop !56606

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block
  %i.jx = icmp ugt i64 %.sroa.27.2.lcssa.i58, %.sroa.16.0104332, !dbg !56926
  br i1 %i.jx, label %bb.cq, label %.outer, !dbg !56926, !prof !4445

.outer.thread:                                    ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !56829
  br label %.outer._crit_edge, !dbg !56667

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph117, i64 %.sroa.27.2.lcssa.i58, !dbg !56927 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !56829
  %i.jz = icmp ult i64 %i.jj, 33, !dbg !56667
  br i1 %i.jz, label %.outer._crit_edge, label %.lr.ph, !dbg !56667

bb.cq:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtB1i_4sort18arg_sort_ascendingB1e_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4S_5BlockRSB1e_E3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i58, i64 noundef %.sroa.16.0104332, i64 noundef %.sroa.16.0104332, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #50, !dbg !56928
  unreachable, !dbg !56928
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 !dbg !56929 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !57316
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !57316

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bw, %.lr.ph38.i ], !dbg !57966 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bx, %.lr.ph38.i ], !dbg !57966 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113280, !dbg !58016
  br i1 %i.bp, label %bb.n, label %bb.m, !dbg !58016

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.bx, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.bw, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bs, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load float, ptr %.sroa.9.236.i, align 4, !dbg !58017, !alias.scope !57884, !noalias !57885, !noundef !4431 ; 2 uses
  %i.bq = fcmp ord float %.val.i, 0.000000e+00, !dbg !58018
  %i.br = fcmp ult float %.val.i, %i.x, !dbg !58019
  %.not2.i.i.i30.i = and i1 %i.bq, %i.br, !dbg !58020 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !58021 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.bs, !dbg !58022
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !58023
  %i.bu = load i64, ptr %.sroa.9.236.i, align 4, !dbg !58024, !alias.scope !57882, !noalias !57894
  store i64 %i.bu, ptr %i.bt, align 4, !dbg !58024, !alias.scope !57883, !noalias !57895
  %i.bv = zext i1 %.not2.i.i.i30.i to i64, !dbg !58025
  %i.bw = add i64 %.sroa.27.235.i, %i.bv, !dbg !58026 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !58027 ; 3 uses
  %i.by = icmp ult ptr %i.bx, %i.bn, !dbg !58015
  br i1 %i.by, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !58015

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !58028 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.sroa.27.2.lcssa.i, !dbg !58029
  %i.cb = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !58030, !alias.scope !57882, !noalias !57896
  store i64 %i.cb, ptr %i.ca, align 4, !dbg !58030, !alias.scope !57883, !noalias !57897
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !58031
  br label %bb.l, !dbg !57964

bb.n:                                             ; preds = %._crit_edge39.i
  %i.cd = shl i64 %.sroa.27.2.lcssa.i, 3, !dbg !58032
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph122, ptr nonnull align 4 %2, i64 %i.cd, i1 false), !dbg !58032, !alias.scope !57898
  %i.ce = sub i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i, !dbg !58033 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i, !dbg !58034
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !58035

.lr.ph45.i:                                       ; preds = %bb.n
  %i.cf = getelementptr [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.ce, 4, !dbg !58035
  br i1 %min.iters.check303, label %scalar.ph302.preheader, label %vector.ph304, !dbg !58035

vector.ph304:                                     ; preds = %.lr.ph45.i
  %n.vec305 = and i64 %i.ce, -4                   ; 3 uses
  br label %vector.body306, !dbg !58035

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body306 ], !dbg !58036 ; 3 uses
  %i.cg = xor i64 %index307, -1, !dbg !58037
  %i.ch = getelementptr [8 x i8], ptr %i.ac, i64 %i.cg, !dbg !58038 ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.cf, i64 %index307, !dbg !58039 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -8, !dbg !58040
  %i.ck = getelementptr i8, ptr %i.ch, i64 -24, !dbg !58040
  %wide.load308 = load <2 x i64>, ptr %i.cj, align 4, !dbg !58040, !alias.scope !57883, !noalias !57882
  %wide.load309 = load <2 x i64>, ptr %i.ck, align 4, !dbg !58040, !alias.scope !57883, !noalias !57882
  %reverse310 = shufflevector <2 x i64> %wide.load308, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58040
  %reverse311 = shufflevector <2 x i64> %wide.load309, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58040
  %i.cl = getelementptr i8, ptr %i.ci, i64 16, !dbg !58040
  store <2 x i64> %reverse310, ptr %i.ci, align 4, !dbg !58040, !alias.scope !57882, !noalias !57883
  store <2 x i64> %reverse311, ptr %i.cl, align 4, !dbg !58040, !alias.scope !57882, !noalias !57883
  %index.next312 = add nuw i64 %index307, 4, !dbg !58036 ; 2 uses
  %i.cm = icmp eq i64 %index.next312, %n.vec305, !dbg !58035
  br i1 %i.cm, label %middle.block313, label %vector.body306, !dbg !58035, !llvm.loop !57726

middle.block313:                                  ; preds = %vector.body306
  %cmp.n314 = icmp eq i64 %i.ce, %n.vec305, !dbg !58035
  br i1 %cmp.n314, label %.loopexit, label %scalar.ph302.preheader, !dbg !58035

scalar.ph302.preheader:                           ; preds = %.lr.ph45.i, %middle.block313
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec305, %middle.block313 ]
  br label %scalar.ph302, !dbg !58035

scalar.ph302:                                     ; preds = %scalar.ph302.preheader, %scalar.ph302
  %.sroa.07.043.i = phi i64 [ %i.cn, %scalar.ph302 ], [ %.sroa.07.043.i.ph, %scalar.ph302.preheader ] ; 3 uses
  %i.cn = add nuw i64 %.sroa.07.043.i, 1, !dbg !58036 ; 2 uses
  %i.co = xor i64 %.sroa.07.043.i, -1, !dbg !58037
  %i.cp = getelementptr [8 x i8], ptr %i.ac, i64 %i.co, !dbg !58038
  %i.cq = getelementptr [8 x i8], ptr %i.cf, i64 %.sroa.07.043.i, !dbg !58039
  %i.cr = load i64, ptr %i.cp, align 4, !dbg !58040, !alias.scope !57883, !noalias !57882
  store i64 %i.cr, ptr %i.cq, align 4, !dbg !58040, !alias.scope !57882, !noalias !57883
  %exitcond.not.i = icmp eq i64 %i.cn, %i.ce, !dbg !58034
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph302, !dbg !58035, !llvm.loop !57727

.loopexit:                                        ; preds = %scalar.ph302, %middle.block313, %bb.n
  %i.cs = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !58041
  br i1 %i.cs, label %.thread, label %bb.o, !dbg !58042

bb.o:                                             ; preds = %.loopexit
  %.not.i39 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113280, !dbg !58043
  br i1 %.not.i39, label %bb.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !58043, !prof !4445

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @110, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #50, !dbg !58044, !noalias !57900
  unreachable, !dbg !58044

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i, !dbg !58045
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph122) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %i.ct, i64 noundef %i.ce, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #44, !dbg !58046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58047
  %i.cu = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !57924
  br i1 %i.cu, label %.outer._crit_edge, label %bb.b, !dbg !57924

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !57901), !dbg !58048
  call void @llvm.experimental.noalias.scope.decl(metadata !57902), !dbg !58048
  %.not82 = icmp samesign ult i64 %3, %.sroa.16.0113280, !dbg !58049
  br i1 %.not82, label %bb.r, label %bb.q, !dbg !58049, !prof !5117

bb.q:                                             ; preds = %.thread
  %i.cv = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0113280, !dbg !58050 ; 3 uses
  br label %bb.s, !dbg !58051

bb.r:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !58052
  unreachable, !dbg !58052

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i42 = phi ptr [ %i.cv, %bb.q ], [ %i.fn, %bb.u ], !dbg !58053 ; 2 uses
  %.sroa.27.0.i43 = phi i64 [ 0, %bb.q ], [ %i.fq, %bb.u ], !dbg !58053 ; 2 uses
  %.sroa.9.0.i44 = phi ptr [ %.sroa.0.0.ph122, %bb.q ], [ %i.fr, %bb.u ], !dbg !58053 ; 3 uses
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0113280, %bb.u ] ; 4 uses
  %i.cw = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i45, i64 3), !dbg !58054
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %i.cw, !dbg !58055 ; 2 uses
  %i.cy = icmp ult ptr %.sroa.9.0.i44, %i.cx, !dbg !58056
  br i1 %i.cy, label %.lr.ph.i65, label %._crit_edge.i46, !dbg !58056

.lr.ph.i65:                                       ; preds = %bb.s
  %.val23.i66 = load float, ptr %i.w, align 4, !alias.scope !57903, !noalias !57904, !noundef !4431 ; 5 uses
  %i.cz = fcmp uno float %.val23.i66, 0.000000e+00 ; 4 uses
  br label %bb.t, !dbg !58056

bb.t:                                             ; preds = %bb.t, %.lr.ph.i65
  %.sroa.9.131.i67 = phi ptr [ %.sroa.9.0.i44, %.lr.ph.i65 ], [ %i.eb, %bb.t ] ; 6 uses
  %.sroa.27.130.i68 = phi i64 [ %.sroa.27.0.i43, %.lr.ph.i65 ], [ %i.ea, %bb.t ] ; 2 uses
  %.sroa.43.129.i69 = phi ptr [ %.sroa.43.0.i42, %.lr.ph.i65 ], [ %i.dw, %bb.t ] ; 4 uses
  %.val22.i70 = load float, ptr %.sroa.9.131.i67, align 4, !dbg !58057, !alias.scope !57905, !noalias !57906, !noundef !4431
  %i.da = fcmp oge float %.val23.i66, %.val22.i70, !dbg !58058
  %.not2.i.i.i.not.i.i = or i1 %i.cz, %i.da, !dbg !58059 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -8, !dbg !58060
  %.sroa.01.0.i.i71 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.db, !dbg !58061
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i71, i64 %.sroa.27.130.i68, !dbg !58062
  %i.dd = load i64, ptr %.sroa.9.131.i67, align 4, !dbg !58063, !alias.scope !57901, !noalias !57907
  store i64 %i.dd, ptr %i.dc, align 4, !dbg !58063, !alias.scope !57902, !noalias !57908
  %i.de = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !58064
  %i.df = add i64 %.sroa.27.130.i68, %i.de, !dbg !58065 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 8, !dbg !58066 ; 2 uses
  %.val20.i72 = load float, ptr %i.dg, align 4, !dbg !58067, !alias.scope !57905, !noalias !57906, !noundef !4431
  %i.dh = fcmp oge float %.val23.i66, %.val20.i72, !dbg !58068
  %.not2.i.i.i.not.i24.i = or i1 %i.cz, %i.dh, !dbg !58069 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -16, !dbg !58070
  %.sroa.01.0.i25.i73 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.di, !dbg !58071
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i73, i64 %i.df, !dbg !58072
  %i.dk = load i64, ptr %i.dg, align 4, !dbg !58073, !alias.scope !57901, !noalias !57909
  store i64 %i.dk, ptr %i.dj, align 4, !dbg !58073, !alias.scope !57902, !noalias !57910
  %i.dl = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !58074
  %i.dm = add i64 %i.df, %i.dl, !dbg !58075       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 16, !dbg !58076 ; 2 uses
  %.val18.i74 = load float, ptr %i.dn, align 4, !dbg !58077, !alias.scope !57905, !noalias !57906, !noundef !4431
  %i.do = fcmp oge float %.val23.i66, %.val18.i74, !dbg !58078
  %.not2.i.i.i.not.i26.i = or i1 %i.cz, %i.do, !dbg !58079 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -24, !dbg !58080
  %.sroa.01.0.i27.i75 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.dp, !dbg !58081
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i75, i64 %i.dm, !dbg !58082
  %i.dr = load i64, ptr %i.dn, align 4, !dbg !58083, !alias.scope !57901, !noalias !57911
  store i64 %i.dr, ptr %i.dq, align 4, !dbg !58083, !alias.scope !57902, !noalias !57912
  %i.ds = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !58084
  %i.dt = add i64 %i.dm, %i.ds, !dbg !58085       ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 24, !dbg !58086 ; 2 uses
  %.val16.i76 = load float, ptr %i.du, align 4, !dbg !58087, !alias.scope !57905, !noalias !57906, !noundef !4431
  %i.dv = fcmp oge float %.val23.i66, %.val16.i76, !dbg !58088
  %.not2.i.i.i.not.i28.i = or i1 %i.cz, %i.dv, !dbg !58089 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.43.129.i69, i64 -32, !dbg !58090 ; 3 uses
  %.sroa.01.0.i29.i77 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.dw, !dbg !58091
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i77, i64 %i.dt, !dbg !58092
  %i.dy = load i64, ptr %i.du, align 4, !dbg !58093, !alias.scope !57901, !noalias !57913
  store i64 %i.dy, ptr %i.dx, align 4, !dbg !58093, !alias.scope !57902, !noalias !57914
  %i.dz = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !58094
  %i.ea = add i64 %i.dt, %i.dz, !dbg !58095       ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i67, i64 32, !dbg !58096 ; 3 uses
  %i.ec = icmp ult ptr %i.eb, %i.cx, !dbg !58056
  br i1 %i.ec, label %bb.t, label %._crit_edge.i46, !dbg !58056

._crit_edge.i46:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i47 = phi ptr [ %.sroa.43.0.i42, %bb.s ], [ %i.dw, %bb.t ], !dbg !58053 ; 4 uses
  %.sroa.27.1.lcssa.i48 = phi i64 [ %.sroa.27.0.i43, %bb.s ], [ %i.ea, %bb.t ], !dbg !58053 ; 5 uses
  %.sroa.9.1.lcssa.i49 = phi ptr [ %.sroa.9.0.i44, %bb.s ], [ %i.eb, %bb.t ], !dbg !58053 ; 7 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.0.0.i45, !dbg !58097 ; 3 uses
  %i.ee = icmp ult ptr %.sroa.9.1.lcssa.i49, %i.ed, !dbg !58098
  br i1 %i.ee, label %.lr.ph38.i58.preheader, label %._crit_edge39.i50, !dbg !58098

.lr.ph38.i58.preheader:                           ; preds = %._crit_edge.i46
  %.val15.i63 = load float, ptr %i.w, align 4, !alias.scope !57903, !noalias !57904, !noundef !4431 ; 2 uses
  %i.ef = fcmp uno float %.val15.i63, 0.000000e+00
  br i1 %i.ef, label %.lr.ph38.i58.us.preheader, label %.lr.ph38.i58

.lr.ph38.i58.us.preheader:                        ; preds = %.lr.ph38.i58.preheader
  %i.eg = shl i64 %.sroa.0.0.i45, 3, !dbg !58098
  %7 = add i64 %i.eg, %i.d, !dbg !58098
  %i.eh = ptrtoaddr ptr %.sroa.9.1.lcssa.i49 to i64, !dbg !58098 ; 2 uses
  %i.ei = add i64 %i.eh, 8, !dbg !58098
  %8 = call i64 @llvm.umax.i64(i64 %7, i64 %i.ei), !dbg !58098
  %i.ej = xor i64 %i.eh, -1, !dbg !58098
  %i.ek = add i64 %8, %i.ej, !dbg !58098          ; 2 uses
  %i.el = lshr i64 %i.ek, 3, !dbg !58098
  %i.em = add nuw nsw i64 %i.el, 1, !dbg !58098   ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.ek, 24, !dbg !58098
  br i1 %min.iters.check289, label %.lr.ph38.i58.us.preheader316, label %vector.ph290, !dbg !58098

vector.ph290:                                     ; preds = %.lr.ph38.i58.us.preheader
  %n.vec291 = and i64 %i.em, 4611686018427387900  ; 5 uses
  %i.en = shl i64 %n.vec291, 3
  %i.eo = getelementptr i8, ptr %.sroa.9.1.lcssa.i49, i64 %i.en ; 2 uses
  %i.ep = add i64 %.sroa.27.1.lcssa.i48, %n.vec291 ; 2 uses
  %i.eq = mul i64 %n.vec291, -8
  %i.er = getelementptr i8, ptr %.sroa.43.1.lcssa.i47, i64 %i.eq ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i48
  br label %vector.body292, !dbg !58098

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body292 ] ; 3 uses
  %i.et = shl i64 %index293, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i49, i64 %i.et ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.es, i64 %index293, !dbg !58099 ; 2 uses
  %i.ev = getelementptr i8, ptr %next.gep, i64 16, !dbg !58100
  %wide.load294 = load <2 x i64>, ptr %next.gep, align 4, !dbg !58100, !alias.scope !57901, !noalias !57915
  %wide.load295 = load <2 x i64>, ptr %i.ev, align 4, !dbg !58100, !alias.scope !57901, !noalias !57915
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16, !dbg !58100
  store <2 x i64> %wide.load294, ptr %i.eu, align 4, !dbg !58100, !alias.scope !57902, !noalias !57916
  store <2 x i64> %wide.load295, ptr %i.ew, align 4, !dbg !58100, !alias.scope !57902, !noalias !57916
  %index.next296 = add nuw i64 %index293, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next296, %n.vec291, !dbg !58098
  br i1 %i.ex, label %middle.block297, label %vector.body292, !dbg !58098, !llvm.loop !57828

middle.block297:                                  ; preds = %vector.body292
  %cmp.n298 = icmp eq i64 %i.em, %n.vec291, !dbg !58098
  br i1 %cmp.n298, label %._crit_edge39.i50, label %.lr.ph38.i58.us.preheader316, !dbg !58098

.lr.ph38.i58.us.preheader316:                     ; preds = %.lr.ph38.i58.us.preheader, %middle.block297
  %.sroa.9.236.i59.us.ph = phi ptr [ %.sroa.9.1.lcssa.i49, %.lr.ph38.i58.us.preheader ], [ %i.eo, %middle.block297 ]
  %.sroa.27.235.i60.us.ph = phi i64 [ %.sroa.27.1.lcssa.i48, %.lr.ph38.i58.us.preheader ], [ %i.ep, %middle.block297 ]
  %.sroa.43.234.i61.us.ph = phi ptr [ %.sroa.43.1.lcssa.i47, %.lr.ph38.i58.us.preheader ], [ %i.er, %middle.block297 ]
  br label %.lr.ph38.i58.us, !dbg !58098

.lr.ph38.i58.us:                                  ; preds = %.lr.ph38.i58.us.preheader316, %.lr.ph38.i58.us
  %.sroa.9.236.i59.us = phi ptr [ %i.fc, %.lr.ph38.i58.us ], [ %.sroa.9.236.i59.us.ph, %.lr.ph38.i58.us.preheader316 ] ; 2 uses
  %.sroa.27.235.i60.us = phi i64 [ %i.fb, %.lr.ph38.i58.us ], [ %.sroa.27.235.i60.us.ph, %.lr.ph38.i58.us.preheader316 ] ; 2 uses
  %.sroa.43.234.i61.us = phi ptr [ %i.ey, %.lr.ph38.i58.us ], [ %.sroa.43.234.i61.us.ph, %.lr.ph38.i58.us.preheader316 ]
  %i.ey = getelementptr inbounds i8, ptr %.sroa.43.234.i61.us, i64 -8, !dbg !58101 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.235.i60.us, !dbg !58099
  %i.fa = load i64, ptr %.sroa.9.236.i59.us, align 4, !dbg !58100, !alias.scope !57901, !noalias !57915
  store i64 %i.fa, ptr %i.ez, align 4, !dbg !58100, !alias.scope !57902, !noalias !57916
  %i.fb = add i64 %.sroa.27.235.i60.us, 1, !dbg !58102 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i59.us, i64 8, !dbg !58103 ; 3 uses
  %i.fd = icmp ult ptr %i.fc, %i.ed, !dbg !58098
  br i1 %i.fd, label %.lr.ph38.i58.us, label %._crit_edge39.i50, !dbg !58098, !llvm.loop !57831

._crit_edge39.i50:                                ; preds = %.lr.ph38.i58, %.lr.ph38.i58.us, %middle.block297, %._crit_edge.i46
  %.sroa.43.2.lcssa.i51 = phi ptr [ %.sroa.43.1.lcssa.i47, %._crit_edge.i46 ], [ %i.ey, %.lr.ph38.i58.us ], [ %i.er, %middle.block297 ], [ %i.fg, %.lr.ph38.i58 ], !dbg !58053
  %.sroa.27.2.lcssa.i52 = phi i64 [ %.sroa.27.1.lcssa.i48, %._crit_edge.i46 ], [ %i.fb, %.lr.ph38.i58.us ], [ %i.ep, %middle.block297 ], [ %i.fk, %.lr.ph38.i58 ], !dbg !58053 ; 9 uses
  %.sroa.9.2.lcssa.i53 = phi ptr [ %.sroa.9.1.lcssa.i49, %._crit_edge.i46 ], [ %i.fc, %.lr.ph38.i58.us ], [ %i.eo, %middle.block297 ], [ %i.fl, %.lr.ph38.i58 ], !dbg !58053 ; 2 uses
  %i.fe = icmp eq i64 %.sroa.0.0.i45, %.sroa.16.0113280, !dbg !58104
  br i1 %i.fe, label %bb.v, label %bb.u, !dbg !58104

.lr.ph38.i58:                                     ; preds = %.lr.ph38.i58.preheader, %.lr.ph38.i58
  %.sroa.9.236.i59 = phi ptr [ %i.fl, %.lr.ph38.i58 ], [ %.sroa.9.1.lcssa.i49, %.lr.ph38.i58.preheader ] ; 3 uses
  %.sroa.27.235.i60 = phi i64 [ %i.fk, %.lr.ph38.i58 ], [ %.sroa.27.1.lcssa.i48, %.lr.ph38.i58.preheader ] ; 2 uses
  %.sroa.43.234.i61 = phi ptr [ %i.fg, %.lr.ph38.i58 ], [ %.sroa.43.1.lcssa.i47, %.lr.ph38.i58.preheader ]
  %.val.i62 = load float, ptr %.sroa.9.236.i59, align 4, !dbg !58105, !alias.scope !57905, !noalias !57906, !noundef !4431
  %i.ff = fcmp oge float %.val15.i63, %.val.i62, !dbg !58106 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %.sroa.43.234.i61, i64 -8, !dbg !58101 ; 3 uses
  %spec.select = select i1 %i.ff, ptr %2, ptr %i.fg, !dbg !58107
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.27.235.i60, !dbg !58099
  %i.fi = load i64, ptr %.sroa.9.236.i59, align 4, !dbg !58100, !alias.scope !57901, !noalias !57915
  store i64 %i.fi, ptr %i.fh, align 4, !dbg !58100, !alias.scope !57902, !noalias !57916
  %i.fj = zext i1 %i.ff to i64, !dbg !58108
  %i.fk = add i64 %.sroa.27.235.i60, %i.fj, !dbg !58102 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i59, i64 8, !dbg !58103 ; 3 uses
  %i.fm = icmp ult ptr %i.fl, %i.ed, !dbg !58098
  br i1 %i.fm, label %.lr.ph38.i58, label %._crit_edge39.i50, !dbg !58098

bb.u:                                             ; preds = %._crit_edge39.i50
  %i.fn = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i51, i64 -8, !dbg !58109
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i52, !dbg !58110
  %i.fp = load i64, ptr %.sroa.9.2.lcssa.i53, align 4, !dbg !58111, !alias.scope !57901, !noalias !57917
  store i64 %i.fp, ptr %i.fo, align 4, !dbg !58111, !alias.scope !57902, !noalias !57918
  %i.fq = add i64 %.sroa.27.2.lcssa.i52, 1, !dbg !58112
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i53, i64 8, !dbg !58113
  br label %bb.s, !dbg !58051

bb.v:                                             ; preds = %._crit_edge39.i50
  %i.fs = shl i64 %.sroa.27.2.lcssa.i52, 3, !dbg !58114
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph122, ptr nonnull align 4 %2, i64 %i.fs, i1 false), !dbg !58114, !alias.scope !57919
  %i.ft = sub i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i52, !dbg !58115 ; 7 uses
  %.not47.i54 = icmp eq i64 %.sroa.16.0113280, %.sroa.27.2.lcssa.i52, !dbg !58116
  %i.fu = getelementptr [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i52 ; 3 uses
  br i1 %.not47.i54, label %.outer.thread, label %.lr.ph45.i55, !dbg !58117

.lr.ph45.i55:                                     ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.ft, 4, !dbg !58117
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !58117

vector.ph:                                        ; preds = %.lr.ph45.i55
  %n.vec = and i64 %i.ft, -4                      ; 3 uses
  br label %vector.body, !dbg !58117

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !58118 ; 3 uses
  %i.fv = xor i64 %index, -1, !dbg !58119
  %i.fw = getelementptr [8 x i8], ptr %i.cv, i64 %i.fv, !dbg !58120 ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %i.fu, i64 %index, !dbg !58121 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fw, i64 -8, !dbg !58122
  %i.fz = getelementptr i8, ptr %i.fw, i64 -24, !dbg !58122
  %wide.load = load <2 x i64>, ptr %i.fy, align 4, !dbg !58122, !alias.scope !57902, !noalias !57901
  %wide.load286 = load <2 x i64>, ptr %i.fz, align 4, !dbg !58122, !alias.scope !57902, !noalias !57901
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58122
  %reverse287 = shufflevector <2 x i64> %wide.load286, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !58122
  %i.ga = getelementptr i8, ptr %i.fx, i64 16, !dbg !58122
  store <2 x i64> %reverse, ptr %i.fx, align 4, !dbg !58122, !alias.scope !57901, !noalias !57902
  store <2 x i64> %reverse287, ptr %i.ga, align 4, !dbg !58122, !alias.scope !57901, !noalias !57902
  %index.next = add nuw i64 %index, 4, !dbg !58118 ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec, !dbg !58117
  br i1 %i.gb, label %middle.block, label %vector.body, !dbg !58117, !llvm.loop !57866

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ft, %n.vec, !dbg !58117
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !58117

scalar.ph.preheader:                              ; preds = %.lr.ph45.i55, %middle.block
  %.sroa.07.043.i56.ph = phi i64 [ 0, %.lr.ph45.i55 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !58117

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i56 = phi i64 [ %i.gc, %scalar.ph ], [ %.sroa.07.043.i56.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = add nuw i64 %.sroa.07.043.i56, 1, !dbg !58118 ; 2 uses
  %i.gd = xor i64 %.sroa.07.043.i56, -1, !dbg !58119
  %i.ge = getelementptr [8 x i8], ptr %i.cv, i64 %i.gd, !dbg !58120
  %i.gf = getelementptr [8 x i8], ptr %i.fu, i64 %.sroa.07.043.i56, !dbg !58121
  %i.gg = load i64, ptr %i.ge, align 4, !dbg !58122, !alias.scope !57902, !noalias !57901
  store i64 %i.gg, ptr %i.gf, align 4, !dbg !58122, !alias.scope !57901, !noalias !57902
  %exitcond.not.i57 = icmp eq i64 %i.gc, %i.ft, !dbg !58116
  br i1 %exitcond.not.i57, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !58117, !llvm.loop !57867

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph, %middle.block
  %i.gh = icmp ugt i64 %.sroa.27.2.lcssa.i52, %.sroa.16.0113280, !dbg !58123
  br i1 %i.gh, label %bb.w, label %.outer, !dbg !58123, !prof !4445

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58047
  br label %.outer._crit_edge, !dbg !57924

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.27.2.lcssa.i52, !dbg !58124 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58047
  %i.gj = icmp ult i64 %i.ft, 33, !dbg !57924
  br i1 %i.gj, label %.outer._crit_edge, label %.lr.ph, !dbg !57924

bb.w:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTfmENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4v_5BlockRSfE3new0EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i52, i64 noundef %.sroa.16.0113280, i64 noundef %.sroa.16.0113280, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #50, !dbg !58125
  unreachable, !dbg !58125
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1Z_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #3 !dbg !58126 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !58685
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !58685

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph336 = phi ptr [ %i.qr, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph335 = phi i64 [ %i.qc, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph334 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph333 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph336 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph333, null
  %i.d = icmp eq i32 %.sroa.025.0.ph334, 0, !dbg !58686
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph978, !dbg !58686

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.e = icmp eq i32 %i.f, 0, !dbg !58686
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph978, !dbg !58686

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa265 = phi ptr [ %i.qd, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph336, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.qr, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.qc, %.outer ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2i_10WindowExprNtB2k_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB2m_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph.lcssa265, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !58687
  br label %bb.m, !dbg !58688

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0329.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph335, %.lr.ph ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1M_10WindowExprNtB1O_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1Q_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph336, i64 noundef %.sroa.16.0329.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6), !dbg !58689
  br label %bb.m, !dbg !58688

.lr.ph978:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0328977 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph334, %.lr.ph ]
  %.sroa.16.0329976 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph335, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0328977, -1, !dbg !58690 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58636), !dbg !58691
  call void @llvm.experimental.noalias.scope.decl(metadata !58637), !dbg !58691
  %i.g = lshr i64 %.sroa.16.0329976, 3, !dbg !58692 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 4, !dbg !58693
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph336, i64 %.idx.i, !dbg !58693 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 28, !dbg !58694
end_hunk_1
