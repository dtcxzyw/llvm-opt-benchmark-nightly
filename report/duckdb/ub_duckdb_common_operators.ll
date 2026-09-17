Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_operators?download=true
inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.em = icmp sgt i64 %.1190.i, 19
  br i1 %i.em, label %.preheader288, label %bb.ay

.preheader288:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i351 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i350 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i351, align 1, !tbaa !106, !noalias !1583 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader288
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i350, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i351, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader288, !llvm.loop !35

.critedge.i:                                      ; preds = %.preheader288, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i350, %.preheader288 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i353 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i352 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i352, align 1, !tbaa !106, !noalias !1583 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.am, label %.thread147

bb.am:                                            ; preds = %.preheader
  %i.ew = mul nuw i64 %.5205.i353, 10
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = add i64 %i.ew, -48
  %i.ez = add i64 %i.ey, %i.ex                    ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i352, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.fa, %1
  br i1 %.not266.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !106, !noalias !1583
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i352, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !106, !noalias !1583
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !36

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp ugt i64 %i.ez, 999999999999999999
  br i1 %i.fl, label %.thread455.thread, label %.thread147

.thread455.thread:                                ; preds = %bb.as
  %i.fm = ptrtoint ptr %.17.i to i64
  %i.fn = add i64 %.5.i, %i.df
  %i.fo = sub i64 %i.fn, %i.fm
  br label %bb.be

