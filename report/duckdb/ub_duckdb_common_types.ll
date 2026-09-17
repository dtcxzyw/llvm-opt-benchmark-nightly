Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.em = icmp sgt i64 %.1190.i, 19
  br i1 %i.em, label %.preheader288, label %bb.ay

.preheader288:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i351 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i350 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i351, align 1, !tbaa !273, !noalias !3779 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader288
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i350, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i351, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader288, !llvm.loop !3776

.critedge.i:                                      ; preds = %.preheader288, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i350, %.preheader288 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i353 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i352 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i352, align 1, !tbaa !273, !noalias !3779 ; 2 uses
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
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !273, !noalias !3779
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i352, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !273, !noalias !3779
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !3777

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
  %i.fq = load i8, ptr %.18.i354, align 1, !tbaa !273, !noalias !3779 ; 2 uses
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
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !273, !noalias !3779
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i354, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i356, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !273, !noalias !3779
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i356, %bb.au ], [ %.0.i356, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph357, label %._crit_edge358, !llvm.loop !3778

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
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #46 ; 2 uses
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
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !477
  %i.gy = fdiv double %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %.4187.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !477
  %i.hb = fmul double %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi double [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !477
  br i1 %i.d, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg double %storemerge
  store double %i.hc, ptr %2, align 8, !tbaa !477
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
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !245
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
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !245
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
  %i.jv = load i64, ptr %i.ju, align 16, !tbaa !245
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
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !245
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
  tail call void @__clang_call_terminate(ptr %i.ma) #50
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !273
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !273 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !273   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !273   ; 2 uses
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
  store double %i.aa, ptr %2, align 8, !tbaa !477
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !273
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !273 ; 2 uses
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
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !273 ; 2 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_ub_duckdb_common_types.cpp:bb.a
  %.sroa.0.0.copyload.i129.i = load i64, ptr %34, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sroa.4.0.copyload.i131.i = load i64, ptr %.sroa.4.0..sroa_idx.i130.i, align 8, !tbaa !245
  %.sroa.0.0.copyload.i.i132.i = load i64, ptr %35, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx.i.i133.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.2.0.copyload.i.i134.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i133.i, align 8, !tbaa !245
  %i.afp = zext i64 %.sroa.0.0.copyload.i129.i to i128
  %i.afq = zext i64 %.sroa.4.0.copyload.i131.i to i128
  %i.afr = shl nuw i128 %i.afq, 64
  %i.afs = or disjoint i128 %i.afr, %i.afp
  %i.aft = zext i64 %.sroa.0.0.copyload.i.i132.i to i128
  %i.afu = zext i64 %.sroa.2.0.copyload.i.i134.i to i128
  %i.afv = shl nuw i128 %i.afu, 64
  %i.afw = or disjoint i128 %i.afv, %i.aft
  %i.afx = mul i128 %i.afw, %i.afs                ; 2 uses
  %i.afy = lshr i128 %i.afx, 64
  %i.afz = trunc nuw i128 %i.afy to i64
  %i.aga = trunc i128 %i.afx to i64
  store i64 %i.aga, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 576), align 16
  store i64 %i.afz, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 584), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %36, i64 noundef 1000000000000000000)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %37, i64 noundef 1000000000000000000)
  %.sroa.0.0.copyload.i137.i13 = load i64, ptr %36, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx.i138.i14 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %.sroa.4.0.copyload.i139.i15 = load i64, ptr %.sroa.4.0..sroa_idx.i138.i14, align 8, !tbaa !245
  %.sroa.0.0.copyload.i.i140.i16 = load i64, ptr %37, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx.i.i141.i17 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %.sroa.2.0.copyload.i.i142.i18 = load i64, ptr %.sroa.2.0..sroa_idx.i.i141.i17, align 8, !tbaa !245
  %i.agb = zext i64 %.sroa.0.0.copyload.i137.i13 to i128
  %i.agc = zext i64 %.sroa.4.0.copyload.i139.i15 to i128
  %i.agd = shl nuw i128 %i.agc, 64
  %i.age = or disjoint i128 %i.agd, %i.agb
  %i.agf = zext i64 %.sroa.0.0.copyload.i.i140.i16 to i128
  %i.agg = zext i64 %.sroa.2.0.copyload.i.i142.i18 to i128
  %i.agh = shl nuw i128 %i.agg, 64
  %i.agi = or disjoint i128 %i.agh, %i.agf
  %i.agj = mul i128 %i.agi, %i.age
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %38, i64 noundef 10)
  %.sroa.0.0.copyload.i.i148.i = load i64, ptr %38, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx.i.i149.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  %.sroa.2.0.copyload.i.i150.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i149.i, align 8, !tbaa !245
  %i.agk = zext i64 %.sroa.0.0.copyload.i.i148.i to i128
  %i.agl = zext i64 %.sroa.2.0.copyload.i.i150.i to i128
  %i.agm = shl nuw i128 %i.agl, 64
  %i.agn = or disjoint i128 %i.agm, %i.agk
  %i.ago = mul i128 %i.agj, %i.agn                ; 2 uses
  %i.agp = lshr i128 %i.ago, 64
  %i.agq = trunc nuw i128 %i.agp to i64
  %i.agr = trunc i128 %i.ago to i64
  store i64 %i.agr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 592), align 16
  store i64 %i.agq, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 600), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 noundef 1000000000000000000)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 noundef 1000000000000000000)
  %.sroa.0.0.copyload.i153.i = load i64, ptr %39, align 8, !tbaa !245
  %.sroa.4.0..sroa_idx.i154.i = getelementptr inbounds nuw i8, ptr %39, i64 8
  %.sroa.4.0.copyload.i155.i = load i64, ptr %.sroa.4.0..sroa_idx.i154.i, align 8, !tbaa !245
  %.sroa.0.0.copyload.i.i156.i = load i64, ptr %40, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx.i.i157.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.sroa.2.0.copyload.i.i158.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i157.i, align 8, !tbaa !245
  %i.ags = zext i64 %.sroa.0.0.copyload.i153.i to i128
  %i.agt = zext i64 %.sroa.4.0.copyload.i155.i to i128
  %i.agu = shl nuw i128 %i.agt, 64
  %i.agv = or disjoint i128 %i.agu, %i.ags
  %i.agw = zext i64 %.sroa.0.0.copyload.i.i156.i to i128
  %i.agx = zext i64 %.sroa.2.0.copyload.i.i158.i to i128
  %i.agy = shl nuw i128 %i.agx, 64
  %i.agz = or disjoint i128 %i.agy, %i.agw
  %i.aha = mul i128 %i.agz, %i.agv
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef 100)
  %.sroa.0.0.copyload.i.i164.i = load i64, ptr %41, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx.i.i165.i = getelementptr inbounds nuw i8, ptr %41, i64 8
  %.sroa.2.0.copyload.i.i166.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i165.i, align 8, !tbaa !245
  %i.ahb = zext i64 %.sroa.0.0.copyload.i.i164.i to i128
  %i.ahc = zext i64 %.sroa.2.0.copyload.i.i166.i to i128
  %i.ahd = shl nuw i128 %i.ahc, 64
  %i.ahe = or disjoint i128 %i.ahd, %i.ahb
  %i.ahf = mul i128 %i.aha, %i.ahe                ; 2 uses
  %i.ahg = lshr i128 %i.ahf, 64
  %i.ahh = trunc nuw i128 %i.ahg to i64
  %i.ahi = trunc i128 %i.ahf to i64
  store i64 %i.ahi, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 608), align 16
  store i64 %i.ahh, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 616), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  %i.ahj = call ptr @llvm.invariant.start.p0(i64 624, ptr nonnull @_ZN6duckdb8Uhugeint13POWERS_OF_TENE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #36

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold nofree noreturn }
attributes #29 = { nofree nounwind }
attributes #30 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind memory(none) }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #46 = { nounwind }
attributes #47 = { builtin nounwind }
attributes #48 = { builtin allocsize(0) }
attributes #49 = { noreturn }
attributes #50 = { noreturn nounwind }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { nounwind willreturn memory(none) }
attributes #53 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!159, !160}
!llvm.ident = !{!161}
!llvm.errno.tbaa = !{!165}

