Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_operators?download=true
inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a

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
  %i.hi = shl i64 %.sroa.7.0.ph463483, %i.hg
  %i.hj = trunc nsw i64 %.sroa.093.0.ph464480 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !97
  %i.hp = zext i64 %i.hi to i128                  ; 2 uses
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 274877906943
  %i.hw = icmp eq i64 %i.hv, 274877906943
  br i1 %i.hw, label %.noexc73, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

.noexc73:                                         ; preds = %.noexc
  %6 = sext i32 %i.hk to i64
  %7 = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %6
  %i.hx = getelementptr i8, ptr %7, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !97
  %i.hz = zext i64 %i.hy to i128
  %i.ia = mul nuw i128 %i.hz, %i.hp
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = trunc nuw i128 %i.ib to i64             ; 2 uses
  %i.id = add i64 %i.ic, %i.hs                    ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = zext i1 %i.ie to i64
  %spec.select.i72 = add nuw i64 %i.if, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit: ; preds = %.noexc73, %.noexc
  %.pn273 = phi i64 [ %i.id, %.noexc73 ], [ %i.hs, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hu, %.noexc ] ; 3 uses
  %i.ig = icmp ne i64 %.pn273, -1
  %i.ih = add nsw i64 %.sroa.093.0.ph464480, 27
  %i.ii = icmp ult i64 %i.ih, 83
  %or.cond.i54 = or i1 %i.ii, %i.ig
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.ij = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = or disjoint i64 %i.ij, 38               ; 2 uses
  %i.im = lshr i64 %spec.select.i72.pn, %i.il     ; 5 uses
  %i.in = mul nsw i32 %i.hj, 217706
  %i.io = ashr i32 %i.in, 16
  %reass.sub = sub nsw i32 %i.io, %i.hh
  %i.ip = add nsw i32 %reass.sub, 190
  %i.iq = add nsw i32 %i.ip, %i.ik                ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %bb.bg, label %.split487

bb.bg:                                            ; preds = %.critedge.i60
  %i.is = sub nsw i32 1, %i.iq                    ; 2 uses
  %i.it = icmp samesign ugt i32 %i.is, 63
  br i1 %i.it, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66, label %.split486

.split486:                                        ; preds = %bb.bg
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = lshr i64 %i.im, %i.iu                   ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %i.ix = add nuw nsw i64 %i.iw, %i.iv            ; 2 uses
  %i.iy = lshr i64 %i.ix, 1                       ; 2 uses
  %i.iz = icmp samesign ugt i64 %i.ix, 16777215
  %i.ja = zext i1 %i.iz to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

.split487:                                        ; preds = %.critedge.i60
  %i.jb = icmp ult i64 %.pn273, 2
  %i.jc = add nsw i64 %.sroa.093.0.ph464480, 17
  %i.jd = icmp ult i64 %i.jc, 28
  %or.cond255.not275 = and i1 %i.jd, %i.jb
  %i.je = and i64 %i.im, 3
  %i.jf = icmp eq i64 %i.je, 1
  %or.cond257 = select i1 %or.cond255.not275, i1 %i.jf, i1 false
  %i.jg = shl i64 %i.im, %i.il
  %i.jh = icmp eq i64 %i.jg, %spec.select.i72.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.jh, i1 false
  %i.ji = and i64 %i.im, 67108862
  %.sroa.0111.0 = select i1 %or.cond259, i64 %i.ji, i64 %i.im ; 2 uses
  %i.jj = and i64 %.sroa.0111.0, 1
  %i.jk = add nuw nsw i64 %i.jj, %.sroa.0111.0    ; 2 uses
  %i.jl = lshr i64 %i.jk, 1
  %.not27.i61 = icmp samesign ugt i64 %i.jk, 33554431 ; 2 uses
  %i.jm = zext i1 %.not27.i61 to i32
  %.sroa.19117.0 = add nuw nsw i32 %i.iq, %i.jm   ; 2 uses
  %i.jn = and i64 %i.jl, 58720255
  %.not28.i62 = icmp samesign ugt i32 %.sroa.19117.0, 254 ; 2 uses
  %.not = select i1 %.not28.i62, i1 true, i1 %.not27.i61
  %spec.select268 = select i1 %.not, i64 0, i64 %i.jn ; 2 uses
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
  %.sroa.19117.1471 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.ja, %.split486 ], [ %spec.select269, %.split487 ] ; 3 uses
  %.sroa.0111.2469 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iy, %.split486 ], [ %spec.select268, %.split487 ] ; 2 uses
  %.sroa.7.0160468 = phi i64 [ %.sroa.7.0.ph463483, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.7.0160, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.7.0.ph463483, %.split486 ], [ %.sroa.7.0.ph463483, %.split487 ]
  %i.jo = add i64 %.sroa.7.0160468, 1             ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 0
  %i.jq = icmp slt i64 %.sroa.093.0.ph464481, -65
  %or.cond260 = or i1 %i.jq, %i.jp
  br i1 %or.cond260, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = icmp sgt i64 %.sroa.093.0.ph464481, 38
  br i1 %i.jr, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %.noexc76

.noexc76:                                         ; preds = %bb.bi
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 true) ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = shl i64 %i.jo, %i.js
  %i.jv = trunc nsw i64 %.sroa.093.0.ph464481 to i32 ; 2 uses
  %i.jw = shl nsw i32 %i.jv, 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 5472
  %i.ka = load i64, ptr %i.jz, align 16, !tbaa !97
  %i.kb = zext i64 %i.ju to i128                  ; 2 uses
  %i.kc = zext i64 %i.ka to i128
  %i.kd = mul nuw i128 %i.kc, %i.kb               ; 2 uses
  %i.ke = trunc i128 %i.kd to i64                 ; 2 uses
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 3 uses
  %i.kh = and i64 %i.kg, 274877906943
  %i.ki = icmp eq i64 %i.kh, 274877906943
  br i1 %i.ki, label %.noexc77, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78

.noexc77:                                         ; preds = %.noexc76
  %i.kj = getelementptr i8, ptr %i.jy, i64 5480
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !97
  %i.kl = zext i64 %i.kk to i128
  %i.km = mul nuw i128 %i.kl, %i.kb
  %i.kn = lshr i128 %i.km, 64
  %i.ko = trunc nuw i128 %i.kn to i64             ; 2 uses
  %i.kp = add i64 %i.ko, %i.ke                    ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.ko
  %i.kr = zext i1 %i.kq to i64
  %spec.select.i75 = add nuw i64 %i.kr, %i.kg
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78: ; preds = %.noexc77, %.noexc76
  %.pn277 = phi i64 [ %i.kp, %.noexc77 ], [ %i.ke, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.kg, %.noexc76 ] ; 3 uses
  %i.ks = icmp ne i64 %.pn277, -1
  %i.kt = add nsw i64 %.sroa.093.0.ph464481, 27
  %i.ku = icmp ult i64 %i.kt, 83
  %or.cond.i51 = or i1 %i.ku, %i.ks
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78
  %i.kv = lshr i64 %spec.select.i75.pn, 63        ; 2 uses
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = or disjoint i64 %i.kv, 38               ; 2 uses
  %i.ky = lshr i64 %spec.select.i75.pn, %i.kx     ; 5 uses
  %i.kz = mul nsw i32 %i.jv, 217706
  %i.la = ashr i32 %i.kz, 16
  %i.lb = add nsw i32 %i.la, 190
  %i.lc = sub nsw i32 %i.lb, %i.jt
  %i.ld = add nsw i32 %i.lc, %i.kw                ; 3 uses
  %i.le = icmp slt i32 %i.ld, 1
  br i1 %i.le, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.critedge.i52
  %i.lf = sub nsw i32 1, %i.ld                    ; 2 uses
  %i.lg = icmp samesign ugt i32 %i.lf, 63
  br i1 %i.lg, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = lshr i64 %i.ky, %i.lh                   ; 2 uses
  %i.lj = and i64 %i.li, 1
  %i.lk = add nuw nsw i64 %i.lj, %i.li            ; 2 uses
  %i.ll = lshr i64 %i.lk, 1
  %i.lm = icmp samesign ugt i64 %i.lk, 16777215
  %i.ln = zext i1 %i.lm to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

bb.bl:                                            ; preds = %.critedge.i52
  %i.lo = icmp ult i64 %.pn277, 2
  %i.lp = add nsw i64 %.sroa.093.0.ph464481, 17
  %i.lq = icmp ult i64 %i.lp, 28
  %or.cond262.not280 = and i1 %i.lq, %i.lo
  %i.lr = and i64 %i.ky, 3
  %i.ls = icmp eq i64 %i.lr, 1
  %or.cond264 = select i1 %or.cond262.not280, i1 %i.ls, i1 false
  %i.lt = shl i64 %i.ky, %i.kx
  %i.lu = icmp eq i64 %i.lt, %spec.select.i75.pn
  %or.cond266 = select i1 %or.cond264, i1 %i.lu, i1 false
  %i.lv = and i64 %i.ky, 67108862
  %.sroa.0103.0 = select i1 %or.cond266, i64 %i.lv, i64 %i.ky ; 2 uses
  %i.lw = and i64 %.sroa.0103.0, 1
  %i.lx = add nuw nsw i64 %i.lw, %.sroa.0103.0    ; 2 uses
  %i.ly = lshr i64 %i.lx, 1
  %.not27.i = icmp samesign ugt i64 %i.lx, 33554431 ; 2 uses
  %i.lz = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.ld, %i.lz      ; 2 uses
  %i.ma = and i64 %i.ly, 58720255
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 254 ; 2 uses
  %.not281 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select270 = select i1 %.not281, i64 0, i64 %i.ma
  %spec.select271 = select i1 %.not28.i, i32 255, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bl, %bb.bj, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78, %bb.bi, %bb.bh, %bb.bk
  %.sroa.0103.2 = phi i64 [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78 ], [ %i.ll, %bb.bk ], [ %spec.select270, %bb.bl ], [ 0, %bb.bj ]
  %.sroa.19.1 = phi i32 [ 255, %bb.bi ], [ 0, %bb.bh ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit78 ], [ %i.ln, %bb.bk ], [ %spec.select271, %bb.bl ], [ 0, %bb.bj ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2469, %.sroa.0103.2
  %i.mb = icmp ne i32 %.sroa.19117.1471, %.sroa.19.1
end_hunk_0
begin_hunk_1_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a

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
  %i.hi = shl i64 %.sroa.7.0.ph456476, %i.hg
  %i.hj = trunc nsw i64 %.sroa.086.0.ph457473 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !97
  %i.hp = zext i64 %i.hi to i128                  ; 2 uses
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 511
  %i.hw = icmp eq i64 %i.hv, 511
  br i1 %i.hw, label %bb.bh, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

bb.bh:                                            ; preds = %bb.bg
  %6 = sext i32 %i.hk to i64
  %7 = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %6
  %i.hx = getelementptr i8, ptr %7, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !97
  %i.hz = zext i64 %i.hy to i128
  %i.ia = mul nuw i128 %i.hz, %i.hp
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = trunc nuw i128 %i.ib to i64             ; 2 uses
  %i.id = add i64 %i.ic, %i.hs                    ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = zext i1 %i.ie to i64
  %spec.select.i72 = add nuw i64 %i.if, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %bb.bh, %bb.bg
  %.pn266 = phi i64 [ %i.id, %bb.bh ], [ %i.hs, %bb.bg ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %bb.bh ], [ %i.hu, %bb.bg ] ; 3 uses
  %i.ig = icmp ne i64 %.pn266, -1
  %i.ih = add nsw i64 %.sroa.086.0.ph457473, 27
  %i.ii = icmp ult i64 %i.ih, 83
  %or.cond.i59 = or i1 %i.ii, %i.ig
  br i1 %or.cond.i59, label %.critedge.i65, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread

.critedge.i65:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.ij = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = add nuw nsw i64 %i.ij, 9                ; 2 uses
  %i.im = lshr i64 %spec.select.i72.pn, %i.il     ; 5 uses
  %i.in = mul nsw i32 %i.hj, 217706
  %i.io = ashr i32 %i.in, 16
  %reass.sub = sub nsw i32 %i.io, %i.hh
  %i.ip = add nsw i32 %reass.sub, 1086
  %i.iq = add nsw i32 %i.ip, %i.ik                ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %bb.bi, label %.split480

bb.bi:                                            ; preds = %.critedge.i65
  %i.is = sub nsw i32 1, %i.iq                    ; 2 uses
  %i.it = icmp samesign ugt i32 %i.is, 63
  br i1 %i.it, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71, label %.split479

.split479:                                        ; preds = %bb.bi
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = lshr i64 %i.im, %i.iu                   ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %i.ix = add nuw nsw i64 %i.iw, %i.iv            ; 2 uses
  %i.iy = lshr i64 %i.ix, 1                       ; 2 uses
  %i.iz = icmp samesign ugt i64 %i.ix, 9007199254740991
  %i.ja = zext i1 %i.iz to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %bb.br

.split480:                                        ; preds = %.critedge.i65
  %i.jb = icmp ult i64 %.pn266, 2
  %i.jc = add nsw i64 %.sroa.086.0.ph457473, 4
  %i.jd = icmp ult i64 %i.jc, 28
  %or.cond248.not268 = and i1 %i.jd, %i.jb
  %i.je = and i64 %i.im, 3
  %i.jf = icmp eq i64 %i.je, 1
  %or.cond250 = select i1 %or.cond248.not268, i1 %i.jf, i1 false
  %i.jg = shl i64 %i.im, %i.il
  %i.jh = icmp eq i64 %i.jg, %spec.select.i72.pn
  %or.cond252 = select i1 %or.cond250, i1 %i.jh, i1 false
  %i.ji = and i64 %i.im, 72057594037927934
  %.sroa.0104.0 = select i1 %or.cond252, i64 %i.ji, i64 %i.im ; 2 uses
  %i.jj = and i64 %.sroa.0104.0, 1
  %i.jk = add nuw nsw i64 %i.jj, %.sroa.0104.0    ; 2 uses
  %i.jl = lshr i64 %i.jk, 1
  %.not27.i66 = icmp samesign ugt i64 %i.jk, 18014398509481983 ; 2 uses
  %i.jm = zext i1 %.not27.i66 to i32
  %.sroa.19110.0 = add nuw nsw i32 %i.iq, %i.jm   ; 2 uses
  %i.jn = and i64 %i.jl, 9218868437227405311
  %.not28.i67 = icmp samesign ugt i32 %.sroa.19110.0, 2046 ; 2 uses
  %.not = select i1 %.not28.i67, i1 true, i1 %.not27.i66
  %spec.select261 = select i1 %.not, i64 0, i64 %i.jn ; 2 uses
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
  %.sroa.19110.1464 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.ja, %.split479 ], [ %spec.select262, %.split480 ] ; 3 uses
  %.sroa.0104.2462 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iy, %.split479 ], [ %spec.select261, %.split480 ] ; 2 uses
  %.sroa.7.0153461 = phi i64 [ %.sroa.7.0.ph456476, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.7.0153, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit71 ], [ %.sroa.7.0.ph456476, %.split479 ], [ %.sroa.7.0.ph456476, %.split480 ]
  %i.jo = add i64 %.sroa.7.0153461, 1             ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 0
  %i.jq = icmp slt i64 %.sroa.086.0.ph457474, -342
  %or.cond253 = or i1 %i.jq, %i.jp
  br i1 %or.cond253, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jr = icmp sgt i64 %.sroa.086.0.ph457474, 308
  br i1 %i.jr, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 true) ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = shl i64 %i.jo, %i.js
  %i.jv = trunc nsw i64 %.sroa.086.0.ph457474 to i32 ; 2 uses
  %i.jw = shl nsw i32 %i.jv, 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 5472
  %i.ka = load i64, ptr %i.jz, align 16, !tbaa !97
  %i.kb = zext i64 %i.ju to i128                  ; 2 uses
  %i.kc = zext i64 %i.ka to i128
  %i.kd = mul nuw i128 %i.kc, %i.kb               ; 2 uses
  %i.ke = trunc i128 %i.kd to i64                 ; 2 uses
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 3 uses
  %i.kh = and i64 %i.kg, 511
  %i.ki = icmp eq i64 %i.kh, 511
  br i1 %i.ki, label %bb.bm, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79

bb.bm:                                            ; preds = %bb.bl
  %i.kj = getelementptr i8, ptr %i.jy, i64 5480
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !97
  %i.kl = zext i64 %i.kk to i128
  %i.km = mul nuw i128 %i.kl, %i.kb
  %i.kn = lshr i128 %i.km, 64
  %i.ko = trunc nuw i128 %i.kn to i64             ; 2 uses
  %i.kp = add i64 %i.ko, %i.ke                    ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.ko
  %i.kr = zext i1 %i.kq to i64
  %spec.select.i78 = add nuw i64 %i.kr, %i.kg
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79: ; preds = %bb.bm, %bb.bl
  %.pn270 = phi i64 [ %i.kp, %bb.bm ], [ %i.ke, %bb.bl ] ; 2 uses
  %spec.select.i78.pn = phi i64 [ %spec.select.i78, %bb.bm ], [ %i.kg, %bb.bl ] ; 3 uses
  %i.ks = icmp ne i64 %.pn270, -1
  %i.kt = add nsw i64 %.sroa.086.0.ph457474, 27
  %i.ku = icmp ult i64 %i.kt, 83
  %or.cond.i56 = or i1 %i.ku, %i.ks
  br i1 %or.cond.i56, label %.critedge.i57, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

.critedge.i57:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79
  %i.kv = lshr i64 %spec.select.i78.pn, 63        ; 2 uses
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = add nuw nsw i64 %i.kv, 9                ; 2 uses
  %i.ky = lshr i64 %spec.select.i78.pn, %i.kx     ; 5 uses
  %i.kz = mul nsw i32 %i.jv, 217706
  %i.la = ashr i32 %i.kz, 16
  %i.lb = add nsw i32 %i.la, 1086
  %i.lc = sub nsw i32 %i.lb, %i.jt
  %i.ld = add nsw i32 %i.lc, %i.kw                ; 3 uses
  %i.le = icmp slt i32 %i.ld, 1
  br i1 %i.le, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.critedge.i57
  %i.lf = sub nsw i32 1, %i.ld                    ; 2 uses
  %i.lg = icmp samesign ugt i32 %i.lf, 63
  br i1 %i.lg, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = lshr i64 %i.ky, %i.lh                   ; 2 uses
  %i.lj = and i64 %i.li, 1
  %i.lk = add nuw nsw i64 %i.lj, %i.li            ; 2 uses
  %i.ll = lshr i64 %i.lk, 1
  %i.lm = icmp samesign ugt i64 %i.lk, 9007199254740991
  %i.ln = zext i1 %i.lm to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.bp:                                            ; preds = %.critedge.i57
  %i.lo = icmp ult i64 %.pn270, 2
  %i.lp = add nsw i64 %.sroa.086.0.ph457474, 4
  %i.lq = icmp ult i64 %i.lp, 28
  %or.cond255.not273 = and i1 %i.lq, %i.lo
  %i.lr = and i64 %i.ky, 3
  %i.ls = icmp eq i64 %i.lr, 1
  %or.cond257 = select i1 %or.cond255.not273, i1 %i.ls, i1 false
  %i.lt = shl i64 %i.ky, %i.kx
  %i.lu = icmp eq i64 %i.lt, %spec.select.i78.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.lu, i1 false
  %i.lv = and i64 %i.ky, 72057594037927934
  %.sroa.096.0 = select i1 %or.cond259, i64 %i.lv, i64 %i.ky ; 2 uses
  %i.lw = and i64 %.sroa.096.0, 1
  %i.lx = add nuw nsw i64 %i.lw, %.sroa.096.0     ; 2 uses
  %i.ly = lshr i64 %i.lx, 1
  %.not27.i = icmp samesign ugt i64 %i.lx, 18014398509481983 ; 2 uses
  %i.lz = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.ld, %i.lz      ; 2 uses
  %i.ma = and i64 %i.ly, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not274 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select263 = select i1 %.not274, i64 0, i64 %i.ma
  %spec.select264 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79, %bb.bk, %bb.bj, %bb.bo
  %.sroa.096.2 = phi i64 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79 ], [ %i.ll, %bb.bo ], [ %spec.select263, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bk ], [ 0, %bb.bj ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit79 ], [ %i.ln, %bb.bo ], [ %spec.select264, %bb.bp ], [ 0, %bb.bn ]
  %.not.i80 = icmp ne i64 %.sroa.0104.2462, %.sroa.096.2
  %i.mb = icmp ne i32 %.sroa.19110.1464, %.sroa.19.1