.thread147:                                       ; preds = %.preheader, %bb.as
  %.16.i301 = phi ptr [ %.17.i, %bb.as ], [ %.16.i352, %.preheader ]
  %.5205.i298 = phi i64 [ %i.ez, %bb.as ], [ %.5205.i353, %.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.16.i301, i64 1 ; 4 uses
  %.not538 = icmp eq ptr %i.fp, %1
  br i1 %.not538, label %._crit_edge358, label %.lr.ph357

.lr.ph357:                                        ; preds = %.thread147, %bb.ax
  %.0.i356 = phi i64 [ %.1.i, %bb.ax ], [ 0, %.thread147 ] ; 4 uses
  %.6206.i355 = phi i64 [ %i.fw, %bb.ax ], [ %.5205.i298, %.thread147 ] ; 2 uses
  %.18.i354 = phi ptr [ %.19.i, %bb.ax ], [ %i.fp, %.thread147 ] ; 4 uses
  %i.fq = load i8, ptr %.18.i354, align 1, !tbaa !106, !noalias !1583 ; 2 uses
  %i.fr = add i8 %i.fq, -48
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.at, label %._crit_edge358

bb.at:                                            ; preds = %.lr.ph357
  %i.ft = mul nuw i64 %.6206.i355, 10
  %i.fu = zext nneg i8 %i.fq to i64
  %i.fv = add i64 %i.ft, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.18.i354, i64 1 ; 4 uses
  %.not265.i = icmp eq ptr %i.fx, %1
  br i1 %.not265.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !106, !noalias !1583
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i354, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i356, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !106, !noalias !1583
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i356, %bb.au ], [ %.0.i356, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph357, label %._crit_edge358, !llvm.loop !37

._crit_edge358:                                   ; preds = %bb.ax, %.lr.ph357, %.thread147
  %.18.i.lcssa = phi ptr [ %i.fp, %.thread147 ], [ %.18.i354, %.lr.ph357 ], [ %.19.i, %bb.ax ]
  %.6206.i.lcssa = phi i64 [ %.5205.i298, %.thread147 ], [ %.6206.i355, %.lr.ph357 ], [ %i.fw, %bb.ax ]
  %.0.i.lcssa = phi i64 [ 0, %.thread147 ], [ %.0.i356, %.lr.ph357 ], [ %.1.i, %bb.ax ]
  %i.gj = ptrtoint ptr %i.fp to i64
  %i.gk = ptrtoint ptr %.18.i.lcssa to i64
  %i.gl = add i64 %.5.i, %i.gj
  %i.gm = sub i64 %i.gl, %i.gk
  %i.gn = add nsw i64 %i.gm, %.0.i.lcssa
  br label %.thread455

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %.split, %bb.w, %bb.t, %.split133, %bb.ai, %bb.ah, %bb.aq, %bb.ap, %bb.ao, %bb.av, %bb.aw, %bb.d, %bb.aj, %bb.ak, %bb.x, %bb.c
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIfEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #28 ; 2 uses
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = extractvalue { ptr, i32 } %i.go, 1
  br label %bb.bo

bb.ay:                                            ; preds = %bb.al, %.critedge.i
  %i.gr = add i64 %.4187.i, -11
  %or.cond251 = icmp ult i64 %i.gr, -21
  %i.gs = icmp ugt i64 %.4204.i, 16777216
  %or.cond253 = select i1 %or.cond251, i1 true, i1 %i.gs
  br i1 %or.cond253, label %.thread455, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = uitofp nneg i64 %.4204.i to float       ; 2 uses
  %i.gu = icmp slt i64 %.4187.i, 0
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = sub nsw i64 0, %.4187.i
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @_ZN17duckdb_fast_floatL19powers_of_ten_floatE, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !122
  %i.gy = fdiv float %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @_ZN17duckdb_fast_floatL19powers_of_ten_floatE, i64 %.4187.i
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !122
  %i.hb = fmul float %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi float [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store float %storemerge, ptr %2, align 4, !tbaa !122
  br i1 %i.d, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg float %storemerge
  store float %i.hc, ptr %2, align 4, !tbaa !122
  br label %bb.bo

.thread455:                                       ; preds = %._crit_edge358, %bb.ay
  %.sroa.093.0.ph464 = phi i64 [ %.4187.i, %bb.ay ], [ %i.gn, %._crit_edge358 ] ; 2 uses
  %.sroa.7.0.ph463 = phi i64 [ %.4204.i, %bb.ay ], [ %.6206.i.lcssa, %._crit_edge358 ] ; 2 uses
  %.sroa.26.2.ph462 = phi i1 [ false, %bb.ay ], [ true, %._crit_edge358 ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.7.0.ph463, 0
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66, label %bb.be

bb.be:                                            ; preds = %.thread455.thread, %.thread455
  %.sroa.26.2.ph462484 = phi i1 [ true, %.thread455.thread ], [ %.sroa.26.2.ph462, %.thread455 ] ; 6 uses
  %.sroa.7.0.ph463483 = phi i64 [ %i.ez, %.thread455.thread ], [ %.sroa.7.0.ph463, %.thread455 ] ; 8 uses
  %.sroa.093.0.ph464480 = phi i64 [ %i.fo, %.thread455.thread ], [ %.sroa.093.0.ph464, %.thread455 ] ; 11 uses
  %i.he = icmp slt i64 %.sroa.093.0.ph464480, -65
  br i1 %i.he, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp sgt i64 %.sroa.093.0.ph464480, 38
  br i1 %i.hf, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66, label %.noexc

.noexc:                                           ; preds = %bb.bf
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph463483, i1 true) ; 2 uses
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl i64 %.sroa.7.0.ph463483, %i.hg      ; 2 uses
  %i.hj = trunc nsw i64 %.sroa.093.0.ph464480 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !97
  %i.hp = zext i64 %i.hi to i128
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 274877906943
  %i.hw = icmp eq i64 %i.hv, 274877906943
  br i1 %i.hw, label %.noexc73, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

.noexc73:                                         ; preds = %.noexc
  %i.hx = getelementptr i8, ptr %i.hm, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !97
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.hi, i64 %i.hy) ; 2 uses
  %i.hz = add i64 %6, %i.hs                       ; 2 uses
  %7 = icmp ugt i64 %6, %i.hz
  %i.ia = zext i1 %7 to i64
  %spec.select.i72 = add nuw i64 %i.ia, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit: ; preds = %.noexc73, %.noexc
  %.pn273 = phi i64 [ %i.hz, %.noexc73 ], [ %i.hs, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hu, %.noexc ] ; 3 uses
  %i.ib = icmp ne i64 %.pn273, -1
  %i.ic = add nsw i64 %.sroa.093.0.ph464480, 27
  %i.id = icmp ult i64 %i.ic, 83
  %or.cond.i54 = or i1 %i.id, %i.ib
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.ie = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = or disjoint i64 %i.ie, 38               ; 2 uses
  %i.ih = lshr i64 %spec.select.i72.pn, %i.ig     ; 5 uses
  %i.ii = mul nsw i32 %i.hj, 217706
  %i.ij = ashr i32 %i.ii, 16
  %reass.sub = sub nsw i32 %i.ij, %i.hh
  %i.ik = add nsw i32 %reass.sub, 190
  %i.il = add nsw i32 %i.ik, %i.if                ; 3 uses
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %bb.bg, label %.split487

bb.bg:                                            ; preds = %.critedge.i60
  %i.in = sub nsw i32 1, %i.il                    ; 2 uses
  %i.io = icmp samesign ugt i32 %i.in, 63
  br i1 %i.io, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66, label %.split486

.split486:                                        ; preds = %bb.bg
  %i.ip = zext nneg i32 %i.in to i64
  %i.iq = lshr i64 %i.ih, %i.ip                   ; 2 uses
  %i.ir = and i64 %i.iq, 1
  %i.is = add nuw nsw i64 %i.ir, %i.iq            ; 2 uses
  %i.it = lshr i64 %i.is, 1                       ; 2 uses
  %i.iu = icmp samesign ugt i64 %i.is, 16777215
  %i.iv = zext i1 %i.iu to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

.split487:                                        ; preds = %.critedge.i60
  %i.iw = icmp ult i64 %.pn273, 2
  %i.ix = add nsw i64 %.sroa.093.0.ph464480, 17
  %i.iy = icmp ult i64 %i.ix, 28
  %or.cond255.not275 = and i1 %i.iy, %i.iw
  %i.iz = and i64 %i.ih, 3
  %i.ja = icmp eq i64 %i.iz, 1
  %or.cond257 = select i1 %or.cond255.not275, i1 %i.ja, i1 false
  %i.jb = shl i64 %i.ih, %i.ig
  %i.jc = icmp eq i64 %i.jb, %spec.select.i72.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.jc, i1 false
  %i.jd = and i64 %i.ih, 67108862
  %.sroa.0111.0 = select i1 %or.cond259, i64 %i.jd, i64 %i.ih ; 2 uses
  %i.je = and i64 %.sroa.0111.0, 1
  %i.jf = add nuw nsw i64 %i.je, %.sroa.0111.0    ; 2 uses
  %i.jg = lshr i64 %i.jf, 1
  %.not27.i61 = icmp samesign ugt i64 %i.jf, 33554431 ; 2 uses
  %i.jh = zext i1 %.not27.i61 to i32
  %.sroa.19117.0 = add nuw nsw i32 %i.il, %i.jh   ; 2 uses
  %i.ji = and i64 %i.jg, 58720255
  %.not28.i62 = icmp samesign ugt i32 %.sroa.19117.0, 254 ; 2 uses
  %.not = select i1 %.not28.i62, i1 true, i1 %.not27.i61
  %spec.select268 = select i1 %.not, i64 0, i64 %i.ji ; 2 uses
  %spec.select269 = select i1 %.not28.i62, i32 255, i32 %.sroa.19117.0 ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66: ; preds = %bb.bg, %bb.bf, %.thread455, %bb.be
  %.sroa.26.2.ph462485 = phi i1 [ %.sroa.26.2.ph462484, %bb.bf ], [ %.sroa.26.2.ph462, %.thread455 ], [ %.sroa.26.2.ph462484, %bb.be ], [ %.sroa.26.2.ph462484, %bb.bg ]
  %.sroa.093.0.ph464482 = phi i64 [ %.sroa.093.0.ph464480, %bb.bf ], [ %.sroa.093.0.ph464, %.thread455 ], [ %.sroa.093.0.ph464480, %bb.be ], [ %.sroa.093.0.ph464480, %bb.bg ]
  %.sroa.7.0160 = phi i64 [ %.sroa.7.0.ph463483, %bb.bf ], [ 0, %.thread455 ], [ %.sroa.7.0.ph463483, %bb.be ], [ %.sroa.7.0.ph463483, %bb.bg ]
  %.sroa.19117.1 = phi i32 [ 255, %bb.bf ], [ 0, %.thread455 ], [ 0, %bb.be ], [ 0, %bb.bg ] ; 2 uses
  br i1 %.sroa.26.2.ph462485, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %.thread246

bb.bh:                                            ; preds = %.split487, %.split486, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66
  %.sroa.093.0.ph464481 = phi i64 [ %.sroa.093.0.ph464480, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.093.0.ph464482, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.093.0.ph464480, %.split486 ], [ %.sroa.093.0.ph464480, %.split487 ] ; 5 uses
  %.sroa.19117.1471 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iv, %.split486 ], [ %spec.select269, %.split487 ] ; 3 uses
  %.sroa.0111.2469 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.it, %.split486 ], [ %spec.select268, %.split487 ] ; 2 uses
  %.sroa.7.0160468 = phi i64 [ %.sroa.7.0.ph463483, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.7.0160, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.7.0.ph463483, %.split486 ], [ %.sroa.7.0.ph463483, %.split487 ]
  %i.jj = add i64 %.sroa.7.0160468, 1             ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = icmp slt i64 %.sroa.093.0.ph464481, -65
  %or.cond260 = or i1 %i.jl, %i.jk
  br i1 %or.cond260, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jm = icmp sgt i64 %.sroa.093.0.ph464481, 38
  br i1 %i.jm, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %.noexc76