!0 = distinct !{!0, !223}
!1 = distinct !{!1, !223}
!2 = distinct !{!2, !223}
!3 = distinct !{!3, !223}
!4 = distinct !{!4, !223}
!5 = distinct !{!5, !223}
!6 = distinct !{!6, !223}
!7 = distinct !{!7, !223}
!8 = distinct !{!8, !223}
!9 = distinct !{!9, !223}
!10 = distinct !{!10, !223}
!11 = distinct !{!11, !223}
!12 = distinct !{null, null, null, null, null, null, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!13 = distinct !{!13, !223}
!14 = distinct !{!14, !223}
!15 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!16 = distinct !{ptr @_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE, null}
!17 = distinct !{ptr @_ZNK6duckdb5Value13DefaultCastAsERKNS_11LogicalTypeEb, ptr @_ZN6duckdb15CastFunctionSetD2Ev, null, null, null, null, null, null, null}
!18 = distinct !{!18, !223}
!19 = distinct !{!19, !223}
!20 = distinct !{ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE, null}
!21 = distinct !{ptr @_ZN6duckdb9DataChunk7DestroyEv, null, null, null, null, null, null, ptr @_ZN6duckdb11VectorCacheD2Ev, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!22 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!23 = distinct !{ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE, null}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{ptr @_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, null, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!28 = distinct !{!28, !223}
!29 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!30 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_16DictionaryBufferELb1EED2Ev, null, null, null}
!31 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!32 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!33 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!34 = distinct !{null, null, null, ptr @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev, null, null, null}
!35 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!36 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev, null, null, null}
!37 = distinct !{!37, !223}
!38 = distinct !{!38, !223}
!39 = distinct !{!39, !223}
!40 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!41 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, ptr @_ZN6duckdb21TemplatedValidityMaskImED2Ev, ptr @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev, null, null, null}
!42 = distinct !{ptr @_ZN6duckdb21TemplatedValidityMaskImED2Ev, ptr @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev, null, null, null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{!46, !223}
!47 = distinct !{ptr @_ZN6duckdb20ListSegmentFunctionsD2Ev, null, null, null}
!48 = distinct !{!48, !223}
!49 = distinct !{ptr @_ZN6duckdb20ListSegmentFunctionsD2Ev, null}
!50 = distinct !{!50, !223}
!51 = distinct !{ptr @_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm, null}
!52 = distinct !{!52, !223}
!53 = distinct !{null, null, null, null}
!54 = distinct !{!54, !223}
!55 = distinct !{!55, !223}
!56 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev, null, null, null}
!57 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev, null, null, null}
!58 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev, null, null, null}
!59 = distinct !{ptr @_ZN6duckdb15make_shared_ptrINS_15StringValueInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_, null, null, null}
!60 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EEaSINS_15StringValueInfoETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_ONS0_IS6_Lb1EEE, ptr @_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EED2Ev, null, null, null}
!61 = distinct !{null, null, null}
!62 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EED2Ev, null, null, null}
!63 = distinct !{null, null, null, null, null, null}
!64 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EED2Ev, null, null, null}
!65 = distinct !{!65, !223, !709}
!66 = distinct !{!66, !223}
!67 = distinct !{!67, !223}
!68 = distinct !{!68, !223}
!69 = distinct !{null, null, null, null}
!70 = distinct !{ptr @_ZN6duckdb15CastFunctionSetD2Ev, ptr @_ZNK6duckdb5Value13DefaultCastAsERKNS_11LogicalTypeEb, null, null, null, null, null, null, null}
!71 = distinct !{ptr @_ZN6duckdb11LogicalTypeaSEOS0_, null, null, null, null, null, null}
!72 = distinct !{ptr @_ZN6duckdb5ValueaSEOS0_, null, ptr @_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EED2Ev, null, null, null}
!73 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_14ExtraValueInfoELb1EED2Ev, null, null, null}
!74 = distinct !{ptr @_ZN6duckdb15CastFunctionSetD2Ev, null, null, null, null, null, null, null}
!75 = distinct !{!75, !223}
!76 = distinct !{!76, !223}
!77 = distinct !{!77, !223}
!78 = distinct !{!78, !223}
!79 = distinct !{!79, !223}
!80 = distinct !{!80, !223}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{null}
!88 = distinct !{!88, !223}
!89 = distinct !{null, null, null}
!90 = distinct !{null}
!91 = distinct !{ptr @_ZN6duckdb12VectorBufferD2Ev, null, null}
!92 = distinct !{!92, !223}
!93 = distinct !{null, null, null, null, null}
!94 = distinct !{null, null, null, null, null, null}
!95 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2INS_18VectorStructBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEEPS6_, null, null, null, null}
!96 = distinct !{null, null, null, null, null}
!97 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2INS_17VectorArrayBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEEPS6_, null, null, null, null}
!98 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!99 = distinct !{null, null, null}
!100 = distinct !{ptr @_ZN6duckdb11make_bufferINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_, null, null, null, null}
!101 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!102 = distinct !{null, null, null, null, null}
!103 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!104 = distinct !{null, null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!105 = distinct !{null, null, null}
!106 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!107 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_17VectorCacheBufferELb1EED2Ev, null, null, null}
!108 = distinct !{!108, !223}
!109 = distinct !{null}
!110 = distinct !{null}
!111 = distinct !{!111, !223}
!112 = distinct !{ptr @_ZNSt6vectorIN6duckdb10shared_ptrINS0_12VectorBufferELb1EEESaIS3_EED2Ev, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!113 = distinct !{!113, !223}
!114 = distinct !{ptr @_ZN6duckdb18VectorStringBufferD2Ev, ptr @_ZNSt6vectorIN6duckdb10shared_ptrINS0_12VectorBufferELb1EEESaIS3_EED2Ev, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev, null, null, null}
!115 = distinct !{ptr @_ZN6duckdb18VectorStringBufferD2Ev, ptr @_ZN6duckdb12VectorBufferD2Ev, null, null}
!116 = distinct !{!116, !223}
!117 = distinct !{!117, !223}
!118 = distinct !{!118, !223}
!119 = distinct !{!119, !223}
!120 = distinct !{!120, !223}
end_hunk_1