end_hunk_1
begin_hunk_2_@_ZN6duckdb24HugeIntegerCastOperation14HandleExponentINS_15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmEELb0EEEbRT_i:bb.a
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.210.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !97
  %i.ax = sub nsw i32 0, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.ay ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.az, align 16, !tbaa !97
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !97
  %i.ba = call { i64, i64 } @_ZN6duckdb8Uhugeint6DivModENS_10uhugeint_tES1_RS1_(i64 %.sroa.09.0.copyload, i64 %.sroa.210.0.copyload, i64 %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.ba, 1      ; 2 uses
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !97
  store i64 %i.bc, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !97
  %i.bd = load i16, ptr %i.ar, align 8, !tbaa !562
  %i.be = trunc i32 %1 to i16
  %i.bf = sub i16 %i.bd, %i.be
  store i16 %i.bf, ptr %i.ar, align 8, !tbaa !562
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bg = icmp samesign ugt i32 %i.au, 38
  br i1 %i.bg, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.05.0.copyload = load i64, ptr %i.ao, align 8, !tbaa !97
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !97
  %i.bh = zext nneg i32 %i.au to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 %i.bh ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.bi, align 16, !tbaa !97
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !97
  %i.bj = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_10uhugeint_tES2_S2_EEbT_T0_RT1_(i64 %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
  br i1 %i.bj, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %bb.x
  %.sroa.0.0.copyload.pre = load i64, ptr %i.ao, align 8, !tbaa !97
  %.sroa.2.0.copyload.pre = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !97
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.v
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pre, %._crit_edge ], [ %i.bc, %bb.v ]
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %._crit_edge ], [ %i.bb, %bb.v ]
  %.sroa.01.0.copyload = load i64, ptr %0, align 8, !tbaa !97
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !97
  %i.bk = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationINS_10uhugeint_tES2_S2_EEbT_T0_RT1_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %0)
  br i1 %i.bk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !212
  %i.bl = call noundef zeroext i1 @_ZN6duckdb24HugeIntegerCastOperation8FinalizeINS_15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(74) %0)
  br label %bb.aa

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.w, %bb.x, %bb.u, %bb.q, %bb.o, %bb.p, %.critedge, %bb.z, %bb.s, %bb.m
  %.1 = phi i1 [ %i.ah, %bb.m ], [ false, %bb.y ], [ false, %.critedge ], [ %i.aq, %bb.s ], [ false, %bb.q ], [ %i.bl, %bb.z ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmE5FlushEv.exit.thread, %bb.h, %bb.aa
  %.3 = phi i1 [ false, %_ZN6duckdb15HugeIntCastDataINS_10uhugeint_tENS_8UhugeintEmE5FlushEv.exit.thread ], [ true, %bb.h ], [ %.1, %bb.aa ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData", align 2 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i16 0, ptr %9, align 2, !tbaa !565
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i8 %4, ptr %i.e, align 2, !tbaa !566
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 3
  store i8 %5, ptr %i.f, align 1, !tbaa !567
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 7 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = trunc i64 %i.n to i16                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %i.o, ptr %i.p, align 2, !tbaa !568
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.s, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.t, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.r = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.r, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.t = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.t, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2446

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.u = zext i8 %4 to i32
  %i.v = zext i8 %5 to i32
  %i.w = sub nsw i32 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %.lr.ph.i.i
  %.promoted.i.i.i.i176 = phi i16 [ 0, %.lr.ph.i.i ], [ %.promoted.i.i.i.i177, %bb.ad ] ; 4 uses
  %i.x = phi i8 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.ad ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.ad ] ; 6 uses
  %i.y = phi i16 [ 0, %.lr.ph.i.i ], [ %i.db, %bb.ad ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !106  ; 3 uses
  %i.ab = add i8 %i.aa, -48                       ; 3 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i8 %i.aa, 46
  br i1 %i.ad, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %.084130.i.i, 1            ; 2 uses
  %i.af = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ag = icmp ult i64 %i.af, %.035153.i
  br i1 %i.ag, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ah = zext i8 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph133.i.i
  %i.ai = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.au, %bb.o ] ; 2 uses
  %.promoted.i.i.i.i175 = phi i16 [ %.promoted.i.i.i.i176, %.lr.ph133.i.i ], [ %.promoted.i.i.i.i174, %bb.o ] ; 2 uses
  %i.aj = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.av, %bb.o ] ; 3 uses
  %i.ak = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.bd, %bb.o ] ; 5 uses
  %i.al = phi i16 [ %i.y, %.lr.ph133.i.i ], [ %i.be, %bb.o ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.af, %.lr.ph133.i.i ], [ %.2.i.i, %bb.o ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106 ; 3 uses
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ne i8 %i.ak, %5
  %i.ar = trunc nuw i8 %i.aj to i1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 2, !tbaa !569
  %i.as = icmp samesign ugt i8 %i.an, 52
  %i.at = zext i1 %i.as to i8                     ; 2 uses
  store i8 %i.at, ptr %i.k, align 1, !tbaa !570
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i8 [ %i.at, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.av = phi i8 [ 1, %bb.i ], [ %i.aj, %bb.h ]   ; 3 uses
  %i.aw = zext i8 %i.ak to i32
  %i.ax = add nuw nsw i32 %i.aw, %i.ah
  %i.ay = icmp samesign ugt i32 %i.ax, 3
  br i1 %i.ay, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.az, ptr %i.h, align 1, !tbaa !571
  %i.ba = mul i16 %i.al, 10
  %i.bb = zext nneg i8 %i.ao to i16
  %i.bc = sub i16 %i.ba, %i.bb                    ; 3 uses
  store i16 %i.bc, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.k, %bb.j
  %.promoted.i.i.i.i174 = phi i16 [ %i.bc, %bb.k ], [ %.promoted.i.i.i.i175, %bb.j ] ; 3 uses
  %i.bd = phi i8 [ %i.az, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %i.be = phi i16 [ %i.bc, %bb.k ], [ %i.al, %bb.j ]
  %i.bf = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bf, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !106
  %i.bi = icmp eq i8 %i.bh, 95
  br i1 %i.bi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bj = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, %.035153.i
  br i1 %i.bk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !106
  %i.bn = add i8 %i.bm, -48
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2.i.i = phi i64 [ %i.bj, %bb.n ], [ %i.bf, %bb.l ] ; 3 uses
  %i.bp = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bp, label %bb.g, label %.thread114.i.i, !llvm.loop !2447

bb.p:                                             ; preds = %bb.g
  %i.bq = icmp ugt i64 %.185132.i.i, %i.af
  %or.cond.i.i = or i1 %i.ae, %i.bq
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.o, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, %bb.f
  %i.br = phi i8 [ 0, %bb.f ], [ %i.au, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.au, %bb.o ]
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.av, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.av, %bb.o ]
  %.promoted.i.i.i.i173 = phi i16 [ %.promoted.i.i.i.i176, %bb.f ], [ %.promoted.i.i.i.i174, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i.i174, %bb.o ]
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i16 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2448

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i16 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i16
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !572
  %i.cx = icmp slt i16 %i.y, -3276
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul i16 %i.y, 10
  %i.cz = sub i16 %i.cy, %i.cs                    ; 3 uses
  store i16 %i.cz, ptr %9, align 2, !tbaa !565
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i16 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i16 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2449

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !573
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
end_hunk_2
begin_hunk_3_@_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i16 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa537, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add i16 %i.dv, -1                       ; 2 uses
  store i16 %i.dy, ptr %9, align 2, !tbaa !565
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 1, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i16 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 4 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

iter.check:                                       ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 3 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.ec, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i8 %i.ec, 15
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i32 %i.ee, 12
  %n.vec = and i32 %i.ee, 496                     ; 4 uses
  %i.eg = trunc i32 %n.vec to i8
  %i.eh = add i8 %i.dz, %i.eg
  %i.ei = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.ei, %vector.ph ], [ %i.ej, %vector.body ]
  %vec.phi452 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ek, %vector.body ]
  %i.ej = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ek = mul <8 x i16> %vec.phi452, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.el = icmp eq i32 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !2450

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ek, %i.ej
  %i.em = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.em, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec453 = and i32 %i.ee, 508                  ; 3 uses
  %i.en = trunc i32 %n.vec453 to i8
  %i.eo = add i8 %i.dz, %i.en
  %i.ep = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index454 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next456, %vec.epilog.vector.body ]
  %vec.phi455 = phi <4 x i16> [ %i.ep, %vec.epilog.ph ], [ %i.eq, %vec.epilog.vector.body ]
  %i.eq = mul <4 x i16> %vec.phi455, splat (i16 10) ; 2 uses
  %index.next456 = add nuw i32 %index454, 4       ; 2 uses
  %i.er = icmp eq i32 %index.next456, %n.vec453
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2451

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.es = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.eq) ; 2 uses
  %cmp.n457 = icmp eq i32 %i.ee, %n.vec453
  br i1 %cmp.n457, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph532 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.et = phi i16 [ %i.eu, %.lr.ph.i.i.i ], [ %.ph532, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.ev, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.eu = mul i16 %i.et, 10                       ; 2 uses
  %i.ev = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.ev, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2452

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa406 = phi i16 [ %i.es, %vec.epilog.middle.block ], [ %i.em, %middle.block ], [ %i.eu, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa406, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ew = phi i16 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ex = sext i16 %i.ew to i32
  %i.ey = sext i16 %i.o to i32
  %i.ez = sub nsw i32 0, %i.ey
  %i.fa = icmp sgt i32 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.fb, %i.fa
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fc = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.fc
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !106
  %i.ff = add i8 %i.fe, -66                       ; 2 uses
  %i.fg = tail call i8 @llvm.fshl.i8(i8 %i.ff, i8 %i.ff, i8 7)
  switch i8 %i.fg, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fh = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.fh to i64                ; 5 uses
  %i.fi = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.fi, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fj = zext i8 %4 to i32
  %i.fk = zext i8 %5 to i32
  %i.fl = sub nsw i32 %i.fj, %i.fk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i16 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fm = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ip, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fn = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.iq, %bb.bi ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !106 ; 3 uses
  %i.fq = add i8 %i.fp, -48                       ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = icmp eq i8 %i.fp, 46
  br i1 %i.fs, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.ft = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fu = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fv = icmp ult i64 %i.fu, %.035153.i
  br i1 %i.fv, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fw = zext i8 %i.fm to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fx = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i16 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fy = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 3 uses
  %i.fz = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gs, %bb.at ] ; 5 uses
  %i.ga = phi i16 [ %i.fn, %.lr.ph137.i.i ], [ %i.gt, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fu, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !106 ; 3 uses
  %i.gd = add i8 %i.gc, -48                       ; 2 uses
  %i.ge = icmp ult i8 %i.gd, 10
  br i1 %i.ge, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.gf = icmp ne i8 %i.fz, %5
  %i.gg = trunc nuw i8 %i.fy to i1
  %or.cond57 = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 2, !tbaa !569
  %i.gh = icmp samesign ugt i8 %i.gc, 52
  %i.gi = zext i1 %i.gh to i8                     ; 2 uses
  store i8 %i.gi, ptr %i.k, align 1, !tbaa !570
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gj = phi i8 [ %i.gi, %bb.an ], [ %i.fx, %bb.am ] ; 3 uses
  %i.gk = phi i8 [ 1, %bb.an ], [ %i.fy, %bb.am ] ; 3 uses
  %i.gl = zext i8 %i.fz to i32
  %i.gm = add nuw nsw i32 %i.gl, %i.fw
  %i.gn = icmp samesign ugt i32 %i.gm, 3
  br i1 %i.gn, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.go = add i8 %i.fz, 1                         ; 2 uses
  store i8 %i.go, ptr %i.h, align 1, !tbaa !571
  %i.gp = mul i16 %i.ga, 10
  %i.gq = zext nneg i8 %i.gd to i16
  %i.gr = add i16 %i.gp, %i.gq                    ; 3 uses
  store i16 %i.gr, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i16 [ %i.gr, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gs = phi i8 [ %i.go, %bb.ap ], [ %i.fz, %bb.ao ] ; 3 uses
  %i.gt = phi i16 [ %i.gr, %bb.ap ], [ %i.ga, %bb.ao ]
  %i.gu = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gu, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !106
  %i.gx = icmp eq i8 %i.gw, 95
  br i1 %i.gx, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gy = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gz = icmp eq i64 %i.gy, %.035153.i
  br i1 %i.gz, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ha = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gy
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !106
  %i.hc = add i8 %i.hb, -48
  %i.hd = icmp ult i8 %i.hc, 10
  br i1 %i.hd, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gy, %bb.as ], [ %i.gu, %bb.aq ] ; 3 uses
  %i.he = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.he, label %bb.al, label %.thread118.i.i, !llvm.loop !2453

bb.au:                                            ; preds = %bb.al
  %i.hf = icmp ugt i64 %.1136.i.i, %i.fu
  %or.cond.i91.i = or i1 %i.ft, %i.hf
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.hg = phi i8 [ 0, %bb.ak ], [ %i.gj, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gj, %bb.at ]
  %i.hh = phi i8 [ 0, %bb.ak ], [ %i.gk, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gk, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i16 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.hi = phi i8 [ 0, %bb.ak ], [ %i.gs, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gs, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.fu, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.hj = icmp ugt i64 %.1.lcssa.i.i, %i.fu
  %or.cond119.i.i = or i1 %i.ft, %i.hj
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.hk = phi i8 [ 0, %bb.aj ], [ %i.fx, %bb.au ] ; 2 uses
  %i.hl = phi i8 [ 0, %bb.aj ], [ %i.fy, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i16 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.hm = phi i8 [ 0, %bb.aj ], [ %i.fz, %bb.au ] ; 2 uses
  %i.hn = phi i8 [ %i.fp, %bb.aj ], [ %i.gc, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
  switch i8 %i.hn, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.av
    i8 69, label %bb.av
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.ho = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %.035153.i
  br i1 %i.hp, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hq = phi i64 [ %i.ht, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.ho, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !106
  switch i8 %i.hs, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.ht = add nuw i64 %i.hq, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.ht, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !2454

bb.av:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hu = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hv, %.035153.i
  br i1 %.not108.i.i, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i16 0, ptr %7, align 2
  %i.hw = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hv ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !106
  %i.hy = icmp eq i8 %i.hx, 45
  %i.hz = sub nuw i64 %.035153.i, %i.hv           ; 2 uses
  br i1 %i.hy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ia = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hw, i64 noundef %i.hz, ptr noundef nonnull align 2 dereferenceable(2) %7, i1 noundef zeroext false)
  br i1 %i.ia, label %.split46, label %.split46.thread

bb.az:                                            ; preds = %bb.ax
  %i.ib = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hw, i64 noundef %i.hz, ptr noundef nonnull align 2 dereferenceable(2) %7, i1 noundef zeroext false)
  br i1 %i.ib, label %.split46, label %.split46.thread

.split46.thread:                                  ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split46:                                         ; preds = %bb.ay, %bb.az
  %i.ic = load i16, ptr %7, align 2, !tbaa !128
  %i.id = sext i16 %i.ic to i32
  %i.ie = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb0EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %9, i32 noundef %i.id)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.ie, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ba:                                            ; preds = %bb.ai
  %i.if = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.ig = icmp eq i16 %i.fn, 0
  %i.ih = zext nneg i8 %i.fq to i16
  %i.ii = icmp eq i8 %i.fq, 0
  %or.cond.i.i93.i = and i1 %i.ig, %i.ii
  br i1 %or.cond.i.i93.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ij = zext i8 %i.fm to i32
  %i.ik = icmp eq i32 %i.fl, %i.ij
  br i1 %i.ik, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.il = add i8 %i.fm, 1                         ; 2 uses
  store i8 %i.il, ptr %i.g, align 2, !tbaa !572
  %i.im = icmp sgt i16 %i.fn, 3276
  br i1 %i.im, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.in = mul i16 %i.fn, 10
  %i.io = add i16 %i.in, %i.ih                    ; 3 uses
  store i16 %i.io, ptr %9, align 2, !tbaa !565
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.promoted.i.i.i71.i185 = phi i16 [ %i.io, %bb.bd ], [ %.promoted.i.i.i71.i184, %bb.ba ] ; 3 uses
  %i.ip = phi i8 [ %i.il, %bb.bd ], [ %i.fm, %bb.ba ]
  %i.iq = phi i16 [ %i.io, %bb.bd ], [ 0, %bb.ba ]
  %.not109.i.i = icmp eq i64 %i.if, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split40.thread.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ir = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.if
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.is, 95
  br i1 %.not110.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.it = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.iu = icmp eq i64 %i.it, %.035153.i
  br i1 %i.iu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iv = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.it
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !106
  %i.ix = add i8 %i.iw, -48
  %i.iy = icmp ult i8 %i.ix, 10
  br i1 %i.iy, label %bb.bi, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.7.i94.i = phi i64 [ %i.if, %bb.bf ], [ %i.it, %bb.bh ] ; 3 uses
  %i.iz = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.iz, label %bb.ai, label %thread-pre-split40.thread.thread, !llvm.loop !2455

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.ja = phi i8 [ %i.hg, %.thread118.i.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.jb = phi i8 [ %i.hh, %.thread118.i.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i16 [ %.promoted.i.i.i71.i181, %.thread118.i.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.jc = phi i8 [ %i.hi, %.thread118.i.i ], [ %i.hm, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hm, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.ho, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.jd = icmp ugt i8 %i.jc, %5
  br i1 %i.jd, label %thread-pre-split40, label %thread-pre-split40.thread

thread-pre-split40:                               ; preds = %.thread120.i.i
  %narrow.i.i84.i = sub nuw i8 %i.jc, %5          ; 4 uses
  store i8 %narrow.i.i84.i, ptr %i.i, align 2, !tbaa !573
  %i.je = zext i8 %narrow.i.i84.i to i64          ; 2 uses
  %xtraiter587 = and i64 %i.je, 1
end_hunk_3
begin_hunk_4_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKiS9_EEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !107  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !104
  %i.o = load i64, ptr %i.i, align 8, !tbaa !106
  store i64 %i.o, ptr %i.g, align 8, !tbaa !106
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !107
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !107
  store ptr %i.i, ptr %i.f, align 8, !tbaa !104
  store i64 0, ptr %i.q, align 8, !tbaa !107
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !111
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = icmp eq ptr %.pre11, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #29
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #29
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData.236", align 4 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i32 0, ptr %9, align 4, !tbaa !577
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 %4, ptr %i.e, align 4, !tbaa !578
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 5
  store i8 %5, ptr %i.f, align 1, !tbaa !579
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 9 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !580
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.s, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.t, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.r = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.r, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.t = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.t, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2478

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.u = zext i8 %4 to i32
  %i.v = zext i8 %5 to i32
  %i.w = sub nsw i32 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %.lr.ph.i.i
  %.promoted.i.i.i.i176 = phi i32 [ 0, %.lr.ph.i.i ], [ %.promoted.i.i.i.i177, %bb.ad ] ; 4 uses
  %i.x = phi i8 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.ad ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.ad ] ; 6 uses
  %i.y = phi i32 [ 0, %.lr.ph.i.i ], [ %i.db, %bb.ad ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !106  ; 3 uses
  %i.ab = add i8 %i.aa, -48                       ; 3 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i8 %i.aa, 46
  br i1 %i.ad, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %.084130.i.i, 1            ; 2 uses
  %i.af = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ag = icmp ult i64 %i.af, %.035153.i
  br i1 %i.ag, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ah = zext i8 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph133.i.i
  %i.ai = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.au, %bb.o ] ; 2 uses
  %.promoted.i.i.i.i175 = phi i32 [ %.promoted.i.i.i.i176, %.lr.ph133.i.i ], [ %.promoted.i.i.i.i174, %bb.o ] ; 2 uses
  %i.aj = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.av, %bb.o ] ; 3 uses
  %i.ak = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.bd, %bb.o ] ; 5 uses
  %i.al = phi i32 [ %i.y, %.lr.ph133.i.i ], [ %i.be, %bb.o ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.af, %.lr.ph133.i.i ], [ %.2.i.i, %bb.o ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106 ; 3 uses
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ne i8 %i.ak, %5
  %i.ar = trunc nuw i8 %i.aj to i1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 4, !tbaa !581
  %i.as = icmp samesign ugt i8 %i.an, 52
  %i.at = zext i1 %i.as to i8                     ; 2 uses
  store i8 %i.at, ptr %i.k, align 1, !tbaa !582
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i8 [ %i.at, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.av = phi i8 [ 1, %bb.i ], [ %i.aj, %bb.h ]   ; 3 uses
  %i.aw = zext i8 %i.ak to i32
  %i.ax = add nuw nsw i32 %i.aw, %i.ah
  %i.ay = icmp samesign ugt i32 %i.ax, 8
  br i1 %i.ay, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.az, ptr %i.h, align 1, !tbaa !583
  %i.ba = mul nsw i32 %i.al, 10
  %i.bb = zext nneg i8 %i.ao to i32
  %i.bc = sub nsw i32 %i.ba, %i.bb                ; 3 uses
  store i32 %i.bc, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.k, %bb.j
  %.promoted.i.i.i.i174 = phi i32 [ %i.bc, %bb.k ], [ %.promoted.i.i.i.i175, %bb.j ] ; 3 uses
  %i.bd = phi i8 [ %i.az, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %i.be = phi i32 [ %i.bc, %bb.k ], [ %i.al, %bb.j ]
  %i.bf = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bf, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !106
  %i.bi = icmp eq i8 %i.bh, 95
  br i1 %i.bi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bj = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, %.035153.i
  br i1 %i.bk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !106
  %i.bn = add i8 %i.bm, -48
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2.i.i = phi i64 [ %i.bj, %bb.n ], [ %i.bf, %bb.l ] ; 3 uses
  %i.bp = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bp, label %bb.g, label %.thread114.i.i, !llvm.loop !2479

bb.p:                                             ; preds = %bb.g
  %i.bq = icmp ugt i64 %.185132.i.i, %i.af
  %or.cond.i.i = or i1 %i.ae, %i.bq
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.o, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, %bb.f
  %i.br = phi i8 [ 0, %bb.f ], [ %i.au, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.au, %bb.o ]
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.av, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.av, %bb.o ]
  %.promoted.i.i.i.i173 = phi i32 [ %.promoted.i.i.i.i176, %bb.f ], [ %.promoted.i.i.i.i174, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i.i174, %bb.o ]
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i32 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2480

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i32 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i32
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !584
  %i.cx = icmp slt i32 %i.y, -214748364
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul nsw i32 %i.y, 10
  %i.cz = sub nsw i32 %i.cy, %i.cs                ; 3 uses
  store i32 %i.cz, ptr %9, align 4, !tbaa !577
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i32 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i32 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2481

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !585
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
  %i.dq = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dp, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod563 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod563)
  %i.dr = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa514 = phi i32 [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dr, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa514, ptr %9, align 4, !tbaa !577
  store i8 %5, ptr %i.h, align 1, !tbaa !583
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.ds = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dt = sdiv i32 %i.ds, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !77

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa514, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dy, ptr %9, align 4, !tbaa !577
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 4 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 1, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i32 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 2 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.ec, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader509, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ee, 504                     ; 3 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dz, %i.ef
  %i.eh = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi451 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ej = mul <4 x i32> %vec.phi451, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !2482

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ej, %i.ei
  %i.el = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader509

.lr.ph.i.i.i.preheader509:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph510 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.el, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %.lr.ph.i.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader509, %.lr.ph.i.i.i
  %i.em = phi i32 [ %i.en, %.lr.ph.i.i.i ], [ %.ph510, %.lr.ph.i.i.i.preheader509 ]
  %.024.i.i.i = phi i8 [ %i.eo, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader509 ]
  %i.en = mul nsw i32 %i.em, 10                   ; 2 uses
  %i.eo = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eo, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2483

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa406 = phi i32 [ %i.el, %middle.block ], [ %i.en, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa406, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ep = phi i32 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.eq = sub nsw i32 0, %i.o
  %i.er = icmp sgt i32 %i.ep, %i.eq
  %i.es = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.es, %i.er
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.et = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.et
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !106
  %i.ew = add i8 %i.ev, -66                       ; 2 uses
  %i.ex = tail call i8 @llvm.fshl.i8(i8 %i.ew, i8 %i.ew, i8 7)
  switch i8 %i.ex, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.ey to i64                ; 5 uses
  %i.ez = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.ez, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fa = zext i8 %4 to i32
  %i.fb = zext i8 %5 to i32
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i32 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fd = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ig, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fe = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ih, %bb.bi ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !106 ; 3 uses
  %i.fh = add i8 %i.fg, -48                       ; 3 uses
  %i.fi = icmp ult i8 %i.fh, 10
  br i1 %i.fi, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = icmp eq i8 %i.fg, 46
  br i1 %i.fj, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fk = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fl = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fm = icmp ult i64 %i.fl, %.035153.i
  br i1 %i.fm, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fn = zext i8 %i.fd to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fo = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.ga, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i32 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fp = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gb, %bb.at ] ; 3 uses
  %i.fq = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 5 uses
  %i.fr = phi i32 [ %i.fe, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fl, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !106 ; 3 uses
  %i.fu = add i8 %i.ft, -48                       ; 2 uses
  %i.fv = icmp ult i8 %i.fu, 10
  br i1 %i.fv, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fw = icmp ne i8 %i.fq, %5
  %i.fx = trunc nuw i8 %i.fp to i1
  %or.cond57 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !581
  %i.fy = icmp samesign ugt i8 %i.ft, 52
  %i.fz = zext i1 %i.fy to i8                     ; 2 uses
  store i8 %i.fz, ptr %i.k, align 1, !tbaa !582
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ga = phi i8 [ %i.fz, %bb.an ], [ %i.fo, %bb.am ] ; 3 uses
  %i.gb = phi i8 [ 1, %bb.an ], [ %i.fp, %bb.am ] ; 3 uses
  %i.gc = zext i8 %i.fq to i32
  %i.gd = add nuw nsw i32 %i.gc, %i.fn
  %i.ge = icmp samesign ugt i32 %i.gd, 8
  br i1 %i.ge, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = add i8 %i.fq, 1                         ; 2 uses
  store i8 %i.gf, ptr %i.h, align 1, !tbaa !583
  %i.gg = mul nsw i32 %i.fr, 10
  %i.gh = zext nneg i8 %i.fu to i32
  %i.gi = add nsw i32 %i.gg, %i.gh                ; 3 uses
  store i32 %i.gi, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i32 [ %i.gi, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gj = phi i8 [ %i.gf, %bb.ap ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.gk = phi i32 [ %i.gi, %bb.ap ], [ %i.fr, %bb.ao ]
  %i.gl = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gl, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !106
  %i.go = icmp eq i8 %i.gn, 95
  br i1 %i.go, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gp = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gq = icmp eq i64 %i.gp, %.035153.i
  br i1 %i.gq, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !106
  %i.gt = add i8 %i.gs, -48
  %i.gu = icmp ult i8 %i.gt, 10
  br i1 %i.gu, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gp, %bb.as ], [ %i.gl, %bb.aq ] ; 3 uses
  %i.gv = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gv, label %bb.al, label %.thread118.i.i, !llvm.loop !2484

bb.au:                                            ; preds = %bb.al
  %i.gw = icmp ugt i64 %.1136.i.i, %i.fl
  %or.cond.i91.i = or i1 %i.fk, %i.gw
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gx = phi i8 [ 0, %bb.ak ], [ %i.ga, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.ga, %bb.at ]
  %i.gy = phi i8 [ 0, %bb.ak ], [ %i.gb, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gb, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i32 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gz = phi i8 [ 0, %bb.ak ], [ %i.gj, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gj, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.fl, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.ha = icmp ugt i64 %.1.lcssa.i.i, %i.fl
  %or.cond119.i.i = or i1 %i.fk, %i.ha
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.hb = phi i8 [ 0, %bb.aj ], [ %i.fo, %bb.au ] ; 2 uses
  %i.hc = phi i8 [ 0, %bb.aj ], [ %i.fp, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i32 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.hd = phi i8 [ 0, %bb.aj ], [ %i.fq, %bb.au ] ; 2 uses
  %i.he = phi i8 [ %i.fg, %bb.aj ], [ %i.ft, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
  switch i8 %i.he, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.av
    i8 69, label %bb.av
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hf = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hg = icmp ult i64 %i.hf, %.035153.i
  br i1 %i.hg, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hh = phi i64 [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !106
  switch i8 %i.hj, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.hk = add nuw i64 %i.hh, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.hk, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !2485

bb.av:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hl = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hl, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hm = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hm, %.035153.i
  br i1 %.not108.i.i, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i16 0, ptr %7, align 2
  %i.hn = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hm ; 3 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !106
  %i.hp = icmp eq i8 %i.ho, 45
  %i.hq = sub nuw i64 %.035153.i, %i.hm           ; 2 uses
  br i1 %i.hp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hr = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hn, i64 noundef %i.hq, ptr noundef nonnull align 2 dereferenceable(2) %7, i1 noundef zeroext false)
  br i1 %i.hr, label %.split46, label %.split46.thread

bb.az:                                            ; preds = %bb.ax
  %i.hs = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hn, i64 noundef %i.hq, ptr noundef nonnull align 2 dereferenceable(2) %7, i1 noundef zeroext false)
  br i1 %i.hs, label %.split46, label %.split46.thread

.split46.thread:                                  ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split46:                                         ; preds = %bb.ay, %bb.az
  %i.ht = load i16, ptr %7, align 2, !tbaa !128
  %i.hu = sext i16 %i.ht to i32
  %i.hv = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb0EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.hu)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.hv, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ba:                                            ; preds = %bb.ai
  %i.hw = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.hx = icmp eq i32 %i.fe, 0
  %i.hy = zext nneg i8 %i.fh to i32
  %i.hz = icmp eq i8 %i.fh, 0
  %or.cond.i.i93.i = and i1 %i.hx, %i.hz
  br i1 %or.cond.i.i93.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ia = zext i8 %i.fd to i32
  %i.ib = icmp eq i32 %i.fc, %i.ia
  br i1 %i.ib, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ic = add i8 %i.fd, 1                         ; 2 uses
  store i8 %i.ic, ptr %i.g, align 2, !tbaa !584
  %i.id = icmp sgt i32 %i.fe, 214748364
  br i1 %i.id, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ie = mul nsw i32 %i.fe, 10
  %i.if = add nsw i32 %i.ie, %i.hy                ; 3 uses
  store i32 %i.if, ptr %9, align 4, !tbaa !577
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.promoted.i.i.i71.i185 = phi i32 [ %i.if, %bb.bd ], [ %.promoted.i.i.i71.i184, %bb.ba ] ; 3 uses
  %i.ig = phi i8 [ %i.ic, %bb.bd ], [ %i.fd, %bb.ba ]
  %i.ih = phi i32 [ %i.if, %bb.bd ], [ 0, %bb.ba ]
  %.not109.i.i = icmp eq i64 %i.hw, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split40.thread.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ii = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hw
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.ij, 95
  br i1 %.not110.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ik = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.il = icmp eq i64 %i.ik, %.035153.i
  br i1 %i.il, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.im = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ik
  %i.in = load i8, ptr %i.im, align 1, !tbaa !106
  %i.io = add i8 %i.in, -48
  %i.ip = icmp ult i8 %i.io, 10
  br i1 %i.ip, label %bb.bi, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.7.i94.i = phi i64 [ %i.hw, %bb.bf ], [ %i.ik, %bb.bh ] ; 3 uses
  %i.iq = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.iq, label %bb.ai, label %thread-pre-split40.thread.thread, !llvm.loop !2486

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.ir = phi i8 [ %i.gx, %.thread118.i.i ], [ %i.hb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.is = phi i8 [ %i.gy, %.thread118.i.i ], [ %i.hc, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hc, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i32 [ %.promoted.i.i.i71.i181, %.thread118.i.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.it = phi i8 [ %i.gz, %.thread118.i.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.iu = icmp ugt i8 %i.it, %5
  br i1 %i.iu, label %thread-pre-split40, label %thread-pre-split40.thread

thread-pre-split40:                               ; preds = %.thread120.i.i
  %narrow.i.i84.i = sub nuw i8 %i.it, %5          ; 4 uses
  store i8 %narrow.i.i84.i, ptr %i.i, align 2, !tbaa !585
  %i.iv = zext i8 %narrow.i.i84.i to i64          ; 2 uses
  %xtraiter564 = and i64 %i.iv, 1
end_hunk_4
begin_hunk_5_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb0EEEbRT_i:bb.a
.lr.ph:                                           ; preds = %.preheader48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = zext i8 %i.d to i32
  br label %bb.t

.preheader:                                       ; preds = %bb.p
  %i.bk = sext i32 %.03778 to i64
  %i.bl = sub nsw i64 0, %i.bk
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader
  %i.bm = phi i32 [ %.promoted58, %.preheader ], [ %i.bn, %bb.q ] ; 3 uses
  %.03357 = phi i64 [ 0, %.preheader ], [ %i.br, %bb.q ]
  %i.bn = sdiv i32 %i.bm, 10                      ; 3 uses
  %i.bo = srem i32 %i.bm, 10
  %i.bp = add i32 %i.bm, 9
  %i.bq = icmp ult i32 %i.bp, 19
  %i.br = add nuw i64 %.03357, 1                  ; 2 uses
  %exitcond64.not = icmp eq i64 %i.br, %i.bl
  %or.cond = select i1 %i.bq, i1 true, i1 %exitcond64.not
  br i1 %or.cond, label %bb.r, label %bb.q, !llvm.loop !2504

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp sgt i32 %i.bo, 4
  store i32 %i.bn, ptr %0, align 4, !tbaa !577
  br i1 %i.bs, label %bb.s, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIiEELb0EEEbRT_h.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = add nsw i32 %i.bn, 1
  store i32 %i.bt, ptr %0, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIiEELb0EEEbRT_h.exit

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %i.bu = phi i32 [ %.promoted58, %.lr.ph ], [ %i.cf, %bb.x ] ; 3 uses
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.x ]
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = load i8, ptr %i.bg, align 2, !tbaa !584 ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = load i8, ptr %i.bi, align 4, !tbaa !578
  %i.bz = zext i8 %i.by to i32
  %i.ca = sub nsw i32 %i.bz, %i.bj
  %i.cb = icmp eq i32 %i.ca, %i.bx
  br i1 %i.cb, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIiEELb0EEEbRT_h.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = add i8 %i.bw, 1
  store i8 %i.cc, ptr %i.bg, align 2, !tbaa !584
  %i.cd = icmp sgt i32 %i.bu, 214748364
  br i1 %i.cd, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIiEELb0EEEbRT_h.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = mul nsw i32 %i.bu, 10                   ; 2 uses
  store i32 %i.ce, ptr %0, align 4, !tbaa !577
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.cf = phi i32 [ %i.ce, %bb.w ], [ 0, %bb.t ]
  %i.cg = add nuw nsw i64 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.bh
  br i1 %exitcond.not, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIiEELb0EEEbRT_h.exit, label %bb.t, !llvm.loop !2505

_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIiEELb0EEEbRT_h.exit: ; preds = %bb.v, %bb.u, %bb.x, %.preheader48, %bb.r, %bb.s, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb0EEEbRT_.exit
  %.139 = phi i1 [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb0EEEbRT_.exit ], [ true, %bb.r ], [ true, %bb.s ], [ true, %.preheader48 ], [ false, %bb.u ], [ false, %bb.v ], [ true, %bb.x ]
  ret i1 %.139
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData.237", align 8 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i64 0, ptr %9, align 8, !tbaa !588
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 %4, ptr %i.e, align 8, !tbaa !589
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 %5, ptr %i.f, align 1, !tbaa !590
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 11 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 13 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !591
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.r, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.s, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.q = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.q, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.s = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.s, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2506

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.t = zext i8 %4 to i32
  %i.u = zext i8 %5 to i32
  %i.v = sub nsw i32 %i.t, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %.lr.ph.i.i
  %.promoted.i.i.i.i176 = phi i64 [ 0, %.lr.ph.i.i ], [ %.promoted.i.i.i.i177, %bb.ad ] ; 4 uses
  %i.w = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.ad ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.ad ] ; 6 uses
  %i.x = phi i64 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.ad ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !106   ; 3 uses
  %i.aa = add i8 %i.z, -48                        ; 3 uses
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i8 %i.z, 46
  br i1 %i.ac, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp ugt i64 %.084130.i.i, 1            ; 2 uses
  %i.ae = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.af = icmp ult i64 %i.ae, %.035153.i
  br i1 %i.af, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ag = zext i8 %i.w to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph133.i.i
  %i.ah = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.at, %bb.o ] ; 2 uses
  %.promoted.i.i.i.i175 = phi i64 [ %.promoted.i.i.i.i176, %.lr.ph133.i.i ], [ %.promoted.i.i.i.i174, %bb.o ] ; 2 uses
  %i.ai = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.au, %bb.o ] ; 3 uses
  %i.aj = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.bc, %bb.o ] ; 5 uses
  %i.ak = phi i64 [ %i.x, %.lr.ph133.i.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.ae, %.lr.ph133.i.i ], [ %.2.i.i, %bb.o ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !106 ; 3 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %i.ao = icmp ult i8 %i.an, 10
  br i1 %i.ao, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp ne i8 %i.aj, %5
  %i.aq = trunc nuw i8 %i.ai to i1
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 4, !tbaa !592
  %i.ar = icmp samesign ugt i8 %i.am, 52
  %i.as = zext i1 %i.ar to i8                     ; 2 uses
  store i8 %i.as, ptr %i.k, align 1, !tbaa !593
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = phi i8 [ %i.as, %bb.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.au = phi i8 [ 1, %bb.i ], [ %i.ai, %bb.h ]   ; 3 uses
  %i.av = zext i8 %i.aj to i32
  %i.aw = add nuw nsw i32 %i.av, %i.ag
  %i.ax = icmp samesign ugt i32 %i.aw, 17
  br i1 %i.ax, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = add i8 %i.aj, 1                         ; 2 uses
  store i8 %i.ay, ptr %i.h, align 1, !tbaa !594
  %i.az = mul nsw i64 %i.ak, 10
  %i.ba = zext nneg i8 %i.an to i64
  %i.bb = sub nsw i64 %i.az, %i.ba                ; 3 uses
  store i64 %i.bb, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.k, %bb.j
  %.promoted.i.i.i.i174 = phi i64 [ %i.bb, %bb.k ], [ %.promoted.i.i.i.i175, %bb.j ] ; 3 uses
  %i.bc = phi i8 [ %i.ay, %bb.k ], [ %i.aj, %bb.j ] ; 3 uses
  %i.bd = phi i64 [ %i.bb, %bb.k ], [ %i.ak, %bb.j ]
  %i.be = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.be, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !106
  %i.bh = icmp eq i8 %i.bg, 95
  br i1 %i.bh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bi = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, %.035153.i
  br i1 %i.bj, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bi
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !106
  %i.bm = add i8 %i.bl, -48
  %i.bn = icmp ult i8 %i.bm, 10
  br i1 %i.bn, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2.i.i = phi i64 [ %i.bi, %bb.n ], [ %i.be, %bb.l ] ; 3 uses
  %i.bo = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bo, label %bb.g, label %.thread114.i.i, !llvm.loop !2507

bb.p:                                             ; preds = %bb.g
  %i.bp = icmp ugt i64 %.185132.i.i, %i.ae
  %or.cond.i.i = or i1 %i.ad, %i.bp
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.o, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, %bb.f
  %i.bq = phi i8 [ 0, %bb.f ], [ %i.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.at, %bb.o ]
  %i.br = phi i8 [ 0, %bb.f ], [ %i.au, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.au, %bb.o ]
  %.promoted.i.i.i.i173 = phi i64 [ %.promoted.i.i.i.i176, %bb.f ], [ %.promoted.i.i.i.i174, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i.i174, %bb.o ]
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.bc, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bc, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.ae, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bt = icmp ugt i64 %.185.lcssa.i.i, %i.ae
  %or.cond115.i.i = or i1 %i.ad, %i.bt
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ah, %bb.p ]   ; 2 uses
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i64 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %i.bx = phi i8 [ %i.z, %bb.e ], [ %i.am, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.by = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bz = icmp ult i64 %i.by, %.035153.i
  br i1 %i.bz, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.ca = phi i64 [ %i.cd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !106
  switch i8 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cd = add nuw i64 %i.ca, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2508

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.ce = icmp eq i64 %.4.i.i, 1
  br i1 %i.ce, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cf, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cf ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !106
  %i.ci = icmp eq i8 %i.ch, 45
  %i.cj = sub nuw i64 %.035153.i, %i.cf           ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.ck, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cl, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cm = load i16, ptr %8, align 2, !tbaa !128
  %i.cn = sext i16 %i.cm to i32
  %i.co = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.co, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cp = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cq = icmp eq i64 %i.x, 0
  %i.cr = icmp eq i8 %i.aa, 0
  %or.cond.i.i.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = zext i8 %i.w to i32
  %i.ct = icmp eq i32 %i.v, %i.cs
  br i1 %i.ct, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add i8 %i.w, 1                          ; 2 uses
  store i8 %i.cu, ptr %i.g, align 2, !tbaa !595
  %i.cv = icmp slt i64 %i.x, -922337203685477580
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = mul nsw i64 %i.x, 10
  %i.cx = zext nneg i8 %i.aa to i64
  %i.cy = sub nsw i64 %i.cw, %i.cx                ; 3 uses
  store i64 %i.cy, ptr %9, align 8, !tbaa !588
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i64 [ %i.cy, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.cz = phi i8 [ %i.cu, %bb.y ], [ %i.w, %bb.v ]
  %i.da = phi i64 [ %i.cy, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cp, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cp
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !106
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cp, %bb.aa ], [ %i.dd, %bb.ac ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2509

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %5
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !596
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod540 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod540)
  %i.dq = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa491 = phi i64 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa491, ptr %9, align 8, !tbaa !588
  store i8 %5, ptr %i.h, align 1, !tbaa !594
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i64 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !79

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa491, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond55 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dx = add nsw i64 %i.du, -1                   ; 2 uses
  store i64 %i.dx, ptr %9, align 8, !tbaa !588
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dy = phi i8 [ %i.dt, %bb.ae ], [ %i.dt, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 1, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i64 [ %i.dx, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %5
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = sub nuw i8 %5, %i.dy
  %xtraiter541 = and i8 %i.ea, 7                  ; 2 uses
  %lcmp.mod542.not = icmp eq i8 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.eb = phi i64 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ed, %.lr.ph.i.i.i.prol ], [ %i.dy, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ec = mul nsw i64 %i.eb, 10                   ; 3 uses
  %i.ed = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter541
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2510

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa490.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.unr543 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.prol ]
  %i.ee = sub i8 %i.dy, %5
  %i.ef = icmp ugt i8 %i.ee, -8
  br i1 %i.ef, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.eg = phi i64 [ %i.eh, %.lr.ph.i.i.i ], [ %.unr543, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.ei, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eh = mul nsw i64 %i.eg, 100000000            ; 2 uses
  %i.ei = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.ei, %5
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa490 = phi i64 [ %.lcssa490.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa490, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ej = phi i64 [ %.lcssa490, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ek = sub nsw i64 0, %i.n
  %i.el = icmp sgt i64 %i.ej, %i.ek
  %i.em = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.em, %i.el
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.en = icmp eq i8 %i.q, 48
  %or.cond.i = and i1 %.not38.i, %i.en
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !106
  %i.eq = add i8 %i.ep, -66                       ; 2 uses
  %i.er = tail call i8 @llvm.fshl.i8(i8 %i.eq, i8 %i.eq, i8 7)
  switch i8 %i.er, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.es = icmp eq i8 %i.q, 43
  %.088.i.i = zext i1 %i.es to i64                ; 5 uses
  %i.et = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.et, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.eu = zext i8 %4 to i32
  %i.ev = zext i8 %5 to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i64 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.ex = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ia, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.ey = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ib, %bb.bi ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !106 ; 3 uses
  %i.fb = add i8 %i.fa, -48                       ; 3 uses
  %i.fc = icmp ult i8 %i.fb, 10
  br i1 %i.fc, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = icmp eq i8 %i.fa, 46
  br i1 %i.fd, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fe = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.ff = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fg = icmp ult i64 %i.ff, %.035153.i
  br i1 %i.fg, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fh = zext i8 %i.ex to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fi = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fu, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i64 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fj = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fv, %bb.at ] ; 3 uses
  %i.fk = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gd, %bb.at ] ; 5 uses
  %i.fl = phi i64 [ %i.ey, %.lr.ph137.i.i ], [ %i.ge, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.ff, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !106 ; 3 uses
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 10
  br i1 %i.fp, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fq = icmp ne i8 %i.fk, %5
  %i.fr = trunc nuw i8 %i.fj to i1
  %or.cond57 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !592
  %i.fs = icmp samesign ugt i8 %i.fn, 52
  %i.ft = zext i1 %i.fs to i8                     ; 2 uses
  store i8 %i.ft, ptr %i.k, align 1, !tbaa !593
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fu = phi i8 [ %i.ft, %bb.an ], [ %i.fi, %bb.am ] ; 3 uses
  %i.fv = phi i8 [ 1, %bb.an ], [ %i.fj, %bb.am ] ; 3 uses
  %i.fw = zext i8 %i.fk to i32
  %i.fx = add nuw nsw i32 %i.fw, %i.fh
  %i.fy = icmp samesign ugt i32 %i.fx, 17
  br i1 %i.fy, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = add i8 %i.fk, 1                         ; 2 uses
  store i8 %i.fz, ptr %i.h, align 1, !tbaa !594
  %i.ga = mul nsw i64 %i.fl, 10
  %i.gb = zext nneg i8 %i.fo to i64
  %i.gc = add nsw i64 %i.ga, %i.gb                ; 3 uses
  store i64 %i.gc, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i64 [ %i.gc, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gd = phi i8 [ %i.fz, %bb.ap ], [ %i.fk, %bb.ao ] ; 3 uses
  %i.ge = phi i64 [ %i.gc, %bb.ap ], [ %i.fl, %bb.ao ]
  %i.gf = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gf, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !106
  %i.gi = icmp eq i8 %i.gh, 95
  br i1 %i.gi, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gj = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gk = icmp eq i64 %i.gj, %.035153.i
  br i1 %i.gk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gj
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !106
  %i.gn = add i8 %i.gm, -48
  %i.go = icmp ult i8 %i.gn, 10
  br i1 %i.go, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gj, %bb.as ], [ %i.gf, %bb.aq ] ; 3 uses
  %i.gp = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gp, label %bb.al, label %.thread118.i.i, !llvm.loop !2511

bb.au:                                            ; preds = %bb.al
  %i.gq = icmp ugt i64 %.1136.i.i, %i.ff
  %or.cond.i91.i = or i1 %i.fe, %i.gq
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gr = phi i8 [ 0, %bb.ak ], [ %i.fu, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fu, %bb.at ]
  %i.gs = phi i8 [ 0, %bb.ak ], [ %i.fv, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fv, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i64 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gt = phi i8 [ 0, %bb.ak ], [ %i.gd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gd, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.ff, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.gu = icmp ugt i64 %.1.lcssa.i.i, %i.ff
  %or.cond119.i.i = or i1 %i.fe, %i.gu
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.gv = phi i8 [ 0, %bb.aj ], [ %i.fi, %bb.au ] ; 2 uses
  %i.gw = phi i8 [ 0, %bb.aj ], [ %i.fj, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i64 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.gx = phi i8 [ 0, %bb.aj ], [ %i.fk, %bb.au ] ; 2 uses
  %i.gy = phi i8 [ %i.fa, %bb.aj ], [ %i.fn, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
  switch i8 %i.gy, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.av
    i8 69, label %bb.av
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.gz = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.ha = icmp ult i64 %i.gz, %.035153.i
  br i1 %i.ha, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hb = phi i64 [ %i.he, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.gz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !106
  switch i8 %i.hd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.he = add nuw i64 %i.hb, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.he, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !2512

bb.av:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hf = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hg = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hg, %.035153.i
  br i1 %.not108.i.i, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i16 0, ptr %7, align 2
  %i.hh = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hg ; 3 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !106
  %i.hj = icmp eq i8 %i.hi, 45
  %i.hk = sub nuw i64 %.035153.i, %i.hg           ; 2 uses
  br i1 %i.hj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hh, i64 noundef %i.hk, ptr noundef nonnull align 2 dereferenceable(2) %7, i1 noundef zeroext false)
  br i1 %i.hl, label %.split46, label %.split46.thread

bb.az:                                            ; preds = %bb.ax
  %i.hm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hh, i64 noundef %i.hk, ptr noundef nonnull align 2 dereferenceable(2) %7, i1 noundef zeroext false)
  br i1 %i.hm, label %.split46, label %.split46.thread

.split46.thread:                                  ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split46:                                         ; preds = %bb.ay, %bb.az
  %i.hn = load i16, ptr %7, align 2, !tbaa !128
  %i.ho = sext i16 %i.hn to i32
  %i.hp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.hp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ba:                                            ; preds = %bb.ai
  %i.hq = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.hr = icmp eq i64 %i.ey, 0
  %i.hs = icmp eq i8 %i.fb, 0
  %or.cond.i.i93.i = and i1 %i.hr, %i.hs
  br i1 %or.cond.i.i93.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ht = zext i8 %i.ex to i32
  %i.hu = icmp eq i32 %i.ew, %i.ht
  br i1 %i.hu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hv = add i8 %i.ex, 1                         ; 2 uses
  store i8 %i.hv, ptr %i.g, align 2, !tbaa !595
  %i.hw = icmp sgt i64 %i.ey, 922337203685477580
  br i1 %i.hw, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hx = mul nsw i64 %i.ey, 10
  %i.hy = zext nneg i8 %i.fb to i64
  %i.hz = add nsw i64 %i.hx, %i.hy                ; 3 uses
  store i64 %i.hz, ptr %9, align 8, !tbaa !588
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.promoted.i.i.i71.i185 = phi i64 [ %i.hz, %bb.bd ], [ %.promoted.i.i.i71.i184, %bb.ba ] ; 3 uses
  %i.ia = phi i8 [ %i.hv, %bb.bd ], [ %i.ex, %bb.ba ]
  %i.ib = phi i64 [ %i.hz, %bb.bd ], [ 0, %bb.ba ]
  %.not109.i.i = icmp eq i64 %i.hq, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split40.thread.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ic = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hq
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.id, 95
  br i1 %.not110.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ie = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.if = icmp eq i64 %i.ie, %.035153.i
  br i1 %i.if, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ig = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ie
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !106
  %i.ii = add i8 %i.ih, -48
  %i.ij = icmp ult i8 %i.ii, 10
  br i1 %i.ij, label %bb.bi, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.7.i94.i = phi i64 [ %i.hq, %bb.bf ], [ %i.ie, %bb.bh ] ; 3 uses
  %i.ik = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.ik, label %bb.ai, label %thread-pre-split40.thread.thread, !llvm.loop !2513

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.il = phi i8 [ %i.gr, %.thread118.i.i ], [ %i.gv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.gv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.im = phi i8 [ %i.gs, %.thread118.i.i ], [ %i.gw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.gw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i64 [ %.promoted.i.i.i71.i181, %.thread118.i.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.in = phi i8 [ %i.gt, %.thread118.i.i ], [ %i.gx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.gx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.gz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.io = icmp ugt i8 %i.in, %5
  br i1 %i.io, label %thread-pre-split40, label %thread-pre-split40.thread

thread-pre-split40:                               ; preds = %.thread120.i.i
  %narrow.i.i84.i = sub nuw i8 %i.in, %5          ; 4 uses
  store i8 %narrow.i.i84.i, ptr %i.i, align 2, !tbaa !596
  %i.ip = zext i8 %narrow.i.i84.i to i64          ; 2 uses
  %xtraiter544 = and i64 %i.ip, 1
end_hunk_5
begin_hunk_6_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb0EEEbRT_i:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bc = zext nneg i32 %.03778 to i64
  %.not51 = icmp eq i32 %.03778, 0
  br i1 %.not51, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIlEELb0EEEbRT_h.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader48
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = zext i8 %i.d to i32
  br label %bb.t

.preheader:                                       ; preds = %bb.p
  %i.bf = sext i32 %.03778 to i64
  %i.bg = sub nsw i64 0, %i.bf
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader
  %i.bh = phi i64 [ %.promoted58, %.preheader ], [ %i.bi, %bb.q ] ; 3 uses
  %.03357 = phi i64 [ 0, %.preheader ], [ %i.bm, %bb.q ]
  %i.bi = sdiv i64 %i.bh, 10                      ; 3 uses
  %i.bj = srem i64 %i.bh, 10
  %i.bk = add i64 %i.bh, 9
  %i.bl = icmp ult i64 %i.bk, 19
  %i.bm = add nuw i64 %.03357, 1                  ; 2 uses
  %exitcond64.not = icmp eq i64 %i.bm, %i.bg
  %or.cond = select i1 %i.bl, i1 true, i1 %exitcond64.not
  br i1 %or.cond, label %bb.r, label %bb.q, !llvm.loop !2528

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp sgt i64 %i.bj, 4
  store i64 %i.bi, ptr %0, align 8, !tbaa !588
  br i1 %i.bn, label %bb.s, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIlEELb0EEEbRT_h.exit

bb.s:                                             ; preds = %bb.r
  %i.bo = add nsw i64 %i.bi, 1
  store i64 %i.bo, ptr %0, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIlEELb0EEEbRT_h.exit

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %i.bp = phi i64 [ %.promoted58, %.lr.ph ], [ %i.ca, %bb.x ] ; 3 uses
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.x ]
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load i8, ptr %i.bb, align 2, !tbaa !595 ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = load i8, ptr %i.bd, align 8, !tbaa !589
  %i.bu = zext i8 %i.bt to i32
  %i.bv = sub nsw i32 %i.bu, %i.be
  %i.bw = icmp eq i32 %i.bv, %i.bs
  br i1 %i.bw, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIlEELb0EEEbRT_h.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = add i8 %i.br, 1
  store i8 %i.bx, ptr %i.bb, align 2, !tbaa !595
  %i.by = icmp sgt i64 %i.bp, 922337203685477580
  br i1 %i.by, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIlEELb0EEEbRT_h.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = mul nsw i64 %i.bp, 10                   ; 2 uses
  store i64 %i.bz, ptr %0, align 8, !tbaa !588
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.ca = phi i64 [ %i.bz, %bb.w ], [ 0, %bb.t ]
  %i.cb = add nuw nsw i64 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.bc
  br i1 %exitcond.not, label %_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIlEELb0EEEbRT_h.exit, label %bb.t, !llvm.loop !2529

_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataIlEELb0EEEbRT_h.exit: ; preds = %bb.v, %bb.u, %bb.x, %.preheader48, %bb.r, %bb.s, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb0EEEbRT_.exit
  %.139 = phi i1 [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb0EEEbRT_.exit ], [ true, %bb.r ], [ true, %bb.s ], [ true, %.preheader48 ], [ false, %bb.u ], [ false, %bb.v ], [ true, %bb.x ]
  ret i1 %.139
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastINS_9hugeint_tELc46EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %14 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %15 = alloca %"struct.duckdb::DecimalCastData.238", align 8 ; 28 uses
  %16 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 %4, ptr %i.e, align 8, !tbaa !599
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 17 ; 3 uses
  store i8 %5, ptr %i.f, align 1, !tbaa !600
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 18 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 19 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 21 ; 2 uses
  %i.k = zext i8 %4 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.n = load <2 x i64>, ptr %i.l, align 16, !tbaa !97
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !97
  %cond81.i = icmp eq i64 %1, 0
  br i1 %cond81.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %bb.bh

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.03483.i = phi ptr [ %i.q, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.03582.i = phi i64 [ %i.r, %bb.b ], [ %1, %bb.a ] ; 34 uses
  %i.p = load i8, ptr %.03483.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.p, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.r = add i64 %.03582.i, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.r, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2530

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.03582.i, 1
  br i1 %.not.i, label %.thread115.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.z
  %.084126.i.i = phi i64 [ %.7.i.i, %bb.z ], [ 1, %bb.c ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.084126.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !106   ; 3 uses
  %i.u = add i8 %i.t, -48                         ; 2 uses
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.u, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp eq i8 %i.t, 46
  br i1 %i.w, label %bb.e, label %.thread110.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i64 %.084126.i.i, 1             ; 2 uses
  %i.y = add nuw i64 %.084126.i.i, 1              ; 5 uses
  %i.z = icmp ult i64 %i.y, %.03582.i
  br i1 %i.z, label %.lr.ph128.i.i, label %.thread113.i.i

.lr.ph128.i.i:                                    ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph128.i.i
  %.185127.i.i = phi i64 [ %i.y, %.lr.ph128.i.i ], [ %.2.i.i, %bb.n ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.185127.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !106 ; 3 uses
  %i.ad = add i8 %i.ac, -48                       ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 10
  br i1 %i.ae, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.h, align 1, !tbaa !601  ; 3 uses
  %i.ag = load i8, ptr %i.f, align 1, !tbaa !600
  %i.ah = icmp ne i8 %i.af, %i.ag
  %i.ai = load i8, ptr %i.i, align 4, !range !169
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.i, align 4, !tbaa !602
  %i.ak = icmp samesign ugt i8 %i.ac, 52
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %i.j, align 1, !tbaa !603
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = load i8, ptr %i.g, align 2, !tbaa !604
  %i.an = zext i8 %i.am to i32
  %i.ao = zext i8 %i.af to i32
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i32 %i.ap, 37
  br i1 %i.aq, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add i8 %i.af, 1
  store i8 %i.ar, ptr %i.h, align 1, !tbaa !601
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 10)
  %i.as = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(16) %12) ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0
  store i64 %i.at, ptr %11, align 8
  %i.au = extractvalue { i64, i64 } %i.as, 1
  store i64 %i.au, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.av = zext nneg i8 %i.ad to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef %i.av)
  %i.aw = call { i64, i64 } @_ZNK6duckdb9hugeint_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  store i64 %i.ax, ptr %15, align 8, !tbaa !97
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.j, %bb.i
  %i.az = add nuw i64 %.185127.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.az, %.03582.i
  br i1 %.not103.i.i, label %.thread113.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !106
  %i.bc = icmp eq i8 %i.bb, 95
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = add i64 %.185127.i.i, 2                 ; 3 uses
  %i.be = icmp eq i64 %i.bd, %.03582.i
  br i1 %i.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bd
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !106
  %i.bh = add i8 %i.bg, -48
  %i.bi = icmp ult i8 %i.bh, 10
  br i1 %i.bi, label %bb.n, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.k
  %.2.i.i = phi i64 [ %i.bd, %bb.m ], [ %i.az, %bb.k ] ; 3 uses
  %i.bj = icmp ult i64 %.2.i.i, %.03582.i
  br i1 %i.bj, label %bb.f, label %.thread113.i.i, !llvm.loop !2531

bb.o:                                             ; preds = %bb.f
  %i.bk = icmp ugt i64 %.185127.i.i, %i.y
  %or.cond.i.i = or i1 %i.x, %i.bk
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread113.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, %bb.e
  %.185.lcssa.i.i = phi i64 [ %i.y, %bb.e ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.n ] ; 2 uses
  %i.bl = icmp ugt i64 %.185.lcssa.i.i, %i.y
  %or.cond114.i.i = or i1 %i.x, %i.bl
  br i1 %or.cond114.i.i, label %.thread115.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.o, %bb.d
  %i.bm = phi i8 [ %i.t, %bb.d ], [ %i.ac, %bb.o ]
  %.4.i.i = phi i64 [ %.084126.i.i, %bb.d ], [ %.185127.i.i, %bb.o ] ; 3 uses
  switch i8 %i.bm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bn = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %.03582.i
  br i1 %i.bo, label %.lr.ph130.i.i, label %.thread115.i.i

.lr.ph130.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.bp = phi i64 [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !106
  switch i8 %i.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i
  %i.bs = add nuw i64 %i.bp, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bs, %.03582.i
  br i1 %exitcond.not.i.i, label %.thread115.i.i, label %.lr.ph130.i.i, !llvm.loop !2532

bb.p:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.bt = icmp eq i64 %.4.i.i, 1
  br i1 %i.bt, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.bu, %.03582.i
  br i1 %.not104.i.i, label %bb.r, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store i16 0, ptr %14, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bu ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !106
  %i.bx = icmp eq i8 %i.bw, 45
  %i.by = sub nuw i64 %.03582.i, %i.bu            ; 2 uses
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bv, i64 noundef %i.by, ptr noundef nonnull align 2 dereferenceable(2) %14, i1 noundef zeroext false)
  br i1 %i.bz, label %.split45, label %.split45.thread

bb.t:                                             ; preds = %bb.r
  %i.ca = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bv, i64 noundef %i.by, ptr noundef nonnull align 2 dereferenceable(2) %14, i1 noundef zeroext false)
  br i1 %i.ca, label %.split45, label %.split45.thread

.split45.thread:                                  ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split45:                                         ; preds = %bb.s, %bb.t
  %i.cb = load i16, ptr %14, align 2, !tbaa !128
  %i.cc = sext i16 %i.cb to i32
  %i.cd = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br i1 %i.cd, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ce = add nuw i64 %.084126.i.i, 1             ; 3 uses
  %i.cf = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 noundef zeroext %i.u)
  br i1 %i.cf, label %bb.v, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.u
  %.not105.i.i = icmp eq i64 %i.ce, %.03582.i
  br i1 %.not105.i.i, label %.thread115.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.ch, 95
  br i1 %.not106.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ci = add i64 %.084126.i.i, 2                 ; 3 uses
  %i.cj = icmp eq i64 %i.ci, %.03582.i
  br i1 %i.cj, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ci
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !106
  %i.cm = add i8 %i.cl, -48
  %i.cn = icmp ult i8 %i.cm, 10
  br i1 %i.cn, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w
  %.7.i.i = phi i64 [ %i.ce, %bb.w ], [ %i.ci, %bb.y ] ; 3 uses
  %i.co = icmp ult i64 %.7.i.i, %.03582.i
  br i1 %i.co, label %.lr.ph.i.i, label %.thread115.i.i, !llvm.loop !2533

.thread115.i.i:                                   ; preds = %bb.z, %bb.v, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %.thread113.i.i
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread113.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.03582.i, %bb.v ], [ %.7.i.i, %bb.z ]
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15)
  %i.cq = icmp ugt i64 %.8.i.i, 1
  %or.cond61 = and i1 %i.cp, %i.cq
  br i1 %or.cond61, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread115.i.i.thread:                            ; preds = %bb.c
  %i.cr = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.03582.i, 1
  %i.cs = icmp eq i8 %i.p, 48
  %or.cond.i = and i1 %.not38.i, %i.cs
  br i1 %or.cond.i, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106
  %i.cv = add i8 %i.cu, -66                       ; 2 uses
  %i.cw = call i8 @llvm.fshl.i8(i8 %i.cv, i8 %i.cv, i8 7)
  switch i8 %i.cw, label %bb.ag [
    i8 27, label %bb.ac
    i8 11, label %bb.ac
    i8 16, label %bb.ae
    i8 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.cx = icmp ugt i64 %.03582.i, 2
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ae:                                            ; preds = %bb.ab, %bb.ab
  %i.cz = icmp ugt i64 %.03582.i, 2
  br i1 %i.cz, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ag:                                            ; preds = %bb.ab, %bb.aa
  %i.db = icmp eq i8 %i.p, 43
  %.088.i.i = zext i1 %i.db to i64                ; 5 uses
  %i.dc = icmp ugt i64 %.03582.i, %.088.i.i
  br i1 %i.dc, label %.lr.ph.i40.i, label %.thread119.i.i.thread

.lr.ph.i40.i:                                     ; preds = %bb.ag, %bb.bd
  %.0130.i.i = phi i64 [ %.7.i47.i, %bb.bd ], [ %.088.i.i, %bb.ag ] ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.0130.i.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !106 ; 3 uses
  %i.df = add i8 %i.de, -48                       ; 2 uses
  %i.dg = icmp ult i8 %i.df, 10
  br i1 %i.dg, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i40.i
  %i.dh = icmp eq i8 %i.de, 46
  br i1 %i.dh, label %bb.ai, label %.thread114.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.di = icmp ugt i64 %.0130.i.i, %.088.i.i      ; 2 uses
  %i.dj = add nuw i64 %.0130.i.i, 1               ; 5 uses
  %i.dk = icmp ult i64 %i.dj, %.03582.i
  br i1 %i.dk, label %.lr.ph132.i.i, label %.thread117.i.i

.lr.ph132.i.i:                                    ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %.lr.ph132.i.i
  %.1131.i.i = phi i64 [ %i.dj, %.lr.ph132.i.i ], [ %.2.i46.i, %bb.ar ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.1131.i.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !106 ; 3 uses
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dq = load i8, ptr %i.h, align 1, !tbaa !601  ; 3 uses
  %i.dr = load i8, ptr %i.f, align 1, !tbaa !600
  %i.ds = icmp ne i8 %i.dq, %i.dr
  %i.dt = load i8, ptr %i.i, align 4, !range !169
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond63 = select i1 %i.ds, i1 true, i1 %i.du
  br i1 %or.cond63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.i, align 4, !tbaa !602
  %i.dv = icmp samesign ugt i8 %i.dn, 52
  %i.dw = zext i1 %i.dv to i8
  store i8 %i.dw, ptr %i.j, align 1, !tbaa !603
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dx = load i8, ptr %i.g, align 2, !tbaa !604
  %i.dy = zext i8 %i.dx to i32
  %i.dz = zext i8 %i.dq to i32
  %i.ea = add nuw nsw i32 %i.dy, %i.dz
  %i.eb = icmp samesign ugt i32 %i.ea, 37
  br i1 %i.eb, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = add i8 %i.dq, 1
  store i8 %i.ec, ptr %i.h, align 1, !tbaa !601
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 10)
  %i.ed = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  store i64 %i.ee, ptr %7, align 8
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  store i64 %i.ef, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.eg = zext nneg i8 %i.do to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.eg)
  %i.eh = call { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) ; 2 uses
  %i.ei = extractvalue { i64, i64 } %i.eh, 0
  %i.ej = extractvalue { i64, i64 } %i.eh, 1
  store i64 %i.ei, ptr %15, align 8, !tbaa !97
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i44.i, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.an, %bb.am
  %i.ek = add nuw i64 %.1131.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.ek, %.03582.i
  br i1 %.not107.i.i, label %.thread117.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !106
  %i.en = icmp eq i8 %i.em, 95
  br i1 %i.en, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.eo = add i64 %.1131.i.i, 2                   ; 3 uses
  %i.ep = icmp eq i64 %i.eo, %.03582.i
  br i1 %i.ep, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !106
  %i.es = add i8 %i.er, -48
  %i.et = icmp ult i8 %i.es, 10
  br i1 %i.et, label %bb.ar, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.2.i46.i = phi i64 [ %i.eo, %bb.aq ], [ %i.ek, %bb.ao ] ; 3 uses
  %i.eu = icmp ult i64 %.2.i46.i, %.03582.i
  br i1 %i.eu, label %bb.aj, label %.thread117.i.i, !llvm.loop !2534

bb.as:                                            ; preds = %bb.aj
  %i.ev = icmp ugt i64 %.1131.i.i, %i.dj
  %or.cond.i45.i = or i1 %i.di, %i.ev
  br i1 %or.cond.i45.i, label %.thread114.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread117.i.i:                                   ; preds = %bb.ar, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, %bb.ai
  %.1.lcssa.i.i = phi i64 [ %i.dj, %bb.ai ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i46.i, %bb.ar ] ; 2 uses
  %i.ew = icmp ugt i64 %.1.lcssa.i.i, %i.dj
  %or.cond118.i.i = or i1 %i.di, %i.ew
  br i1 %or.cond118.i.i, label %.thread119.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.as, %bb.ah
  %i.ex = phi i8 [ %i.de, %bb.ah ], [ %i.dn, %bb.as ]
  %.4.i41.i = phi i64 [ %.0130.i.i, %bb.ah ], [ %.1131.i.i, %bb.as ] ; 3 uses
  switch i8 %i.ex, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 101, label %bb.at
    i8 69, label %bb.at
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i: ; preds = %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i
  %i.ey = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %i.ez = icmp ult i64 %i.ey, %.03582.i
  br i1 %i.ez, label %.lr.ph134.i.i, label %.thread119.i.i

.lr.ph134.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.fa = phi i64 [ %i.fd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.ey, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !106
  switch i8 %i.fc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i
  %i.fd = add nuw i64 %i.fa, 1                    ; 2 uses
  %exitcond.not.i43.i = icmp eq i64 %i.fd, %.03582.i
  br i1 %exitcond.not.i43.i, label %.thread119.i.i, label %.lr.ph134.i.i, !llvm.loop !2535

bb.at:                                            ; preds = %.thread114.i.i, %.thread114.i.i
  %i.fe = icmp eq i64 %.4.i41.i, %.088.i.i
  br i1 %i.fe, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.ff, %.03582.i
  br i1 %.not108.i.i, label %bb.av, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i16 0, ptr %10, align 2
  %i.fg = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ff ; 3 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !106
  %i.fi = icmp eq i8 %i.fh, 45
  %i.fj = sub nuw i64 %.03582.i, %i.ff            ; 2 uses
  br i1 %i.fi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fk = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fg, i64 noundef %i.fj, ptr noundef nonnull align 2 dereferenceable(2) %10, i1 noundef zeroext false)
  br i1 %i.fk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread47

bb.ax:                                            ; preds = %bb.av
  %i.fl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fg, i64 noundef %i.fj, ptr noundef nonnull align 2 dereferenceable(2) %10, i1 noundef zeroext false)
  br i1 %i.fl, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread47

bb.ay:                                            ; preds = %.lr.ph.i40.i
  %i.fm = add nuw i64 %.0130.i.i, 1               ; 3 uses
  %i.fn = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 noundef zeroext %i.df)
  br i1 %i.fn, label %bb.az, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.az:                                            ; preds = %bb.ay
  %.not109.i.i = icmp eq i64 %i.fm, %.03582.i
  br i1 %.not109.i.i, label %.thread119.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fo = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.fp, 95
  br i1 %.not110.i.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fq = add i64 %.0130.i.i, 2                   ; 3 uses
  %i.fr = icmp eq i64 %i.fq, %.03582.i
  br i1 %i.fr, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fs = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !106
  %i.fu = add i8 %i.ft, -48
  %i.fv = icmp ult i8 %i.fu, 10
  br i1 %i.fv, label %bb.bd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.7.i47.i = phi i64 [ %i.fm, %bb.ba ], [ %i.fq, %bb.bc ] ; 3 uses
  %i.fw = icmp ult i64 %.7.i47.i, %.03582.i
  br i1 %i.fw, label %.lr.ph.i40.i, label %.thread119.i.i, !llvm.loop !2536

.thread119.i.i:                                   ; preds = %bb.bd, %bb.az, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %.thread117.i.i
  %.8.i39.i = phi i64 [ %.1.lcssa.i.i, %.thread117.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.ey, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ], [ %.03582.i, %bb.az ], [ %.7.i47.i, %bb.bd ]
  %i.fx = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15)
  %i.fy = icmp ugt i64 %.8.i39.i, %.088.i.i
  %or.cond64 = and i1 %i.fx, %i.fy
  br i1 %or.cond64, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread119.i.i.thread:                            ; preds = %bb.ag
  %i.fz = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread47: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit: ; preds = %bb.aw, %bb.ax
  %i.ga = load i16, ptr %10, align 2, !tbaa !128
  %i.gb = sext i16 %i.ga to i32
  %i.gc = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %i.gc, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.x, %bb.u, %bb.y, %bb.l, %bb.m, %.lr.ph130.i.i, %bb.bb, %bb.ay, %bb.bc, %bb.ap, %bb.aq, %.lr.ph134.i.i, %.thread119.i.i.thread, %.thread115.i.i.thread, %.thread114.i.i, %bb.at, %bb.as, %bb.au, %.thread119.i.i, %bb.ae, %bb.ac, %.thread113.i.i, %.thread110.i.i, %bb.p, %bb.o, %bb.q, %.thread115.i.i, %bb.ad, %.thread117.i.i, %bb.af, %.split45.thread, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread47, %.split45, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.gd = trunc i64 %1 to i32                     ; 4 uses
  %i.ge = icmp ult i32 %i.gd, 13
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 8 uses
  br i1 %i.ge, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gf, i8 0, i64 12, i1 false)
  %i.gg = icmp eq i32 %i.gd, 0
  br i1 %i.gg, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = and i64 %1, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gf, ptr align 1 %0, i64 %i.gh, i1 false)
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  %i.gi = load i32, ptr %0, align 1
  store i32 %i.gi, ptr %i.gf, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %0, ptr %i.gj, align 8, !tbaa !106
end_hunk_6
begin_hunk_7_@_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_h:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !604   ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !599
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.k = load i8, ptr %i.j, align 1, !tbaa !600
  %i.l = zext i8 %i.k to i32
  %i.m = sub nsw i32 %i.i, %i.l
  %i.n = icmp eq i32 %i.m, %i.f
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add i8 %i.e, 1
  store i8 %i.o, ptr %i.d, align 2, !tbaa !604
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 -1, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9223372036854775807, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 10)
  %i.q = call { i64, i64 } @_ZNK6duckdb9hugeint_tdvERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  store i64 %i.r, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = extractvalue { i64, i64 } %i.q, 1
  store i64 %i.t, ptr %i.s, align 8
  %i.u = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 10)
  %i.v = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  store i64 %i.w, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = extractvalue { i64, i64 } %i.v, 1
  store i64 %i.y, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.z = zext i8 %1 to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.z)
  %i.aa = call { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  store i64 %i.ab, ptr %0, align 8, !tbaa !97
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData", align 2 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i16 0, ptr %9, align 2, !tbaa !565
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i8 %4, ptr %i.e, align 2, !tbaa !566
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 3
  store i8 %5, ptr %i.f, align 1, !tbaa !567
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 7 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = trunc i64 %i.n to i16                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 %i.o, ptr %i.p, align 2, !tbaa !568
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.s, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.t, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.r = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.r, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.t = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.t, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2554

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.u = zext i8 %4 to i32
  %i.v = zext i8 %5 to i32
  %i.w = sub nsw i32 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %.lr.ph.i.i
  %.promoted.i.i.i.i176 = phi i16 [ 0, %.lr.ph.i.i ], [ %.promoted.i.i.i.i177, %bb.ad ] ; 4 uses
  %i.x = phi i8 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.ad ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.ad ] ; 6 uses
  %i.y = phi i16 [ 0, %.lr.ph.i.i ], [ %i.db, %bb.ad ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !106  ; 3 uses
  %i.ab = add i8 %i.aa, -48                       ; 3 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i8 %i.aa, 44
  br i1 %i.ad, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %.084130.i.i, 1            ; 2 uses
  %i.af = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ag = icmp ult i64 %i.af, %.035153.i
  br i1 %i.ag, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ah = zext i8 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph133.i.i
  %i.ai = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.au, %bb.o ] ; 2 uses
  %.promoted.i.i.i.i175 = phi i16 [ %.promoted.i.i.i.i176, %.lr.ph133.i.i ], [ %.promoted.i.i.i.i174, %bb.o ] ; 2 uses
  %i.aj = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.av, %bb.o ] ; 3 uses
  %i.ak = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.bd, %bb.o ] ; 5 uses
  %i.al = phi i16 [ %i.y, %.lr.ph133.i.i ], [ %i.be, %bb.o ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.af, %.lr.ph133.i.i ], [ %.2.i.i, %bb.o ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106 ; 3 uses
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ne i8 %i.ak, %5
  %i.ar = trunc nuw i8 %i.aj to i1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 2, !tbaa !569
  %i.as = icmp samesign ugt i8 %i.an, 52
  %i.at = zext i1 %i.as to i8                     ; 2 uses
  store i8 %i.at, ptr %i.k, align 1, !tbaa !570
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i8 [ %i.at, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.av = phi i8 [ 1, %bb.i ], [ %i.aj, %bb.h ]   ; 3 uses
  %i.aw = zext i8 %i.ak to i32
  %i.ax = add nuw nsw i32 %i.aw, %i.ah
  %i.ay = icmp samesign ugt i32 %i.ax, 3
  br i1 %i.ay, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.az, ptr %i.h, align 1, !tbaa !571
  %i.ba = mul i16 %i.al, 10
  %i.bb = zext nneg i8 %i.ao to i16
  %i.bc = sub i16 %i.ba, %i.bb                    ; 3 uses
  store i16 %i.bc, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.k, %bb.j
  %.promoted.i.i.i.i174 = phi i16 [ %i.bc, %bb.k ], [ %.promoted.i.i.i.i175, %bb.j ] ; 3 uses
  %i.bd = phi i8 [ %i.az, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %i.be = phi i16 [ %i.bc, %bb.k ], [ %i.al, %bb.j ]
  %i.bf = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bf, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !106
  %i.bi = icmp eq i8 %i.bh, 95
  br i1 %i.bi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bj = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, %.035153.i
  br i1 %i.bk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !106
  %i.bn = add i8 %i.bm, -48
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2.i.i = phi i64 [ %i.bj, %bb.n ], [ %i.bf, %bb.l ] ; 3 uses
  %i.bp = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bp, label %bb.g, label %.thread114.i.i, !llvm.loop !2555

bb.p:                                             ; preds = %bb.g
  %i.bq = icmp ugt i64 %.185132.i.i, %i.af
  %or.cond.i.i = or i1 %i.ae, %i.bq
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.o, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, %bb.f
  %i.br = phi i8 [ 0, %bb.f ], [ %i.au, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.au, %bb.o ]
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.av, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.av, %bb.o ]
  %.promoted.i.i.i.i173 = phi i16 [ %.promoted.i.i.i.i176, %bb.f ], [ %.promoted.i.i.i.i174, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i.i174, %bb.o ]
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i16 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2556

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i16 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i16
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !572
  %i.cx = icmp slt i16 %i.y, -3276
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul i16 %i.y, 10
  %i.cz = sub i16 %i.cy, %i.cs                    ; 3 uses
  store i16 %i.cz, ptr %9, align 2, !tbaa !565
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i16 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i16 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2557

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !573
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
end_hunk_7
begin_hunk_8_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i16 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa537, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add i16 %i.dv, -1                       ; 2 uses
  store i16 %i.dy, ptr %9, align 2, !tbaa !565
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 1, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i16 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 4 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

iter.check:                                       ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 3 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.ec, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i8 %i.ec, 15
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i32 %i.ee, 12
  %n.vec = and i32 %i.ee, 496                     ; 4 uses
  %i.eg = trunc i32 %n.vec to i8
  %i.eh = add i8 %i.dz, %i.eg
  %i.ei = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.ei, %vector.ph ], [ %i.ej, %vector.body ]
  %vec.phi452 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ek, %vector.body ]
  %i.ej = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ek = mul <8 x i16> %vec.phi452, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.el = icmp eq i32 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !2558

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ek, %i.ej
  %i.em = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.em, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec453 = and i32 %i.ee, 508                  ; 3 uses
  %i.en = trunc i32 %n.vec453 to i8
  %i.eo = add i8 %i.dz, %i.en
  %i.ep = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index454 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next456, %vec.epilog.vector.body ]
  %vec.phi455 = phi <4 x i16> [ %i.ep, %vec.epilog.ph ], [ %i.eq, %vec.epilog.vector.body ]
  %i.eq = mul <4 x i16> %vec.phi455, splat (i16 10) ; 2 uses
  %index.next456 = add nuw i32 %index454, 4       ; 2 uses
  %i.er = icmp eq i32 %index.next456, %n.vec453
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2559

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.es = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.eq) ; 2 uses
  %cmp.n457 = icmp eq i32 %i.ee, %n.vec453
  br i1 %cmp.n457, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph532 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.et = phi i16 [ %i.eu, %.lr.ph.i.i.i ], [ %.ph532, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.ev, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.eu = mul i16 %i.et, 10                       ; 2 uses
  %i.ev = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.ev, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2560

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa406 = phi i16 [ %i.es, %vec.epilog.middle.block ], [ %i.em, %middle.block ], [ %i.eu, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa406, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ew = phi i16 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ex = sext i16 %i.ew to i32
  %i.ey = sext i16 %i.o to i32
  %i.ez = sub nsw i32 0, %i.ey
  %i.fa = icmp sgt i32 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.fb, %i.fa
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fc = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.fc
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !106
  %i.ff = add i8 %i.fe, -66                       ; 2 uses
  %i.fg = tail call i8 @llvm.fshl.i8(i8 %i.ff, i8 %i.ff, i8 7)
  switch i8 %i.fg, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fh = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.fh to i64                ; 5 uses
  %i.fi = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.fi, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fj = zext i8 %4 to i32
  %i.fk = zext i8 %5 to i32
  %i.fl = sub nsw i32 %i.fj, %i.fk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i16 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fm = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ip, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fn = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.iq, %bb.bi ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !106 ; 3 uses
  %i.fq = add i8 %i.fp, -48                       ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = icmp eq i8 %i.fp, 44
  br i1 %i.fs, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.ft = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fu = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fv = icmp ult i64 %i.fu, %.035153.i
  br i1 %i.fv, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fw = zext i8 %i.fm to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fx = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i16 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fy = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 3 uses
  %i.fz = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gs, %bb.at ] ; 5 uses
  %i.ga = phi i16 [ %i.fn, %.lr.ph137.i.i ], [ %i.gt, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fu, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !106 ; 3 uses
  %i.gd = add i8 %i.gc, -48                       ; 2 uses
  %i.ge = icmp ult i8 %i.gd, 10
  br i1 %i.ge, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.gf = icmp ne i8 %i.fz, %5
  %i.gg = trunc nuw i8 %i.fy to i1
  %or.cond57 = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 2, !tbaa !569
  %i.gh = icmp samesign ugt i8 %i.gc, 52
  %i.gi = zext i1 %i.gh to i8                     ; 2 uses
  store i8 %i.gi, ptr %i.k, align 1, !tbaa !570
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gj = phi i8 [ %i.gi, %bb.an ], [ %i.fx, %bb.am ] ; 3 uses
  %i.gk = phi i8 [ 1, %bb.an ], [ %i.fy, %bb.am ] ; 3 uses
  %i.gl = zext i8 %i.fz to i32
  %i.gm = add nuw nsw i32 %i.gl, %i.fw
  %i.gn = icmp samesign ugt i32 %i.gm, 3
  br i1 %i.gn, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.go = add i8 %i.fz, 1                         ; 2 uses
  store i8 %i.go, ptr %i.h, align 1, !tbaa !571
  %i.gp = mul i16 %i.ga, 10
  %i.gq = zext nneg i8 %i.gd to i16
  %i.gr = add i16 %i.gp, %i.gq                    ; 3 uses
  store i16 %i.gr, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i16 [ %i.gr, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gs = phi i8 [ %i.go, %bb.ap ], [ %i.fz, %bb.ao ] ; 3 uses
  %i.gt = phi i16 [ %i.gr, %bb.ap ], [ %i.ga, %bb.ao ]
  %i.gu = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gu, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !106
  %i.gx = icmp eq i8 %i.gw, 95
  br i1 %i.gx, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gy = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gz = icmp eq i64 %i.gy, %.035153.i
  br i1 %i.gz, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ha = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gy
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !106
  %i.hc = add i8 %i.hb, -48
  %i.hd = icmp ult i8 %i.hc, 10
  br i1 %i.hd, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gy, %bb.as ], [ %i.gu, %bb.aq ] ; 3 uses
  %i.he = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.he, label %bb.al, label %.thread118.i.i, !llvm.loop !2561

bb.au:                                            ; preds = %bb.al
  %i.hf = icmp ugt i64 %.1136.i.i, %i.fu
  %or.cond.i91.i = or i1 %i.ft, %i.hf
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.hg = phi i8 [ 0, %bb.ak ], [ %i.gj, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gj, %bb.at ]
  %i.hh = phi i8 [ 0, %bb.ak ], [ %i.gk, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gk, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i16 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.hi = phi i8 [ 0, %bb.ak ], [ %i.gs, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gs, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.fu, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.hj = icmp ugt i64 %.1.lcssa.i.i, %i.fu
  %or.cond119.i.i = or i1 %i.ft, %i.hj
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.hk = phi i8 [ 0, %bb.aj ], [ %i.fx, %bb.au ] ; 2 uses
  %i.hl = phi i8 [ 0, %bb.aj ], [ %i.fy, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i16 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.hm = phi i8 [ 0, %bb.aj ], [ %i.fz, %bb.au ] ; 2 uses
  %i.hn = phi i8 [ %i.fp, %bb.aj ], [ %i.gc, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
  switch i8 %i.hn, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.av
    i8 69, label %bb.av
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.ho = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %.035153.i
  br i1 %i.hp, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hq = phi i64 [ %i.ht, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.ho, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !106
  switch i8 %i.hs, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.ht = add nuw i64 %i.hq, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.ht, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !2562

bb.av:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hu = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hv, %.035153.i
  br i1 %.not108.i.i, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i16 0, ptr %7, align 2
  %i.hw = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hv ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !106
  %i.hy = icmp eq i8 %i.hx, 45
  %i.hz = sub nuw i64 %.035153.i, %i.hv           ; 2 uses
  br i1 %i.hy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ia = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hw, i64 noundef %i.hz, ptr noundef nonnull align 2 dereferenceable(2) %7)
  br i1 %i.ia, label %.split46, label %.split46.thread

bb.az:                                            ; preds = %bb.ax
  %i.ib = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hw, i64 noundef %i.hz, ptr noundef nonnull align 2 dereferenceable(2) %7)
  br i1 %i.ib, label %.split46, label %.split46.thread

.split46.thread:                                  ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split46:                                         ; preds = %bb.ay, %bb.az
  %i.ic = load i16, ptr %7, align 2, !tbaa !128
  %i.id = sext i16 %i.ic to i32
  %i.ie = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb0EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %9, i32 noundef %i.id)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.ie, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ba:                                            ; preds = %bb.ai
  %i.if = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.ig = icmp eq i16 %i.fn, 0
  %i.ih = zext nneg i8 %i.fq to i16
  %i.ii = icmp eq i8 %i.fq, 0
  %or.cond.i.i93.i = and i1 %i.ig, %i.ii
  br i1 %or.cond.i.i93.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ij = zext i8 %i.fm to i32
  %i.ik = icmp eq i32 %i.fl, %i.ij
  br i1 %i.ik, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.il = add i8 %i.fm, 1                         ; 2 uses
  store i8 %i.il, ptr %i.g, align 2, !tbaa !572
  %i.im = icmp sgt i16 %i.fn, 3276
  br i1 %i.im, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.in = mul i16 %i.fn, 10
  %i.io = add i16 %i.in, %i.ih                    ; 3 uses
  store i16 %i.io, ptr %9, align 2, !tbaa !565
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.promoted.i.i.i71.i185 = phi i16 [ %i.io, %bb.bd ], [ %.promoted.i.i.i71.i184, %bb.ba ] ; 3 uses
  %i.ip = phi i8 [ %i.il, %bb.bd ], [ %i.fm, %bb.ba ]
  %i.iq = phi i16 [ %i.io, %bb.bd ], [ 0, %bb.ba ]
  %.not109.i.i = icmp eq i64 %i.if, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split40.thread.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ir = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.if
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.is, 95
  br i1 %.not110.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.it = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.iu = icmp eq i64 %i.it, %.035153.i
  br i1 %i.iu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iv = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.it
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !106
  %i.ix = add i8 %i.iw, -48
  %i.iy = icmp ult i8 %i.ix, 10
  br i1 %i.iy, label %bb.bi, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.7.i94.i = phi i64 [ %i.if, %bb.bf ], [ %i.it, %bb.bh ] ; 3 uses
  %i.iz = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.iz, label %bb.ai, label %thread-pre-split40.thread.thread, !llvm.loop !2563

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.ja = phi i8 [ %i.hg, %.thread118.i.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.jb = phi i8 [ %i.hh, %.thread118.i.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i16 [ %.promoted.i.i.i71.i181, %.thread118.i.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.jc = phi i8 [ %i.hi, %.thread118.i.i ], [ %i.hm, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hm, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.ho, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.jd = icmp ugt i8 %i.jc, %5
  br i1 %i.jd, label %thread-pre-split40, label %thread-pre-split40.thread

thread-pre-split40:                               ; preds = %.thread120.i.i
  %narrow.i.i84.i = sub nuw i8 %i.jc, %5          ; 4 uses
  store i8 %narrow.i.i84.i, ptr %i.i, align 2, !tbaa !573
  %i.je = zext i8 %narrow.i.i84.i to i64          ; 2 uses
  %xtraiter587 = and i64 %i.je, 1
end_hunk_8
begin_hunk_9_@_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b:bb.a
  br i1 %i.s, label %.lr.ph98, label %.thread88

.lr.ph98:                                         ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
  %i.t = phi i64 [ %i.w, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82 ], [ %i.r, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !106
  switch i8 %i.v, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82: ; preds = %.lr.ph98, %.lr.ph98, %.lr.ph98, %.lr.ph98, %.lr.ph98, %.lr.ph98
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %1
  br i1 %exitcond.not, label %.thread88, label %.lr.ph98, !llvm.loop !2578

bb.e:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.097, 1                     ; 3 uses
  %i.y = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i = xor i16 %i.y, 32766
  %i.z = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.z, %i.d
  br i1 %.not, label %.critedge, label %bb.f, !prof !125

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i16 %i.d, 10
  %i.ab = add i16 %i.aa, %i.y                     ; 2 uses
  store i16 %i.ab, ptr %2, align 2, !tbaa !128
  %.not80 = icmp eq i64 %i.x, %1
  br i1 %.not80, label %.thread88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !106
  %.not81 = icmp eq i8 %i.ad, 95
  br i1 %.not81, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = add i64 %.097, 2                        ; 3 uses
  %i.af = icmp eq i64 %i.ae, %1
  br i1 %i.af, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !106
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.g
  %.7 = phi i64 [ %i.x, %bb.g ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ak = icmp ult i64 %.7, %1
  br i1 %i.ak, label %.lr.ph, label %.thread88, !llvm.loop !2579

.thread88:                                        ; preds = %bb.f, %bb.j, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82, %bb.a, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread86
  %.8 = phi i64 [ %i.k, %.thread86 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82 ], [ %i.r, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ %.064, %bb.a ], [ %.7, %bb.j ], [ %1, %bb.f ]
  %i.al = icmp ugt i64 %.8, %.064
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.i, %bb.h, %.lr.ph98, %bb.d, %.thread84, %.thread86, %.thread88
  %.368 = phi i1 [ false, %.lr.ph98 ], [ false, %.thread84 ], [ false, %bb.d ], [ false, %.thread86 ], [ %i.al, %.thread88 ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.e ]
  ret i1 %.368
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData.236", align 4 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i32 0, ptr %9, align 4, !tbaa !577
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 %4, ptr %i.e, align 4, !tbaa !578
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 5
  store i8 %5, ptr %i.f, align 1, !tbaa !579
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 9 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !580
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.s, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.t, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.r = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.r, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.t = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.t, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2580

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.u = zext i8 %4 to i32
  %i.v = zext i8 %5 to i32
  %i.w = sub nsw i32 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %.lr.ph.i.i
  %.promoted.i.i.i.i176 = phi i32 [ 0, %.lr.ph.i.i ], [ %.promoted.i.i.i.i177, %bb.ad ] ; 4 uses
  %i.x = phi i8 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.ad ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.ad ] ; 6 uses
  %i.y = phi i32 [ 0, %.lr.ph.i.i ], [ %i.db, %bb.ad ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !106  ; 3 uses
  %i.ab = add i8 %i.aa, -48                       ; 3 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i8 %i.aa, 44
  br i1 %i.ad, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ugt i64 %.084130.i.i, 1            ; 2 uses
  %i.af = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ag = icmp ult i64 %i.af, %.035153.i
  br i1 %i.ag, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ah = zext i8 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph133.i.i
  %i.ai = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.au, %bb.o ] ; 2 uses
  %.promoted.i.i.i.i175 = phi i32 [ %.promoted.i.i.i.i176, %.lr.ph133.i.i ], [ %.promoted.i.i.i.i174, %bb.o ] ; 2 uses
  %i.aj = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.av, %bb.o ] ; 3 uses
  %i.ak = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.bd, %bb.o ] ; 5 uses
  %i.al = phi i32 [ %i.y, %.lr.ph133.i.i ], [ %i.be, %bb.o ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.af, %.lr.ph133.i.i ], [ %.2.i.i, %bb.o ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106 ; 3 uses
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ne i8 %i.ak, %5
  %i.ar = trunc nuw i8 %i.aj to i1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 4, !tbaa !581
  %i.as = icmp samesign ugt i8 %i.an, 52
  %i.at = zext i1 %i.as to i8                     ; 2 uses
  store i8 %i.at, ptr %i.k, align 1, !tbaa !582
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i8 [ %i.at, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.av = phi i8 [ 1, %bb.i ], [ %i.aj, %bb.h ]   ; 3 uses
  %i.aw = zext i8 %i.ak to i32
  %i.ax = add nuw nsw i32 %i.aw, %i.ah
  %i.ay = icmp samesign ugt i32 %i.ax, 8
  br i1 %i.ay, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ak, 1                         ; 2 uses
  store i8 %i.az, ptr %i.h, align 1, !tbaa !583
  %i.ba = mul nsw i32 %i.al, 10
  %i.bb = zext nneg i8 %i.ao to i32
  %i.bc = sub nsw i32 %i.ba, %i.bb                ; 3 uses
  store i32 %i.bc, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.k, %bb.j
  %.promoted.i.i.i.i174 = phi i32 [ %i.bc, %bb.k ], [ %.promoted.i.i.i.i175, %bb.j ] ; 3 uses
  %i.bd = phi i8 [ %i.az, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %i.be = phi i32 [ %i.bc, %bb.k ], [ %i.al, %bb.j ]
  %i.bf = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bf, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !106
  %i.bi = icmp eq i8 %i.bh, 95
  br i1 %i.bi, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bj = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, %.035153.i
  br i1 %i.bk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !106
  %i.bn = add i8 %i.bm, -48
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2.i.i = phi i64 [ %i.bj, %bb.n ], [ %i.bf, %bb.l ] ; 3 uses
  %i.bp = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bp, label %bb.g, label %.thread114.i.i, !llvm.loop !2581

bb.p:                                             ; preds = %bb.g
  %i.bq = icmp ugt i64 %.185132.i.i, %i.af
  %or.cond.i.i = or i1 %i.ae, %i.bq
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.o, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, %bb.f
  %i.br = phi i8 [ 0, %bb.f ], [ %i.au, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.au, %bb.o ]
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.av, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.av, %bb.o ]
  %.promoted.i.i.i.i173 = phi i32 [ %.promoted.i.i.i.i176, %bb.f ], [ %.promoted.i.i.i.i174, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i.i174, %bb.o ]
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i32 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2582

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i32 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i32
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !584
  %i.cx = icmp slt i32 %i.y, -214748364
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul nsw i32 %i.y, 10
  %i.cz = sub nsw i32 %i.cy, %i.cs                ; 3 uses
  store i32 %i.cz, ptr %9, align 4, !tbaa !577
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i32 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i32 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2583

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !585
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
  %i.dq = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dp, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod563 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod563)
  %i.dr = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa514 = phi i32 [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dr, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa514, ptr %9, align 4, !tbaa !577
  store i8 %5, ptr %i.h, align 1, !tbaa !583
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.ds = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dt = sdiv i32 %i.ds, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !77

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa514, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dy, ptr %9, align 4, !tbaa !577
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 4 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 1, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i32 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 2 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.ec, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader509, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ee, 504                     ; 3 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dz, %i.ef
  %i.eh = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi451 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ej = mul <4 x i32> %vec.phi451, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !2584

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ej, %i.ei
  %i.el = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader509

.lr.ph.i.i.i.preheader509:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph510 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.el, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %.lr.ph.i.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader509, %.lr.ph.i.i.i
  %i.em = phi i32 [ %i.en, %.lr.ph.i.i.i ], [ %.ph510, %.lr.ph.i.i.i.preheader509 ]
  %.024.i.i.i = phi i8 [ %i.eo, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader509 ]
  %i.en = mul nsw i32 %i.em, 10                   ; 2 uses
  %i.eo = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eo, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2585

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa406 = phi i32 [ %i.el, %middle.block ], [ %i.en, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa406, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ep = phi i32 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.eq = sub nsw i32 0, %i.o
  %i.er = icmp sgt i32 %i.ep, %i.eq
  %i.es = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.es, %i.er
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.et = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.et
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !106
  %i.ew = add i8 %i.ev, -66                       ; 2 uses
  %i.ex = tail call i8 @llvm.fshl.i8(i8 %i.ew, i8 %i.ew, i8 7)
  switch i8 %i.ex, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.ey to i64                ; 5 uses
  %i.ez = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.ez, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fa = zext i8 %4 to i32
  %i.fb = zext i8 %5 to i32
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i32 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fd = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ig, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fe = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ih, %bb.bi ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !106 ; 3 uses
  %i.fh = add i8 %i.fg, -48                       ; 3 uses
  %i.fi = icmp ult i8 %i.fh, 10
  br i1 %i.fi, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = icmp eq i8 %i.fg, 44
  br i1 %i.fj, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fk = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fl = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fm = icmp ult i64 %i.fl, %.035153.i
  br i1 %i.fm, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fn = zext i8 %i.fd to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fo = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.ga, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i32 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fp = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gb, %bb.at ] ; 3 uses
  %i.fq = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 5 uses
  %i.fr = phi i32 [ %i.fe, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fl, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !106 ; 3 uses
  %i.fu = add i8 %i.ft, -48                       ; 2 uses
  %i.fv = icmp ult i8 %i.fu, 10
  br i1 %i.fv, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fw = icmp ne i8 %i.fq, %5
  %i.fx = trunc nuw i8 %i.fp to i1
  %or.cond57 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !581
  %i.fy = icmp samesign ugt i8 %i.ft, 52
  %i.fz = zext i1 %i.fy to i8                     ; 2 uses
  store i8 %i.fz, ptr %i.k, align 1, !tbaa !582
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ga = phi i8 [ %i.fz, %bb.an ], [ %i.fo, %bb.am ] ; 3 uses
  %i.gb = phi i8 [ 1, %bb.an ], [ %i.fp, %bb.am ] ; 3 uses
  %i.gc = zext i8 %i.fq to i32
  %i.gd = add nuw nsw i32 %i.gc, %i.fn
  %i.ge = icmp samesign ugt i32 %i.gd, 8
  br i1 %i.ge, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = add i8 %i.fq, 1                         ; 2 uses
  store i8 %i.gf, ptr %i.h, align 1, !tbaa !583
  %i.gg = mul nsw i32 %i.fr, 10
  %i.gh = zext nneg i8 %i.fu to i32
  %i.gi = add nsw i32 %i.gg, %i.gh                ; 3 uses
  store i32 %i.gi, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i32 [ %i.gi, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gj = phi i8 [ %i.gf, %bb.ap ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.gk = phi i32 [ %i.gi, %bb.ap ], [ %i.fr, %bb.ao ]
  %i.gl = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gl, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !106
  %i.go = icmp eq i8 %i.gn, 95
  br i1 %i.go, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gp = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gq = icmp eq i64 %i.gp, %.035153.i
  br i1 %i.gq, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !106
  %i.gt = add i8 %i.gs, -48
  %i.gu = icmp ult i8 %i.gt, 10
  br i1 %i.gu, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gp, %bb.as ], [ %i.gl, %bb.aq ] ; 3 uses
  %i.gv = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gv, label %bb.al, label %.thread118.i.i, !llvm.loop !2586

bb.au:                                            ; preds = %bb.al
  %i.gw = icmp ugt i64 %.1136.i.i, %i.fl
  %or.cond.i91.i = or i1 %i.fk, %i.gw
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gx = phi i8 [ 0, %bb.ak ], [ %i.ga, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.ga, %bb.at ]
  %i.gy = phi i8 [ 0, %bb.ak ], [ %i.gb, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gb, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i32 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gz = phi i8 [ 0, %bb.ak ], [ %i.gj, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gj, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.fl, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.ha = icmp ugt i64 %.1.lcssa.i.i, %i.fl
  %or.cond119.i.i = or i1 %i.fk, %i.ha
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.hb = phi i8 [ 0, %bb.aj ], [ %i.fo, %bb.au ] ; 2 uses
  %i.hc = phi i8 [ 0, %bb.aj ], [ %i.fp, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i32 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.hd = phi i8 [ 0, %bb.aj ], [ %i.fq, %bb.au ] ; 2 uses
  %i.he = phi i8 [ %i.fg, %bb.aj ], [ %i.ft, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
  switch i8 %i.he, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.av
    i8 69, label %bb.av
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hf = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hg = icmp ult i64 %i.hf, %.035153.i
  br i1 %i.hg, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hh = phi i64 [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !106
  switch i8 %i.hj, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.hk = add nuw i64 %i.hh, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.hk, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !2587

bb.av:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hl = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hl, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hm = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hm, %.035153.i
  br i1 %.not108.i.i, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i16 0, ptr %7, align 2
  %i.hn = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hm ; 3 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !106
  %i.hp = icmp eq i8 %i.ho, 45
  %i.hq = sub nuw i64 %.035153.i, %i.hm           ; 2 uses
  br i1 %i.hp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hr = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hn, i64 noundef %i.hq, ptr noundef nonnull align 2 dereferenceable(2) %7)
  br i1 %i.hr, label %.split46, label %.split46.thread

bb.az:                                            ; preds = %bb.ax
  %i.hs = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hn, i64 noundef %i.hq, ptr noundef nonnull align 2 dereferenceable(2) %7)
  br i1 %i.hs, label %.split46, label %.split46.thread

.split46.thread:                                  ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split46:                                         ; preds = %bb.ay, %bb.az
  %i.ht = load i16, ptr %7, align 2, !tbaa !128
  %i.hu = sext i16 %i.ht to i32
  %i.hv = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb0EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.hu)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.hv, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ba:                                            ; preds = %bb.ai
  %i.hw = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.hx = icmp eq i32 %i.fe, 0
  %i.hy = zext nneg i8 %i.fh to i32
  %i.hz = icmp eq i8 %i.fh, 0
  %or.cond.i.i93.i = and i1 %i.hx, %i.hz
  br i1 %or.cond.i.i93.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ia = zext i8 %i.fd to i32
  %i.ib = icmp eq i32 %i.fc, %i.ia
  br i1 %i.ib, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ic = add i8 %i.fd, 1                         ; 2 uses
  store i8 %i.ic, ptr %i.g, align 2, !tbaa !584
  %i.id = icmp sgt i32 %i.fe, 214748364
  br i1 %i.id, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ie = mul nsw i32 %i.fe, 10
  %i.if = add nsw i32 %i.ie, %i.hy                ; 3 uses
  store i32 %i.if, ptr %9, align 4, !tbaa !577
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.promoted.i.i.i71.i185 = phi i32 [ %i.if, %bb.bd ], [ %.promoted.i.i.i71.i184, %bb.ba ] ; 3 uses
  %i.ig = phi i8 [ %i.ic, %bb.bd ], [ %i.fd, %bb.ba ]
  %i.ih = phi i32 [ %i.if, %bb.bd ], [ 0, %bb.ba ]
  %.not109.i.i = icmp eq i64 %i.hw, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split40.thread.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ii = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hw
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.ij, 95
  br i1 %.not110.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ik = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.il = icmp eq i64 %i.ik, %.035153.i
  br i1 %i.il, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.im = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ik
  %i.in = load i8, ptr %i.im, align 1, !tbaa !106
  %i.io = add i8 %i.in, -48
  %i.ip = icmp ult i8 %i.io, 10
  br i1 %i.ip, label %bb.bi, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.7.i94.i = phi i64 [ %i.hw, %bb.bf ], [ %i.ik, %bb.bh ] ; 3 uses
  %i.iq = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.iq, label %bb.ai, label %thread-pre-split40.thread.thread, !llvm.loop !2588

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.ir = phi i8 [ %i.gx, %.thread118.i.i ], [ %i.hb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.is = phi i8 [ %i.gy, %.thread118.i.i ], [ %i.hc, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hc, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i32 [ %.promoted.i.i.i71.i181, %.thread118.i.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.it = phi i8 [ %i.gz, %.thread118.i.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.iu = icmp ugt i8 %i.it, %5
  br i1 %i.iu, label %thread-pre-split40, label %thread-pre-split40.thread

thread-pre-split40:                               ; preds = %.thread120.i.i
  %narrow.i.i84.i = sub nuw i8 %i.it, %5          ; 4 uses
  store i8 %narrow.i.i84.i, ptr %i.i, align 2, !tbaa !585
  %i.iv = zext i8 %narrow.i.i84.i to i64          ; 2 uses
  %xtraiter564 = and i64 %i.iv, 1
end_hunk_9
begin_hunk_10_@_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  call void @_ZdlPv(ptr noundef %i.lo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.lq = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.lq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.by

bb.bv:                                            ; preds = %.noexc.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.lk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.lt, %bb.bv ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.lj, %.body ] ; 2 uses
  %i.lu = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.ki
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split: ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.sink = phi ptr [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.lx, %bb.bw ]
  %.pn19.ph = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.lw, %bb.bw ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn19 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.lw, %bb.bw ], [ %.pn19.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn19

bb.bx:                                            ; preds = %.split46, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  %i.ma = load i32, ptr %9, align 4, !tbaa !577
  store i32 %i.ma, ptr %2, align 4, !tbaa !89
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.0.i43 = phi i1 [ true, %bb.bx ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret i1 %.0.i43
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData.237", align 8 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i64 0, ptr %9, align 8, !tbaa !588
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 %4, ptr %i.e, align 8, !tbaa !589
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 %5, ptr %i.f, align 1, !tbaa !590
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 11 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 13 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !591
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.r, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.s, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.q = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.q, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.s = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.s, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2600

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.t = zext i8 %4 to i32
  %i.u = zext i8 %5 to i32
  %i.v = sub nsw i32 %i.t, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %.lr.ph.i.i
  %.promoted.i.i.i.i176 = phi i64 [ 0, %.lr.ph.i.i ], [ %.promoted.i.i.i.i177, %bb.ad ] ; 4 uses
  %i.w = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.ad ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.ad ] ; 6 uses
  %i.x = phi i64 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.ad ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !106   ; 3 uses
  %i.aa = add i8 %i.z, -48                        ; 3 uses
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i8 %i.z, 44
  br i1 %i.ac, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp ugt i64 %.084130.i.i, 1            ; 2 uses
  %i.ae = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.af = icmp ult i64 %i.ae, %.035153.i
  br i1 %i.af, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ag = zext i8 %i.w to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph133.i.i
  %i.ah = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.at, %bb.o ] ; 2 uses
  %.promoted.i.i.i.i175 = phi i64 [ %.promoted.i.i.i.i176, %.lr.ph133.i.i ], [ %.promoted.i.i.i.i174, %bb.o ] ; 2 uses
  %i.ai = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.au, %bb.o ] ; 3 uses
  %i.aj = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.bc, %bb.o ] ; 5 uses
  %i.ak = phi i64 [ %i.x, %.lr.ph133.i.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.ae, %.lr.ph133.i.i ], [ %.2.i.i, %bb.o ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !106 ; 3 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %i.ao = icmp ult i8 %i.an, 10
  br i1 %i.ao, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp ne i8 %i.aj, %5
  %i.aq = trunc nuw i8 %i.ai to i1
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 4, !tbaa !592
  %i.ar = icmp samesign ugt i8 %i.am, 52
  %i.as = zext i1 %i.ar to i8                     ; 2 uses
  store i8 %i.as, ptr %i.k, align 1, !tbaa !593
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = phi i8 [ %i.as, %bb.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.au = phi i8 [ 1, %bb.i ], [ %i.ai, %bb.h ]   ; 3 uses
  %i.av = zext i8 %i.aj to i32
  %i.aw = add nuw nsw i32 %i.av, %i.ag
  %i.ax = icmp samesign ugt i32 %i.aw, 17
  br i1 %i.ax, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = add i8 %i.aj, 1                         ; 2 uses
  store i8 %i.ay, ptr %i.h, align 1, !tbaa !594
  %i.az = mul nsw i64 %i.ak, 10
  %i.ba = zext nneg i8 %i.an to i64
  %i.bb = sub nsw i64 %i.az, %i.ba                ; 3 uses
  store i64 %i.bb, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.k, %bb.j
  %.promoted.i.i.i.i174 = phi i64 [ %i.bb, %bb.k ], [ %.promoted.i.i.i.i175, %bb.j ] ; 3 uses
  %i.bc = phi i8 [ %i.ay, %bb.k ], [ %i.aj, %bb.j ] ; 3 uses
  %i.bd = phi i64 [ %i.bb, %bb.k ], [ %i.ak, %bb.j ]
  %i.be = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.be, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !106
  %i.bh = icmp eq i8 %i.bg, 95
  br i1 %i.bh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bi = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, %.035153.i
  br i1 %i.bj, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bi
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !106
  %i.bm = add i8 %i.bl, -48
  %i.bn = icmp ult i8 %i.bm, 10
  br i1 %i.bn, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2.i.i = phi i64 [ %i.bi, %bb.n ], [ %i.be, %bb.l ] ; 3 uses
  %i.bo = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bo, label %bb.g, label %.thread114.i.i, !llvm.loop !2601

bb.p:                                             ; preds = %bb.g
  %i.bp = icmp ugt i64 %.185132.i.i, %i.ae
  %or.cond.i.i = or i1 %i.ad, %i.bp
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.o, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, %bb.f
  %i.bq = phi i8 [ 0, %bb.f ], [ %i.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.at, %bb.o ]
  %i.br = phi i8 [ 0, %bb.f ], [ %i.au, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.au, %bb.o ]
  %.promoted.i.i.i.i173 = phi i64 [ %.promoted.i.i.i.i176, %bb.f ], [ %.promoted.i.i.i.i174, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i.i174, %bb.o ]
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.bc, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bc, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.ae, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bt = icmp ugt i64 %.185.lcssa.i.i, %i.ae
  %or.cond115.i.i = or i1 %i.ad, %i.bt
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ah, %bb.p ]   ; 2 uses
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i64 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %i.bx = phi i8 [ %i.z, %bb.e ], [ %i.am, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.by = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bz = icmp ult i64 %i.by, %.035153.i
  br i1 %i.bz, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.ca = phi i64 [ %i.cd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !106
  switch i8 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cd = add nuw i64 %i.ca, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2602

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.ce = icmp eq i64 %.4.i.i, 1
  br i1 %i.ce, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cf, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cf ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !106
  %i.ci = icmp eq i8 %i.ch, 45
  %i.cj = sub nuw i64 %.035153.i, %i.cf           ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.ck, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cl, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cm = load i16, ptr %8, align 2, !tbaa !128
  %i.cn = sext i16 %i.cm to i32
  %i.co = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.co, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cp = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cq = icmp eq i64 %i.x, 0
  %i.cr = icmp eq i8 %i.aa, 0
  %or.cond.i.i.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = zext i8 %i.w to i32
  %i.ct = icmp eq i32 %i.v, %i.cs
  br i1 %i.ct, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add i8 %i.w, 1                          ; 2 uses
  store i8 %i.cu, ptr %i.g, align 2, !tbaa !595
  %i.cv = icmp slt i64 %i.x, -922337203685477580
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = mul nsw i64 %i.x, 10
  %i.cx = zext nneg i8 %i.aa to i64
  %i.cy = sub nsw i64 %i.cw, %i.cx                ; 3 uses
  store i64 %i.cy, ptr %9, align 8, !tbaa !588
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i64 [ %i.cy, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.cz = phi i8 [ %i.cu, %bb.y ], [ %i.w, %bb.v ]
  %i.da = phi i64 [ %i.cy, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cp, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cp
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !106
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cp, %bb.aa ], [ %i.dd, %bb.ac ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2603

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %5
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !596
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod540 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod540)
  %i.dq = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa491 = phi i64 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa491, ptr %9, align 8, !tbaa !588
  store i8 %5, ptr %i.h, align 1, !tbaa !594
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i64 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !79

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa491, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond55 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dx = add nsw i64 %i.du, -1                   ; 2 uses
  store i64 %i.dx, ptr %9, align 8, !tbaa !588
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dy = phi i8 [ %i.dt, %bb.ae ], [ %i.dt, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 1, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i64 [ %i.dx, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %5
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = sub nuw i8 %5, %i.dy
  %xtraiter541 = and i8 %i.ea, 7                  ; 2 uses
  %lcmp.mod542.not = icmp eq i8 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.eb = phi i64 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ed, %.lr.ph.i.i.i.prol ], [ %i.dy, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ec = mul nsw i64 %i.eb, 10                   ; 3 uses
  %i.ed = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter541
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2604

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa490.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.unr543 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.prol ]
  %i.ee = sub i8 %i.dy, %5
  %i.ef = icmp ugt i8 %i.ee, -8
  br i1 %i.ef, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.eg = phi i64 [ %i.eh, %.lr.ph.i.i.i ], [ %.unr543, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.ei, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eh = mul nsw i64 %i.eg, 100000000            ; 2 uses
  %i.ei = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.ei, %5
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa490 = phi i64 [ %.lcssa490.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa490, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ej = phi i64 [ %.lcssa490, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ek = sub nsw i64 0, %i.n
  %i.el = icmp sgt i64 %i.ej, %i.ek
  %i.em = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.em, %i.el
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.en = icmp eq i8 %i.q, 48
  %or.cond.i = and i1 %.not38.i, %i.en
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !106
  %i.eq = add i8 %i.ep, -66                       ; 2 uses
  %i.er = tail call i8 @llvm.fshl.i8(i8 %i.eq, i8 %i.eq, i8 7)
  switch i8 %i.er, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.es = icmp eq i8 %i.q, 43
  %.088.i.i = zext i1 %i.es to i64                ; 5 uses
  %i.et = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.et, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.eu = zext i8 %4 to i32
  %i.ev = zext i8 %5 to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i64 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.ex = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ia, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.ey = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ib, %bb.bi ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !106 ; 3 uses
  %i.fb = add i8 %i.fa, -48                       ; 3 uses
  %i.fc = icmp ult i8 %i.fb, 10
  br i1 %i.fc, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = icmp eq i8 %i.fa, 44
  br i1 %i.fd, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fe = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.ff = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fg = icmp ult i64 %i.ff, %.035153.i
  br i1 %i.fg, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fh = zext i8 %i.ex to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fi = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fu, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i64 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fj = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fv, %bb.at ] ; 3 uses
  %i.fk = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gd, %bb.at ] ; 5 uses
  %i.fl = phi i64 [ %i.ey, %.lr.ph137.i.i ], [ %i.ge, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.ff, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !106 ; 3 uses
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 10
  br i1 %i.fp, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fq = icmp ne i8 %i.fk, %5
  %i.fr = trunc nuw i8 %i.fj to i1
  %or.cond57 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !592
  %i.fs = icmp samesign ugt i8 %i.fn, 52
  %i.ft = zext i1 %i.fs to i8                     ; 2 uses
  store i8 %i.ft, ptr %i.k, align 1, !tbaa !593
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fu = phi i8 [ %i.ft, %bb.an ], [ %i.fi, %bb.am ] ; 3 uses
  %i.fv = phi i8 [ 1, %bb.an ], [ %i.fj, %bb.am ] ; 3 uses
  %i.fw = zext i8 %i.fk to i32
  %i.fx = add nuw nsw i32 %i.fw, %i.fh
  %i.fy = icmp samesign ugt i32 %i.fx, 17
  br i1 %i.fy, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = add i8 %i.fk, 1                         ; 2 uses
  store i8 %i.fz, ptr %i.h, align 1, !tbaa !594
  %i.ga = mul nsw i64 %i.fl, 10
  %i.gb = zext nneg i8 %i.fo to i64
  %i.gc = add nsw i64 %i.ga, %i.gb                ; 3 uses
  store i64 %i.gc, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i64 [ %i.gc, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gd = phi i8 [ %i.fz, %bb.ap ], [ %i.fk, %bb.ao ] ; 3 uses
  %i.ge = phi i64 [ %i.gc, %bb.ap ], [ %i.fl, %bb.ao ]
  %i.gf = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gf, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !106
  %i.gi = icmp eq i8 %i.gh, 95
  br i1 %i.gi, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gj = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gk = icmp eq i64 %i.gj, %.035153.i
  br i1 %i.gk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gj
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !106
  %i.gn = add i8 %i.gm, -48
  %i.go = icmp ult i8 %i.gn, 10
  br i1 %i.go, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gj, %bb.as ], [ %i.gf, %bb.aq ] ; 3 uses
  %i.gp = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gp, label %bb.al, label %.thread118.i.i, !llvm.loop !2605

bb.au:                                            ; preds = %bb.al
  %i.gq = icmp ugt i64 %.1136.i.i, %i.ff
  %or.cond.i91.i = or i1 %i.fe, %i.gq
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gr = phi i8 [ 0, %bb.ak ], [ %i.fu, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fu, %bb.at ]
  %i.gs = phi i8 [ 0, %bb.ak ], [ %i.fv, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fv, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i64 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gt = phi i8 [ 0, %bb.ak ], [ %i.gd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gd, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.ff, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.gu = icmp ugt i64 %.1.lcssa.i.i, %i.ff
  %or.cond119.i.i = or i1 %i.fe, %i.gu
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.gv = phi i8 [ 0, %bb.aj ], [ %i.fi, %bb.au ] ; 2 uses
  %i.gw = phi i8 [ 0, %bb.aj ], [ %i.fj, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i64 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.gx = phi i8 [ 0, %bb.aj ], [ %i.fk, %bb.au ] ; 2 uses
  %i.gy = phi i8 [ %i.fa, %bb.aj ], [ %i.fn, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
  switch i8 %i.gy, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.av
    i8 69, label %bb.av
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.gz = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.ha = icmp ult i64 %i.gz, %.035153.i
  br i1 %i.ha, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hb = phi i64 [ %i.he, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.gz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !106
  switch i8 %i.hd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.he = add nuw i64 %i.hb, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.he, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !2606

bb.av:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hf = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hg = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hg, %.035153.i
  br i1 %.not108.i.i, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i16 0, ptr %7, align 2
  %i.hh = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hg ; 3 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !106
  %i.hj = icmp eq i8 %i.hi, 45
  %i.hk = sub nuw i64 %.035153.i, %i.hg           ; 2 uses
  br i1 %i.hj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hh, i64 noundef %i.hk, ptr noundef nonnull align 2 dereferenceable(2) %7)
  br i1 %i.hl, label %.split46, label %.split46.thread

bb.az:                                            ; preds = %bb.ax
  %i.hm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hh, i64 noundef %i.hk, ptr noundef nonnull align 2 dereferenceable(2) %7)
  br i1 %i.hm, label %.split46, label %.split46.thread

.split46.thread:                                  ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split46:                                         ; preds = %bb.ay, %bb.az
  %i.hn = load i16, ptr %7, align 2, !tbaa !128
  %i.ho = sext i16 %i.hn to i32
  %i.hp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.hp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ba:                                            ; preds = %bb.ai
  %i.hq = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.hr = icmp eq i64 %i.ey, 0
  %i.hs = icmp eq i8 %i.fb, 0
  %or.cond.i.i93.i = and i1 %i.hr, %i.hs
  br i1 %or.cond.i.i93.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ht = zext i8 %i.ex to i32
  %i.hu = icmp eq i32 %i.ew, %i.ht
  br i1 %i.hu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hv = add i8 %i.ex, 1                         ; 2 uses
  store i8 %i.hv, ptr %i.g, align 2, !tbaa !595
  %i.hw = icmp sgt i64 %i.ey, 922337203685477580
  br i1 %i.hw, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hx = mul nsw i64 %i.ey, 10
  %i.hy = zext nneg i8 %i.fb to i64
  %i.hz = add nsw i64 %i.hx, %i.hy                ; 3 uses
  store i64 %i.hz, ptr %9, align 8, !tbaa !588
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.promoted.i.i.i71.i185 = phi i64 [ %i.hz, %bb.bd ], [ %.promoted.i.i.i71.i184, %bb.ba ] ; 3 uses
  %i.ia = phi i8 [ %i.hv, %bb.bd ], [ %i.ex, %bb.ba ]
  %i.ib = phi i64 [ %i.hz, %bb.bd ], [ 0, %bb.ba ]
  %.not109.i.i = icmp eq i64 %i.hq, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split40.thread.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ic = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hq
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.id, 95
  br i1 %.not110.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ie = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.if = icmp eq i64 %i.ie, %.035153.i
  br i1 %i.if, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ig = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ie
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !106
  %i.ii = add i8 %i.ih, -48
  %i.ij = icmp ult i8 %i.ii, 10
  br i1 %i.ij, label %bb.bi, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.7.i94.i = phi i64 [ %i.hq, %bb.bf ], [ %i.ie, %bb.bh ] ; 3 uses
  %i.ik = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.ik, label %bb.ai, label %thread-pre-split40.thread.thread, !llvm.loop !2607

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.il = phi i8 [ %i.gr, %.thread118.i.i ], [ %i.gv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.gv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.im = phi i8 [ %i.gs, %.thread118.i.i ], [ %i.gw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.gw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i64 [ %.promoted.i.i.i71.i181, %.thread118.i.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i180, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.in = phi i8 [ %i.gt, %.thread118.i.i ], [ %i.gx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.gx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.gz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.io = icmp ugt i8 %i.in, %5
  br i1 %i.io, label %thread-pre-split40, label %thread-pre-split40.thread

thread-pre-split40:                               ; preds = %.thread120.i.i
  %narrow.i.i84.i = sub nuw i8 %i.in, %5          ; 4 uses
  store i8 %narrow.i.i84.i, ptr %i.i, align 2, !tbaa !596
  %i.ip = zext i8 %narrow.i.i84.i to i64          ; 2 uses
  %xtraiter544 = and i64 %i.ip, 1
end_hunk_10
begin_hunk_11_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.ld = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.jx
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ld) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.lf = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.lf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.by

bb.bv:                                            ; preds = %.noexc.i.i
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.kz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.li, %bb.bv ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.ky, %.body ] ; 2 uses
  %i.lj = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.jx
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split: ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.sink = phi ptr [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.lm, %bb.bw ]
  %.pn19.ph = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ll, %bb.bw ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn19 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ll, %bb.bw ], [ %.pn19.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn19

bb.bx:                                            ; preds = %.split46, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  %i.lp = load i64, ptr %9, align 8, !tbaa !588
  store i64 %i.lp, ptr %2, align 8, !tbaa !97
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.0.i43 = phi i1 [ true, %bb.bx ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret i1 %.0.i43
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastINS_9hugeint_tELc44EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %14 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %15 = alloca %"struct.duckdb::DecimalCastData.238", align 8 ; 28 uses
  %16 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 %4, ptr %i.e, align 8, !tbaa !599
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 17 ; 3 uses
  store i8 %5, ptr %i.f, align 1, !tbaa !600
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 18 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 19 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 21 ; 2 uses
  %i.k = zext i8 %4 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.n = load <2 x i64>, ptr %i.l, align 16, !tbaa !97
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !97
  %cond81.i = icmp eq i64 %1, 0
  br i1 %cond81.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %bb.bh

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.03483.i = phi ptr [ %i.q, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.03582.i = phi i64 [ %i.r, %bb.b ], [ %1, %bb.a ] ; 34 uses
  %i.p = load i8, ptr %.03483.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.p, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.r = add i64 %.03582.i, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.r, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2618

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.03582.i, 1
  br i1 %.not.i, label %.thread115.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.z
  %.084126.i.i = phi i64 [ %.7.i.i, %bb.z ], [ 1, %bb.c ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.084126.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !106   ; 3 uses
  %i.u = add i8 %i.t, -48                         ; 2 uses
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.u, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp eq i8 %i.t, 44
  br i1 %i.w, label %bb.e, label %.thread110.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i64 %.084126.i.i, 1             ; 2 uses
  %i.y = add nuw i64 %.084126.i.i, 1              ; 5 uses
  %i.z = icmp ult i64 %i.y, %.03582.i
  br i1 %i.z, label %.lr.ph128.i.i, label %.thread113.i.i

.lr.ph128.i.i:                                    ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph128.i.i
  %.185127.i.i = phi i64 [ %i.y, %.lr.ph128.i.i ], [ %.2.i.i, %bb.n ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.185127.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !106 ; 3 uses
  %i.ad = add i8 %i.ac, -48                       ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 10
  br i1 %i.ae, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.h, align 1, !tbaa !601  ; 3 uses
  %i.ag = load i8, ptr %i.f, align 1, !tbaa !600
  %i.ah = icmp ne i8 %i.af, %i.ag
  %i.ai = load i8, ptr %i.i, align 4, !range !169
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.i, align 4, !tbaa !602
  %i.ak = icmp samesign ugt i8 %i.ac, 52
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %i.j, align 1, !tbaa !603
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = load i8, ptr %i.g, align 2, !tbaa !604
  %i.an = zext i8 %i.am to i32
  %i.ao = zext i8 %i.af to i32
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i32 %i.ap, 37
  br i1 %i.aq, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add i8 %i.af, 1
  store i8 %i.ar, ptr %i.h, align 1, !tbaa !601
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 10)
  %i.as = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(16) %12) ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0
  store i64 %i.at, ptr %11, align 8
  %i.au = extractvalue { i64, i64 } %i.as, 1
  store i64 %i.au, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.av = zext nneg i8 %i.ad to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef %i.av)
  %i.aw = call { i64, i64 } @_ZNK6duckdb9hugeint_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  store i64 %i.ax, ptr %15, align 8, !tbaa !97
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.j, %bb.i
  %i.az = add nuw i64 %.185127.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.az, %.03582.i
  br i1 %.not103.i.i, label %.thread113.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !106
  %i.bc = icmp eq i8 %i.bb, 95
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = add i64 %.185127.i.i, 2                 ; 3 uses
  %i.be = icmp eq i64 %i.bd, %.03582.i
  br i1 %i.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bd
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !106
  %i.bh = add i8 %i.bg, -48
  %i.bi = icmp ult i8 %i.bh, 10
  br i1 %i.bi, label %bb.n, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.k
  %.2.i.i = phi i64 [ %i.bd, %bb.m ], [ %i.az, %bb.k ] ; 3 uses
  %i.bj = icmp ult i64 %.2.i.i, %.03582.i
  br i1 %i.bj, label %bb.f, label %.thread113.i.i, !llvm.loop !2619

bb.o:                                             ; preds = %bb.f
  %i.bk = icmp ugt i64 %.185127.i.i, %i.y
  %or.cond.i.i = or i1 %i.x, %i.bk
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread113.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, %bb.e
  %.185.lcssa.i.i = phi i64 [ %i.y, %bb.e ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.n ] ; 2 uses
  %i.bl = icmp ugt i64 %.185.lcssa.i.i, %i.y
  %or.cond114.i.i = or i1 %i.x, %i.bl
  br i1 %or.cond114.i.i, label %.thread115.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.o, %bb.d
  %i.bm = phi i8 [ %i.t, %bb.d ], [ %i.ac, %bb.o ]
  %.4.i.i = phi i64 [ %.084126.i.i, %bb.d ], [ %.185127.i.i, %bb.o ] ; 3 uses
  switch i8 %i.bm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bn = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %.03582.i
  br i1 %i.bo, label %.lr.ph130.i.i, label %.thread115.i.i

.lr.ph130.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.bp = phi i64 [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !106
  switch i8 %i.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i
  %i.bs = add nuw i64 %i.bp, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bs, %.03582.i
  br i1 %exitcond.not.i.i, label %.thread115.i.i, label %.lr.ph130.i.i, !llvm.loop !2620

bb.p:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.bt = icmp eq i64 %.4.i.i, 1
  br i1 %i.bt, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.bu, %.03582.i
  br i1 %.not104.i.i, label %bb.r, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store i16 0, ptr %14, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bu ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !106
  %i.bx = icmp eq i8 %i.bw, 45
  %i.by = sub nuw i64 %.03582.i, %i.bu            ; 2 uses
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bv, i64 noundef %i.by, ptr noundef nonnull align 2 dereferenceable(2) %14)
  br i1 %i.bz, label %.split45, label %.split45.thread

bb.t:                                             ; preds = %bb.r
  %i.ca = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bv, i64 noundef %i.by, ptr noundef nonnull align 2 dereferenceable(2) %14)
  br i1 %i.ca, label %.split45, label %.split45.thread

.split45.thread:                                  ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split45:                                         ; preds = %bb.s, %bb.t
  %i.cb = load i16, ptr %14, align 2, !tbaa !128
  %i.cc = sext i16 %i.cb to i32
  %i.cd = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br i1 %i.cd, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ce = add nuw i64 %.084126.i.i, 1             ; 3 uses
  %i.cf = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 noundef zeroext %i.u)
  br i1 %i.cf, label %bb.v, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.u
  %.not105.i.i = icmp eq i64 %i.ce, %.03582.i
  br i1 %.not105.i.i, label %.thread115.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.ch, 95
  br i1 %.not106.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ci = add i64 %.084126.i.i, 2                 ; 3 uses
  %i.cj = icmp eq i64 %i.ci, %.03582.i
  br i1 %i.cj, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ci
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !106
  %i.cm = add i8 %i.cl, -48
  %i.cn = icmp ult i8 %i.cm, 10
  br i1 %i.cn, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w
  %.7.i.i = phi i64 [ %i.ce, %bb.w ], [ %i.ci, %bb.y ] ; 3 uses
  %i.co = icmp ult i64 %.7.i.i, %.03582.i
  br i1 %i.co, label %.lr.ph.i.i, label %.thread115.i.i, !llvm.loop !2621

.thread115.i.i:                                   ; preds = %bb.z, %bb.v, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %.thread113.i.i
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread113.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.03582.i, %bb.v ], [ %.7.i.i, %bb.z ]
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15)
  %i.cq = icmp ugt i64 %.8.i.i, 1
  %or.cond61 = and i1 %i.cp, %i.cq
  br i1 %or.cond61, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread115.i.i.thread:                            ; preds = %bb.c
  %i.cr = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.03582.i, 1
  %i.cs = icmp eq i8 %i.p, 48
  %or.cond.i = and i1 %.not38.i, %i.cs
  br i1 %or.cond.i, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106
  %i.cv = add i8 %i.cu, -66                       ; 2 uses
  %i.cw = call i8 @llvm.fshl.i8(i8 %i.cv, i8 %i.cv, i8 7)
  switch i8 %i.cw, label %bb.ag [
    i8 27, label %bb.ac
    i8 11, label %bb.ac
    i8 16, label %bb.ae
    i8 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.cx = icmp ugt i64 %.03582.i, 2
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ae:                                            ; preds = %bb.ab, %bb.ab
  %i.cz = icmp ugt i64 %.03582.i, 2
  br i1 %i.cz, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ag:                                            ; preds = %bb.ab, %bb.aa
  %i.db = icmp eq i8 %i.p, 43
  %.088.i.i = zext i1 %i.db to i64                ; 5 uses
  %i.dc = icmp ugt i64 %.03582.i, %.088.i.i
  br i1 %i.dc, label %.lr.ph.i40.i, label %.thread119.i.i.thread

.lr.ph.i40.i:                                     ; preds = %bb.ag, %bb.bd
  %.0130.i.i = phi i64 [ %.7.i47.i, %bb.bd ], [ %.088.i.i, %bb.ag ] ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.0130.i.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !106 ; 3 uses
  %i.df = add i8 %i.de, -48                       ; 2 uses
  %i.dg = icmp ult i8 %i.df, 10
  br i1 %i.dg, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i40.i
  %i.dh = icmp eq i8 %i.de, 44
  br i1 %i.dh, label %bb.ai, label %.thread114.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.di = icmp ugt i64 %.0130.i.i, %.088.i.i      ; 2 uses
  %i.dj = add nuw i64 %.0130.i.i, 1               ; 5 uses
  %i.dk = icmp ult i64 %i.dj, %.03582.i
  br i1 %i.dk, label %.lr.ph132.i.i, label %.thread117.i.i

.lr.ph132.i.i:                                    ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %.lr.ph132.i.i
  %.1131.i.i = phi i64 [ %i.dj, %.lr.ph132.i.i ], [ %.2.i46.i, %bb.ar ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.1131.i.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !106 ; 3 uses
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dq = load i8, ptr %i.h, align 1, !tbaa !601  ; 3 uses
  %i.dr = load i8, ptr %i.f, align 1, !tbaa !600
  %i.ds = icmp ne i8 %i.dq, %i.dr
  %i.dt = load i8, ptr %i.i, align 4, !range !169
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond63 = select i1 %i.ds, i1 true, i1 %i.du
  br i1 %or.cond63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.i, align 4, !tbaa !602
  %i.dv = icmp samesign ugt i8 %i.dn, 52
  %i.dw = zext i1 %i.dv to i8
  store i8 %i.dw, ptr %i.j, align 1, !tbaa !603
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dx = load i8, ptr %i.g, align 2, !tbaa !604
  %i.dy = zext i8 %i.dx to i32
  %i.dz = zext i8 %i.dq to i32
  %i.ea = add nuw nsw i32 %i.dy, %i.dz
  %i.eb = icmp samesign ugt i32 %i.ea, 37
  br i1 %i.eb, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = add i8 %i.dq, 1
  store i8 %i.ec, ptr %i.h, align 1, !tbaa !601
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 10)
  %i.ed = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  store i64 %i.ee, ptr %7, align 8
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  store i64 %i.ef, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.eg = zext nneg i8 %i.do to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.eg)
  %i.eh = call { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) ; 2 uses
  %i.ei = extractvalue { i64, i64 } %i.eh, 0
  %i.ej = extractvalue { i64, i64 } %i.eh, 1
  store i64 %i.ei, ptr %15, align 8, !tbaa !97
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i44.i, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.an, %bb.am
  %i.ek = add nuw i64 %.1131.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.ek, %.03582.i
  br i1 %.not107.i.i, label %.thread117.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !106
  %i.en = icmp eq i8 %i.em, 95
  br i1 %i.en, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.eo = add i64 %.1131.i.i, 2                   ; 3 uses
  %i.ep = icmp eq i64 %i.eo, %.03582.i
  br i1 %i.ep, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !106
  %i.es = add i8 %i.er, -48
  %i.et = icmp ult i8 %i.es, 10
  br i1 %i.et, label %bb.ar, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.2.i46.i = phi i64 [ %i.eo, %bb.aq ], [ %i.ek, %bb.ao ] ; 3 uses
  %i.eu = icmp ult i64 %.2.i46.i, %.03582.i
  br i1 %i.eu, label %bb.aj, label %.thread117.i.i, !llvm.loop !2622

bb.as:                                            ; preds = %bb.aj
  %i.ev = icmp ugt i64 %.1131.i.i, %i.dj
  %or.cond.i45.i = or i1 %i.di, %i.ev
  br i1 %or.cond.i45.i, label %.thread114.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread117.i.i:                                   ; preds = %bb.ar, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, %bb.ai
  %.1.lcssa.i.i = phi i64 [ %i.dj, %bb.ai ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i46.i, %bb.ar ] ; 2 uses
  %i.ew = icmp ugt i64 %.1.lcssa.i.i, %i.dj
  %or.cond118.i.i = or i1 %i.di, %i.ew
  br i1 %or.cond118.i.i, label %.thread119.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.as, %bb.ah
  %i.ex = phi i8 [ %i.de, %bb.ah ], [ %i.dn, %bb.as ]
  %.4.i41.i = phi i64 [ %.0130.i.i, %bb.ah ], [ %.1131.i.i, %bb.as ] ; 3 uses
  switch i8 %i.ex, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 101, label %bb.at
    i8 69, label %bb.at
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i: ; preds = %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i
  %i.ey = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %i.ez = icmp ult i64 %i.ey, %.03582.i
  br i1 %i.ez, label %.lr.ph134.i.i, label %.thread119.i.i

.lr.ph134.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.fa = phi i64 [ %i.fd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.ey, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !106
  switch i8 %i.fc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i
  %i.fd = add nuw i64 %i.fa, 1                    ; 2 uses
  %exitcond.not.i43.i = icmp eq i64 %i.fd, %.03582.i
  br i1 %exitcond.not.i43.i, label %.thread119.i.i, label %.lr.ph134.i.i, !llvm.loop !2623

bb.at:                                            ; preds = %.thread114.i.i, %.thread114.i.i
  %i.fe = icmp eq i64 %.4.i41.i, %.088.i.i
  br i1 %i.fe, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.ff, %.03582.i
  br i1 %.not108.i.i, label %bb.av, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i16 0, ptr %10, align 2
  %i.fg = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ff ; 3 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !106
  %i.fi = icmp eq i8 %i.fh, 45
  %i.fj = sub nuw i64 %.03582.i, %i.ff            ; 2 uses
  br i1 %i.fi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fk = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fg, i64 noundef %i.fj, ptr noundef nonnull align 2 dereferenceable(2) %10)
  br i1 %i.fk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread47

bb.ax:                                            ; preds = %bb.av
  %i.fl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fg, i64 noundef %i.fj, ptr noundef nonnull align 2 dereferenceable(2) %10)
  br i1 %i.fl, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread47

bb.ay:                                            ; preds = %.lr.ph.i40.i
  %i.fm = add nuw i64 %.0130.i.i, 1               ; 3 uses
  %i.fn = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 noundef zeroext %i.df)
  br i1 %i.fn, label %bb.az, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.az:                                            ; preds = %bb.ay
  %.not109.i.i = icmp eq i64 %i.fm, %.03582.i
  br i1 %.not109.i.i, label %.thread119.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fo = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !106
  %.not110.i.i = icmp eq i8 %i.fp, 95
  br i1 %.not110.i.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fq = add i64 %.0130.i.i, 2                   ; 3 uses
  %i.fr = icmp eq i64 %i.fq, %.03582.i
  br i1 %i.fr, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fs = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !106
  %i.fu = add i8 %i.ft, -48
  %i.fv = icmp ult i8 %i.fu, 10
  br i1 %i.fv, label %bb.bd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.7.i47.i = phi i64 [ %i.fm, %bb.ba ], [ %i.fq, %bb.bc ] ; 3 uses
  %i.fw = icmp ult i64 %.7.i47.i, %.03582.i
  br i1 %i.fw, label %.lr.ph.i40.i, label %.thread119.i.i, !llvm.loop !2624

.thread119.i.i:                                   ; preds = %bb.bd, %bb.az, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %.thread117.i.i
  %.8.i39.i = phi i64 [ %.1.lcssa.i.i, %.thread117.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.ey, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ], [ %.03582.i, %bb.az ], [ %.7.i47.i, %bb.bd ]
  %i.fx = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15)
  %i.fy = icmp ugt i64 %.8.i39.i, %.088.i.i
  %or.cond64 = and i1 %i.fx, %i.fy
  br i1 %or.cond64, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread119.i.i.thread:                            ; preds = %bb.ag
  %i.fz = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %15) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread47: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit: ; preds = %bb.aw, %bb.ax
  %i.ga = load i16, ptr %10, align 2, !tbaa !128
  %i.gb = sext i16 %i.ga to i32
  %i.gc = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %i.gc, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.x, %bb.u, %bb.y, %bb.l, %bb.m, %.lr.ph130.i.i, %bb.bb, %bb.ay, %bb.bc, %bb.ap, %bb.aq, %.lr.ph134.i.i, %.thread119.i.i.thread, %.thread115.i.i.thread, %.thread114.i.i, %bb.at, %bb.as, %bb.au, %.thread119.i.i, %bb.ae, %bb.ac, %.thread113.i.i, %.thread110.i.i, %bb.p, %bb.o, %bb.q, %.thread115.i.i, %bb.ad, %.thread117.i.i, %bb.af, %.split45.thread, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread47, %.split45, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.gd = trunc i64 %1 to i32                     ; 4 uses
  %i.ge = icmp ult i32 %i.gd, 13
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 8 uses
  br i1 %i.ge, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gf, i8 0, i64 12, i1 false)
  %i.gg = icmp eq i32 %i.gd, 0
  br i1 %i.gg, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = and i64 %1, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gf, ptr align 1 %0, i64 %i.gh, i1 false)
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  %i.gi = load i32, ptr %0, align 1
  store i32 %i.gi, ptr %i.gf, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %0, ptr %i.gj, align 8, !tbaa !106
end_hunk_11