.noexc76:                                         ; preds = %bb.bi
  %i.jn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jj, i1 true) ; 2 uses
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = shl i64 %i.jj, %i.jn                    ; 2 uses
  %i.jq = trunc nsw i64 %.sroa.093.0.ph464481 to i32 ; 2 uses
  %i.jr = shl nsw i32 %i.jq, 1
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.js ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 5472
  %i.jv = load i64, ptr %i.ju, align 16, !tbaa !97
  %i.jw = zext i64 %i.jp to i128
  %i.jx = zext i64 %i.jv to i128
  %i.jy = mul nuw i128 %i.jx, %i.jw               ; 2 uses
  %i.jz = trunc i128 %i.jy to i64                 ; 2 uses
  %i.ka = lshr i128 %i.jy, 64
  %i.kb = trunc nuw i128 %i.ka to i64             ; 3 uses
  %i.kc = and i64 %i.kb, 274877906943
  %i.kd = icmp eq i64 %i.kc, 274877906943
  br i1 %i.kd, label %.noexc77, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78

.noexc77:                                         ; preds = %.noexc76
  %i.ke = getelementptr i8, ptr %i.jt, i64 5480
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !97
  %8 = tail call i64 @llvm.umulh.i64(i64 %i.jp, i64 %i.kf) ; 2 uses
  %i.kg = add i64 %8, %i.jz                       ; 2 uses
  %9 = icmp ugt i64 %8, %i.kg
  %i.kh = zext i1 %9 to i64
  %spec.select.i75 = add nuw i64 %i.kh, %i.kb
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78: ; preds = %.noexc77, %.noexc76
  %.pn277 = phi i64 [ %i.kg, %.noexc77 ], [ %i.jz, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.kb, %.noexc76 ] ; 3 uses
  %i.ki = icmp ne i64 %.pn277, -1
  %i.kj = add nsw i64 %.sroa.093.0.ph464481, 27
  %i.kk = icmp ult i64 %i.kj, 83
  %or.cond.i51 = or i1 %i.kk, %i.ki
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78
  %i.kl = lshr i64 %spec.select.i75.pn, 63        ; 2 uses
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = or disjoint i64 %i.kl, 38               ; 2 uses
  %i.ko = lshr i64 %spec.select.i75.pn, %i.kn     ; 5 uses
  %i.kp = mul nsw i32 %i.jq, 217706
  %i.kq = ashr i32 %i.kp, 16
  %i.kr = add nsw i32 %i.kq, 190
  %i.ks = sub nsw i32 %i.kr, %i.jo
  %i.kt = add nsw i32 %i.ks, %i.km                ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 1
  br i1 %i.ku, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.critedge.i52
  %i.kv = sub nsw i32 1, %i.kt                    ; 2 uses
  %i.kw = icmp samesign ugt i32 %i.kv, 63
  br i1 %i.kw, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kx = zext nneg i32 %i.kv to i64
  %i.ky = lshr i64 %i.ko, %i.kx                   ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %i.la = add nuw nsw i64 %i.kz, %i.ky            ; 2 uses
  %i.lb = lshr i64 %i.la, 1
  %i.lc = icmp samesign ugt i64 %i.la, 16777215
  %i.ld = zext i1 %i.lc to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

