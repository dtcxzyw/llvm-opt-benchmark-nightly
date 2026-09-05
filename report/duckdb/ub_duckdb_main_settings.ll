Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_main_settings?download=true
inline.NumInlined: 2875
inline.NumDeleted: 1096
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a

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
  %i.hk = shl nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl
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
  %6 = sext i32 %i.hk to i64
  %7 = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %6
  %i.hx = getelementptr i8, ptr %7, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !279
  %i.hz = zext i64 %i.hy to i128
  %i.ia = mul nuw i128 %i.hz, %i.hp
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = trunc nuw i128 %i.ib to i64             ; 2 uses
  %i.id = add i64 %i.ic, %i.hs                    ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = zext i1 %i.ie to i64
  %spec.select.i72 = add nuw i64 %i.if, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %.noexc73, %.noexc
  %.pn273 = phi i64 [ %i.id, %.noexc73 ], [ %i.hs, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hu, %.noexc ] ; 3 uses
  %i.ig = icmp ne i64 %.pn273, -1
  %i.ih = add nsw i64 %.sroa.093.0.ph464480, 27
  %i.ii = icmp ult i64 %i.ih, 83
  %or.cond.i54 = or i1 %i.ii, %i.ig
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
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
  br i1 %i.ir, label %bb.bg, label %.split487

bb.bg:                                            ; preds = %.critedge.i60
  %i.is = sub nsw i32 1, %i.iq                    ; 2 uses
  %i.it = icmp samesign ugt i32 %i.is, 63
  br i1 %i.it, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.split486

.split486:                                        ; preds = %bb.bg
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = lshr i64 %i.im, %i.iu                   ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %i.ix = add nuw nsw i64 %i.iw, %i.iv            ; 2 uses
  %i.iy = lshr i64 %i.ix, 1                       ; 2 uses
  %i.iz = icmp samesign ugt i64 %i.ix, 9007199254740991
  %i.ja = zext i1 %i.iz to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

.split487:                                        ; preds = %.critedge.i60
  %i.jb = icmp ult i64 %.pn273, 2
  %i.jc = add nsw i64 %.sroa.093.0.ph464480, 4
  %i.jd = icmp ult i64 %i.jc, 28
  %or.cond255.not275 = and i1 %i.jd, %i.jb
  %i.je = and i64 %i.im, 3
  %i.jf = icmp eq i64 %i.je, 1
  %or.cond257 = select i1 %or.cond255.not275, i1 %i.jf, i1 false
  %i.jg = shl i64 %i.im, %i.il
  %i.jh = icmp eq i64 %i.jg, %spec.select.i72.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.jh, i1 false
  %i.ji = and i64 %i.im, 72057594037927934
  %.sroa.0111.0 = select i1 %or.cond259, i64 %i.ji, i64 %i.im ; 2 uses
  %i.jj = and i64 %.sroa.0111.0, 1
  %i.jk = add nuw nsw i64 %i.jj, %.sroa.0111.0    ; 2 uses
  %i.jl = lshr i64 %i.jk, 1
  %.not27.i61 = icmp samesign ugt i64 %i.jk, 18014398509481983 ; 2 uses
  %i.jm = zext i1 %.not27.i61 to i32
  %.sroa.19117.0 = add nuw nsw i32 %i.iq, %i.jm   ; 2 uses
  %i.jn = and i64 %i.jl, 9218868437227405311
  %.not28.i62 = icmp samesign ugt i32 %.sroa.19117.0, 2046 ; 2 uses
  %.not = select i1 %.not28.i62, i1 true, i1 %.not27.i61
  %spec.select268 = select i1 %.not, i64 0, i64 %i.jn ; 2 uses
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
  %.sroa.19117.1471 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.ja, %.split486 ], [ %spec.select269, %.split487 ] ; 3 uses
  %.sroa.0111.2469 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iy, %.split486 ], [ %spec.select268, %.split487 ] ; 2 uses
  %.sroa.7.0160468 = phi i64 [ %.sroa.7.0.ph463483, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.7.0160, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.7.0.ph463483, %.split486 ], [ %.sroa.7.0.ph463483, %.split487 ]
  %i.jo = add i64 %.sroa.7.0160468, 1             ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 0
  %i.jq = icmp slt i64 %.sroa.093.0.ph464481, -342
  %or.cond260 = or i1 %i.jq, %i.jp
  br i1 %or.cond260, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = icmp sgt i64 %.sroa.093.0.ph464481, 308
  br i1 %i.jr, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %.noexc76

