Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_main_settings?download=true
inline.NumInlined: 2875
inline.NumDeleted: 1096
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.em = icmp sgt i64 %.1190.i, 19
  br i1 %i.em, label %.preheader288, label %bb.ay

.preheader288:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i351 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i350 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i351, align 1, !tbaa !245, !noalias !641 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader288
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i350, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i351, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader288, !llvm.loop !638

.critedge.i:                                      ; preds = %.preheader288, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i350, %.preheader288 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i353 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i352 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i352, align 1, !tbaa !245, !noalias !641 ; 2 uses
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
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !245, !noalias !641
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i352, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !245, !noalias !641
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !639

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
  %i.fq = load i8, ptr %.18.i354, align 1, !tbaa !245, !noalias !641 ; 2 uses
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
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !245, !noalias !641
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i354, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i356, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !245, !noalias !641
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i356, %bb.au ], [ %.0.i356, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph357, label %._crit_edge358, !llvm.loop !640

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
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #25 ; 2 uses
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = extractvalue { ptr, i32 } %i.go, 1
  br label %bb.bo

bb.ay:                                            ; preds = %bb.al, %.critedge.i
  %i.gr = add i64 %.4187.i, -23
  %or.cond251 = icmp ult i64 %i.gr, -45
  %i.gs = icmp ugt i64 %.4204.i, 9007199254740992
  %or.cond253 = select i1 %or.cond251, i1 true, i1 %i.gs
  br i1 %or.cond253, label %.thread455, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = uitofp nneg i64 %.4204.i to double      ; 2 uses
  %i.gu = icmp slt i64 %.4187.i, 0
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = sub nsw i64 0, %.4187.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !425
  %i.gy = fdiv double %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %.4187.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !425
  %i.hb = fmul double %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi double [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !425
  br i1 %i.d, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg double %storemerge
  store double %i.hc, ptr %2, align 8, !tbaa !425
  br label %bb.bo

.thread455:                                       ; preds = %._crit_edge358, %bb.ay
  %.sroa.093.0.ph464 = phi i64 [ %.4187.i, %bb.ay ], [ %i.gn, %._crit_edge358 ] ; 2 uses
  %.sroa.7.0.ph463 = phi i64 [ %.4204.i, %bb.ay ], [ %.6206.i.lcssa, %._crit_edge358 ] ; 2 uses
  %.sroa.26.2.ph462 = phi i1 [ false, %bb.ay ], [ true, %._crit_edge358 ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.7.0.ph463, 0
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.be

bb.be:                                            ; preds = %.thread455.thread, %.thread455
  %.sroa.26.2.ph462484 = phi i1 [ true, %.thread455.thread ], [ %.sroa.26.2.ph462, %.thread455 ] ; 6 uses
  %.sroa.7.0.ph463483 = phi i64 [ %i.ez, %.thread455.thread ], [ %.sroa.7.0.ph463, %.thread455 ] ; 8 uses
  %.sroa.093.0.ph464480 = phi i64 [ %i.fo, %.thread455.thread ], [ %.sroa.093.0.ph464, %.thread455 ] ; 11 uses
  %i.he = icmp slt i64 %.sroa.093.0.ph464480, -342
  br i1 %i.he, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp sgt i64 %.sroa.093.0.ph464480, 308
  br i1 %i.hf, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.noexc

.noexc:                                           ; preds = %bb.bf
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph463483, i1 true) ; 2 uses
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl i64 %.sroa.7.0.ph463483, %i.hg
  %i.hj = trunc nsw i64 %.sroa.093.0.ph464480 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !279
  %i.hp = zext i64 %i.hi to i128                  ; 2 uses
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 511
  %i.hw = icmp eq i64 %i.hv, 511
  br i1 %i.hw, label %.noexc73, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

.noexc73:                                         ; preds = %.noexc
  %i.hx = getelementptr i8, ptr %i.hm, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !279
  %6 = zext i64 %i.hy to i128
  %7 = mul nuw i128 %6, %i.hp
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64                   ; 2 uses
  %i.hz = add i64 %9, %i.hs                       ; 2 uses
  %10 = icmp ult i64 %i.hz, %9
  %i.ia = zext i1 %10 to i64
  %spec.select.i72 = add nuw i64 %i.ia, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %.noexc73, %.noexc
  %.pn273 = phi i64 [ %i.hz, %.noexc73 ], [ %i.hs, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hu, %.noexc ] ; 3 uses
  %i.ib = icmp ne i64 %.pn273, -1
  %i.ic = add nsw i64 %.sroa.093.0.ph464480, 27
  %i.id = icmp ult i64 %i.ic, 83
  %or.cond.i54 = or i1 %i.id, %i.ib
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
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
  br i1 %i.im, label %bb.bg, label %.split487

bb.bg:                                            ; preds = %.critedge.i60
  %i.in = sub nsw i32 1, %i.il                    ; 2 uses
  %i.io = icmp samesign ugt i32 %i.in, 63
  br i1 %i.io, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.split486

.split486:                                        ; preds = %bb.bg
  %i.ip = zext nneg i32 %i.in to i64
  %i.iq = lshr i64 %i.ih, %i.ip                   ; 2 uses
  %i.ir = and i64 %i.iq, 1
  %i.is = add nuw nsw i64 %i.ir, %i.iq            ; 2 uses
  %i.it = lshr i64 %i.is, 1                       ; 2 uses
  %i.iu = icmp samesign ugt i64 %i.is, 9007199254740991
  %i.iv = zext i1 %i.iu to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

.split487:                                        ; preds = %.critedge.i60
  %i.iw = icmp ult i64 %.pn273, 2
  %i.ix = add nsw i64 %.sroa.093.0.ph464480, 4
  %i.iy = icmp ult i64 %i.ix, 28
  %or.cond255.not275 = and i1 %i.iy, %i.iw
  %i.iz = and i64 %i.ih, 3
  %i.ja = icmp eq i64 %i.iz, 1
  %or.cond257 = select i1 %or.cond255.not275, i1 %i.ja, i1 false
  %i.jb = shl i64 %i.ih, %i.ig
  %i.jc = icmp eq i64 %i.jb, %spec.select.i72.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.jc, i1 false
  %i.jd = and i64 %i.ih, 72057594037927934
  %.sroa.0111.0 = select i1 %or.cond259, i64 %i.jd, i64 %i.ih ; 2 uses
  %i.je = and i64 %.sroa.0111.0, 1
  %i.jf = add nuw nsw i64 %i.je, %.sroa.0111.0    ; 2 uses
  %i.jg = lshr i64 %i.jf, 1
  %.not27.i61 = icmp samesign ugt i64 %i.jf, 18014398509481983 ; 2 uses
  %i.jh = zext i1 %.not27.i61 to i32
  %.sroa.19117.0 = add nuw nsw i32 %i.il, %i.jh   ; 2 uses
  %i.ji = and i64 %i.jg, 9218868437227405311
  %.not28.i62 = icmp samesign ugt i32 %.sroa.19117.0, 2046 ; 2 uses
  %.not = select i1 %.not28.i62, i1 true, i1 %.not27.i61
  %spec.select268 = select i1 %.not, i64 0, i64 %i.ji ; 2 uses
  %spec.select269 = select i1 %.not28.i62, i32 2047, i32 %.sroa.19117.0 ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66: ; preds = %bb.bg, %bb.bf, %.thread455, %bb.be
  %.sroa.26.2.ph462485 = phi i1 [ %.sroa.26.2.ph462484, %bb.bf ], [ %.sroa.26.2.ph462, %.thread455 ], [ %.sroa.26.2.ph462484, %bb.be ], [ %.sroa.26.2.ph462484, %bb.bg ]
  %.sroa.093.0.ph464482 = phi i64 [ %.sroa.093.0.ph464480, %bb.bf ], [ %.sroa.093.0.ph464, %.thread455 ], [ %.sroa.093.0.ph464480, %bb.be ], [ %.sroa.093.0.ph464480, %bb.bg ]
  %.sroa.7.0160 = phi i64 [ %.sroa.7.0.ph463483, %bb.bf ], [ 0, %.thread455 ], [ %.sroa.7.0.ph463483, %bb.be ], [ %.sroa.7.0.ph463483, %bb.bg ]
  %.sroa.19117.1 = phi i32 [ 2047, %bb.bf ], [ 0, %.thread455 ], [ 0, %bb.be ], [ 0, %bb.bg ] ; 2 uses
  br i1 %.sroa.26.2.ph462485, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %.thread246

bb.bh:                                            ; preds = %.split487, %.split486, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66
  %.sroa.093.0.ph464481 = phi i64 [ %.sroa.093.0.ph464480, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.093.0.ph464482, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.093.0.ph464480, %.split486 ], [ %.sroa.093.0.ph464480, %.split487 ] ; 5 uses
  %.sroa.19117.1471 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iv, %.split486 ], [ %spec.select269, %.split487 ] ; 3 uses
  %.sroa.0111.2469 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.it, %.split486 ], [ %spec.select268, %.split487 ] ; 2 uses
  %.sroa.7.0160468 = phi i64 [ %.sroa.7.0.ph463483, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.7.0160, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.7.0.ph463483, %.split486 ], [ %.sroa.7.0.ph463483, %.split487 ]
  %i.jj = add i64 %.sroa.7.0160468, 1             ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = icmp slt i64 %.sroa.093.0.ph464481, -342
  %or.cond260 = or i1 %i.jl, %i.jk
  br i1 %or.cond260, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jm = icmp sgt i64 %.sroa.093.0.ph464481, 308
  br i1 %i.jm, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %.noexc76