bb.bl:                                            ; preds = %.critedge.i52
  %i.le = icmp ult i64 %.pn277, 2
  %i.lf = add nsw i64 %.sroa.093.0.ph464481, 17
  %i.lg = icmp ult i64 %i.lf, 28
  %or.cond262.not280 = and i1 %i.lg, %i.le
  %i.lh = and i64 %i.ko, 3
  %i.li = icmp eq i64 %i.lh, 1
  %or.cond264 = select i1 %or.cond262.not280, i1 %i.li, i1 false
  %i.lj = shl i64 %i.ko, %i.kn
  %i.lk = icmp eq i64 %i.lj, %spec.select.i75.pn
  %or.cond266 = select i1 %or.cond264, i1 %i.lk, i1 false
  %i.ll = and i64 %i.ko, 67108862
  %.sroa.0103.0 = select i1 %or.cond266, i64 %i.ll, i64 %i.ko ; 2 uses
  %i.lm = and i64 %.sroa.0103.0, 1
  %i.ln = add nuw nsw i64 %i.lm, %.sroa.0103.0    ; 2 uses
  %i.lo = lshr i64 %i.ln, 1
  %.not27.i = icmp samesign ugt i64 %i.ln, 33554431 ; 2 uses
  %i.lp = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.kt, %i.lp      ; 2 uses
  %i.lq = and i64 %i.lo, 58720255
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 254 ; 2 uses
  %.not281 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select270 = select i1 %.not281, i64 0, i64 %i.lq
  %spec.select271 = select i1 %.not28.i, i32 255, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bl, %bb.bj, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78, %bb.bi, %bb.bh, %bb.bk
  %.sroa.0103.2 = phi i64 [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78 ], [ %i.lb, %bb.bk ], [ %spec.select270, %bb.bl ], [ 0, %bb.bj ]
  %.sroa.19.1 = phi i32 [ 255, %bb.bi ], [ 0, %bb.bh ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78 ], [ %i.ld, %bb.bk ], [ %spec.select271, %bb.bl ], [ 0, %bb.bj ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2469, %.sroa.0103.2
  %i.lr = icmp ne i32 %.sroa.19117.1471, %.sroa.19.1
  %i.ls = icmp slt i32 %.sroa.19117.1471, 0
  %i.lt = or i1 %i.ls, %i.lr
  %or.cond267 = select i1 %.not.i87, i1 true, i1 %i.lt
  br i1 %or.cond267, label %.thread246, label %bb.bn

.thread246:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit
  %i.lu = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIfEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bm unwind label %bb.bp     ; 2 uses

bb.bm:                                            ; preds = %.thread246
  %.fca.0.extract = extractvalue { i64, i32 } %i.lu, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.lu, 1
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66, %.split486, %.split487, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, %bb.bm
  %.sroa.690.1 = phi i32 [ %.fca.1.extract, %bb.bm ], [ %.sroa.19117.1471, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iv, %.split486 ], [ %spec.select269, %.split487 ]
  %.sroa.088.0 = phi i64 [ %.fca.0.extract, %bb.bm ], [ %.sroa.0111.2469, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.it, %.split486 ], [ %spec.select268, %.split487 ]
  %i.lv = sext i32 %.sroa.690.1 to i64
  %i.lw = shl nsw i64 %i.lv, 23
  %i.lx = or i64 %i.lw, %.sroa.088.0              ; 2 uses
  %i.ly = or i64 %i.lx, 2147483648
  %spec.select = select i1 %i.d, i64 %i.ly, i64 %i.lx
  %.0.extract.trunc.i = trunc i64 %spec.select to i32
  store i32 %.0.extract.trunc.i, ptr %2, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.bn, %bb.bd, %bb.bc, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.bn ], [ %i.gp, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bd ], [ %.15.i, %bb.bc ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.bn ], [ %i.gq, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bp:                                            ; preds = %.thread246
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  tail call void @__clang_call_terminate(ptr %i.ma) #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIfEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !106
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !106 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !106   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, float -qnan, float +qnan
  store float %i.aa, ptr %2, align 4, !tbaa !122
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !106
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !106 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.em = icmp sgt i64 %.1190.i, 19
  br i1 %i.em, label %.preheader281, label %bb.ay

.preheader281:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i344 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i343 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i344, align 1, !tbaa !106, !noalias !1594 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader281
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i343, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i344, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader281, !llvm.loop !35

.critedge.i:                                      ; preds = %.preheader281, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i343, %.preheader281 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i346 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i345 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i345, align 1, !tbaa !106, !noalias !1594 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.am, label %.thread140

bb.am:                                            ; preds = %.preheader
  %i.ew = mul nuw i64 %.5205.i346, 10
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = add i64 %i.ew, -48
  %i.ez = add i64 %i.ey, %i.ex                    ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i345, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.fa, %1
  br i1 %.not266.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !106, !noalias !1594
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i345, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !106, !noalias !1594
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !36

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp ugt i64 %i.ez, 999999999999999999
  br i1 %i.fl, label %.thread448.thread, label %.thread140

.thread448.thread:                                ; preds = %bb.as
  %i.fm = ptrtoint ptr %.17.i to i64
  %i.fn = add i64 %.5.i, %i.df
  %i.fo = sub i64 %i.fn, %i.fm
  br label %bb.be

.thread140:                                       ; preds = %.preheader, %bb.as
  %.16.i294 = phi ptr [ %.17.i, %bb.as ], [ %.16.i345, %.preheader ]
  %.5205.i291 = phi i64 [ %i.ez, %bb.as ], [ %.5205.i346, %.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.16.i294, i64 1 ; 4 uses
  %.not531 = icmp eq ptr %i.fp, %1
  br i1 %.not531, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %.thread140, %bb.ax
  %.0.i349 = phi i64 [ %.1.i, %bb.ax ], [ 0, %.thread140 ] ; 4 uses
  %.6206.i348 = phi i64 [ %i.fw, %bb.ax ], [ %.5205.i291, %.thread140 ] ; 2 uses
  %.18.i347 = phi ptr [ %.19.i, %bb.ax ], [ %i.fp, %.thread140 ] ; 4 uses
  %i.fq = load i8, ptr %.18.i347, align 1, !tbaa !106, !noalias !1594 ; 2 uses
  %i.fr = add i8 %i.fq, -48
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.at, label %._crit_edge351

bb.at:                                            ; preds = %.lr.ph350
  %i.ft = mul nuw i64 %.6206.i348, 10
  %i.fu = zext nneg i8 %i.fq to i64
  %i.fv = add i64 %i.ft, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.18.i347, i64 1 ; 4 uses
  %.not265.i = icmp eq ptr %i.fx, %1
  br i1 %.not265.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !106, !noalias !1594
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i347, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i349, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !106, !noalias !1594
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i349, %bb.au ], [ %.0.i349, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph350, label %._crit_edge351, !llvm.loop !37

._crit_edge351:                                   ; preds = %bb.ax, %.lr.ph350, %.thread140
  %.18.i.lcssa = phi ptr [ %i.fp, %.thread140 ], [ %.18.i347, %.lr.ph350 ], [ %.19.i, %bb.ax ]
  %.6206.i.lcssa = phi i64 [ %.5205.i291, %.thread140 ], [ %.6206.i348, %.lr.ph350 ], [ %i.fw, %bb.ax ]
  %.0.i.lcssa = phi i64 [ 0, %.thread140 ], [ %.0.i349, %.lr.ph350 ], [ %.1.i, %bb.ax ]
  %i.gj = ptrtoint ptr %i.fp to i64
  %i.gk = ptrtoint ptr %.18.i.lcssa to i64
  %i.gl = add i64 %.5.i, %i.gj
  %i.gm = sub i64 %i.gl, %i.gk
  %i.gn = add nsw i64 %i.gm, %.0.i.lcssa
  br label %.thread448

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %.split, %bb.w, %bb.t, %.split126, %bb.ai, %bb.ah, %bb.aq, %bb.ap, %bb.ao, %bb.av, %bb.aw, %bb.d, %bb.aj, %bb.ak, %bb.x, %bb.c
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #28 ; 2 uses
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = extractvalue { ptr, i32 } %i.go, 1
  br label %bb.bs

bb.ay:                                            ; preds = %bb.al, %.critedge.i
  %i.gr = add i64 %.4187.i, -23
  %or.cond244 = icmp ult i64 %i.gr, -45
  %i.gs = icmp ugt i64 %.4204.i, 9007199254740992
  %or.cond246 = select i1 %or.cond244, i1 true, i1 %i.gs
  br i1 %or.cond246, label %.thread448, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = uitofp nneg i64 %.4204.i to double      ; 2 uses
  %i.gu = icmp slt i64 %.4187.i, 0
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = sub nsw i64 0, %.4187.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !124
  %i.gy = fdiv double %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %.4187.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !124
  %i.hb = fmul double %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi double [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !124
  br i1 %i.d, label %bb.bd, label %bb.bs

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg double %storemerge
  store double %i.hc, ptr %2, align 8, !tbaa !124
  br label %bb.bs

.thread448:                                       ; preds = %._crit_edge351, %bb.ay
  %.sroa.086.0.ph457 = phi i64 [ %.4187.i, %bb.ay ], [ %i.gn, %._crit_edge351 ] ; 2 uses
  %.sroa.7.0.ph456 = phi i64 [ %.4204.i, %bb.ay ], [ %.6206.i.lcssa, %._crit_edge351 ] ; 2 uses
  %.sroa.26.2.ph455 = phi i1 [ false, %bb.ay ], [ true, %._crit_edge351 ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.7.0.ph456, 0
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71, label %bb.be

bb.be:                                            ; preds = %.thread448.thread, %.thread448
  %.sroa.26.2.ph455477 = phi i1 [ true, %.thread448.thread ], [ %.sroa.26.2.ph455, %.thread448 ] ; 6 uses
  %.sroa.7.0.ph456476 = phi i64 [ %i.ez, %.thread448.thread ], [ %.sroa.7.0.ph456, %.thread448 ] ; 8 uses
  %.sroa.086.0.ph457473 = phi i64 [ %i.fo, %.thread448.thread ], [ %.sroa.086.0.ph457, %.thread448 ] ; 11 uses
  %i.he = icmp slt i64 %.sroa.086.0.ph457473, -342
  br i1 %i.he, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp sgt i64 %.sroa.086.0.ph457473, 308
  br i1 %i.hf, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph456476, i1 true) ; 2 uses
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl i64 %.sroa.7.0.ph456476, %i.hg      ; 2 uses
  %i.hj = trunc nsw i64 %.sroa.086.0.ph457473 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !97
  %i.hp = zext i64 %i.hi to i128
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 511
  %i.hw = icmp eq i64 %i.hv, 511
  br i1 %i.hw, label %bb.bh, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hx = getelementptr i8, ptr %i.hm, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !97
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.hi, i64 %i.hy) ; 2 uses
  %i.hz = add i64 %6, %i.hs                       ; 2 uses
  %7 = icmp ugt i64 %6, %i.hz
  %i.ia = zext i1 %7 to i64
  %spec.select.i72 = add nuw i64 %i.ia, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %bb.bh, %bb.bg
  %.pn266 = phi i64 [ %i.hz, %bb.bh ], [ %i.hs, %bb.bg ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %bb.bh ], [ %i.hu, %bb.bg ] ; 3 uses
  %i.ib = icmp ne i64 %.pn266, -1
  %i.ic = add nsw i64 %.sroa.086.0.ph457473, 27
  %i.id = icmp ult i64 %i.ic, 83
  %or.cond.i59 = or i1 %i.id, %i.ib
  br i1 %or.cond.i59, label %.critedge.i65, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread

.critedge.i65:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.ie = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = add nuw nsw i64 %i.ie, 9                ; 2 uses
  %i.ih = lshr i64 %spec.select.i72.pn, %i.ig     ; 5 uses
  %i.ii = mul nsw i32 %i.hj, 217706
  %i.ij = ashr i32 %i.ii, 16
  %reass.sub = sub nsw i32 %i.ij, %i.hh
  %i.ik = add nsw i32 %reass.sub, 1086
  %i.il = add nsw i32 %i.ik, %i.if                ; 3 uses
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %bb.bi, label %.split480

bb.bi:                                            ; preds = %.critedge.i65
  %i.in = sub nsw i32 1, %i.il                    ; 2 uses
  %i.io = icmp samesign ugt i32 %i.in, 63
  br i1 %i.io, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71, label %.split479

.split479:                                        ; preds = %bb.bi
  %i.ip = zext nneg i32 %i.in to i64
  %i.iq = lshr i64 %i.ih, %i.ip                   ; 2 uses
  %i.ir = and i64 %i.iq, 1
  %i.is = add nuw nsw i64 %i.ir, %i.iq            ; 2 uses
  %i.it = lshr i64 %i.is, 1                       ; 2 uses
  %i.iu = icmp samesign ugt i64 %i.is, 9007199254740991
  %i.iv = zext i1 %i.iu to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %bb.br

.split480:                                        ; preds = %.critedge.i65
  %i.iw = icmp ult i64 %.pn266, 2
  %i.ix = add nsw i64 %.sroa.086.0.ph457473, 4
  %i.iy = icmp ult i64 %i.ix, 28
  %or.cond248.not268 = and i1 %i.iy, %i.iw
  %i.iz = and i64 %i.ih, 3
  %i.ja = icmp eq i64 %i.iz, 1
  %or.cond250 = select i1 %or.cond248.not268, i1 %i.ja, i1 false
  %i.jb = shl i64 %i.ih, %i.ig
  %i.jc = icmp eq i64 %i.jb, %spec.select.i72.pn
  %or.cond252 = select i1 %or.cond250, i1 %i.jc, i1 false
  %i.jd = and i64 %i.ih, 72057594037927934
  %.sroa.0104.0 = select i1 %or.cond252, i64 %i.jd, i64 %i.ih ; 2 uses
  %i.je = and i64 %.sroa.0104.0, 1
  %i.jf = add nuw nsw i64 %i.je, %.sroa.0104.0    ; 2 uses
  %i.jg = lshr i64 %i.jf, 1
  %.not27.i66 = icmp samesign ugt i64 %i.jf, 18014398509481983 ; 2 uses
  %i.jh = zext i1 %.not27.i66 to i32
  %.sroa.19110.0 = add nuw nsw i32 %i.il, %i.jh   ; 2 uses
  %i.ji = and i64 %i.jg, 9218868437227405311
  %.not28.i67 = icmp samesign ugt i32 %.sroa.19110.0, 2046 ; 2 uses
  %.not = select i1 %.not28.i67, i1 true, i1 %.not27.i66
  %spec.select261 = select i1 %.not, i64 0, i64 %i.ji ; 2 uses
  %spec.select262 = select i1 %.not28.i67, i32 2047, i32 %.sroa.19110.0 ; 2 uses
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71: ; preds = %bb.bi, %bb.bf, %.thread448, %bb.be
  %.sroa.26.2.ph455478 = phi i1 [ %.sroa.26.2.ph455477, %bb.bf ], [ %.sroa.26.2.ph455, %.thread448 ], [ %.sroa.26.2.ph455477, %bb.be ], [ %.sroa.26.2.ph455477, %bb.bi ]
  %.sroa.086.0.ph457475 = phi i64 [ %.sroa.086.0.ph457473, %bb.bf ], [ %.sroa.086.0.ph457, %.thread448 ], [ %.sroa.086.0.ph457473, %bb.be ], [ %.sroa.086.0.ph457473, %bb.bi ]
  %.sroa.7.0153 = phi i64 [ %.sroa.7.0.ph456476, %bb.bf ], [ 0, %.thread448 ], [ %.sroa.7.0.ph456476, %bb.be ], [ %.sroa.7.0.ph456476, %bb.bi ]
  %.sroa.19110.1 = phi i32 [ 2047, %bb.bf ], [ 0, %.thread448 ], [ 0, %bb.be ], [ 0, %bb.bi ] ; 2 uses
  br i1 %.sroa.26.2.ph455478, label %bb.bj, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %.thread239

bb.bj:                                            ; preds = %.split480, %.split479, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71
  %.sroa.086.0.ph457474 = phi i64 [ %.sroa.086.0.ph457473, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.086.0.ph457475, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %.sroa.086.0.ph457473, %.split479 ], [ %.sroa.086.0.ph457473, %.split480 ] ; 5 uses
  %.sroa.19110.1464 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iv, %.split479 ], [ %spec.select262, %.split480 ] ; 3 uses
  %.sroa.0104.2462 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.it, %.split479 ], [ %spec.select261, %.split480 ] ; 2 uses
  %.sroa.7.0153461 = phi i64 [ %.sroa.7.0.ph456476, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.7.0153, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %.sroa.7.0.ph456476, %.split479 ], [ %.sroa.7.0.ph456476, %.split480 ]
  %i.jj = add i64 %.sroa.7.0153461, 1             ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = icmp slt i64 %.sroa.086.0.ph457474, -342
  %or.cond253 = or i1 %i.jl, %i.jk
  br i1 %or.cond253, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jm = icmp sgt i64 %.sroa.086.0.ph457474, 308
  br i1 %i.jm, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jj, i1 true) ; 2 uses
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = shl i64 %i.jj, %i.jn                    ; 2 uses
  %i.jq = trunc nsw i64 %.sroa.086.0.ph457474 to i32 ; 2 uses
  %i.jr = shl nsw i32 %i.jq, 1
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.js ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 5472
  %i.jv = load i64, ptr %i.ju, align 16, !tbaa !97
  %i.jw = zext i64 %i.jp to i128
  %i.jx = zext i64 %i.jv to i128
  %i.jy = mul nuw i128 %i.jx, %i.jw               ; 2 uses
  %i.jz = trunc i128 %i.jy to i64                 ; 2 uses
  %i.ka = lshr i128 %i.jy, 64
  %i.kb = trunc nuw i128 %i.ka to i64             ; 3 uses
  %i.kc = and i64 %i.kb, 511
  %i.kd = icmp eq i64 %i.kc, 511
  br i1 %i.kd, label %bb.bm, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79