.noexc76:                                         ; preds = %bb.bi
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 true) ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = shl i64 %i.jo, %i.js
  %i.jv = trunc nsw i64 %.sroa.093.0.ph464481 to i32 ; 2 uses
  %i.jw = shl nsw i32 %i.jv, 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 5472
  %i.ka = load i64, ptr %i.jz, align 16, !tbaa !279
  %i.kb = zext i64 %i.ju to i128                  ; 2 uses
  %i.kc = zext i64 %i.ka to i128
  %i.kd = mul nuw i128 %i.kc, %i.kb               ; 2 uses
  %i.ke = trunc i128 %i.kd to i64                 ; 2 uses
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 3 uses
  %i.kh = and i64 %i.kg, 511
  %i.ki = icmp eq i64 %i.kh, 511
  br i1 %i.ki, label %.noexc77, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

.noexc77:                                         ; preds = %.noexc76
  %i.kj = getelementptr i8, ptr %i.jy, i64 5480
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !279
  %i.kl = zext i64 %i.kk to i128
  %i.km = mul nuw i128 %i.kl, %i.kb
  %i.kn = lshr i128 %i.km, 64
  %i.ko = trunc nuw i128 %i.kn to i64             ; 2 uses
  %i.kp = add i64 %i.ko, %i.ke                    ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.ko
  %i.kr = zext i1 %i.kq to i64
  %spec.select.i75 = add nuw i64 %i.kr, %i.kg
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78: ; preds = %.noexc77, %.noexc76
  %.pn277 = phi i64 [ %i.kp, %.noexc77 ], [ %i.ke, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.kg, %.noexc76 ] ; 3 uses
  %i.ks = icmp ne i64 %.pn277, -1
  %i.kt = add nsw i64 %.sroa.093.0.ph464481, 27
  %i.ku = icmp ult i64 %i.kt, 83
  %or.cond.i51 = or i1 %i.ku, %i.ks
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78
  %i.kv = lshr i64 %spec.select.i75.pn, 63        ; 2 uses
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = add nuw nsw i64 %i.kv, 9                ; 2 uses
  %i.ky = lshr i64 %spec.select.i75.pn, %i.kx     ; 5 uses
  %i.kz = mul nsw i32 %i.jv, 217706
  %i.la = ashr i32 %i.kz, 16
  %i.lb = add nsw i32 %i.la, 1086
  %i.lc = sub nsw i32 %i.lb, %i.jt
  %i.ld = add nsw i32 %i.lc, %i.kw                ; 3 uses
  %i.le = icmp slt i32 %i.ld, 1
  br i1 %i.le, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.critedge.i52
  %i.lf = sub nsw i32 1, %i.ld                    ; 2 uses
  %i.lg = icmp samesign ugt i32 %i.lf, 63
  br i1 %i.lg, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = lshr i64 %i.ky, %i.lh                   ; 2 uses
  %i.lj = and i64 %i.li, 1
  %i.lk = add nuw nsw i64 %i.lj, %i.li            ; 2 uses
  %i.ll = lshr i64 %i.lk, 1
  %i.lm = icmp samesign ugt i64 %i.lk, 9007199254740991
  %i.ln = zext i1 %i.lm to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.bl:                                            ; preds = %.critedge.i52
  %i.lo = icmp ult i64 %.pn277, 2
  %i.lp = add nsw i64 %.sroa.093.0.ph464481, 4
  %i.lq = icmp ult i64 %i.lp, 28
  %or.cond262.not280 = and i1 %i.lq, %i.lo
  %i.lr = and i64 %i.ky, 3
  %i.ls = icmp eq i64 %i.lr, 1
  %or.cond264 = select i1 %or.cond262.not280, i1 %i.ls, i1 false
  %i.lt = shl i64 %i.ky, %i.kx
  %i.lu = icmp eq i64 %i.lt, %spec.select.i75.pn
  %or.cond266 = select i1 %or.cond264, i1 %i.lu, i1 false
  %i.lv = and i64 %i.ky, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond266, i64 %i.lv, i64 %i.ky ; 2 uses
  %i.lw = and i64 %.sroa.0103.0, 1
  %i.lx = add nuw nsw i64 %i.lw, %.sroa.0103.0    ; 2 uses
  %i.ly = lshr i64 %i.lx, 1
  %.not27.i = icmp samesign ugt i64 %i.lx, 18014398509481983 ; 2 uses
  %i.lz = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.ld, %i.lz      ; 2 uses
  %i.ma = and i64 %i.ly, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not281 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select270 = select i1 %.not281, i64 0, i64 %i.ma
  %spec.select271 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bl, %bb.bj, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bi, %bb.bh, %bb.bk
  %.sroa.0103.2 = phi i64 [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.ll, %bb.bk ], [ %spec.select270, %bb.bl ], [ 0, %bb.bj ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bi ], [ 0, %bb.bh ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.ln, %bb.bk ], [ %spec.select271, %bb.bl ], [ 0, %bb.bj ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2469, %.sroa.0103.2
  %i.mb = icmp ne i32 %.sroa.19117.1471, %.sroa.19.1
end_hunk_0