.noexc76:                                         ; preds = %bb.bi
  %i.jn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jj, i1 true) ; 2 uses
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = shl i64 %i.jj, %i.jn
  %i.jq = trunc nsw i64 %.sroa.093.0.ph464481 to i32 ; 2 uses
  %i.jr = shl nsw i32 %i.jq, 1
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.js ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 5472
  %i.jv = load i64, ptr %i.ju, align 16, !tbaa !279
  %i.jw = zext i64 %i.jp to i128                  ; 2 uses
  %i.jx = zext i64 %i.jv to i128
  %i.jy = mul nuw i128 %i.jx, %i.jw               ; 2 uses
  %i.jz = trunc i128 %i.jy to i64                 ; 2 uses
  %i.ka = lshr i128 %i.jy, 64
  %i.kb = trunc nuw i128 %i.ka to i64             ; 3 uses
  %i.kc = and i64 %i.kb, 511
  %i.kd = icmp eq i64 %i.kc, 511
  br i1 %i.kd, label %.noexc77, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

.noexc77:                                         ; preds = %.noexc76
  %i.ke = getelementptr i8, ptr %i.jt, i64 5480
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !279
  %11 = zext i64 %i.kf to i128
  %12 = mul nuw i128 %11, %i.jw
  %13 = lshr i128 %12, 64
  %14 = trunc nuw i128 %13 to i64                 ; 2 uses
  %i.kg = add i64 %14, %i.jz                      ; 2 uses
  %15 = icmp ult i64 %i.kg, %14
  %i.kh = zext i1 %15 to i64
  %spec.select.i75 = add nuw i64 %i.kh, %i.kb
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78: ; preds = %.noexc77, %.noexc76
  %.pn277 = phi i64 [ %i.kg, %.noexc77 ], [ %i.jz, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.kb, %.noexc76 ] ; 3 uses
  %i.ki = icmp ne i64 %.pn277, -1
  %i.kj = add nsw i64 %.sroa.093.0.ph464481, 27
  %i.kk = icmp ult i64 %i.kj, 83
  %or.cond.i51 = or i1 %i.kk, %i.ki
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78
  %i.kl = lshr i64 %spec.select.i75.pn, 63        ; 2 uses
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = add nuw nsw i64 %i.kl, 9                ; 2 uses
  %i.ko = lshr i64 %spec.select.i75.pn, %i.kn     ; 5 uses
  %i.kp = mul nsw i32 %i.jq, 217706
  %i.kq = ashr i32 %i.kp, 16
  %i.kr = add nsw i32 %i.kq, 1086
  %i.ks = sub nsw i32 %i.kr, %i.jo
  %i.kt = add nsw i32 %i.ks, %i.km                ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 1
  br i1 %i.ku, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.critedge.i52
  %i.kv = sub nsw i32 1, %i.kt                    ; 2 uses
  %i.kw = icmp samesign ugt i32 %i.kv, 63
  br i1 %i.kw, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kx = zext nneg i32 %i.kv to i64
  %i.ky = lshr i64 %i.ko, %i.kx                   ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %i.la = add nuw nsw i64 %i.kz, %i.ky            ; 2 uses
  %i.lb = lshr i64 %i.la, 1
  %i.lc = icmp samesign ugt i64 %i.la, 9007199254740991
  %i.ld = zext i1 %i.lc to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.bl:                                            ; preds = %.critedge.i52
  %i.le = icmp ult i64 %.pn277, 2
  %i.lf = add nsw i64 %.sroa.093.0.ph464481, 4
  %i.lg = icmp ult i64 %i.lf, 28
  %or.cond262.not280 = and i1 %i.lg, %i.le
  %i.lh = and i64 %i.ko, 3
  %i.li = icmp eq i64 %i.lh, 1
  %or.cond264 = select i1 %or.cond262.not280, i1 %i.li, i1 false
  %i.lj = shl i64 %i.ko, %i.kn
  %i.lk = icmp eq i64 %i.lj, %spec.select.i75.pn
  %or.cond266 = select i1 %or.cond264, i1 %i.lk, i1 false
  %i.ll = and i64 %i.ko, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond266, i64 %i.ll, i64 %i.ko ; 2 uses
  %i.lm = and i64 %.sroa.0103.0, 1
  %i.ln = add nuw nsw i64 %i.lm, %.sroa.0103.0    ; 2 uses
  %i.lo = lshr i64 %i.ln, 1
  %.not27.i = icmp samesign ugt i64 %i.ln, 18014398509481983 ; 2 uses
  %i.lp = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.kt, %i.lp      ; 2 uses
  %i.lq = and i64 %i.lo, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not281 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select270 = select i1 %.not281, i64 0, i64 %i.lq
  %spec.select271 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bl, %bb.bj, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bi, %bb.bh, %bb.bk
  %.sroa.0103.2 = phi i64 [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lb, %bb.bk ], [ %spec.select270, %bb.bl ], [ 0, %bb.bj ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bi ], [ 0, %bb.bh ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.ld, %bb.bk ], [ %spec.select271, %bb.bl ], [ 0, %bb.bj ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2469, %.sroa.0103.2
  %i.lr = icmp ne i32 %.sroa.19117.1471, %.sroa.19.1
  %i.ls = icmp slt i32 %.sroa.19117.1471, 0
  %i.lt = or i1 %i.ls, %i.lr
  %or.cond267 = select i1 %.not.i87, i1 true, i1 %i.lt
  br i1 %or.cond267, label %.thread246, label %bb.bn

.thread246:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  %i.lu = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bm unwind label %bb.bp     ; 2 uses

bb.bm:                                            ; preds = %.thread246
  %.fca.0.extract = extractvalue { i64, i32 } %i.lu, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.lu, 1
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, %.split486, %.split487, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.bm
  %.sroa.690.1 = phi i32 [ %.fca.1.extract, %bb.bm ], [ %.sroa.19117.1471, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iv, %.split486 ], [ %spec.select269, %.split487 ]
  %.sroa.088.0 = phi i64 [ %.fca.0.extract, %bb.bm ], [ %.sroa.0111.2469, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.it, %.split486 ], [ %spec.select268, %.split487 ]
  %i.lv = zext i32 %.sroa.690.1 to i64
  %i.lw = shl i64 %i.lv, 52
  %i.lx = or i64 %i.lw, %.sroa.088.0              ; 2 uses
  %i.ly = or i64 %i.lx, -9223372036854775808
  %spec.select = select i1 %i.d, i64 %i.ly, i64 %i.lx
  store i64 %spec.select, ptr %2, align 8
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
  tail call void @__clang_call_terminate(ptr %i.ma) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !245
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !245 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !245   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !245   ; 2 uses
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
  store double %i.aa, ptr %2, align 8, !tbaa !425
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !245
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !245 ; 2 uses
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
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !245 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb9Exception25ConstructMessageRecursiveIlJRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !245
  store i64 %i.p, ptr %i.h, align 8, !tbaa !245
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !244
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !244
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !244
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !289
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = icmp eq ptr %.pre10, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #27
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #27
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load i64, ptr %3, align 8, !tbaa !279, !noalias !740
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !423
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !243
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !244  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !245
  store i64 %i.p, ptr %i.h, align 8, !tbaa !245
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !244
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !244
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !244
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !289
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !289
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = icmp eq ptr %.pre9, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #27
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #27
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.x
}

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_10AccessModeEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_10AccessModeEEEPKcT_(i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_19AllowParserOverrideEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_18ArrowFormatVersionEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_15CheckpointAbortEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_34PhysicalTableScanExecutionStrategyEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_23DebugVectorVerificationEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6duckdb8EnumUtil10FromStringINS_21WindowAggregationModeEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_24DeprecatedUsingKeySyntaxEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_17ExplainOutputTypeEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_14BitpackingModeEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_12LambdaSyntaxEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_13ThreadPinModeEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_20StorageBlockPrefetchEEET_PKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_19CacheValidationModeEEET_PKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{!0, !266}
!1 = distinct !{!1, !266}
!2 = distinct !{!2, !266}
!3 = distinct !{!3, !266}
!4 = distinct !{!4, !266}
!5 = distinct !{!5, !266}
!6 = distinct !{!6, !266}
!7 = distinct !{null}
!8 = distinct !{!8, !266}
!9 = distinct !{ptr @_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev, null}
!10 = distinct !{!10, !266}
!11 = distinct !{!11, !266}
!12 = distinct !{!12, !266}
!13 = distinct !{!13, !266}
!14 = distinct !{!14, !266}
!15 = distinct !{!15, !266}
!16 = distinct !{!16, !266}
!17 = distinct !{!17, !266}
!18 = distinct !{!18, !266}
!19 = distinct !{!19, !266}
!20 = distinct !{!20, !266}
!21 = distinct !{!21, !266}
!22 = distinct !{!22, !266}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"any pointer", !27, i64 0}
!31 = !{!"p1 omnipotent char", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!"long", !27, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !33, i64 8, !27, i64 16}
!35 = !{!34, !31, i64 0}
!36 = !{!"p1 _ZTSN6duckdb16DatabaseInstanceE", !30, i64 0}
!37 = !{!"_ZTSN6duckdb12optional_ptrINS_16DatabaseInstanceELb1EEE", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!"p1 _ZTSN6duckdb15ReplacementScanE", !30, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN6duckdb15ReplacementScanESaIS1_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIN6duckdb15ReplacementScanESaIS1_EE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIN6duckdb15ReplacementScanESaIS1_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIN6duckdb15ReplacementScanESaIS1_EE", !42, i64 0}
!44 = !{!"_ZTSN6duckdb6vectorINS_15ReplacementScanELb1ESaIS1_EEE", !43, i64 0}
!45 = !{!"p1 _ZTSN6duckdb10FileSystemE", !30, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10FileSystemELb0EE", !45, i64 0}
!47 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10FileSystemESt14default_deleteIS1_EEE", !46, i64 0}
!48 = !{!"_ZTSSt5tupleIJPN6duckdb10FileSystemESt14default_deleteIS1_EEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10FileSystemESt14default_deleteIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10FileSystemESt14default_deleteIS1_ELb1ELb1EE", !49, i64 0}
!51 = !{!"_ZTSSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EE", !50, i64 0}
!52 = !{!"_ZTSN6duckdb10unique_ptrINS_10FileSystemESt14default_deleteIS1_ELb1EEE", !51, i64 0}
!53 = !{!"p1 _ZTSN6duckdb13SecretManagerE", !30, i64 0}
!54 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb13SecretManagerELb0EE", !53, i64 0}
!55 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb13SecretManagerESt14default_deleteIS1_EEE", !54, i64 0}
!56 = !{!"_ZTSSt5tupleIJPN6duckdb13SecretManagerESt14default_deleteIS1_EEE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb13SecretManagerESt14default_deleteIS1_EE", !56, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb13SecretManagerESt14default_deleteIS1_ELb1ELb1EE", !57, i64 0}
!59 = !{!"_ZTSSt10unique_ptrIN6duckdb13SecretManagerESt14default_deleteIS1_EE", !58, i64 0}
!60 = !{!"_ZTSN6duckdb10unique_ptrINS_13SecretManagerESt14default_deleteIS1_ELb1EEE", !59, i64 0}
!61 = !{!"p1 _ZTSN6duckdb9AllocatorE", !30, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb9AllocatorELb0EE", !61, i64 0}
!63 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb9AllocatorESt14default_deleteIS1_EEE", !62, i64 0}
!64 = !{!"_ZTSSt5tupleIJPN6duckdb9AllocatorESt14default_deleteIS1_EEE", !63, i64 0}
!65 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb9AllocatorESt14default_deleteIS1_EE", !64, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb9AllocatorESt14default_deleteIS1_ELb1ELb1EE", !65, i64 0}
!67 = !{!"_ZTSSt10unique_ptrIN6duckdb9AllocatorESt14default_deleteIS1_EE", !66, i64 0}
!68 = !{!"_ZTSN6duckdb10unique_ptrINS_9AllocatorESt14default_deleteIS1_ELb1EEE", !67, i64 0}
!69 = !{!"p1 _ZTSN6duckdb14BlockAllocatorE", !30, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14BlockAllocatorELb0EE", !69, i64 0}
!71 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb14BlockAllocatorESt14default_deleteIS1_EEE", !70, i64 0}
!72 = !{!"_ZTSSt5tupleIJPN6duckdb14BlockAllocatorESt14default_deleteIS1_EEE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb14BlockAllocatorESt14default_deleteIS1_EE", !72, i64 0}
!74 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb14BlockAllocatorESt14default_deleteIS1_ELb1ELb1EE", !73, i64 0}
!75 = !{!"_ZTSSt10unique_ptrIN6duckdb14BlockAllocatorESt14default_deleteIS1_EE", !74, i64 0}
!76 = !{!"_ZTSN6duckdb10unique_ptrINS_14BlockAllocatorESt14default_deleteIS1_ELb1EEE", !75, i64 0}
!77 = !{!"_ZTSN6duckdb10AccessModeE", !27, i64 0}
!78 = !{!"bool", !27, i64 0}
!79 = !{!"_ZTSN6duckdb26SerializationCompatibilityE", !34, i64 0, !33, i64 32, !78, i64 40}
!80 = !{!"_ZTSSt4lessIN6duckdb13OptimizerTypeEE"}
!81 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN6duckdb13OptimizerTypeEEE", !80, i64 0}
!82 = !{!"_ZTSSt14_Rb_tree_color", !27, i64 0}
!83 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !30, i64 0}
!84 = !{!"_ZTSSt18_Rb_tree_node_base", !82, i64 0, !83, i64 8, !83, i64 16, !83, i64 24}
!85 = !{!"_ZTSSt15_Rb_tree_header", !84, i64 0, !33, i64 32}
!86 = !{!"_ZTSNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !81, i64 0, !85, i64 8}
!87 = !{!"_ZTSSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !86, i64 0}
!88 = !{!"_ZTSSt3setIN6duckdb13OptimizerTypeESt4lessIS1_ESaIS1_EE", !87, i64 0}
!89 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !27, i64 0}
!90 = !{!"_ZTSN6duckdb12PhysicalTypeE", !27, i64 0}
!91 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !30, i64 0}
!92 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!93 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !92, i64 0}
!94 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !93, i64 8}
!95 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !94, i64 0}
!96 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !95, i64 0}
!97 = !{!"_ZTSN6duckdb11LogicalTypeE", !89, i64 0, !90, i64 1, !96, i64 8}
!98 = !{!"any p2 pointer", !30, i64 0}
!99 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !98, i64 0}
!100 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!101 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !100, i64 0}
!102 = !{!"float", !27, i64 0}
!103 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !102, i64 0, !33, i64 8}
!104 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !99, i64 0, !33, i64 8, !101, i64 16, !33, i64 24, !103, i64 32, !100, i64 48}
!105 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE", !104, i64 0}
!106 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !109, i64 0}
!111 = !{!"_ZTSN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEE", !110, i64 0}
!112 = !{!"_ZTSN6duckdb15DebugInitializeE", !27, i64 0}
!113 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !99, i64 0, !33, i64 8, !101, i64 16, !33, i64 24, !103, i64 32, !100, i64 48}
!114 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !113, i64 0}
!115 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!116 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !115, i64 0}
!117 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !116, i64 0, !85, i64 8}
!118 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !117, i64 0}
!119 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !118, i64 0}
!120 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !99, i64 0, !33, i64 8, !101, i64 16, !33, i64 24, !103, i64 32, !100, i64 48}
!121 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE", !120, i64 0}
!122 = !{!"_ZTSN6duckdb7LogModeE", !27, i64 0}
!123 = !{!"_ZTSN6duckdb8LogLevelE", !27, i64 0}
!124 = !{!"_ZTSN6duckdb9LogConfigE", !78, i64 0, !122, i64 1, !123, i64 2, !34, i64 8, !114, i64 40, !114, i64 96}
!125 = !{!"_ZTSN6duckdb15DBConfigOptionsE", !34, i64 0, !34, i64 32, !77, i64 64, !33, i64 72, !78, i64 80, !78, i64 81, !33, i64 88, !33, i64 96, !33, i64 104, !78, i64 112, !34, i64 120, !78, i64 152, !78, i64 153, !78, i64 154, !78, i64 155, !79, i64 160, !78, i64 208, !78, i64 209, !88, i64 216, !97, i64 264, !105, i64 288, !111, i64 344, !112, i64 368, !105, i64 376, !105, i64 432, !33, i64 488, !33, i64 496, !34, i64 504, !33, i64 536, !78, i64 544, !114, i64 552, !119, i64 608, !121, i64 656, !124, i64 712, !33, i64 864}
!126 = !{!"p1 _ZTSN6duckdb12ErrorManagerE", !30, i64 0}
!127 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12ErrorManagerELb0EE", !126, i64 0}
!128 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12ErrorManagerESt14default_deleteIS1_EEE", !127, i64 0}
!129 = !{!"_ZTSSt5tupleIJPN6duckdb12ErrorManagerESt14default_deleteIS1_EEE", !128, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12ErrorManagerESt14default_deleteIS1_EE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12ErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !130, i64 0}
!132 = !{!"_ZTSSt10unique_ptrIN6duckdb12ErrorManagerESt14default_deleteIS1_EE", !131, i64 0}
!133 = !{!"_ZTSN6duckdb10unique_ptrINS_12ErrorManagerESt14default_deleteIS1_ELb1EEE", !132, i64 0}
!134 = !{!"_ZTSSt12__shared_ptrIN6duckdb9AllocatorELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !93, i64 8}
!135 = !{!"_ZTSSt10shared_ptrIN6duckdb9AllocatorEE", !134, i64 0}
!136 = !{!"_ZTSN6duckdb10shared_ptrINS_9AllocatorELb1EEE", !135, i64 0}
!137 = !{!"p1 _ZTSN6duckdb10BufferPoolE", !30, i64 0}
!138 = !{!"_ZTSSt12__shared_ptrIN6duckdb10BufferPoolELN9__gnu_cxx12_Lock_policyE2EE", !137, i64 0, !93, i64 8}
!139 = !{!"_ZTSSt10shared_ptrIN6duckdb10BufferPoolEE", !138, i64 0}
!140 = !{!"_ZTSN6duckdb10shared_ptrINS_10BufferPoolELb1EEE", !139, i64 0}
!141 = !{!"p1 _ZTSN6duckdb13BufferManagerE", !30, i64 0}
!142 = !{!"_ZTSSt12__shared_ptrIN6duckdb13BufferManagerELN9__gnu_cxx12_Lock_policyE2EE", !141, i64 0, !93, i64 8}
!143 = !{!"_ZTSSt10shared_ptrIN6duckdb13BufferManagerEE", !142, i64 0}
!144 = !{!"_ZTSN6duckdb10shared_ptrINS_13BufferManagerELb1EEE", !143, i64 0}
!145 = !{!"p1 _ZTSN6duckdb14EncryptionUtilE", !30, i64 0}
!146 = !{!"_ZTSSt12__shared_ptrIN6duckdb14EncryptionUtilELN9__gnu_cxx12_Lock_policyE2EE", !145, i64 0, !93, i64 8}
!147 = !{!"_ZTSSt10shared_ptrIN6duckdb14EncryptionUtilEE", !146, i64 0}
!148 = !{!"_ZTSN6duckdb10shared_ptrINS_14EncryptionUtilELb1EEE", !147, i64 0}
!149 = !{!"p1 _ZTSN6duckdb18DatabaseCacheEntryE", !30, i64 0}
!150 = !{!"_ZTSSt12__shared_ptrIN6duckdb18DatabaseCacheEntryELN9__gnu_cxx12_Lock_policyE2EE", !149, i64 0, !93, i64 8}
!151 = !{!"_ZTSSt10shared_ptrIN6duckdb18DatabaseCacheEntryEE", !150, i64 0}
end_hunk_1