bb.bm:                                            ; preds = %bb.bl
  %i.ke = getelementptr i8, ptr %i.jt, i64 5480
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !97
  %8 = tail call i64 @llvm.umulh.i64(i64 %i.jp, i64 %i.kf) ; 2 uses
  %i.kg = add i64 %8, %i.jz                       ; 2 uses
  %9 = icmp ugt i64 %8, %i.kg
  %i.kh = zext i1 %9 to i64
  %spec.select.i78 = add nuw i64 %i.kh, %i.kb
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79: ; preds = %bb.bm, %bb.bl
  %.pn270 = phi i64 [ %i.kg, %bb.bm ], [ %i.jz, %bb.bl ] ; 2 uses
  %spec.select.i78.pn = phi i64 [ %spec.select.i78, %bb.bm ], [ %i.kb, %bb.bl ] ; 3 uses
  %i.ki = icmp ne i64 %.pn270, -1
  %i.kj = add nsw i64 %.sroa.086.0.ph457474, 27
  %i.kk = icmp ult i64 %i.kj, 83
  %or.cond.i56 = or i1 %i.kk, %i.ki
  br i1 %or.cond.i56, label %.critedge.i57, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

.critedge.i57:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79
  %i.kl = lshr i64 %spec.select.i78.pn, 63        ; 2 uses
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = add nuw nsw i64 %i.kl, 9                ; 2 uses
  %i.ko = lshr i64 %spec.select.i78.pn, %i.kn     ; 5 uses
  %i.kp = mul nsw i32 %i.jq, 217706
  %i.kq = ashr i32 %i.kp, 16
  %i.kr = add nsw i32 %i.kq, 1086
  %i.ks = sub nsw i32 %i.kr, %i.jo
  %i.kt = add nsw i32 %i.ks, %i.km                ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 1
  br i1 %i.ku, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.critedge.i57
  %i.kv = sub nsw i32 1, %i.kt                    ; 2 uses
  %i.kw = icmp samesign ugt i32 %i.kv, 63
  br i1 %i.kw, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kx = zext nneg i32 %i.kv to i64
  %i.ky = lshr i64 %i.ko, %i.kx                   ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %i.la = add nuw nsw i64 %i.kz, %i.ky            ; 2 uses
  %i.lb = lshr i64 %i.la, 1
  %i.lc = icmp samesign ugt i64 %i.la, 9007199254740991
  %i.ld = zext i1 %i.lc to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.bp:                                            ; preds = %.critedge.i57
  %i.le = icmp ult i64 %.pn270, 2
  %i.lf = add nsw i64 %.sroa.086.0.ph457474, 4
  %i.lg = icmp ult i64 %i.lf, 28
  %or.cond255.not273 = and i1 %i.lg, %i.le
  %i.lh = and i64 %i.ko, 3
  %i.li = icmp eq i64 %i.lh, 1
  %or.cond257 = select i1 %or.cond255.not273, i1 %i.li, i1 false
  %i.lj = shl i64 %i.ko, %i.kn
  %i.lk = icmp eq i64 %i.lj, %spec.select.i78.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.lk, i1 false
  %i.ll = and i64 %i.ko, 72057594037927934
  %.sroa.096.0 = select i1 %or.cond259, i64 %i.ll, i64 %i.ko ; 2 uses
  %i.lm = and i64 %.sroa.096.0, 1
  %i.ln = add nuw nsw i64 %i.lm, %.sroa.096.0     ; 2 uses
  %i.lo = lshr i64 %i.ln, 1
  %.not27.i = icmp samesign ugt i64 %i.ln, 18014398509481983 ; 2 uses
  %i.lp = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.kt, %i.lp      ; 2 uses
  %i.lq = and i64 %i.lo, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not274 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select263 = select i1 %.not274, i64 0, i64 %i.lq
  %spec.select264 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79, %bb.bk, %bb.bj, %bb.bo
  %.sroa.096.2 = phi i64 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79 ], [ %i.lb, %bb.bo ], [ %spec.select263, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bk ], [ 0, %bb.bj ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79 ], [ %i.ld, %bb.bo ], [ %spec.select264, %bb.bp ], [ 0, %bb.bn ]
  %.not.i80 = icmp ne i64 %.sroa.0104.2462, %.sroa.096.2
  %i.lr = icmp ne i32 %.sroa.19110.1464, %.sroa.19.1
  %i.ls = icmp slt i32 %.sroa.19110.1464, 0
  %i.lt = or i1 %i.ls, %i.lr
  %or.cond260 = select i1 %.not.i80, i1 true, i1 %i.lt
  br i1 %or.cond260, label %.thread239, label %bb.br

.thread239:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  %i.lu = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %.thread239
  %.fca.0.extract = extractvalue { i64, i32 } %i.lu, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.lu, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71, %.split479, %.split480, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.bq
  %.sroa.683.1 = phi i32 [ %.fca.1.extract, %bb.bq ], [ %.sroa.19110.1464, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iv, %.split479 ], [ %spec.select262, %.split480 ]
  %.sroa.081.0 = phi i64 [ %.fca.0.extract, %bb.bq ], [ %.sroa.0104.2462, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.it, %.split479 ], [ %spec.select261, %.split480 ]
  %i.lv = zext i32 %.sroa.683.1 to i64
  %i.lw = shl i64 %i.lv, 52
  %i.lx = or i64 %i.lw, %.sroa.081.0              ; 2 uses
  %i.ly = or i64 %i.lx, -9223372036854775808
  %spec.select = select i1 %i.d, i64 %i.ly, i64 %i.lx
  store i64 %spec.select, ptr %2, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.br, %bb.bd, %bb.bc, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.br ], [ %i.gp, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bd ], [ %.15.i, %bb.bc ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.br ], [ %i.gq, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bt:                                            ; preds = %.thread239
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  tail call void @__clang_call_terminate(ptr %i.ma) #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !106
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !106 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !106   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !124
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !106
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !106 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !106 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb6VectorD2Ev:bb.a
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !2790
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !2790
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2794 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !2796
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !2797
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !2790
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !2790
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, !prof !125

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2794 ; 8 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i6, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !2796
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !2797
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !176
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !2791
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !176
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !2791
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !125

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !176
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !2798
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !89   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !2798
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthIhEEiT_(i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6duckdb9Timestamp7ConvertENS_14timestamp_ns_tERNS_6date_tERNS_7dtime_tERi(i64, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.mul.v8i16(<8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.mul.v4i16(<4 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }

!llvm.module.flags = !{!83, !84}
!llvm.ident = !{!85}
!llvm.errno.tbaa = !{!89}

!0 = distinct !{!0, !112}
!1 = distinct !{!1, !112}
!2 = distinct !{!2, !112}
!3 = distinct !{!3, !112}
!4 = distinct !{!4, !112}
!5 = distinct !{!5, !112}
!6 = distinct !{!6, !112}
!7 = distinct !{!7, !112}
!8 = distinct !{!8, !112}
!9 = distinct !{!9, !112}
!10 = distinct !{!10, !112}
!11 = distinct !{!11, !112}
!12 = distinct !{!12, !112}
!13 = distinct !{!13, !112}
!14 = distinct !{!14, !112}
!15 = distinct !{!15, !112}
!16 = distinct !{!16, !112}
!17 = distinct !{!17, !112}
!18 = distinct !{!18, !112}
!19 = distinct !{!19, !112}
!20 = distinct !{!20, !112}
!21 = distinct !{!21, !112}
!22 = distinct !{!22, !112}
!23 = distinct !{!23, !112}
!24 = distinct !{!24, !112}
!25 = distinct !{!25, !112}
!26 = distinct !{!26, !112}
!27 = distinct !{!27, !112}
!28 = distinct !{!28, !112}
!29 = distinct !{!29, !112}
!30 = distinct !{!30, !112}
!31 = distinct !{!31, !112}
!32 = distinct !{!32, !112}
!33 = distinct !{!33, !112}
!34 = distinct !{!34, !112}
!35 = distinct !{!35, !112}
!36 = distinct !{!36, !112}
!37 = distinct !{!37, !112}
!38 = distinct !{!38, !112}
!39 = distinct !{!39, !112}
!40 = distinct !{!40, !112}
!41 = distinct !{!41, !112}
!42 = distinct !{!42, !112}
!43 = distinct !{!43, !112}
!44 = distinct !{!44, !112}
!45 = distinct !{!45, !112}
!46 = distinct !{!46, !112}
!47 = distinct !{!47, !112}
!48 = distinct !{!48, !112}
!49 = distinct !{!49, !112}
!50 = distinct !{null, null, null, null}
!51 = distinct !{!51, !112}
!52 = distinct !{!52, !112}
!53 = distinct !{!53, !112}
!54 = distinct !{null, null, null, null, null}
!55 = distinct !{!55, !112}
!56 = distinct !{!56, !112}
!57 = distinct !{!57, !112}
!58 = distinct !{!58, !112}
!59 = distinct !{!59, !112}
!60 = distinct !{null, null, null, null}
!61 = distinct !{!61, !112}
!62 = distinct !{!62, !112}
!63 = distinct !{!63, !112}
!64 = distinct !{!64, !112}
!65 = distinct !{!65, !112}
!66 = distinct !{!66, !112}
!67 = distinct !{!67, !112}
!68 = distinct !{!68, !112}
!69 = distinct !{!69, !112}
!70 = distinct !{!70, !112}
!71 = distinct !{!71, !112}
!72 = distinct !{!72, !112}
!73 = distinct !{!73, !112}
!74 = distinct !{!74, !112}
!75 = distinct !{!75, !112}
!76 = distinct !{!76, !112}
!77 = distinct !{!77, !112}
!78 = distinct !{!78, !112}
!79 = distinct !{!79, !112}
!80 = distinct !{!80, !112}
!81 = distinct !{!81, !112}
!82 = distinct !{!82, !112}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"uwtable", i32 2}
!85 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!86 = !{!"Simple C++ TBAA"}
!87 = !{!"omnipotent char", !86, i64 0}
!88 = !{!"int", !87, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"_ZTSN6duckdb12PhysicalTypeE", !87, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"any pointer", !87, i64 0}
!93 = !{!"p1 _ZTSN6duckdb14CastParametersE", !92, i64 0}
!94 = !{!"_ZTSN6duckdb12optional_ptrINS_14CastParametersELb1EEE", !93, i64 0}
!95 = !{!94, !93, i64 0}
!96 = !{!"long", !87, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"p1 _ZTSN6duckdb10ExpressionE", !92, i64 0}
!99 = !{!"_ZTSN6duckdb12optional_ptrIKNS_10ExpressionELb1EEE", !98, i64 0}
!100 = !{!99, !98, i64 0}
!101 = !{!"p1 omnipotent char", !92, i64 0}
!102 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !101, i64 0}
!103 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !102, i64 0, !96, i64 8, !87, i64 16}
!104 = !{!103, !101, i64 0}
!105 = !{!102, !101, i64 0}
!106 = !{!87, !87, i64 0}
!107 = !{!103, !96, i64 8}
!108 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !92, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!110 = !{!109, !108, i64 0}
!111 = !{!109, !108, i64 8}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"bool", !87, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"short", !87, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"_ZTSN6duckdb9hugeint_tE", !96, i64 0, !96, i64 8}
!118 = !{!117, !96, i64 8}
!119 = !{!117, !96, i64 0}
!120 = !{!"_ZTSN6duckdb10uhugeint_tE", !96, i64 0, !96, i64 8}
!121 = !{!"float", !87, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"double", !87, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_2
