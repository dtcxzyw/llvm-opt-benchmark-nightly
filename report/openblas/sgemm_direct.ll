Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_direct?download=true
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@sgemm_direct:bb.a

.epil.preheader2249:                              ; preds = %._crit_edge1408.loopexit.unr-lcssa, %.lr.ph1407
  %indvars.iv1772.epil.init = phi i64 [ 0, %.lr.ph1407 ], [ %indvars.iv.next1773.1, %._crit_edge1408.loopexit.unr-lcssa ] ; 5 uses
  %.012341405.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph1407 ], [ %i.op, %._crit_edge1408.loopexit.unr-lcssa ]
  %.012351404.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph1407 ], [ %i.oq, %._crit_edge1408.loopexit.unr-lcssa ]
  %.012361403.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph1407 ], [ %i.or, %._crit_edge1408.loopexit.unr-lcssa ]
  %.012371402.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph1407 ], [ %i.os, %._crit_edge1408.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2256)
  %i.ot = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv1772.epil.init
  %i.ou = load float, ptr %i.ot, align 1, !tbaa !8
  %i.ov = insertelement <4 x float> poison, float %i.ou, i64 0
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ox = getelementptr [4 x i8], ptr %i.ix, i64 %indvars.iv1772.epil.init
  %i.oy = load float, ptr %i.ox, align 1, !tbaa !8
  %i.oz = insertelement <4 x float> poison, float %i.oy, i64 0
  %i.pa = shufflevector <4 x float> %i.oz, <4 x float> poison, <8 x i32> zeroinitializer
  %i.pb = getelementptr [4 x i8], ptr %i.ja, i64 %indvars.iv1772.epil.init
  %i.pc = load float, ptr %i.pb, align 1, !tbaa !8
  %i.pd = insertelement <4 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> poison, <8 x i32> zeroinitializer
  %i.pf = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv1772.epil.init
  %i.pg = load float, ptr %i.pf, align 1, !tbaa !8
  %i.ph = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> poison, <8 x i32> zeroinitializer
  %i.pj = mul nsw i64 %indvars.iv1772.epil.init, %6
  %gep1414.epil = getelementptr [4 x i8], ptr %invariant.gep1413, i64 %i.pj
  %i.pk = load <8 x float>, ptr %gep1414.epil, align 1, !tbaa !8 ; 4 uses
  %i.pl = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ow, <8 x float> %i.pk, <8 x float> %.012341405.epil.init)
  %i.pm = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.pa, <8 x float> %i.pk, <8 x float> %.012351404.epil.init)
  %i.pn = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.pe, <8 x float> %i.pk, <8 x float> %.012361403.epil.init)
  %i.po = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.pi, <8 x float> %i.pk, <8 x float> %.012371402.epil.init)
  br label %._crit_edge1408

._crit_edge1408:                                  ; preds = %.epil.preheader2249, %._crit_edge1408.loopexit.unr-lcssa, %.preheader1319
  %.01237.lcssa = phi <8 x float> [ zeroinitializer, %.preheader1319 ], [ %i.os, %._crit_edge1408.loopexit.unr-lcssa ], [ %i.po, %.epil.preheader2249 ]
  %.01236.lcssa = phi <8 x float> [ zeroinitializer, %.preheader1319 ], [ %i.or, %._crit_edge1408.loopexit.unr-lcssa ], [ %i.pn, %.epil.preheader2249 ]
  %.01235.lcssa = phi <8 x float> [ zeroinitializer, %.preheader1319 ], [ %i.oq, %._crit_edge1408.loopexit.unr-lcssa ], [ %i.pm, %.epil.preheader2249 ]
  %.01234.lcssa = phi <8 x float> [ zeroinitializer, %.preheader1319 ], [ %i.op, %._crit_edge1408.loopexit.unr-lcssa ], [ %i.pl, %.epil.preheader2249 ]
  %i.pp = getelementptr [4 x i8], ptr %i.jf, i64 %indvars.iv1776
  store <8 x float> %.01234.lcssa, ptr %i.pp, align 1, !tbaa !8
  %i.pq = getelementptr [4 x i8], ptr %i.jh, i64 %indvars.iv1776
  store <8 x float> %.01235.lcssa, ptr %i.pq, align 1, !tbaa !8
  %i.pr = getelementptr [4 x i8], ptr %i.jj, i64 %indvars.iv1776
  store <8 x float> %.01236.lcssa, ptr %i.pr, align 1, !tbaa !8
  %i.ps = getelementptr [4 x i8], ptr %i.jl, i64 %indvars.iv1776
  store <8 x float> %.01237.lcssa, ptr %i.ps, align 1, !tbaa !8
  %indvars.iv.next1777 = add nuw nsw i64 %indvars.iv1776, 8 ; 2 uses
  %i.pt = trunc nuw i64 %indvars.iv.next1777 to i32 ; 2 uses
  %i.pu = icmp sgt i32 %i.g, %i.pt
  br i1 %i.pu, label %.preheader1319, label %.preheader1325, !llvm.loop !17

.preheader1324:                                   ; preds = %._crit_edge1423, %.preheader1325
  %.4.lcssa = phi i32 [ %.3.lcssa, %.preheader1325 ], [ %i.ti, %._crit_edge1423 ] ; 3 uses
  %i.pv = icmp slt i32 %.4.lcssa, %i.i
  br i1 %i.pv, label %.preheader1317.lr.ph, label %.preheader1323

.preheader1317.lr.ph:                             ; preds = %.preheader1324
  %i.pw = mul nsw i64 %4, %indvars.iv1800.a
  %i.px = getelementptr [4 x i8], ptr %3, i64 %i.pw ; 3 uses
  %i.py = or disjoint i64 %indvars.iv1800.a, 1    ; 2 uses
  %i.pz = mul nsw i64 %4, %i.py
  %i.qa = getelementptr [4 x i8], ptr %3, i64 %i.pz ; 3 uses
  %i.qb = or disjoint i64 %indvars.iv1800.a, 2    ; 2 uses
  %i.qc = mul nsw i64 %4, %i.qb
  %i.qd = getelementptr [4 x i8], ptr %3, i64 %i.qc ; 3 uses
  %i.qe = or disjoint i64 %indvars.iv1800.a, 3    ; 2 uses
  %i.qf = mul nsw i64 %4, %i.qe
  %i.qg = getelementptr [4 x i8], ptr %3, i64 %i.qf ; 3 uses
  %i.qh = mul nsw i64 %8, %indvars.iv1800.a
  %i.qi = getelementptr [4 x i8], ptr %7, i64 %i.qh
  %i.qj = mul nsw i64 %8, %i.py
  %i.qk = getelementptr [4 x i8], ptr %7, i64 %i.qj
  %i.ql = mul nsw i64 %8, %i.qb
  %i.qm = getelementptr [4 x i8], ptr %7, i64 %i.ql
  %i.qn = mul nsw i64 %8, %i.qe
  %i.qo = getelementptr [4 x i8], ptr %7, i64 %i.qn
  %i.qp = zext i32 %.4.lcssa to i64
  br label %.preheader1317

.preheader1318:                                   ; preds = %.preheader1318.lr.ph, %._crit_edge1423
  %indvars.iv1783 = phi i64 [ %i.na, %.preheader1318.lr.ph ], [ %indvars.iv.next1784, %._crit_edge1423 ] ; 6 uses
  br i1 %i.m, label %.lr.ph1422, label %._crit_edge1423

.lr.ph1422:                                       ; preds = %.preheader1318
  %invariant.gep1428 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1783 ; 3 uses
  br i1 %i.t, label %.epil.preheader2259, label %.lr.ph1422.new

.lr.ph1422.new:                                   ; preds = %.lr.ph1422, %.lr.ph1422.new
  %indvars.iv1779 = phi i64 [ %indvars.iv.next1780.1, %.lr.ph1422.new ], [ 0, %.lr.ph1422 ] ; 7 uses
  %.012381420 = phi <4 x float> [ %i.se, %.lr.ph1422.new ], [ zeroinitializer, %.lr.ph1422 ]
  %.012391419 = phi <4 x float> [ %i.sf, %.lr.ph1422.new ], [ zeroinitializer, %.lr.ph1422 ]
  %.012481418 = phi <4 x float> [ %i.sg, %.lr.ph1422.new ], [ zeroinitializer, %.lr.ph1422 ]
  %.012491417 = phi <4 x float> [ %i.sh, %.lr.ph1422.new ], [ zeroinitializer, %.lr.ph1422 ]
  %niter2268 = phi i64 [ %niter2268.next.1, %.lr.ph1422.new ], [ 0, %.lr.ph1422 ]
  %i.qq = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv1779
  %i.qr = load float, ptr %i.qq, align 1, !tbaa !8
  %i.qs = insertelement <4 x float> poison, float %i.qr, i64 0
  %i.qt = shufflevector <4 x float> %i.qs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qu = getelementptr [4 x i8], ptr %i.ml, i64 %indvars.iv1779
  %i.qv = load float, ptr %i.qu, align 1, !tbaa !8
  %i.qw = insertelement <4 x float> poison, float %i.qv, i64 0
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qy = getelementptr [4 x i8], ptr %i.mo, i64 %indvars.iv1779
  %i.qz = load float, ptr %i.qy, align 1, !tbaa !8
  %i.ra = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.rb = shufflevector <4 x float> %i.ra, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rc = getelementptr [4 x i8], ptr %i.mr, i64 %indvars.iv1779
  %i.rd = load float, ptr %i.rc, align 1, !tbaa !8
  %i.re = insertelement <4 x float> poison, float %i.rd, i64 0
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rg = mul nsw i64 %indvars.iv1779, %6
  %gep1429 = getelementptr [4 x i8], ptr %invariant.gep1428, i64 %i.rg
  %i.rh = load <4 x float>, ptr %gep1429, align 1, !tbaa !8 ; 4 uses
  %i.ri = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.qt, <4 x float> %i.rh, <4 x float> %.012381420)
  %i.rj = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.qx, <4 x float> %i.rh, <4 x float> %.012391419)
  %i.rk = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.rb, <4 x float> %i.rh, <4 x float> %.012481418)
  %i.rl = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.rf, <4 x float> %i.rh, <4 x float> %.012491417)
  %indvars.iv.next1780 = or disjoint i64 %indvars.iv1779, 1 ; 5 uses
  %i.rm = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv.next1780
  %i.rn = load float, ptr %i.rm, align 1, !tbaa !8
  %i.ro = insertelement <4 x float> poison, float %i.rn, i64 0
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rq = getelementptr [4 x i8], ptr %i.ml, i64 %indvars.iv.next1780
  %i.rr = load float, ptr %i.rq, align 1, !tbaa !8
  %i.rs = insertelement <4 x float> poison, float %i.rr, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = getelementptr [4 x i8], ptr %i.mo, i64 %indvars.iv.next1780
  %i.rv = load float, ptr %i.ru, align 1, !tbaa !8
  %i.rw = insertelement <4 x float> poison, float %i.rv, i64 0
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ry = getelementptr [4 x i8], ptr %i.mr, i64 %indvars.iv.next1780
  %i.rz = load float, ptr %i.ry, align 1, !tbaa !8
  %i.sa = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sc = mul nsw i64 %indvars.iv.next1780, %6
  %gep1429.1 = getelementptr [4 x i8], ptr %invariant.gep1428, i64 %i.sc
  %i.sd = load <4 x float>, ptr %gep1429.1, align 1, !tbaa !8 ; 4 uses
  %i.se = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.rp, <4 x float> %i.sd, <4 x float> %i.ri) ; 3 uses
  %i.sf = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.rt, <4 x float> %i.sd, <4 x float> %i.rj) ; 3 uses
  %i.sg = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.rx, <4 x float> %i.sd, <4 x float> %i.rk) ; 3 uses
  %i.sh = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sb, <4 x float> %i.sd, <4 x float> %i.rl) ; 3 uses
  %indvars.iv.next1780.1 = add nuw nsw i64 %indvars.iv1779, 2 ; 2 uses
  %niter2268.next.1 = add nuw nsw i64 %niter2268, 2 ; 2 uses
  %niter2268.ncmp.1 = icmp eq i64 %niter2268.next.1, %unroll_iter2267
  br i1 %niter2268.ncmp.1, label %._crit_edge1423.loopexit.unr-lcssa, label %.lr.ph1422.new, !llvm.loop !18

._crit_edge1423.loopexit.unr-lcssa:               ; preds = %.lr.ph1422.new
  br i1 %lcmp.mod2261.not, label %._crit_edge1423, label %.epil.preheader2259

.epil.preheader2259:                              ; preds = %._crit_edge1423.loopexit.unr-lcssa, %.lr.ph1422
  %indvars.iv1779.epil.init = phi i64 [ 0, %.lr.ph1422 ], [ %indvars.iv.next1780.1, %._crit_edge1423.loopexit.unr-lcssa ] ; 5 uses
  %.012381420.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1422 ], [ %i.se, %._crit_edge1423.loopexit.unr-lcssa ]
  %.012391419.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1422 ], [ %i.sf, %._crit_edge1423.loopexit.unr-lcssa ]
  %.012481418.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1422 ], [ %i.sg, %._crit_edge1423.loopexit.unr-lcssa ]
  %.012491417.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1422 ], [ %i.sh, %._crit_edge1423.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2266)
  %i.si = getelementptr [4 x i8], ptr %i.mi, i64 %indvars.iv1779.epil.init
  %i.sj = load float, ptr %i.si, align 1, !tbaa !8
  %i.sk = insertelement <4 x float> poison, float %i.sj, i64 0
  %i.sl = shufflevector <4 x float> %i.sk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sm = getelementptr [4 x i8], ptr %i.ml, i64 %indvars.iv1779.epil.init
  %i.sn = load float, ptr %i.sm, align 1, !tbaa !8
  %i.so = insertelement <4 x float> poison, float %i.sn, i64 0
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sq = getelementptr [4 x i8], ptr %i.mo, i64 %indvars.iv1779.epil.init
  %i.sr = load float, ptr %i.sq, align 1, !tbaa !8
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.su = getelementptr [4 x i8], ptr %i.mr, i64 %indvars.iv1779.epil.init
  %i.sv = load float, ptr %i.su, align 1, !tbaa !8
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sy = mul nsw i64 %indvars.iv1779.epil.init, %6
  %gep1429.epil = getelementptr [4 x i8], ptr %invariant.gep1428, i64 %i.sy
  %i.sz = load <4 x float>, ptr %gep1429.epil, align 1, !tbaa !8 ; 4 uses
  %i.ta = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sl, <4 x float> %i.sz, <4 x float> %.012381420.epil.init)
  %i.tb = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sp, <4 x float> %i.sz, <4 x float> %.012391419.epil.init)
  %i.tc = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.st, <4 x float> %i.sz, <4 x float> %.012481418.epil.init)
  %i.td = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sx, <4 x float> %i.sz, <4 x float> %.012491417.epil.init)
  br label %._crit_edge1423

._crit_edge1423:                                  ; preds = %.epil.preheader2259, %._crit_edge1423.loopexit.unr-lcssa, %.preheader1318
  %.01249.lcssa = phi <4 x float> [ zeroinitializer, %.preheader1318 ], [ %i.sh, %._crit_edge1423.loopexit.unr-lcssa ], [ %i.td, %.epil.preheader2259 ]
  %.01248.lcssa = phi <4 x float> [ zeroinitializer, %.preheader1318 ], [ %i.sg, %._crit_edge1423.loopexit.unr-lcssa ], [ %i.tc, %.epil.preheader2259 ]
  %.01239.lcssa = phi <4 x float> [ zeroinitializer, %.preheader1318 ], [ %i.sf, %._crit_edge1423.loopexit.unr-lcssa ], [ %i.tb, %.epil.preheader2259 ]
  %.01238.lcssa = phi <4 x float> [ zeroinitializer, %.preheader1318 ], [ %i.se, %._crit_edge1423.loopexit.unr-lcssa ], [ %i.ta, %.epil.preheader2259 ]
  %i.te = getelementptr [4 x i8], ptr %i.mt, i64 %indvars.iv1783
  store <4 x float> %.01238.lcssa, ptr %i.te, align 1, !tbaa !8
  %i.tf = getelementptr [4 x i8], ptr %i.mv, i64 %indvars.iv1783
  store <4 x float> %.01239.lcssa, ptr %i.tf, align 1, !tbaa !8
  %i.tg = getelementptr [4 x i8], ptr %i.mx, i64 %indvars.iv1783
  store <4 x float> %.01248.lcssa, ptr %i.tg, align 1, !tbaa !8
  %i.th = getelementptr [4 x i8], ptr %i.mz, i64 %indvars.iv1783
  store <4 x float> %.01249.lcssa, ptr %i.th, align 1, !tbaa !8
  %indvars.iv.next1784 = add nuw nsw i64 %indvars.iv1783, 4 ; 2 uses
  %i.ti = trunc nuw i64 %indvars.iv.next1784 to i32 ; 2 uses
  %i.tj = icmp sgt i32 %i.h, %i.ti
  br i1 %i.tj, label %.preheader1318, label %.preheader1324, !llvm.loop !19

.preheader1323:                                   ; preds = %._crit_edge1442, %.preheader1324
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader1324 ], [ %i.xe, %._crit_edge1442 ] ; 2 uses
  %9 = zext nneg i32 %.5.lcssa to i64             ; 2 uses
  %i.tk = icmp sgt i64 %1, %9
  br i1 %i.tk, label %.preheader1316.lr.ph, label %._crit_edge1469

.preheader1316.lr.ph:                             ; preds = %.preheader1323
  %i.tl = mul nsw i64 %4, %indvars.iv1800.a
  %i.tm = getelementptr [4 x i8], ptr %3, i64 %i.tl ; 5 uses
  %i.tn = or disjoint i64 %indvars.iv1800.a, 1    ; 2 uses
  %i.to = mul nsw i64 %4, %i.tn
  %i.tp = getelementptr [4 x i8], ptr %3, i64 %i.to ; 5 uses
  %i.tq = or disjoint i64 %indvars.iv1800.a, 2    ; 2 uses
  %i.tr = mul nsw i64 %4, %i.tq
  %i.ts = getelementptr [4 x i8], ptr %3, i64 %i.tr ; 5 uses
  %i.tt = or disjoint i64 %indvars.iv1800.a, 3    ; 2 uses
  %i.tu = mul nsw i64 %4, %i.tt
  %i.tv = getelementptr [4 x i8], ptr %3, i64 %i.tu ; 5 uses
  %i.tw = mul nsw i64 %8, %indvars.iv1800.a
  %i.tx = getelementptr [4 x i8], ptr %7, i64 %i.tw
  %i.ty = mul nsw i64 %8, %i.tn
  %i.tz = getelementptr [4 x i8], ptr %7, i64 %i.ty
  %i.ua = mul nsw i64 %8, %i.tq
  %i.ub = getelementptr [4 x i8], ptr %7, i64 %i.ua
  %i.uc = mul nsw i64 %8, %i.tt
  %i.ud = getelementptr [4 x i8], ptr %7, i64 %i.uc
  br label %.preheader1316

.preheader1317:                                   ; preds = %.preheader1317.lr.ph, %._crit_edge1442
  %indvars.iv1790 = phi i64 [ %i.qp, %.preheader1317.lr.ph ], [ %indvars.iv.next1791, %._crit_edge1442 ] ; 6 uses
  br i1 %i.m, label %.lr.ph1441, label %._crit_edge1442

.lr.ph1441:                                       ; preds = %.preheader1317
  %invariant.gep1451 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1790 ; 3 uses
  br i1 %i.u, label %.epil.preheader2269, label %.lr.ph1441.new

.lr.ph1441.new:                                   ; preds = %.lr.ph1441, %.lr.ph1441.new
  %indvars.iv1786 = phi i64 [ %indvars.iv.next1787.1, %.lr.ph1441.new ], [ 0, %.lr.ph1441 ] ; 7 uses
  %i.ue = phi <2 x float> [ %i.vz, %.lr.ph1441.new ], [ zeroinitializer, %.lr.ph1441 ]
  %i.uf = phi <2 x float> [ %i.vw, %.lr.ph1441.new ], [ zeroinitializer, %.lr.ph1441 ]
  %i.ug = phi <2 x float> [ %i.vt, %.lr.ph1441.new ], [ zeroinitializer, %.lr.ph1441 ]
  %i.uh = phi <2 x float> [ %i.vq, %.lr.ph1441.new ], [ zeroinitializer, %.lr.ph1441 ]
  %niter2284 = phi i64 [ %niter2284.next.1, %.lr.ph1441.new ], [ 0, %.lr.ph1441 ]
  %i.ui = getelementptr [4 x i8], ptr %i.px, i64 %indvars.iv1786
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !20
  %i.uk = getelementptr [4 x i8], ptr %i.qa, i64 %indvars.iv1786
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !20
  %i.um = getelementptr [4 x i8], ptr %i.qd, i64 %indvars.iv1786
  %i.un = load float, ptr %i.um, align 4, !tbaa !20
  %i.uo = getelementptr [4 x i8], ptr %i.qg, i64 %indvars.iv1786
  %i.up = load float, ptr %i.uo, align 4, !tbaa !20
  %i.uq = mul nsw i64 %indvars.iv1786, %6
  %gep1452 = getelementptr [4 x i8], ptr %invariant.gep1451, i64 %i.uq
  %i.ur = load <2 x float>, ptr %gep1452, align 4, !tbaa !20 ; 4 uses
  %i.us = insertelement <2 x float> poison, float %i.uj, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ut, <2 x float> %i.ur, <2 x float> %i.uh)
  %i.uv = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uw, <2 x float> %i.ur, <2 x float> %i.ug)
  %i.uy = insertelement <2 x float> poison, float %i.un, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.va = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uz, <2 x float> %i.ur, <2 x float> %i.uf)
  %i.vb = insertelement <2 x float> poison, float %i.up, i64 0
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vc, <2 x float> %i.ur, <2 x float> %i.ue)
  %indvars.iv.next1787 = or disjoint i64 %indvars.iv1786, 1 ; 5 uses
  %i.ve = getelementptr [4 x i8], ptr %i.px, i64 %indvars.iv.next1787
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !20
  %i.vg = getelementptr [4 x i8], ptr %i.qa, i64 %indvars.iv.next1787
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !20
  %i.vi = getelementptr [4 x i8], ptr %i.qd, i64 %indvars.iv.next1787
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !20
  %i.vk = getelementptr [4 x i8], ptr %i.qg, i64 %indvars.iv.next1787
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !20
  %i.vm = mul nsw i64 %indvars.iv.next1787, %6
  %gep1452.1 = getelementptr [4 x i8], ptr %invariant.gep1451, i64 %i.vm
  %i.vn = load <2 x float>, ptr %gep1452.1, align 4, !tbaa !20 ; 4 uses
  %i.vo = insertelement <2 x float> poison, float %i.vf, i64 0
  %i.vp = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vp, <2 x float> %i.vn, <2 x float> %i.uu) ; 3 uses
  %i.vr = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vs, <2 x float> %i.vn, <2 x float> %i.ux) ; 3 uses
  %i.vu = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.vv = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vv, <2 x float> %i.vn, <2 x float> %i.va) ; 3 uses
  %i.vx = insertelement <2 x float> poison, float %i.vl, i64 0
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vy, <2 x float> %i.vn, <2 x float> %i.vd) ; 3 uses
  %indvars.iv.next1787.1 = add nuw nsw i64 %indvars.iv1786, 2 ; 2 uses
  %niter2284.next.1 = add nuw nsw i64 %niter2284, 2 ; 2 uses
  %niter2284.ncmp.1 = icmp eq i64 %niter2284.next.1, %unroll_iter2283
  br i1 %niter2284.ncmp.1, label %._crit_edge1442.loopexit.unr-lcssa, label %.lr.ph1441.new, !llvm.loop !22

._crit_edge1442.loopexit.unr-lcssa:               ; preds = %.lr.ph1441.new
  br i1 %lcmp.mod2277.not, label %._crit_edge1442, label %.epil.preheader2269

.epil.preheader2269:                              ; preds = %._crit_edge1442.loopexit.unr-lcssa, %.lr.ph1441
  %indvars.iv1786.epil.init = phi i64 [ 0, %.lr.ph1441 ], [ %indvars.iv.next1787.1, %._crit_edge1442.loopexit.unr-lcssa ] ; 5 uses
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph1441 ], [ %i.vz, %._crit_edge1442.loopexit.unr-lcssa ]
  %.epil.init2272 = phi <2 x float> [ zeroinitializer, %.lr.ph1441 ], [ %i.vw, %._crit_edge1442.loopexit.unr-lcssa ]
  %.epil.init2274 = phi <2 x float> [ zeroinitializer, %.lr.ph1441 ], [ %i.vt, %._crit_edge1442.loopexit.unr-lcssa ]
  %.epil.init2276 = phi <2 x float> [ zeroinitializer, %.lr.ph1441 ], [ %i.vq, %._crit_edge1442.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2282)
  %i.wa = getelementptr [4 x i8], ptr %i.px, i64 %indvars.iv1786.epil.init
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !20
  %i.wc = getelementptr [4 x i8], ptr %i.qa, i64 %indvars.iv1786.epil.init
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !20
  %i.we = getelementptr [4 x i8], ptr %i.qd, i64 %indvars.iv1786.epil.init
  %i.wf = load float, ptr %i.we, align 4, !tbaa !20
  %i.wg = getelementptr [4 x i8], ptr %i.qg, i64 %indvars.iv1786.epil.init
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !20
  %i.wi = mul nsw i64 %indvars.iv1786.epil.init, %6
  %gep1452.epil = getelementptr [4 x i8], ptr %invariant.gep1451, i64 %i.wi
  %i.wj = load <2 x float>, ptr %gep1452.epil, align 4, !tbaa !20 ; 4 uses
  %i.wk = insertelement <2 x float> poison, float %i.wb, i64 0
  %i.wl = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wl, <2 x float> %i.wj, <2 x float> %.epil.init2276)
  %i.wn = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wo, <2 x float> %i.wj, <2 x float> %.epil.init2274)
  %i.wq = insertelement <2 x float> poison, float %i.wf, i64 0
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wr, <2 x float> %i.wj, <2 x float> %.epil.init2272)
  %i.wt = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.wu = shufflevector <2 x float> %i.wt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wu, <2 x float> %i.wj, <2 x float> %.epil.init)
  br label %._crit_edge1442

._crit_edge1442:                                  ; preds = %.epil.preheader2269, %._crit_edge1442.loopexit.unr-lcssa, %.preheader1317
  %i.ww = phi <2 x float> [ zeroinitializer, %.preheader1317 ], [ %i.vz, %._crit_edge1442.loopexit.unr-lcssa ], [ %i.wv, %.epil.preheader2269 ]
  %i.wx = phi <2 x float> [ zeroinitializer, %.preheader1317 ], [ %i.vw, %._crit_edge1442.loopexit.unr-lcssa ], [ %i.ws, %.epil.preheader2269 ]
  %i.wy = phi <2 x float> [ zeroinitializer, %.preheader1317 ], [ %i.vt, %._crit_edge1442.loopexit.unr-lcssa ], [ %i.wp, %.epil.preheader2269 ]
  %i.wz = phi <2 x float> [ zeroinitializer, %.preheader1317 ], [ %i.vq, %._crit_edge1442.loopexit.unr-lcssa ], [ %i.wm, %.epil.preheader2269 ]
  %i.xa = getelementptr [4 x i8], ptr %i.qi, i64 %indvars.iv1790
  store <2 x float> %i.wz, ptr %i.xa, align 4, !tbaa !20
  %i.xb = getelementptr [4 x i8], ptr %i.qk, i64 %indvars.iv1790
  store <2 x float> %i.wy, ptr %i.xb, align 4, !tbaa !20
  %i.xc = getelementptr [4 x i8], ptr %i.qm, i64 %indvars.iv1790
  store <2 x float> %i.wx, ptr %i.xc, align 4, !tbaa !20
  %i.xd = getelementptr [4 x i8], ptr %i.qo, i64 %indvars.iv1790
  store <2 x float> %i.ww, ptr %i.xd, align 4, !tbaa !20
  %indvars.iv.next1791 = add nuw nsw i64 %indvars.iv1790, 2 ; 2 uses
  %i.xe = trunc nuw i64 %indvars.iv.next1791 to i32 ; 2 uses
  %i.xf = icmp sgt i32 %i.i, %i.xe
  br i1 %i.xf, label %.preheader1317, label %.preheader1323, !llvm.loop !23

.preheader1316:                                   ; preds = %.preheader1316.lr.ph, %._crit_edge1463
  %indvars.iv1797 = phi i64 [ %9, %.preheader1316.lr.ph ], [ %11, %._crit_edge1463 ] ; 5 uses
  %.61468 = phi i32 [ %.5.lcssa, %.preheader1316.lr.ph ], [ %10, %._crit_edge1463 ]
  %invariant.gep1455 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1797 ; 5 uses
  br i1 %i.m, label %.lr.ph1462.preheader, label %._crit_edge1463

.lr.ph1462.preheader:                             ; preds = %.preheader1316
  br i1 %i.v, label %.lr.ph1462.epil.preheader, label %.lr.ph1462

.lr.ph1462:                                       ; preds = %.lr.ph1462.preheader, %.lr.ph1462
  %indvars.iv1793 = phi i64 [ %indvars.iv.next1794.3, %.lr.ph1462 ], [ 0, %.lr.ph1462.preheader ] ; 9 uses
  %.012531460 = phi float [ %i.zj, %.lr.ph1462 ], [ 0.000000e+00, %.lr.ph1462.preheader ]
  %.012541459 = phi float [ %i.zi, %.lr.ph1462 ], [ 0.000000e+00, %.lr.ph1462.preheader ]
  %.012551458 = phi float [ %i.zh, %.lr.ph1462 ], [ 0.000000e+00, %.lr.ph1462.preheader ]
  %.012561457 = phi float [ %i.zg, %.lr.ph1462 ], [ 0.000000e+00, %.lr.ph1462.preheader ]
  %niter2293 = phi i64 [ %niter2293.next.3, %.lr.ph1462 ], [ 0, %.lr.ph1462.preheader ]
  %i.xg = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv1793
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !20
  %i.xi = getelementptr [4 x i8], ptr %i.tp, i64 %indvars.iv1793
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !20
  %i.xk = getelementptr [4 x i8], ptr %i.ts, i64 %indvars.iv1793
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !20
  %i.xm = getelementptr [4 x i8], ptr %i.tv, i64 %indvars.iv1793
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !20
  %i.xo = mul nsw i64 %indvars.iv1793, %6
  %gep1456 = getelementptr [4 x i8], ptr %invariant.gep1455, i64 %i.xo
  %i.xp = load float, ptr %gep1456, align 4, !tbaa !20 ; 4 uses
  %i.xq = tail call float @llvm.fmuladd.f32(float %i.xh, float %i.xp, float %.012561457)
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.xj, float %i.xp, float %.012551458)
  %i.xs = tail call float @llvm.fmuladd.f32(float %i.xl, float %i.xp, float %.012541459)
  %i.xt = tail call float @llvm.fmuladd.f32(float %i.xn, float %i.xp, float %.012531460)
  %indvars.iv.next1794 = or disjoint i64 %indvars.iv1793, 1 ; 5 uses
  %i.xu = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv.next1794
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !20
  %i.xw = getelementptr [4 x i8], ptr %i.tp, i64 %indvars.iv.next1794
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !20
  %i.xy = getelementptr [4 x i8], ptr %i.ts, i64 %indvars.iv.next1794
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !20
  %i.ya = getelementptr [4 x i8], ptr %i.tv, i64 %indvars.iv.next1794
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !20
  %i.yc = mul nsw i64 %indvars.iv.next1794, %6
  %gep1456.1 = getelementptr [4 x i8], ptr %invariant.gep1455, i64 %i.yc
  %i.yd = load float, ptr %gep1456.1, align 4, !tbaa !20 ; 4 uses
  %i.ye = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.yd, float %i.xq)
  %i.yf = tail call float @llvm.fmuladd.f32(float %i.xx, float %i.yd, float %i.xr)
  %i.yg = tail call float @llvm.fmuladd.f32(float %i.xz, float %i.yd, float %i.xs)
  %i.yh = tail call float @llvm.fmuladd.f32(float %i.yb, float %i.yd, float %i.xt)
  %indvars.iv.next1794.1 = or disjoint i64 %indvars.iv1793, 2 ; 5 uses
  %i.yi = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv.next1794.1
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !20
  %i.yk = getelementptr [4 x i8], ptr %i.tp, i64 %indvars.iv.next1794.1
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !20
  %i.ym = getelementptr [4 x i8], ptr %i.ts, i64 %indvars.iv.next1794.1
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !20
  %i.yo = getelementptr [4 x i8], ptr %i.tv, i64 %indvars.iv.next1794.1
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !20
  %i.yq = mul nsw i64 %indvars.iv.next1794.1, %6
  %gep1456.2 = getelementptr [4 x i8], ptr %invariant.gep1455, i64 %i.yq
  %i.yr = load float, ptr %gep1456.2, align 4, !tbaa !20 ; 4 uses
  %i.ys = tail call float @llvm.fmuladd.f32(float %i.yj, float %i.yr, float %i.ye)
  %i.yt = tail call float @llvm.fmuladd.f32(float %i.yl, float %i.yr, float %i.yf)
  %i.yu = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.yr, float %i.yg)
  %i.yv = tail call float @llvm.fmuladd.f32(float %i.yp, float %i.yr, float %i.yh)
  %indvars.iv.next1794.2 = or disjoint i64 %indvars.iv1793, 3 ; 5 uses
  %i.yw = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv.next1794.2
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !20
  %i.yy = getelementptr [4 x i8], ptr %i.tp, i64 %indvars.iv.next1794.2
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !20
  %i.za = getelementptr [4 x i8], ptr %i.ts, i64 %indvars.iv.next1794.2
  %i.zb = load float, ptr %i.za, align 4, !tbaa !20
  %i.zc = getelementptr [4 x i8], ptr %i.tv, i64 %indvars.iv.next1794.2
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !20
  %i.ze = mul nsw i64 %indvars.iv.next1794.2, %6
  %gep1456.3 = getelementptr [4 x i8], ptr %invariant.gep1455, i64 %i.ze
  %i.zf = load float, ptr %gep1456.3, align 4, !tbaa !20 ; 4 uses
  %i.zg = tail call float @llvm.fmuladd.f32(float %i.yx, float %i.zf, float %i.ys) ; 3 uses
  %i.zh = tail call float @llvm.fmuladd.f32(float %i.yz, float %i.zf, float %i.yt) ; 3 uses
  %i.zi = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.zf, float %i.yu) ; 3 uses
  %i.zj = tail call float @llvm.fmuladd.f32(float %i.zd, float %i.zf, float %i.yv) ; 3 uses
  %indvars.iv.next1794.3 = add nuw nsw i64 %indvars.iv1793, 4 ; 2 uses
  %niter2293.next.3 = add nuw nsw i64 %niter2293, 4 ; 2 uses
  %niter2293.ncmp.3 = icmp eq i64 %niter2293.next.3, %unroll_iter2292
  br i1 %niter2293.ncmp.3, label %._crit_edge1463.loopexit.unr-lcssa, label %.lr.ph1462, !llvm.loop !24

._crit_edge1463.loopexit.unr-lcssa:               ; preds = %.lr.ph1462
  br i1 %lcmp.mod2286.not, label %._crit_edge1463, label %.lr.ph1462.epil.preheader

.lr.ph1462.epil.preheader:                        ; preds = %._crit_edge1463.loopexit.unr-lcssa, %.lr.ph1462.preheader
  %indvars.iv1793.epil.init = phi i64 [ 0, %.lr.ph1462.preheader ], [ %indvars.iv.next1794.3, %._crit_edge1463.loopexit.unr-lcssa ]
  %.012531460.epil.init = phi float [ 0.000000e+00, %.lr.ph1462.preheader ], [ %i.zj, %._crit_edge1463.loopexit.unr-lcssa ]
  %.012541459.epil.init = phi float [ 0.000000e+00, %.lr.ph1462.preheader ], [ %i.zi, %._crit_edge1463.loopexit.unr-lcssa ]
  %.012551458.epil.init = phi float [ 0.000000e+00, %.lr.ph1462.preheader ], [ %i.zh, %._crit_edge1463.loopexit.unr-lcssa ]
  %.012561457.epil.init = phi float [ 0.000000e+00, %.lr.ph1462.preheader ], [ %i.zg, %._crit_edge1463.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2291)
  br label %.lr.ph1462.epil

.lr.ph1462.epil:                                  ; preds = %.lr.ph1462.epil, %.lr.ph1462.epil.preheader
  %indvars.iv1793.epil = phi i64 [ %indvars.iv.next1794.epil, %.lr.ph1462.epil ], [ %indvars.iv1793.epil.init, %.lr.ph1462.epil.preheader ] ; 6 uses
  %.012531460.epil = phi float [ %i.zx, %.lr.ph1462.epil ], [ %.012531460.epil.init, %.lr.ph1462.epil.preheader ]
  %.012541459.epil = phi float [ %i.zw, %.lr.ph1462.epil ], [ %.012541459.epil.init, %.lr.ph1462.epil.preheader ]
  %.012551458.epil = phi float [ %i.zv, %.lr.ph1462.epil ], [ %.012551458.epil.init, %.lr.ph1462.epil.preheader ]
  %.012561457.epil = phi float [ %i.zu, %.lr.ph1462.epil ], [ %.012561457.epil.init, %.lr.ph1462.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1462.epil ], [ 0, %.lr.ph1462.epil.preheader ]
  %i.zk = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv1793.epil
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !20
  %i.zm = getelementptr [4 x i8], ptr %i.tp, i64 %indvars.iv1793.epil
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !20
  %i.zo = getelementptr [4 x i8], ptr %i.ts, i64 %indvars.iv1793.epil
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !20
  %i.zq = getelementptr [4 x i8], ptr %i.tv, i64 %indvars.iv1793.epil
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !20
  %i.zs = mul nsw i64 %indvars.iv1793.epil, %6
  %gep1456.epil = getelementptr [4 x i8], ptr %invariant.gep1455, i64 %i.zs
  %i.zt = load float, ptr %gep1456.epil, align 4, !tbaa !20 ; 4 uses
  %i.zu = tail call float @llvm.fmuladd.f32(float %i.zl, float %i.zt, float %.012561457.epil) ; 2 uses
  %i.zv = tail call float @llvm.fmuladd.f32(float %i.zn, float %i.zt, float %.012551458.epil) ; 2 uses
  %i.zw = tail call float @llvm.fmuladd.f32(float %i.zp, float %i.zt, float %.012541459.epil) ; 2 uses
  %i.zx = tail call float @llvm.fmuladd.f32(float %i.zr, float %i.zt, float %.012531460.epil) ; 2 uses
  %indvars.iv.next1794.epil = add nuw nsw i64 %indvars.iv1793.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2285
  br i1 %epil.iter.cmp.not, label %._crit_edge1463, label %.lr.ph1462.epil, !llvm.loop !25

._crit_edge1463:                                  ; preds = %._crit_edge1463.loopexit.unr-lcssa, %.lr.ph1462.epil, %.preheader1316
  %.01256.lcssa = phi float [ 0.000000e+00, %.preheader1316 ], [ %i.zg, %._crit_edge1463.loopexit.unr-lcssa ], [ %i.zu, %.lr.ph1462.epil ]
  %.01255.lcssa = phi float [ 0.000000e+00, %.preheader1316 ], [ %i.zh, %._crit_edge1463.loopexit.unr-lcssa ], [ %i.zv, %.lr.ph1462.epil ]
  %.01254.lcssa = phi float [ 0.000000e+00, %.preheader1316 ], [ %i.zi, %._crit_edge1463.loopexit.unr-lcssa ], [ %i.zw, %.lr.ph1462.epil ]
  %.01253.lcssa = phi float [ 0.000000e+00, %.preheader1316 ], [ %i.zj, %._crit_edge1463.loopexit.unr-lcssa ], [ %i.zx, %.lr.ph1462.epil ]
  %i.zy = getelementptr [4 x i8], ptr %i.tx, i64 %indvars.iv1797
  store float %.01256.lcssa, ptr %i.zy, align 4, !tbaa !20
  %i.zz = getelementptr [4 x i8], ptr %i.tz, i64 %indvars.iv1797
  store float %.01255.lcssa, ptr %i.zz, align 4, !tbaa !20
  %i.aaa = getelementptr [4 x i8], ptr %i.ub, i64 %indvars.iv1797
  store float %.01254.lcssa, ptr %i.aaa, align 4, !tbaa !20
  %i.aab = getelementptr [4 x i8], ptr %i.ud, i64 %indvars.iv1797
  store float %.01253.lcssa, ptr %i.aab, align 4, !tbaa !20
  %10 = add nsw i32 %.61468, 1                    ; 2 uses
  %11 = zext nneg i32 %10 to i64                  ; 2 uses
  %12 = icmp samesign ugt i64 %1, %11
  br i1 %12, label %.preheader1316, label %._crit_edge1469, !llvm.loop !27

._crit_edge1469:                                  ; preds = %._crit_edge1463, %.preheader1323
  %indvars.iv.next1801.a = add nuw nsw i64 %indvars.iv1800.a, 4 ; 3 uses
  %i.aac = icmp samesign ult i64 %indvars.iv.next1801.a, %i.k
  br i1 %i.aac, label %.preheader1329, label %.preheader1315.loopexit, !llvm.loop !28

.preheader1314:                                   ; preds = %.preheader1314.lr.ph, %._crit_edge1568
  %indvars.iv1853 = phi i64 [ %i.av, %.preheader1314.lr.ph ], [ %indvars.iv.next1854, %._crit_edge1568 ] ; 22 uses
  br i1 %i.ar, label %.preheader1307.lr.ph, label %.preheader1313

.preheader1307.lr.ph:                             ; preds = %.preheader1314
  %i.aad = mul nsw i64 %4, %indvars.iv1853
  %i.aae = getelementptr [4 x i8], ptr %3, i64 %i.aad ; 3 uses
  %i.aaf = or disjoint i64 %indvars.iv1853, 1     ; 2 uses
  %i.aag = mul nsw i64 %4, %i.aaf
  %i.aah = getelementptr [4 x i8], ptr %3, i64 %i.aag ; 3 uses
  %i.aai = mul nsw i64 %8, %indvars.iv1853
  %i.aaj = getelementptr [4 x i8], ptr %7, i64 %i.aai
  %i.aak = mul nsw i64 %8, %i.aaf
  %i.aal = getelementptr [4 x i8], ptr %7, i64 %i.aak
  br label %.preheader1307

.preheader1300.loopexit:                          ; preds = %._crit_edge1568
  %i.aam = trunc nuw nsw i64 %indvars.iv.next1854 to i32
  br label %.preheader1300

.preheader1300:                                   ; preds = %.preheader1300.loopexit, %.preheader1315
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader1315 ], [ %i.aam, %.preheader1300.loopexit ]
  %i.aan = zext nneg i32 %.1.lcssa to i64         ; 2 uses
  %i.aao = icmp sgt i64 %0, %i.aan
  br i1 %i.aao, label %.preheader1299.lr.ph, label %._crit_edge1646

.preheader1299.lr.ph:                             ; preds = %.preheader1300
  %i.aap = icmp sgt i32 %i.c, 63
  %i.aaq = icmp sgt i64 %2, 0                     ; 7 uses
  %i.aar = sext i32 %i.d to i64
  %i.aas = sext i32 %i.e to i64                   ; 2 uses
  %i.aat = add i64 %2, -1                         ; 7 uses
  %xtraiter2369 = and i64 %2, 3                   ; 3 uses
  %i.aau = icmp ult i64 %i.aat, 3
  %unroll_iter2377 = and i64 %2, 9223372036854775804
  %lcmp.mod2371.not = icmp eq i64 %xtraiter2369, 0
  %lcmp.mod2376 = icmp ne i64 %xtraiter2369, 0
  %xtraiter2380 = and i64 %2, 3                   ; 3 uses
  %i.aav = icmp ult i64 %i.aat, 3
  %unroll_iter2386 = and i64 %2, 9223372036854775804
  %lcmp.mod2382.not = icmp eq i64 %xtraiter2380, 0
  %lcmp.mod2385 = icmp ne i64 %xtraiter2380, 0
  %xtraiter2389 = and i64 %2, 7                   ; 3 uses
  %i.aaw = icmp ult i64 %i.aat, 7
  %unroll_iter2394 = and i64 %2, 9223372036854775800
  %lcmp.mod2391.not = icmp eq i64 %xtraiter2389, 0
  %lcmp.mod2393 = icmp ne i64 %xtraiter2389, 0
  %xtraiter2397 = and i64 %2, 7                   ; 3 uses
  %i.aax = icmp ult i64 %i.aat, 7
  %unroll_iter2402 = and i64 %2, 9223372036854775800
  %lcmp.mod2399.not = icmp eq i64 %xtraiter2397, 0
  %lcmp.mod2401 = icmp ne i64 %xtraiter2397, 0
  %xtraiter2405 = and i64 %2, 7                   ; 3 uses
  %i.aay = icmp ult i64 %i.aat, 7
  %unroll_iter2410 = and i64 %2, 9223372036854775800
  %lcmp.mod2407.not = icmp eq i64 %xtraiter2405, 0
  %lcmp.mod2409 = icmp ne i64 %xtraiter2405, 0
  %xtraiter2413 = and i64 %2, 7                   ; 3 uses
  %i.aaz = icmp ult i64 %i.aat, 7
  %unroll_iter2420 = and i64 %2, 9223372036854775800
  %lcmp.mod2417.not = icmp eq i64 %xtraiter2413, 0
  %lcmp.mod2419 = icmp ne i64 %xtraiter2413, 0
  %xtraiter2422 = and i64 %2, 7                   ; 3 uses
  %i.aba = icmp ult i64 %i.aat, 7
  %unroll_iter2427 = and i64 %2, 9223372036854775800
  %lcmp.mod2424.not = icmp eq i64 %xtraiter2422, 0
  %lcmp.mod2426 = icmp ne i64 %xtraiter2422, 0
  br label %.preheader1299

.preheader1313.loopexit:                          ; preds = %._crit_edge1482
  %i.abb = trunc nuw nsw i64 %indvars.iv.next1808.a to i32
  br label %.preheader1313

.preheader1313:                                   ; preds = %.preheader1313.loopexit, %.preheader1314
  %.7.lcssa = phi i32 [ 0, %.preheader1314 ], [ %i.abb, %.preheader1313.loopexit ] ; 3 uses
  %i.abc = icmp slt i32 %.7.lcssa, %i.e
  br i1 %i.abc, label %.preheader1306.lr.ph, label %.preheader1312

.preheader1306.lr.ph:                             ; preds = %.preheader1313
  %i.abd = mul nsw i64 %4, %indvars.iv1853
  %i.abe = getelementptr [4 x i8], ptr %3, i64 %i.abd ; 5 uses
  %i.abf = or disjoint i64 %indvars.iv1853, 1     ; 2 uses
  %i.abg = mul nsw i64 %4, %i.abf
  %i.abh = getelementptr [4 x i8], ptr %3, i64 %i.abg ; 5 uses
  %i.abi = mul nsw i64 %8, %indvars.iv1853
  %i.abj = getelementptr [4 x i8], ptr %7, i64 %i.abi
  %i.abk = mul nsw i64 %8, %i.abf
  %i.abl = getelementptr [4 x i8], ptr %7, i64 %i.abk
  %i.abm = zext nneg i32 %.7.lcssa to i64
  br label %.preheader1306

.preheader1307:                                   ; preds = %.preheader1307.lr.ph, %._crit_edge1482
  %indvars.iv1807.a = phi i64 [ 0, %.preheader1307.lr.ph ], [ %indvars.iv.next1808.a, %._crit_edge1482 ] ; 4 uses
  br i1 %i.as, label %.lr.ph1481, label %._crit_edge1482

.lr.ph1481:                                       ; preds = %.preheader1307
  %invariant.gep1491 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1807.a ; 3 uses
  br i1 %i.ay, label %.epil.preheader2294, label %.lr.ph1481.new

.lr.ph1481.new:                                   ; preds = %.lr.ph1481, %.lr.ph1481.new
  %indvars.iv1803 = phi i64 [ %indvars.iv.next1804.1, %.lr.ph1481.new ], [ 0, %.lr.ph1481 ] ; 5 uses
  %.012401479 = phi <16 x float> [ %i.adi, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %.012411478 = phi <16 x float> [ %i.adh, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %.012421477 = phi <16 x float> [ %i.adg, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %.012431476 = phi <16 x float> [ %i.adf, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %.012441475 = phi <16 x float> [ %i.ade, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %.012451474 = phi <16 x float> [ %i.add, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %.012461473 = phi <16 x float> [ %i.adc, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %.012471472 = phi <16 x float> [ %i.adb, %.lr.ph1481.new ], [ zeroinitializer, %.lr.ph1481 ]
  %niter2308 = phi i64 [ %niter2308.next.1, %.lr.ph1481.new ], [ 0, %.lr.ph1481 ]
  %i.abn = getelementptr [4 x i8], ptr %i.aae, i64 %indvars.iv1803
  %i.abo = load float, ptr %i.abn, align 1, !tbaa !8
  %i.abp = insertelement <4 x float> poison, float %i.abo, i64 0
  %i.abq = shufflevector <4 x float> %i.abp, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.abr = getelementptr [4 x i8], ptr %i.aah, i64 %indvars.iv1803
  %i.abs = load float, ptr %i.abr, align 1, !tbaa !8
  %i.abt = insertelement <4 x float> poison, float %i.abs, i64 0
  %i.abu = shufflevector <4 x float> %i.abt, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.abv = mul nsw i64 %indvars.iv1803, %6
  %gep1492 = getelementptr [4 x i8], ptr %invariant.gep1491, i64 %i.abv ; 4 uses
  %i.abw = load <16 x float>, ptr %gep1492, align 1, !tbaa !8 ; 2 uses
  %i.abx = getelementptr i8, ptr %gep1492, i64 64
  %i.aby = load <16 x float>, ptr %i.abx, align 1, !tbaa !8 ; 2 uses
  %i.abz = getelementptr i8, ptr %gep1492, i64 128
  %i.aca = load <16 x float>, ptr %i.abz, align 1, !tbaa !8 ; 2 uses
  %i.acb = getelementptr i8, ptr %gep1492, i64 192
  %i.acc = load <16 x float>, ptr %i.acb, align 1, !tbaa !8 ; 2 uses
  %i.acd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abq, <16 x float> %i.abw, <16 x float> %.012471472)
  %i.ace = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abq, <16 x float> %i.aby, <16 x float> %.012461473)
  %i.acf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abq, <16 x float> %i.aca, <16 x float> %.012451474)
  %i.acg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abq, <16 x float> %i.acc, <16 x float> %.012441475)
  %i.ach = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abu, <16 x float> %i.abw, <16 x float> %.012431476)
  %i.aci = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abu, <16 x float> %i.aby, <16 x float> %.012421477)
  %i.acj = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abu, <16 x float> %i.aca, <16 x float> %.012411478)
  %i.ack = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.abu, <16 x float> %i.acc, <16 x float> %.012401479)
  %indvars.iv.next1804 = or disjoint i64 %indvars.iv1803, 1 ; 3 uses
  %i.acl = getelementptr [4 x i8], ptr %i.aae, i64 %indvars.iv.next1804
  %i.acm = load float, ptr %i.acl, align 1, !tbaa !8
  %i.acn = insertelement <4 x float> poison, float %i.acm, i64 0
  %i.aco = shufflevector <4 x float> %i.acn, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.acp = getelementptr [4 x i8], ptr %i.aah, i64 %indvars.iv.next1804
  %i.acq = load float, ptr %i.acp, align 1, !tbaa !8
  %i.acr = insertelement <4 x float> poison, float %i.acq, i64 0
  %i.acs = shufflevector <4 x float> %i.acr, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.act = mul nsw i64 %indvars.iv.next1804, %6
  %gep1492.1 = getelementptr [4 x i8], ptr %invariant.gep1491, i64 %i.act ; 4 uses
  %i.acu = load <16 x float>, ptr %gep1492.1, align 1, !tbaa !8 ; 2 uses
  %i.acv = getelementptr i8, ptr %gep1492.1, i64 64
  %i.acw = load <16 x float>, ptr %i.acv, align 1, !tbaa !8 ; 2 uses
  %i.acx = getelementptr i8, ptr %gep1492.1, i64 128
  %i.acy = load <16 x float>, ptr %i.acx, align 1, !tbaa !8 ; 2 uses
  %i.acz = getelementptr i8, ptr %gep1492.1, i64 192
  %i.ada = load <16 x float>, ptr %i.acz, align 1, !tbaa !8 ; 2 uses
  %i.adb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aco, <16 x float> %i.acu, <16 x float> %i.acd) ; 3 uses
  %i.adc = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aco, <16 x float> %i.acw, <16 x float> %i.ace) ; 3 uses
  %i.add = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aco, <16 x float> %i.acy, <16 x float> %i.acf) ; 3 uses
  %i.ade = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.aco, <16 x float> %i.ada, <16 x float> %i.acg) ; 3 uses
  %i.adf = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.acs, <16 x float> %i.acu, <16 x float> %i.ach) ; 3 uses
  %i.adg = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.acs, <16 x float> %i.acw, <16 x float> %i.aci) ; 3 uses
  %i.adh = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.acs, <16 x float> %i.acy, <16 x float> %i.acj) ; 3 uses
  %i.adi = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.acs, <16 x float> %i.ada, <16 x float> %i.ack) ; 3 uses
  %indvars.iv.next1804.1 = add nuw nsw i64 %indvars.iv1803, 2 ; 2 uses
  %niter2308.next.1 = add nuw nsw i64 %niter2308, 2 ; 2 uses
  %niter2308.ncmp.1 = icmp eq i64 %niter2308.next.1, %unroll_iter2307
  br i1 %niter2308.ncmp.1, label %._crit_edge1482.loopexit.unr-lcssa, label %.lr.ph1481.new, !llvm.loop !29

._crit_edge1482.loopexit.unr-lcssa:               ; preds = %.lr.ph1481.new
  br i1 %lcmp.mod2297.not, label %._crit_edge1482, label %.epil.preheader2294

.epil.preheader2294:                              ; preds = %._crit_edge1482.loopexit.unr-lcssa, %.lr.ph1481
  %indvars.iv1803.epil.init = phi i64 [ 0, %.lr.ph1481 ], [ %indvars.iv.next1804.1, %._crit_edge1482.loopexit.unr-lcssa ] ; 3 uses
  %.012401479.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.adi, %._crit_edge1482.loopexit.unr-lcssa ]
  %.012411478.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.adh, %._crit_edge1482.loopexit.unr-lcssa ]
  %.012421477.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.adg, %._crit_edge1482.loopexit.unr-lcssa ]
  %.012431476.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.adf, %._crit_edge1482.loopexit.unr-lcssa ]
  %.012441475.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.ade, %._crit_edge1482.loopexit.unr-lcssa ]
  %.012451474.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.add, %._crit_edge1482.loopexit.unr-lcssa ]
  %.012461473.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.adc, %._crit_edge1482.loopexit.unr-lcssa ]
  %.012471472.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph1481 ], [ %i.adb, %._crit_edge1482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2306)
  %i.adj = getelementptr [4 x i8], ptr %i.aae, i64 %indvars.iv1803.epil.init
  %i.adk = load float, ptr %i.adj, align 1, !tbaa !8
  %i.adl = insertelement <4 x float> poison, float %i.adk, i64 0
  %i.adm = shufflevector <4 x float> %i.adl, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.adn = getelementptr [4 x i8], ptr %i.aah, i64 %indvars.iv1803.epil.init
  %i.ado = load float, ptr %i.adn, align 1, !tbaa !8
  %i.adp = insertelement <4 x float> poison, float %i.ado, i64 0
  %i.adq = shufflevector <4 x float> %i.adp, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.adr = mul nsw i64 %indvars.iv1803.epil.init, %6
  %gep1492.epil = getelementptr [4 x i8], ptr %invariant.gep1491, i64 %i.adr ; 4 uses
  %i.ads = load <16 x float>, ptr %gep1492.epil, align 1, !tbaa !8 ; 2 uses
  %i.adt = getelementptr i8, ptr %gep1492.epil, i64 64
  %i.adu = load <16 x float>, ptr %i.adt, align 1, !tbaa !8 ; 2 uses
  %i.adv = getelementptr i8, ptr %gep1492.epil, i64 128
end_hunk_0
begin_hunk_1_@sgemm_direct:bb.a
  %i.anb = getelementptr [4 x i8], ptr %i.aim, i64 %indvars.iv.next1826.2
  %i.anc = load float, ptr %i.anb, align 1, !tbaa !8
  %i.and = insertelement <4 x float> poison, float %i.anc, i64 0
  %i.ane = shufflevector <4 x float> %i.and, <4 x float> poison, <8 x i32> zeroinitializer
  %i.anf = getelementptr [4 x i8], ptr %i.aip, i64 %indvars.iv.next1826.2
  %i.ang = load float, ptr %i.anf, align 1, !tbaa !8
  %i.anh = insertelement <4 x float> poison, float %i.ang, i64 0
  %i.ani = shufflevector <4 x float> %i.anh, <4 x float> poison, <8 x i32> zeroinitializer
  %i.anj = mul nsw i64 %indvars.iv.next1826.2, %6
  %gep1529.3 = getelementptr [4 x i8], ptr %invariant.gep1528, i64 %i.anj
  %i.ank = load <8 x float>, ptr %gep1529.3, align 1, !tbaa !8 ; 2 uses
  %i.anl = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ane, <8 x float> %i.ank, <8 x float> %i.amz) ; 3 uses
  %i.anm = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ani, <8 x float> %i.ank, <8 x float> %i.ana) ; 3 uses
  %indvars.iv.next1826.3 = add nuw nsw i64 %indvars.iv1825, 4 ; 2 uses
  %niter2337.next.3 = add nuw nsw i64 %niter2337, 4 ; 2 uses
  %niter2337.ncmp.3 = icmp eq i64 %niter2337.next.3, %unroll_iter2336
  br i1 %niter2337.ncmp.3, label %._crit_edge1525.loopexit.unr-lcssa, label %.lr.ph1524.new, !llvm.loop !37

._crit_edge1525.loopexit.unr-lcssa:               ; preds = %.lr.ph1524.new
  br i1 %lcmp.mod2332.not, label %._crit_edge1525, label %.epil.preheader2329

.epil.preheader2329:                              ; preds = %._crit_edge1525.loopexit.unr-lcssa, %.lr.ph1524
  %indvars.iv1825.epil.init = phi i64 [ 0, %.lr.ph1524 ], [ %indvars.iv.next1826.3, %._crit_edge1525.loopexit.unr-lcssa ]
  %.012191522.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph1524 ], [ %i.anm, %._crit_edge1525.loopexit.unr-lcssa ]
  %.012201521.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph1524 ], [ %i.anl, %._crit_edge1525.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2335)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader2329
  %indvars.iv1825.epil = phi i64 [ %indvars.iv1825.epil.init, %.epil.preheader2329 ], [ %indvars.iv.next1826.epil, %bb.e ] ; 4 uses
  %.012191522.epil = phi <8 x float> [ %.012191522.epil.init, %.epil.preheader2329 ], [ %i.any, %bb.e ]
  %.012201521.epil = phi <8 x float> [ %.012201521.epil.init, %.epil.preheader2329 ], [ %i.anx, %bb.e ]
  %epil.iter2331 = phi i64 [ 0, %.epil.preheader2329 ], [ %epil.iter2331.next, %bb.e ]
  %i.ann = getelementptr [4 x i8], ptr %i.aim, i64 %indvars.iv1825.epil
  %i.ano = load float, ptr %i.ann, align 1, !tbaa !8
  %i.anp = insertelement <4 x float> poison, float %i.ano, i64 0
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> poison, <8 x i32> zeroinitializer
  %i.anr = getelementptr [4 x i8], ptr %i.aip, i64 %indvars.iv1825.epil
  %i.ans = load float, ptr %i.anr, align 1, !tbaa !8
  %i.ant = insertelement <4 x float> poison, float %i.ans, i64 0
  %i.anu = shufflevector <4 x float> %i.ant, <4 x float> poison, <8 x i32> zeroinitializer
  %i.anv = mul nsw i64 %indvars.iv1825.epil, %6
  %gep1529.epil = getelementptr [4 x i8], ptr %invariant.gep1528, i64 %i.anv
  %i.anw = load <8 x float>, ptr %gep1529.epil, align 1, !tbaa !8 ; 2 uses
  %i.anx = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.anq, <8 x float> %i.anw, <8 x float> %.012201521.epil) ; 2 uses
  %i.any = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.anu, <8 x float> %i.anw, <8 x float> %.012191522.epil) ; 2 uses
  %indvars.iv.next1826.epil = add nuw nsw i64 %indvars.iv1825.epil, 1
  %epil.iter2331.next = add i64 %epil.iter2331, 1 ; 2 uses
  %epil.iter2331.cmp.not = icmp eq i64 %epil.iter2331.next, %xtraiter2330
  br i1 %epil.iter2331.cmp.not, label %._crit_edge1525, label %bb.e, !llvm.loop !38

._crit_edge1525:                                  ; preds = %._crit_edge1525.loopexit.unr-lcssa, %bb.e, %.preheader1304
  %.01220.lcssa = phi <8 x float> [ zeroinitializer, %.preheader1304 ], [ %i.anl, %._crit_edge1525.loopexit.unr-lcssa ], [ %i.anx, %bb.e ]
  %.01219.lcssa = phi <8 x float> [ zeroinitializer, %.preheader1304 ], [ %i.anm, %._crit_edge1525.loopexit.unr-lcssa ], [ %i.any, %bb.e ]
  %i.anz = getelementptr [4 x i8], ptr %i.air, i64 %indvars.iv1829.a
  store <8 x float> %.01220.lcssa, ptr %i.anz, align 1, !tbaa !8
  %i.aoa = getelementptr [4 x i8], ptr %i.ait, i64 %indvars.iv1829.a
  store <8 x float> %.01219.lcssa, ptr %i.aoa, align 1, !tbaa !8
  %indvars.iv.next1830.a = add nuw nsw i64 %indvars.iv1829.a, 8 ; 2 uses
  %i.aob = trunc nuw i64 %indvars.iv.next1830.a to i32 ; 2 uses
  %i.aoc = icmp sgt i32 %i.g, %i.aob
  br i1 %i.aoc, label %.preheader1304, label %.preheader1310, !llvm.loop !39

.preheader1309:                                   ; preds = %._crit_edge1536, %.preheader1310
  %.11.lcssa = phi i32 [ %.10.lcssa, %.preheader1310 ], [ %i.aqy, %._crit_edge1536 ] ; 3 uses
  %i.aod = icmp slt i32 %.11.lcssa, %i.i
  br i1 %i.aod, label %.preheader1302.lr.ph, label %.preheader1308

.preheader1302.lr.ph:                             ; preds = %.preheader1309
  %i.aoe = mul nsw i64 %4, %indvars.iv1853
  %i.aof = getelementptr [4 x i8], ptr %3, i64 %i.aoe ; 5 uses
  %i.aog = or disjoint i64 %indvars.iv1853, 1     ; 2 uses
  %i.aoh = mul nsw i64 %4, %i.aog
  %i.aoi = getelementptr [4 x i8], ptr %3, i64 %i.aoh ; 5 uses
  %i.aoj = mul nsw i64 %8, %indvars.iv1853
  %i.aok = getelementptr [4 x i8], ptr %7, i64 %i.aoj
  %i.aol = mul nsw i64 %8, %i.aog
  %i.aom = getelementptr [4 x i8], ptr %7, i64 %i.aol
  %i.aon = zext i32 %.11.lcssa to i64
  br label %.preheader1302

.preheader1303:                                   ; preds = %.preheader1303.lr.ph, %._crit_edge1536
  %indvars.iv1836.a = phi i64 [ %i.alq, %.preheader1303.lr.ph ], [ %indvars.iv.next1837.a, %._crit_edge1536 ] ; 4 uses
  br i1 %i.as, label %.lr.ph1535, label %._crit_edge1536

.lr.ph1535:                                       ; preds = %.preheader1303
  %invariant.gep1539 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1836.a ; 5 uses
  br i1 %i.bc, label %.epil.preheader2338, label %.lr.ph1535.new

.lr.ph1535.new:                                   ; preds = %.lr.ph1535, %.lr.ph1535.new
  %indvars.iv1832 = phi i64 [ %indvars.iv.next1833.3, %.lr.ph1535.new ], [ 0, %.lr.ph1535 ] ; 7 uses
  %.012141533 = phi <4 x float> [ %i.aqj, %.lr.ph1535.new ], [ zeroinitializer, %.lr.ph1535 ]
  %.012151532 = phi <4 x float> [ %i.aqi, %.lr.ph1535.new ], [ zeroinitializer, %.lr.ph1535 ]
  %niter2346 = phi i64 [ %niter2346.next.3, %.lr.ph1535.new ], [ 0, %.lr.ph1535 ]
  %i.aoo = getelementptr [4 x i8], ptr %i.ali, i64 %indvars.iv1832
  %i.aop = load float, ptr %i.aoo, align 1, !tbaa !8
  %i.aoq = insertelement <4 x float> poison, float %i.aop, i64 0
  %i.aor = shufflevector <4 x float> %i.aoq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aos = getelementptr [4 x i8], ptr %i.all, i64 %indvars.iv1832
  %i.aot = load float, ptr %i.aos, align 1, !tbaa !8
  %i.aou = insertelement <4 x float> poison, float %i.aot, i64 0
  %i.aov = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aow = mul nsw i64 %indvars.iv1832, %6
  %gep1540 = getelementptr [4 x i8], ptr %invariant.gep1539, i64 %i.aow
  %i.aox = load <4 x float>, ptr %gep1540, align 1, !tbaa !8 ; 2 uses
  %i.aoy = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.aor, <4 x float> %i.aox, <4 x float> %.012151532)
  %i.aoz = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.aov, <4 x float> %i.aox, <4 x float> %.012141533)
  %indvars.iv.next1833 = or disjoint i64 %indvars.iv1832, 1 ; 3 uses
  %i.apa = getelementptr [4 x i8], ptr %i.ali, i64 %indvars.iv.next1833
  %i.apb = load float, ptr %i.apa, align 1, !tbaa !8
  %i.apc = insertelement <4 x float> poison, float %i.apb, i64 0
  %i.apd = shufflevector <4 x float> %i.apc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ape = getelementptr [4 x i8], ptr %i.all, i64 %indvars.iv.next1833
  %i.apf = load float, ptr %i.ape, align 1, !tbaa !8
  %i.apg = insertelement <4 x float> poison, float %i.apf, i64 0
  %i.aph = shufflevector <4 x float> %i.apg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.api = mul nsw i64 %indvars.iv.next1833, %6
  %gep1540.1 = getelementptr [4 x i8], ptr %invariant.gep1539, i64 %i.api
  %i.apj = load <4 x float>, ptr %gep1540.1, align 1, !tbaa !8 ; 2 uses
  %i.apk = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.apd, <4 x float> %i.apj, <4 x float> %i.aoy)
  %i.apl = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.aph, <4 x float> %i.apj, <4 x float> %i.aoz)
  %indvars.iv.next1833.1 = or disjoint i64 %indvars.iv1832, 2 ; 3 uses
  %i.apm = getelementptr [4 x i8], ptr %i.ali, i64 %indvars.iv.next1833.1
  %i.apn = load float, ptr %i.apm, align 1, !tbaa !8
  %i.apo = insertelement <4 x float> poison, float %i.apn, i64 0
  %i.app = shufflevector <4 x float> %i.apo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apq = getelementptr [4 x i8], ptr %i.all, i64 %indvars.iv.next1833.1
  %i.apr = load float, ptr %i.apq, align 1, !tbaa !8
  %i.aps = insertelement <4 x float> poison, float %i.apr, i64 0
  %i.apt = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apu = mul nsw i64 %indvars.iv.next1833.1, %6
  %gep1540.2 = getelementptr [4 x i8], ptr %invariant.gep1539, i64 %i.apu
  %i.apv = load <4 x float>, ptr %gep1540.2, align 1, !tbaa !8 ; 2 uses
  %i.apw = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.app, <4 x float> %i.apv, <4 x float> %i.apk)
  %i.apx = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.apt, <4 x float> %i.apv, <4 x float> %i.apl)
  %indvars.iv.next1833.2 = or disjoint i64 %indvars.iv1832, 3 ; 3 uses
  %i.apy = getelementptr [4 x i8], ptr %i.ali, i64 %indvars.iv.next1833.2
  %i.apz = load float, ptr %i.apy, align 1, !tbaa !8
  %i.aqa = insertelement <4 x float> poison, float %i.apz, i64 0
  %i.aqb = shufflevector <4 x float> %i.aqa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqc = getelementptr [4 x i8], ptr %i.all, i64 %indvars.iv.next1833.2
  %i.aqd = load float, ptr %i.aqc, align 1, !tbaa !8
  %i.aqe = insertelement <4 x float> poison, float %i.aqd, i64 0
  %i.aqf = shufflevector <4 x float> %i.aqe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqg = mul nsw i64 %indvars.iv.next1833.2, %6
  %gep1540.3 = getelementptr [4 x i8], ptr %invariant.gep1539, i64 %i.aqg
  %i.aqh = load <4 x float>, ptr %gep1540.3, align 1, !tbaa !8 ; 2 uses
  %i.aqi = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.aqb, <4 x float> %i.aqh, <4 x float> %i.apw) ; 3 uses
  %i.aqj = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.aqf, <4 x float> %i.aqh, <4 x float> %i.apx) ; 3 uses
  %indvars.iv.next1833.3 = add nuw nsw i64 %indvars.iv1832, 4 ; 2 uses
  %niter2346.next.3 = add nuw nsw i64 %niter2346, 4 ; 2 uses
  %niter2346.ncmp.3 = icmp eq i64 %niter2346.next.3, %unroll_iter2345
  br i1 %niter2346.ncmp.3, label %._crit_edge1536.loopexit.unr-lcssa, label %.lr.ph1535.new, !llvm.loop !40

._crit_edge1536.loopexit.unr-lcssa:               ; preds = %.lr.ph1535.new
  br i1 %lcmp.mod2341.not, label %._crit_edge1536, label %.epil.preheader2338

.epil.preheader2338:                              ; preds = %._crit_edge1536.loopexit.unr-lcssa, %.lr.ph1535
  %indvars.iv1832.epil.init = phi i64 [ 0, %.lr.ph1535 ], [ %indvars.iv.next1833.3, %._crit_edge1536.loopexit.unr-lcssa ]
  %.012141533.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1535 ], [ %i.aqj, %._crit_edge1536.loopexit.unr-lcssa ]
  %.012151532.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1535 ], [ %i.aqi, %._crit_edge1536.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2344)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader2338
  %indvars.iv1832.epil = phi i64 [ %indvars.iv1832.epil.init, %.epil.preheader2338 ], [ %indvars.iv.next1833.epil, %bb.f ] ; 4 uses
  %.012141533.epil = phi <4 x float> [ %.012141533.epil.init, %.epil.preheader2338 ], [ %i.aqv, %bb.f ]
  %.012151532.epil = phi <4 x float> [ %.012151532.epil.init, %.epil.preheader2338 ], [ %i.aqu, %bb.f ]
  %epil.iter2340 = phi i64 [ 0, %.epil.preheader2338 ], [ %epil.iter2340.next, %bb.f ]
  %i.aqk = getelementptr [4 x i8], ptr %i.ali, i64 %indvars.iv1832.epil
  %i.aql = load float, ptr %i.aqk, align 1, !tbaa !8
  %i.aqm = insertelement <4 x float> poison, float %i.aql, i64 0
  %i.aqn = shufflevector <4 x float> %i.aqm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqo = getelementptr [4 x i8], ptr %i.all, i64 %indvars.iv1832.epil
  %i.aqp = load float, ptr %i.aqo, align 1, !tbaa !8
  %i.aqq = insertelement <4 x float> poison, float %i.aqp, i64 0
  %i.aqr = shufflevector <4 x float> %i.aqq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqs = mul nsw i64 %indvars.iv1832.epil, %6
  %gep1540.epil = getelementptr [4 x i8], ptr %invariant.gep1539, i64 %i.aqs
  %i.aqt = load <4 x float>, ptr %gep1540.epil, align 1, !tbaa !8 ; 2 uses
  %i.aqu = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.aqn, <4 x float> %i.aqt, <4 x float> %.012151532.epil) ; 2 uses
  %i.aqv = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.aqr, <4 x float> %i.aqt, <4 x float> %.012141533.epil) ; 2 uses
  %indvars.iv.next1833.epil = add nuw nsw i64 %indvars.iv1832.epil, 1
  %epil.iter2340.next = add i64 %epil.iter2340, 1 ; 2 uses
  %epil.iter2340.cmp.not = icmp eq i64 %epil.iter2340.next, %xtraiter2339
  br i1 %epil.iter2340.cmp.not, label %._crit_edge1536, label %bb.f, !llvm.loop !41

._crit_edge1536:                                  ; preds = %._crit_edge1536.loopexit.unr-lcssa, %bb.f, %.preheader1303
  %.01215.lcssa = phi <4 x float> [ zeroinitializer, %.preheader1303 ], [ %i.aqi, %._crit_edge1536.loopexit.unr-lcssa ], [ %i.aqu, %bb.f ]
  %.01214.lcssa = phi <4 x float> [ zeroinitializer, %.preheader1303 ], [ %i.aqj, %._crit_edge1536.loopexit.unr-lcssa ], [ %i.aqv, %bb.f ]
  %i.aqw = getelementptr [4 x i8], ptr %i.aln, i64 %indvars.iv1836.a
  store <4 x float> %.01215.lcssa, ptr %i.aqw, align 1, !tbaa !8
  %i.aqx = getelementptr [4 x i8], ptr %i.alp, i64 %indvars.iv1836.a
  store <4 x float> %.01214.lcssa, ptr %i.aqx, align 1, !tbaa !8
  %indvars.iv.next1837.a = add nuw nsw i64 %indvars.iv1836.a, 4 ; 2 uses
  %i.aqy = trunc nuw i64 %indvars.iv.next1837.a to i32 ; 2 uses
  %i.aqz = icmp sgt i32 %i.h, %i.aqy
  br i1 %i.aqz, label %.preheader1303, label %.preheader1309, !llvm.loop !42

.preheader1308:                                   ; preds = %._crit_edge1549, %.preheader1309
  %.12.lcssa = phi i32 [ %.11.lcssa, %.preheader1309 ], [ %i.aua, %._crit_edge1549 ] ; 2 uses
  %13 = zext nneg i32 %.12.lcssa to i64           ; 2 uses
  %i.ara = icmp sgt i64 %1, %13
  br i1 %i.ara, label %.preheader1301.lr.ph, label %._crit_edge1568

.preheader1301.lr.ph:                             ; preds = %.preheader1308
  %i.arb = mul nsw i64 %4, %indvars.iv1853
  %i.arc = getelementptr [4 x i8], ptr %3, i64 %i.arb ; 5 uses
  %i.ard = or disjoint i64 %indvars.iv1853, 1     ; 2 uses
  %i.are = mul nsw i64 %4, %i.ard
  %i.arf = getelementptr [4 x i8], ptr %3, i64 %i.are ; 5 uses
  %i.arg = mul nsw i64 %8, %indvars.iv1853
  %i.arh = getelementptr [4 x i8], ptr %7, i64 %i.arg
  %i.ari = mul nsw i64 %8, %i.ard
  %i.arj = getelementptr [4 x i8], ptr %7, i64 %i.ari
  br label %.preheader1301

.preheader1302:                                   ; preds = %.preheader1302.lr.ph, %._crit_edge1549
  %indvars.iv1843.a = phi i64 [ %i.aon, %.preheader1302.lr.ph ], [ %indvars.iv.next1844.a, %._crit_edge1549 ] ; 4 uses
  br i1 %i.as, label %.lr.ph1548, label %._crit_edge1549

.lr.ph1548:                                       ; preds = %.preheader1302
  %invariant.gep1554 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1843.a ; 5 uses
  br i1 %i.bd, label %.epil.preheader2347, label %.lr.ph1548.new

.lr.ph1548.new:                                   ; preds = %.lr.ph1548, %.lr.ph1548.new
  %indvars.iv1839 = phi i64 [ %indvars.iv.next1840.3, %.lr.ph1548.new ], [ 0, %.lr.ph1548 ] ; 7 uses
  %i.ark = phi <2 x float> [ %i.ath, %.lr.ph1548.new ], [ zeroinitializer, %.lr.ph1548 ]
  %i.arl = phi <2 x float> [ %i.ate, %.lr.ph1548.new ], [ zeroinitializer, %.lr.ph1548 ]
  %niter2359 = phi i64 [ %niter2359.next.3, %.lr.ph1548.new ], [ 0, %.lr.ph1548 ]
  %i.arm = getelementptr [4 x i8], ptr %i.aof, i64 %indvars.iv1839
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !20
  %i.aro = getelementptr [4 x i8], ptr %i.aoi, i64 %indvars.iv1839
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !20
  %i.arq = mul nsw i64 %indvars.iv1839, %6
  %gep1555 = getelementptr [4 x i8], ptr %invariant.gep1554, i64 %i.arq
  %i.arr = load <2 x float>, ptr %gep1555, align 4, !tbaa !20 ; 2 uses
  %i.ars = insertelement <2 x float> poison, float %i.arn, i64 0
  %i.art = shufflevector <2 x float> %i.ars, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aru = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.art, <2 x float> %i.arr, <2 x float> %i.arl)
  %i.arv = insertelement <2 x float> poison, float %i.arp, i64 0
  %i.arw = shufflevector <2 x float> %i.arv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.arx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arw, <2 x float> %i.arr, <2 x float> %i.ark)
  %indvars.iv.next1840 = or disjoint i64 %indvars.iv1839, 1 ; 3 uses
  %i.ary = getelementptr [4 x i8], ptr %i.aof, i64 %indvars.iv.next1840
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !20
  %i.asa = getelementptr [4 x i8], ptr %i.aoi, i64 %indvars.iv.next1840
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !20
  %i.asc = mul nsw i64 %indvars.iv.next1840, %6
  %gep1555.1 = getelementptr [4 x i8], ptr %invariant.gep1554, i64 %i.asc
  %i.asd = load <2 x float>, ptr %gep1555.1, align 4, !tbaa !20 ; 2 uses
  %i.ase = insertelement <2 x float> poison, float %i.arz, i64 0
  %i.asf = shufflevector <2 x float> %i.ase, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asf, <2 x float> %i.asd, <2 x float> %i.aru)
  %i.ash = insertelement <2 x float> poison, float %i.asb, i64 0
  %i.asi = shufflevector <2 x float> %i.ash, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asi, <2 x float> %i.asd, <2 x float> %i.arx)
  %indvars.iv.next1840.1 = or disjoint i64 %indvars.iv1839, 2 ; 3 uses
  %i.ask = getelementptr [4 x i8], ptr %i.aof, i64 %indvars.iv.next1840.1
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !20
  %i.asm = getelementptr [4 x i8], ptr %i.aoi, i64 %indvars.iv.next1840.1
  %i.asn = load float, ptr %i.asm, align 4, !tbaa !20
  %i.aso = mul nsw i64 %indvars.iv.next1840.1, %6
  %gep1555.2 = getelementptr [4 x i8], ptr %invariant.gep1554, i64 %i.aso
  %i.asp = load <2 x float>, ptr %gep1555.2, align 4, !tbaa !20 ; 2 uses
  %i.asq = insertelement <2 x float> poison, float %i.asl, i64 0
  %i.asr = shufflevector <2 x float> %i.asq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ass = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asr, <2 x float> %i.asp, <2 x float> %i.asg)
  %i.ast = insertelement <2 x float> poison, float %i.asn, i64 0
  %i.asu = shufflevector <2 x float> %i.ast, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asu, <2 x float> %i.asp, <2 x float> %i.asj)
  %indvars.iv.next1840.2 = or disjoint i64 %indvars.iv1839, 3 ; 3 uses
  %i.asw = getelementptr [4 x i8], ptr %i.aof, i64 %indvars.iv.next1840.2
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !20
  %i.asy = getelementptr [4 x i8], ptr %i.aoi, i64 %indvars.iv.next1840.2
  %i.asz = load float, ptr %i.asy, align 4, !tbaa !20
  %i.ata = mul nsw i64 %indvars.iv.next1840.2, %6
  %gep1555.3 = getelementptr [4 x i8], ptr %invariant.gep1554, i64 %i.ata
  %i.atb = load <2 x float>, ptr %gep1555.3, align 4, !tbaa !20 ; 2 uses
  %i.atc = insertelement <2 x float> poison, float %i.asx, i64 0
  %i.atd = shufflevector <2 x float> %i.atc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ate = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atd, <2 x float> %i.atb, <2 x float> %i.ass) ; 3 uses
  %i.atf = insertelement <2 x float> poison, float %i.asz, i64 0
  %i.atg = shufflevector <2 x float> %i.atf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ath = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atg, <2 x float> %i.atb, <2 x float> %i.asv) ; 3 uses
  %indvars.iv.next1840.3 = add nuw nsw i64 %indvars.iv1839, 4 ; 2 uses
  %niter2359.next.3 = add nuw nsw i64 %niter2359, 4 ; 2 uses
  %niter2359.ncmp.3 = icmp eq i64 %niter2359.next.3, %unroll_iter2358
  br i1 %niter2359.ncmp.3, label %._crit_edge1549.loopexit.unr-lcssa, label %.lr.ph1548.new, !llvm.loop !43

._crit_edge1549.loopexit.unr-lcssa:               ; preds = %.lr.ph1548.new
  br i1 %lcmp.mod2354.not, label %._crit_edge1549, label %.epil.preheader2347

.epil.preheader2347:                              ; preds = %._crit_edge1549.loopexit.unr-lcssa, %.lr.ph1548
  %indvars.iv1839.epil.init = phi i64 [ 0, %.lr.ph1548 ], [ %indvars.iv.next1840.3, %._crit_edge1549.loopexit.unr-lcssa ]
  %.epil.init2351 = phi <2 x float> [ zeroinitializer, %.lr.ph1548 ], [ %i.ath, %._crit_edge1549.loopexit.unr-lcssa ]
  %.epil.init2353 = phi <2 x float> [ zeroinitializer, %.lr.ph1548 ], [ %i.ate, %._crit_edge1549.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2357)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader2347
  %indvars.iv1839.epil = phi i64 [ %indvars.iv1839.epil.init, %.epil.preheader2347 ], [ %indvars.iv.next1840.epil, %bb.g ] ; 4 uses
  %i.ati = phi <2 x float> [ %.epil.init2351, %.epil.preheader2347 ], [ %i.atv, %bb.g ]
  %i.atj = phi <2 x float> [ %.epil.init2353, %.epil.preheader2347 ], [ %i.ats, %bb.g ]
  %epil.iter2349 = phi i64 [ 0, %.epil.preheader2347 ], [ %epil.iter2349.next, %bb.g ]
  %i.atk = getelementptr [4 x i8], ptr %i.aof, i64 %indvars.iv1839.epil
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !20
  %i.atm = getelementptr [4 x i8], ptr %i.aoi, i64 %indvars.iv1839.epil
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !20
  %i.ato = mul nsw i64 %indvars.iv1839.epil, %6
  %gep1555.epil = getelementptr [4 x i8], ptr %invariant.gep1554, i64 %i.ato
  %i.atp = load <2 x float>, ptr %gep1555.epil, align 4, !tbaa !20 ; 2 uses
  %i.atq = insertelement <2 x float> poison, float %i.atl, i64 0
  %i.atr = shufflevector <2 x float> %i.atq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ats = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atr, <2 x float> %i.atp, <2 x float> %i.atj) ; 2 uses
  %i.att = insertelement <2 x float> poison, float %i.atn, i64 0
  %i.atu = shufflevector <2 x float> %i.att, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atu, <2 x float> %i.atp, <2 x float> %i.ati) ; 2 uses
  %indvars.iv.next1840.epil = add nuw nsw i64 %indvars.iv1839.epil, 1
  %epil.iter2349.next = add i64 %epil.iter2349, 1 ; 2 uses
  %epil.iter2349.cmp.not = icmp eq i64 %epil.iter2349.next, %xtraiter2348
  br i1 %epil.iter2349.cmp.not, label %._crit_edge1549, label %bb.g, !llvm.loop !44

._crit_edge1549:                                  ; preds = %._crit_edge1549.loopexit.unr-lcssa, %bb.g, %.preheader1302
  %i.atw = phi <2 x float> [ zeroinitializer, %.preheader1302 ], [ %i.ath, %._crit_edge1549.loopexit.unr-lcssa ], [ %i.atv, %bb.g ]
  %i.atx = phi <2 x float> [ zeroinitializer, %.preheader1302 ], [ %i.ate, %._crit_edge1549.loopexit.unr-lcssa ], [ %i.ats, %bb.g ]
  %i.aty = getelementptr [4 x i8], ptr %i.aok, i64 %indvars.iv1843.a
  store <2 x float> %i.atx, ptr %i.aty, align 4, !tbaa !20
  %i.atz = getelementptr [4 x i8], ptr %i.aom, i64 %indvars.iv1843.a
  store <2 x float> %i.atw, ptr %i.atz, align 4, !tbaa !20
  %indvars.iv.next1844.a = add nuw nsw i64 %indvars.iv1843.a, 2 ; 2 uses
  %i.aua = trunc nuw i64 %indvars.iv.next1844.a to i32 ; 2 uses
  %i.aub = icmp sgt i32 %i.i, %i.aua
  br i1 %i.aub, label %.preheader1302, label %.preheader1308, !llvm.loop !45

.preheader1301:                                   ; preds = %.preheader1301.lr.ph, %._crit_edge1564
  %indvars.iv1850.a = phi i64 [ %13, %.preheader1301.lr.ph ], [ %15, %._crit_edge1564 ] ; 3 uses
  %.131567 = phi i32 [ %.12.lcssa, %.preheader1301.lr.ph ], [ %14, %._crit_edge1564 ]
  %invariant.gep1558 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1850.a ; 5 uses
  br i1 %i.as, label %.lr.ph1563.preheader, label %._crit_edge1564

.lr.ph1563.preheader:                             ; preds = %.preheader1301
  br i1 %i.be, label %.lr.ph1563.epil.preheader, label %.lr.ph1563

.lr.ph1563:                                       ; preds = %.lr.ph1563.preheader, %.lr.ph1563
  %indvars.iv1846 = phi i64 [ %indvars.iv.next1847.3, %.lr.ph1563 ], [ 0, %.lr.ph1563.preheader ] ; 7 uses
  %.012011561 = phi float [ %i.avh, %.lr.ph1563 ], [ 0.000000e+00, %.lr.ph1563.preheader ]
  %.012021560 = phi float [ %i.avg, %.lr.ph1563 ], [ 0.000000e+00, %.lr.ph1563.preheader ]
  %niter2367 = phi i64 [ %niter2367.next.3, %.lr.ph1563 ], [ 0, %.lr.ph1563.preheader ]
  %i.auc = getelementptr [4 x i8], ptr %i.arc, i64 %indvars.iv1846
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !20
  %i.aue = getelementptr [4 x i8], ptr %i.arf, i64 %indvars.iv1846
  %i.auf = load float, ptr %i.aue, align 4, !tbaa !20
  %i.aug = mul nsw i64 %indvars.iv1846, %6
  %gep1559 = getelementptr [4 x i8], ptr %invariant.gep1558, i64 %i.aug
  %i.auh = load float, ptr %gep1559, align 4, !tbaa !20 ; 2 uses
  %i.aui = tail call float @llvm.fmuladd.f32(float %i.aud, float %i.auh, float %.012021560)
  %i.auj = tail call float @llvm.fmuladd.f32(float %i.auf, float %i.auh, float %.012011561)
  %indvars.iv.next1847 = or disjoint i64 %indvars.iv1846, 1 ; 3 uses
  %i.auk = getelementptr [4 x i8], ptr %i.arc, i64 %indvars.iv.next1847
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !20
  %i.aum = getelementptr [4 x i8], ptr %i.arf, i64 %indvars.iv.next1847
  %i.aun = load float, ptr %i.aum, align 4, !tbaa !20
  %i.auo = mul nsw i64 %indvars.iv.next1847, %6
  %gep1559.1 = getelementptr [4 x i8], ptr %invariant.gep1558, i64 %i.auo
  %i.aup = load float, ptr %gep1559.1, align 4, !tbaa !20 ; 2 uses
  %i.auq = tail call float @llvm.fmuladd.f32(float %i.aul, float %i.aup, float %i.aui)
  %i.aur = tail call float @llvm.fmuladd.f32(float %i.aun, float %i.aup, float %i.auj)
  %indvars.iv.next1847.1 = or disjoint i64 %indvars.iv1846, 2 ; 3 uses
  %i.aus = getelementptr [4 x i8], ptr %i.arc, i64 %indvars.iv.next1847.1
  %i.aut = load float, ptr %i.aus, align 4, !tbaa !20
  %i.auu = getelementptr [4 x i8], ptr %i.arf, i64 %indvars.iv.next1847.1
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !20
  %i.auw = mul nsw i64 %indvars.iv.next1847.1, %6
  %gep1559.2 = getelementptr [4 x i8], ptr %invariant.gep1558, i64 %i.auw
  %i.aux = load float, ptr %gep1559.2, align 4, !tbaa !20 ; 2 uses
  %i.auy = tail call float @llvm.fmuladd.f32(float %i.aut, float %i.aux, float %i.auq)
  %i.auz = tail call float @llvm.fmuladd.f32(float %i.auv, float %i.aux, float %i.aur)
  %indvars.iv.next1847.2 = or disjoint i64 %indvars.iv1846, 3 ; 3 uses
  %i.ava = getelementptr [4 x i8], ptr %i.arc, i64 %indvars.iv.next1847.2
  %i.avb = load float, ptr %i.ava, align 4, !tbaa !20
  %i.avc = getelementptr [4 x i8], ptr %i.arf, i64 %indvars.iv.next1847.2
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !20
  %i.ave = mul nsw i64 %indvars.iv.next1847.2, %6
  %gep1559.3 = getelementptr [4 x i8], ptr %invariant.gep1558, i64 %i.ave
  %i.avf = load float, ptr %gep1559.3, align 4, !tbaa !20 ; 2 uses
  %i.avg = tail call float @llvm.fmuladd.f32(float %i.avb, float %i.avf, float %i.auy) ; 3 uses
  %i.avh = tail call float @llvm.fmuladd.f32(float %i.avd, float %i.avf, float %i.auz) ; 3 uses
  %indvars.iv.next1847.3 = add nuw nsw i64 %indvars.iv1846, 4 ; 2 uses
  %niter2367.next.3 = add nuw nsw i64 %niter2367, 4 ; 2 uses
  %niter2367.ncmp.3 = icmp eq i64 %niter2367.next.3, %unroll_iter2366
  br i1 %niter2367.ncmp.3, label %._crit_edge1564.loopexit.unr-lcssa, label %.lr.ph1563, !llvm.loop !46

._crit_edge1564.loopexit.unr-lcssa:               ; preds = %.lr.ph1563
  br i1 %lcmp.mod2362.not, label %._crit_edge1564, label %.lr.ph1563.epil.preheader

.lr.ph1563.epil.preheader:                        ; preds = %._crit_edge1564.loopexit.unr-lcssa, %.lr.ph1563.preheader
  %indvars.iv1846.epil.init = phi i64 [ 0, %.lr.ph1563.preheader ], [ %indvars.iv.next1847.3, %._crit_edge1564.loopexit.unr-lcssa ]
  %.012011561.epil.init = phi float [ 0.000000e+00, %.lr.ph1563.preheader ], [ %i.avh, %._crit_edge1564.loopexit.unr-lcssa ]
  %.012021560.epil.init = phi float [ 0.000000e+00, %.lr.ph1563.preheader ], [ %i.avg, %._crit_edge1564.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2365)
  br label %.lr.ph1563.epil

.lr.ph1563.epil:                                  ; preds = %.lr.ph1563.epil, %.lr.ph1563.epil.preheader
  %indvars.iv1846.epil = phi i64 [ %indvars.iv.next1847.epil, %.lr.ph1563.epil ], [ %indvars.iv1846.epil.init, %.lr.ph1563.epil.preheader ] ; 4 uses
  %.012011561.epil = phi float [ %i.avp, %.lr.ph1563.epil ], [ %.012011561.epil.init, %.lr.ph1563.epil.preheader ]
  %.012021560.epil = phi float [ %i.avo, %.lr.ph1563.epil ], [ %.012021560.epil.init, %.lr.ph1563.epil.preheader ]
  %epil.iter2361 = phi i64 [ %epil.iter2361.next, %.lr.ph1563.epil ], [ 0, %.lr.ph1563.epil.preheader ]
  %i.avi = getelementptr [4 x i8], ptr %i.arc, i64 %indvars.iv1846.epil
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !20
  %i.avk = getelementptr [4 x i8], ptr %i.arf, i64 %indvars.iv1846.epil
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !20
  %i.avm = mul nsw i64 %indvars.iv1846.epil, %6
  %gep1559.epil = getelementptr [4 x i8], ptr %invariant.gep1558, i64 %i.avm
  %i.avn = load float, ptr %gep1559.epil, align 4, !tbaa !20 ; 2 uses
  %i.avo = tail call float @llvm.fmuladd.f32(float %i.avj, float %i.avn, float %.012021560.epil) ; 2 uses
  %i.avp = tail call float @llvm.fmuladd.f32(float %i.avl, float %i.avn, float %.012011561.epil) ; 2 uses
  %indvars.iv.next1847.epil = add nuw nsw i64 %indvars.iv1846.epil, 1
  %epil.iter2361.next = add i64 %epil.iter2361, 1 ; 2 uses
  %epil.iter2361.cmp.not = icmp eq i64 %epil.iter2361.next, %xtraiter2360
  br i1 %epil.iter2361.cmp.not, label %._crit_edge1564, label %.lr.ph1563.epil, !llvm.loop !47

._crit_edge1564:                                  ; preds = %._crit_edge1564.loopexit.unr-lcssa, %.lr.ph1563.epil, %.preheader1301
  %.01202.lcssa = phi float [ 0.000000e+00, %.preheader1301 ], [ %i.avg, %._crit_edge1564.loopexit.unr-lcssa ], [ %i.avo, %.lr.ph1563.epil ]
  %.01201.lcssa = phi float [ 0.000000e+00, %.preheader1301 ], [ %i.avh, %._crit_edge1564.loopexit.unr-lcssa ], [ %i.avp, %.lr.ph1563.epil ]
  %i.avq = getelementptr [4 x i8], ptr %i.arh, i64 %indvars.iv1850.a
  store float %.01202.lcssa, ptr %i.avq, align 4, !tbaa !20
  %i.avr = getelementptr [4 x i8], ptr %i.arj, i64 %indvars.iv1850.a
  store float %.01201.lcssa, ptr %i.avr, align 4, !tbaa !20
  %14 = add nsw i32 %.131567, 1                   ; 2 uses
  %15 = zext nneg i32 %14 to i64                  ; 2 uses
  %16 = icmp samesign ugt i64 %1, %15
  br i1 %16, label %.preheader1301, label %._crit_edge1568, !llvm.loop !48

._crit_edge1568:                                  ; preds = %._crit_edge1564, %.preheader1308
  %indvars.iv.next1854 = add nuw nsw i64 %indvars.iv1853, 2 ; 3 uses
  %i.avs = icmp slt i64 %indvars.iv.next1854, %i.aw
  br i1 %i.avs, label %.preheader1314, label %.preheader1300.loopexit, !llvm.loop !49

.preheader1299:                                   ; preds = %.preheader1299.lr.ph, %._crit_edge1644
  %indvars.iv1912 = phi i64 [ %i.aan, %.preheader1299.lr.ph ], [ %indvars.iv.next1913, %._crit_edge1644 ] ; 16 uses
  br i1 %i.aap, label %.preheader1292.lr.ph, label %.preheader1298

.preheader1292.lr.ph:                             ; preds = %.preheader1299
  %i.avt = mul nsw i64 %indvars.iv1912, %4
  %i.avu = getelementptr [4 x i8], ptr %3, i64 %i.avt ; 5 uses
  %i.avv = mul nsw i64 %indvars.iv1912, %8
  %i.avw = getelementptr [4 x i8], ptr %7, i64 %i.avv
  br label %.preheader1292

.preheader1298.loopexit:                          ; preds = %._crit_edge1577
  %i.avx = trunc nuw nsw i64 %indvars.iv.next1861 to i32
  br label %.preheader1298

.preheader1298:                                   ; preds = %.preheader1298.loopexit, %.preheader1299
  %.14.lcssa = phi i32 [ 0, %.preheader1299 ], [ %i.avx, %.preheader1298.loopexit ] ; 4 uses
  %i.avy = icmp slt i32 %.14.lcssa, %i.e
  br i1 %i.avy, label %.preheader1291.lr.ph, label %.preheader1297

.preheader1291.lr.ph:                             ; preds = %.preheader1298
  %i.avz = mul nsw i64 %indvars.iv1912, %4
  %i.awa = getelementptr [4 x i8], ptr %3, i64 %i.avz ; 5 uses
  %i.awb = mul i64 %indvars.iv1912, %8
  %i.awc = getelementptr [4 x i8], ptr %7, i64 %i.awb ; 2 uses
  %i.awd = zext nneg i32 %.14.lcssa to i64        ; 3 uses
  br i1 %i.aaq, label %.preheader1291.us, label %.preheader1291.preheader

.preheader1291.preheader:                         ; preds = %.preheader1291.lr.ph
  %i.awe = shl nuw nsw i64 %i.awd, 2
  %scevgep = getelementptr i8, ptr %i.awc, i64 %i.awe
  %i.awf = xor i32 %.14.lcssa, -1
  %i.awg = add i32 %i.e, %i.awf
  %i.awh = lshr i32 %i.awg, 5
  %i.awi = zext nneg i32 %i.awh to i64
  %i.awj = shl nuw nsw i64 %i.awi, 7
  %i.awk = add nuw nsw i64 %i.awj, 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.awk, i1 false), !tbaa !8
  br label %.preheader1291

.preheader1291.us:                                ; preds = %.preheader1291.lr.ph, %._crit_edge1590.us
  %indvars.iv1870 = phi i64 [ %indvars.iv.next1871, %._crit_edge1590.us ], [ %i.awd, %.preheader1291.lr.ph ] ; 3 uses
  %invariant.gep1593.us = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1870 ; 5 uses
  br i1 %i.aav, label %.epil.preheader2379, label %.preheader1291.us.new

.preheader1291.us.new:                            ; preds = %.preheader1291.us, %.preheader1291.us.new
  %indvars.iv1866 = phi i64 [ %indvars.iv.next1867.3, %.preheader1291.us.new ], [ 0, %.preheader1291.us ] ; 6 uses
  %.011871587.us = phi <16 x float> [ %i.axy, %.preheader1291.us.new ], [ zeroinitializer, %.preheader1291.us ]
  %.011881586.us = phi <16 x float> [ %i.axx, %.preheader1291.us.new ], [ zeroinitializer, %.preheader1291.us ]
  %niter2387 = phi i64 [ %niter2387.next.3, %.preheader1291.us.new ], [ 0, %.preheader1291.us ]
  %i.awl = getelementptr [4 x i8], ptr %i.awa, i64 %indvars.iv1866
  %i.awm = load float, ptr %i.awl, align 1, !tbaa !8
  %i.awn = insertelement <4 x float> poison, float %i.awm, i64 0
  %i.awo = shufflevector <4 x float> %i.awn, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.awp = mul nsw i64 %indvars.iv1866, %6
  %gep1594.us = getelementptr [4 x i8], ptr %invariant.gep1593.us, i64 %i.awp ; 2 uses
  %i.awq = load <16 x float>, ptr %gep1594.us, align 1, !tbaa !8
  %i.awr = getelementptr i8, ptr %gep1594.us, i64 64
  %i.aws = load <16 x float>, ptr %i.awr, align 1, !tbaa !8
  %i.awt = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.awo, <16 x float> %i.awq, <16 x float> %.011881586.us)
  %i.awu = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.awo, <16 x float> %i.aws, <16 x float> %.011871587.us)
  %indvars.iv.next1867 = or disjoint i64 %indvars.iv1866, 1 ; 2 uses
  %i.awv = getelementptr [4 x i8], ptr %i.awa, i64 %indvars.iv.next1867
  %i.aww = load float, ptr %i.awv, align 1, !tbaa !8
  %i.awx = insertelement <4 x float> poison, float %i.aww, i64 0
  %i.awy = shufflevector <4 x float> %i.awx, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.awz = mul nsw i64 %indvars.iv.next1867, %6
  %gep1594.us.1 = getelementptr [4 x i8], ptr %invariant.gep1593.us, i64 %i.awz ; 2 uses
  %i.axa = load <16 x float>, ptr %gep1594.us.1, align 1, !tbaa !8
  %i.axb = getelementptr i8, ptr %gep1594.us.1, i64 64
  %i.axc = load <16 x float>, ptr %i.axb, align 1, !tbaa !8
  %i.axd = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.awy, <16 x float> %i.axa, <16 x float> %i.awt)
  %i.axe = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.awy, <16 x float> %i.axc, <16 x float> %i.awu)
  %indvars.iv.next1867.1 = or disjoint i64 %indvars.iv1866, 2 ; 2 uses
  %i.axf = getelementptr [4 x i8], ptr %i.awa, i64 %indvars.iv.next1867.1
  %i.axg = load float, ptr %i.axf, align 1, !tbaa !8
  %i.axh = insertelement <4 x float> poison, float %i.axg, i64 0
  %i.axi = shufflevector <4 x float> %i.axh, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.axj = mul nsw i64 %indvars.iv.next1867.1, %6
  %gep1594.us.2 = getelementptr [4 x i8], ptr %invariant.gep1593.us, i64 %i.axj ; 2 uses
  %i.axk = load <16 x float>, ptr %gep1594.us.2, align 1, !tbaa !8
  %i.axl = getelementptr i8, ptr %gep1594.us.2, i64 64
  %i.axm = load <16 x float>, ptr %i.axl, align 1, !tbaa !8
  %i.axn = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.axi, <16 x float> %i.axk, <16 x float> %i.axd)
  %i.axo = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.axi, <16 x float> %i.axm, <16 x float> %i.axe)
  %indvars.iv.next1867.2 = or disjoint i64 %indvars.iv1866, 3 ; 2 uses
  %i.axp = getelementptr [4 x i8], ptr %i.awa, i64 %indvars.iv.next1867.2
  %i.axq = load float, ptr %i.axp, align 1, !tbaa !8
  %i.axr = insertelement <4 x float> poison, float %i.axq, i64 0
  %i.axs = shufflevector <4 x float> %i.axr, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.axt = mul nsw i64 %indvars.iv.next1867.2, %6
  %gep1594.us.3 = getelementptr [4 x i8], ptr %invariant.gep1593.us, i64 %i.axt ; 2 uses
  %i.axu = load <16 x float>, ptr %gep1594.us.3, align 1, !tbaa !8
  %i.axv = getelementptr i8, ptr %gep1594.us.3, i64 64
  %i.axw = load <16 x float>, ptr %i.axv, align 1, !tbaa !8
  %i.axx = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.axs, <16 x float> %i.axu, <16 x float> %i.axn) ; 3 uses
  %i.axy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.axs, <16 x float> %i.axw, <16 x float> %i.axo) ; 3 uses
  %indvars.iv.next1867.3 = add nuw nsw i64 %indvars.iv1866, 4 ; 2 uses
  %niter2387.next.3 = add nuw nsw i64 %niter2387, 4 ; 2 uses
  %niter2387.ncmp.3 = icmp eq i64 %niter2387.next.3, %unroll_iter2386
  br i1 %niter2387.ncmp.3, label %._crit_edge1590.us.unr-lcssa, label %.preheader1291.us.new, !llvm.loop !50

._crit_edge1590.us.unr-lcssa:                     ; preds = %.preheader1291.us.new
  br i1 %lcmp.mod2382.not, label %._crit_edge1590.us, label %.epil.preheader2379

.epil.preheader2379:                              ; preds = %._crit_edge1590.us.unr-lcssa, %.preheader1291.us
  %indvars.iv1866.epil.init = phi i64 [ 0, %.preheader1291.us ], [ %indvars.iv.next1867.3, %._crit_edge1590.us.unr-lcssa ]
  %.011871587.us.epil.init = phi <16 x float> [ zeroinitializer, %.preheader1291.us ], [ %i.axy, %._crit_edge1590.us.unr-lcssa ]
  %.011881586.us.epil.init = phi <16 x float> [ zeroinitializer, %.preheader1291.us ], [ %i.axx, %._crit_edge1590.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2385)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader2379
  %indvars.iv1866.epil = phi i64 [ %indvars.iv1866.epil.init, %.epil.preheader2379 ], [ %indvars.iv.next1867.epil, %bb.h ] ; 3 uses
  %.011871587.us.epil = phi <16 x float> [ %.011871587.us.epil.init, %.epil.preheader2379 ], [ %i.ayi, %bb.h ]
  %.011881586.us.epil = phi <16 x float> [ %.011881586.us.epil.init, %.epil.preheader2379 ], [ %i.ayh, %bb.h ]
  %epil.iter2381 = phi i64 [ 0, %.epil.preheader2379 ], [ %epil.iter2381.next, %bb.h ]
  %i.axz = getelementptr [4 x i8], ptr %i.awa, i64 %indvars.iv1866.epil
  %i.aya = load float, ptr %i.axz, align 1, !tbaa !8
  %i.ayb = insertelement <4 x float> poison, float %i.aya, i64 0
  %i.ayc = shufflevector <4 x float> %i.ayb, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ayd = mul nsw i64 %indvars.iv1866.epil, %6
  %gep1594.us.epil = getelementptr [4 x i8], ptr %invariant.gep1593.us, i64 %i.ayd ; 2 uses
  %i.aye = load <16 x float>, ptr %gep1594.us.epil, align 1, !tbaa !8
  %i.ayf = getelementptr i8, ptr %gep1594.us.epil, i64 64
  %i.ayg = load <16 x float>, ptr %i.ayf, align 1, !tbaa !8
  %i.ayh = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayc, <16 x float> %i.aye, <16 x float> %.011881586.us.epil) ; 2 uses
  %i.ayi = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayc, <16 x float> %i.ayg, <16 x float> %.011871587.us.epil) ; 2 uses
  %indvars.iv.next1867.epil = add nuw nsw i64 %indvars.iv1866.epil, 1
  %epil.iter2381.next = add i64 %epil.iter2381, 1 ; 2 uses
  %epil.iter2381.cmp.not = icmp eq i64 %epil.iter2381.next, %xtraiter2380
  br i1 %epil.iter2381.cmp.not, label %._crit_edge1590.us, label %bb.h, !llvm.loop !51

._crit_edge1590.us:                               ; preds = %bb.h, %._crit_edge1590.us.unr-lcssa
  %.lcssa2147 = phi <16 x float> [ %i.axx, %._crit_edge1590.us.unr-lcssa ], [ %i.ayh, %bb.h ]
  %.lcssa2146 = phi <16 x float> [ %i.axy, %._crit_edge1590.us.unr-lcssa ], [ %i.ayi, %bb.h ]
  %i.ayj = getelementptr [4 x i8], ptr %i.awc, i64 %indvars.iv1870 ; 2 uses
  store <16 x float> %.lcssa2147, ptr %i.ayj, align 1, !tbaa !8
  %i.ayk = getelementptr i8, ptr %i.ayj, i64 64
  store <16 x float> %.lcssa2146, ptr %i.ayk, align 1, !tbaa !8
  %indvars.iv.next1871 = add nuw nsw i64 %indvars.iv1870, 32 ; 3 uses
  %i.ayl = icmp slt i64 %indvars.iv.next1871, %i.aas
  br i1 %i.ayl, label %.preheader1291.us, label %.preheader1297.loopexit, !llvm.loop !52

.preheader1292:                                   ; preds = %.preheader1292.lr.ph, %._crit_edge1577
  %indvars.iv1860 = phi i64 [ 0, %.preheader1292.lr.ph ], [ %indvars.iv.next1861, %._crit_edge1577 ] ; 3 uses
  br i1 %i.aaq, label %.lr.ph1576, label %._crit_edge1577

.lr.ph1576:                                       ; preds = %.preheader1292
  %invariant.gep1582 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1860 ; 5 uses
  br i1 %i.aau, label %.epil.preheader2368, label %.lr.ph1576.new

.lr.ph1576.new:                                   ; preds = %.lr.ph1576, %.lr.ph1576.new
  %indvars.iv1856 = phi i64 [ %indvars.iv.next1857.3, %.lr.ph1576.new ], [ 0, %.lr.ph1576 ] ; 6 uses
  %.011941574 = phi <16 x float> [ %i.bax, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %.011951573 = phi <16 x float> [ %i.baw, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %.011961572 = phi <16 x float> [ %i.bav, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %.011971571 = phi <16 x float> [ %i.bau, %.lr.ph1576.new ], [ zeroinitializer, %.lr.ph1576 ]
  %niter2378 = phi i64 [ %niter2378.next.3, %.lr.ph1576.new ], [ 0, %.lr.ph1576 ]
  %i.aym = getelementptr [4 x i8], ptr %i.avu, i64 %indvars.iv1856
  %i.ayn = load float, ptr %i.aym, align 1, !tbaa !8
  %i.ayo = insertelement <4 x float> poison, float %i.ayn, i64 0
  %i.ayp = shufflevector <4 x float> %i.ayo, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ayq = mul nsw i64 %indvars.iv1856, %6
  %gep1583 = getelementptr [4 x i8], ptr %invariant.gep1582, i64 %i.ayq ; 4 uses
  %i.ayr = load <16 x float>, ptr %gep1583, align 1, !tbaa !8
  %i.ays = getelementptr i8, ptr %gep1583, i64 64
  %i.ayt = load <16 x float>, ptr %i.ays, align 1, !tbaa !8
  %i.ayu = getelementptr i8, ptr %gep1583, i64 128
  %i.ayv = load <16 x float>, ptr %i.ayu, align 1, !tbaa !8
  %i.ayw = getelementptr i8, ptr %gep1583, i64 192
  %i.ayx = load <16 x float>, ptr %i.ayw, align 1, !tbaa !8
  %i.ayy = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayp, <16 x float> %i.ayr, <16 x float> %.011971571)
  %i.ayz = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayp, <16 x float> %i.ayt, <16 x float> %.011961572)
  %i.aza = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayp, <16 x float> %i.ayv, <16 x float> %.011951573)
  %i.azb = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayp, <16 x float> %i.ayx, <16 x float> %.011941574)
  %indvars.iv.next1857 = or disjoint i64 %indvars.iv1856, 1 ; 2 uses
  %i.azc = getelementptr [4 x i8], ptr %i.avu, i64 %indvars.iv.next1857
  %i.azd = load float, ptr %i.azc, align 1, !tbaa !8
  %i.aze = insertelement <4 x float> poison, float %i.azd, i64 0
  %i.azf = shufflevector <4 x float> %i.aze, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.azg = mul nsw i64 %indvars.iv.next1857, %6
  %gep1583.1 = getelementptr [4 x i8], ptr %invariant.gep1582, i64 %i.azg ; 4 uses
  %i.azh = load <16 x float>, ptr %gep1583.1, align 1, !tbaa !8
  %i.azi = getelementptr i8, ptr %gep1583.1, i64 64
  %i.azj = load <16 x float>, ptr %i.azi, align 1, !tbaa !8
  %i.azk = getelementptr i8, ptr %gep1583.1, i64 128
  %i.azl = load <16 x float>, ptr %i.azk, align 1, !tbaa !8
  %i.azm = getelementptr i8, ptr %gep1583.1, i64 192
  %i.azn = load <16 x float>, ptr %i.azm, align 1, !tbaa !8
  %i.azo = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azf, <16 x float> %i.azh, <16 x float> %i.ayy)
  %i.azp = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azf, <16 x float> %i.azj, <16 x float> %i.ayz)
  %i.azq = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azf, <16 x float> %i.azl, <16 x float> %i.aza)
  %i.azr = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.azf, <16 x float> %i.azn, <16 x float> %i.azb)
end_hunk_1
begin_hunk_2_@sgemm_direct:bb.a
  %i.bhd = shufflevector <4 x float> %i.bhc, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bhe = mul nsw i64 %indvars.iv.next1885.4, %6
  %gep1613.5 = getelementptr [4 x i8], ptr %invariant.gep1612, i64 %i.bhe
  %i.bhf = load <8 x float>, ptr %gep1613.5, align 1, !tbaa !8
  %i.bhg = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.bhd, <8 x float> %i.bhf, <8 x float> %i.bgz)
  %indvars.iv.next1885.5 = or disjoint i64 %indvars.iv1884, 6 ; 2 uses
  %i.bhh = getelementptr [4 x i8], ptr %i.bff, i64 %indvars.iv.next1885.5
  %i.bhi = load float, ptr %i.bhh, align 1, !tbaa !8
  %i.bhj = insertelement <4 x float> poison, float %i.bhi, i64 0
  %i.bhk = shufflevector <4 x float> %i.bhj, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bhl = mul nsw i64 %indvars.iv.next1885.5, %6
  %gep1613.6 = getelementptr [4 x i8], ptr %invariant.gep1612, i64 %i.bhl
  %i.bhm = load <8 x float>, ptr %gep1613.6, align 1, !tbaa !8
  %i.bhn = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.bhk, <8 x float> %i.bhm, <8 x float> %i.bhg)
  %indvars.iv.next1885.6 = or disjoint i64 %indvars.iv1884, 7 ; 2 uses
  %i.bho = getelementptr [4 x i8], ptr %i.bff, i64 %indvars.iv.next1885.6
  %i.bhp = load float, ptr %i.bho, align 1, !tbaa !8
  %i.bhq = insertelement <4 x float> poison, float %i.bhp, i64 0
  %i.bhr = shufflevector <4 x float> %i.bhq, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bhs = mul nsw i64 %indvars.iv.next1885.6, %6
  %gep1613.7 = getelementptr [4 x i8], ptr %invariant.gep1612, i64 %i.bhs
  %i.bht = load <8 x float>, ptr %gep1613.7, align 1, !tbaa !8
  %i.bhu = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.bhr, <8 x float> %i.bht, <8 x float> %i.bhn) ; 3 uses
  %indvars.iv.next1885.7 = add nuw nsw i64 %indvars.iv1884, 8 ; 2 uses
  %niter2403.next.7 = add nuw nsw i64 %niter2403, 8 ; 2 uses
  %niter2403.ncmp.7 = icmp eq i64 %niter2403.next.7, %unroll_iter2402
  br i1 %niter2403.ncmp.7, label %._crit_edge1610.loopexit.unr-lcssa, label %.lr.ph1609.new, !llvm.loop !59

._crit_edge1610.loopexit.unr-lcssa:               ; preds = %.lr.ph1609.new
  br i1 %lcmp.mod2399.not, label %._crit_edge1610, label %.epil.preheader2396

.epil.preheader2396:                              ; preds = %._crit_edge1610.loopexit.unr-lcssa, %.lr.ph1609
  %indvars.iv1884.epil.init = phi i64 [ 0, %.lr.ph1609 ], [ %indvars.iv.next1885.7, %._crit_edge1610.loopexit.unr-lcssa ]
  %.011821607.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph1609 ], [ %i.bhu, %._crit_edge1610.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2401)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader2396
  %indvars.iv1884.epil = phi i64 [ %indvars.iv1884.epil.init, %.epil.preheader2396 ], [ %indvars.iv.next1885.epil, %bb.k ] ; 3 uses
  %.011821607.epil = phi <8 x float> [ %.011821607.epil.init, %.epil.preheader2396 ], [ %i.bib, %bb.k ]
  %epil.iter2398 = phi i64 [ 0, %.epil.preheader2396 ], [ %epil.iter2398.next, %bb.k ]
  %i.bhv = getelementptr [4 x i8], ptr %i.bff, i64 %indvars.iv1884.epil
  %i.bhw = load float, ptr %i.bhv, align 1, !tbaa !8
  %i.bhx = insertelement <4 x float> poison, float %i.bhw, i64 0
  %i.bhy = shufflevector <4 x float> %i.bhx, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bhz = mul nsw i64 %indvars.iv1884.epil, %6
  %gep1613.epil = getelementptr [4 x i8], ptr %invariant.gep1612, i64 %i.bhz
  %i.bia = load <8 x float>, ptr %gep1613.epil, align 1, !tbaa !8
  %i.bib = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.bhy, <8 x float> %i.bia, <8 x float> %.011821607.epil) ; 2 uses
  %indvars.iv.next1885.epil = add nuw nsw i64 %indvars.iv1884.epil, 1
  %epil.iter2398.next = add i64 %epil.iter2398, 1 ; 2 uses
  %epil.iter2398.cmp.not = icmp eq i64 %epil.iter2398.next, %xtraiter2397
  br i1 %epil.iter2398.cmp.not, label %._crit_edge1610, label %bb.k, !llvm.loop !60

._crit_edge1610:                                  ; preds = %._crit_edge1610.loopexit.unr-lcssa, %bb.k, %.preheader1289
  %.01182.lcssa = phi <8 x float> [ zeroinitializer, %.preheader1289 ], [ %i.bhu, %._crit_edge1610.loopexit.unr-lcssa ], [ %i.bib, %bb.k ]
  %i.bic = getelementptr [4 x i8], ptr %i.bfh, i64 %indvars.iv1888
  store <8 x float> %.01182.lcssa, ptr %i.bic, align 1, !tbaa !8
  %indvars.iv.next1889 = add nuw nsw i64 %indvars.iv1888, 8 ; 2 uses
  %i.bid = trunc nuw i64 %indvars.iv.next1889 to i32 ; 2 uses
  %i.bie = icmp sgt i32 %i.g, %i.bid
  br i1 %i.bie, label %.preheader1289, label %.preheader1295, !llvm.loop !61

.preheader1294:                                   ; preds = %._crit_edge1619, %.preheader1295
  %.18.lcssa = phi i32 [ %.17.lcssa, %.preheader1295 ], [ %i.bkx, %._crit_edge1619 ] ; 3 uses
  %i.bif = icmp slt i32 %.18.lcssa, %i.i
  br i1 %i.bif, label %.preheader1287.lr.ph, label %.preheader1293

.preheader1287.lr.ph:                             ; preds = %.preheader1294
  %i.big = mul nsw i64 %indvars.iv1912, %4
  %i.bih = getelementptr [4 x i8], ptr %3, i64 %i.big ; 9 uses
  %i.bii = mul nsw i64 %indvars.iv1912, %8
  %i.bij = getelementptr [4 x i8], ptr %7, i64 %i.bii
  %i.bik = zext i32 %.18.lcssa to i64
  br label %.preheader1287

.preheader1288:                                   ; preds = %.preheader1288.lr.ph, %._crit_edge1619
  %indvars.iv1895 = phi i64 [ %i.bfq, %.preheader1288.lr.ph ], [ %indvars.iv.next1896, %._crit_edge1619 ] ; 3 uses
  br i1 %i.aaq, label %.lr.ph1618, label %._crit_edge1619

.lr.ph1618:                                       ; preds = %.preheader1288
  %invariant.gep1621 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1895 ; 9 uses
  br i1 %i.aay, label %.epil.preheader2404, label %.lr.ph1618.new

.lr.ph1618.new:                                   ; preds = %.lr.ph1618, %.lr.ph1618.new
  %indvars.iv1891 = phi i64 [ %indvars.iv.next1892.7, %.lr.ph1618.new ], [ 0, %.lr.ph1618 ] ; 10 uses
  %.011811616 = phi <4 x float> [ %i.bko, %.lr.ph1618.new ], [ zeroinitializer, %.lr.ph1618 ]
  %niter2411 = phi i64 [ %niter2411.next.7, %.lr.ph1618.new ], [ 0, %.lr.ph1618 ]
  %i.bil = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv1891
  %i.bim = load float, ptr %i.bil, align 1, !tbaa !8
  %i.bin = insertelement <4 x float> poison, float %i.bim, i64 0
  %i.bio = shufflevector <4 x float> %i.bin, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bip = mul nsw i64 %indvars.iv1891, %6
  %gep1622 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bip
  %i.biq = load <4 x float>, ptr %gep1622, align 1, !tbaa !8
  %i.bir = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bio, <4 x float> %i.biq, <4 x float> %.011811616)
  %indvars.iv.next1892 = or disjoint i64 %indvars.iv1891, 1 ; 2 uses
  %i.bis = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv.next1892
  %i.bit = load float, ptr %i.bis, align 1, !tbaa !8
  %i.biu = insertelement <4 x float> poison, float %i.bit, i64 0
  %i.biv = shufflevector <4 x float> %i.biu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.biw = mul nsw i64 %indvars.iv.next1892, %6
  %gep1622.1 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.biw
  %i.bix = load <4 x float>, ptr %gep1622.1, align 1, !tbaa !8
  %i.biy = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.biv, <4 x float> %i.bix, <4 x float> %i.bir)
  %indvars.iv.next1892.1 = or disjoint i64 %indvars.iv1891, 2 ; 2 uses
  %i.biz = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv.next1892.1
  %i.bja = load float, ptr %i.biz, align 1, !tbaa !8
  %i.bjb = insertelement <4 x float> poison, float %i.bja, i64 0
  %i.bjc = shufflevector <4 x float> %i.bjb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bjd = mul nsw i64 %indvars.iv.next1892.1, %6
  %gep1622.2 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bjd
  %i.bje = load <4 x float>, ptr %gep1622.2, align 1, !tbaa !8
  %i.bjf = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjc, <4 x float> %i.bje, <4 x float> %i.biy)
  %indvars.iv.next1892.2 = or disjoint i64 %indvars.iv1891, 3 ; 2 uses
  %i.bjg = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv.next1892.2
  %i.bjh = load float, ptr %i.bjg, align 1, !tbaa !8
  %i.bji = insertelement <4 x float> poison, float %i.bjh, i64 0
  %i.bjj = shufflevector <4 x float> %i.bji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bjk = mul nsw i64 %indvars.iv.next1892.2, %6
  %gep1622.3 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bjk
  %i.bjl = load <4 x float>, ptr %gep1622.3, align 1, !tbaa !8
  %i.bjm = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjj, <4 x float> %i.bjl, <4 x float> %i.bjf)
  %indvars.iv.next1892.3 = or disjoint i64 %indvars.iv1891, 4 ; 2 uses
  %i.bjn = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv.next1892.3
  %i.bjo = load float, ptr %i.bjn, align 1, !tbaa !8
  %i.bjp = insertelement <4 x float> poison, float %i.bjo, i64 0
  %i.bjq = shufflevector <4 x float> %i.bjp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bjr = mul nsw i64 %indvars.iv.next1892.3, %6
  %gep1622.4 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bjr
  %i.bjs = load <4 x float>, ptr %gep1622.4, align 1, !tbaa !8
  %i.bjt = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjq, <4 x float> %i.bjs, <4 x float> %i.bjm)
  %indvars.iv.next1892.4 = or disjoint i64 %indvars.iv1891, 5 ; 2 uses
  %i.bju = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv.next1892.4
  %i.bjv = load float, ptr %i.bju, align 1, !tbaa !8
  %i.bjw = insertelement <4 x float> poison, float %i.bjv, i64 0
  %i.bjx = shufflevector <4 x float> %i.bjw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bjy = mul nsw i64 %indvars.iv.next1892.4, %6
  %gep1622.5 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bjy
  %i.bjz = load <4 x float>, ptr %gep1622.5, align 1, !tbaa !8
  %i.bka = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjx, <4 x float> %i.bjz, <4 x float> %i.bjt)
  %indvars.iv.next1892.5 = or disjoint i64 %indvars.iv1891, 6 ; 2 uses
  %i.bkb = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv.next1892.5
  %i.bkc = load float, ptr %i.bkb, align 1, !tbaa !8
  %i.bkd = insertelement <4 x float> poison, float %i.bkc, i64 0
  %i.bke = shufflevector <4 x float> %i.bkd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkf = mul nsw i64 %indvars.iv.next1892.5, %6
  %gep1622.6 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bkf
  %i.bkg = load <4 x float>, ptr %gep1622.6, align 1, !tbaa !8
  %i.bkh = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bke, <4 x float> %i.bkg, <4 x float> %i.bka)
  %indvars.iv.next1892.6 = or disjoint i64 %indvars.iv1891, 7 ; 2 uses
  %i.bki = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv.next1892.6
  %i.bkj = load float, ptr %i.bki, align 1, !tbaa !8
  %i.bkk = insertelement <4 x float> poison, float %i.bkj, i64 0
  %i.bkl = shufflevector <4 x float> %i.bkk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkm = mul nsw i64 %indvars.iv.next1892.6, %6
  %gep1622.7 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bkm
  %i.bkn = load <4 x float>, ptr %gep1622.7, align 1, !tbaa !8
  %i.bko = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bkl, <4 x float> %i.bkn, <4 x float> %i.bkh) ; 3 uses
  %indvars.iv.next1892.7 = add nuw nsw i64 %indvars.iv1891, 8 ; 2 uses
  %niter2411.next.7 = add nuw nsw i64 %niter2411, 8 ; 2 uses
  %niter2411.ncmp.7 = icmp eq i64 %niter2411.next.7, %unroll_iter2410
  br i1 %niter2411.ncmp.7, label %._crit_edge1619.loopexit.unr-lcssa, label %.lr.ph1618.new, !llvm.loop !62

._crit_edge1619.loopexit.unr-lcssa:               ; preds = %.lr.ph1618.new
  br i1 %lcmp.mod2407.not, label %._crit_edge1619, label %.epil.preheader2404

.epil.preheader2404:                              ; preds = %._crit_edge1619.loopexit.unr-lcssa, %.lr.ph1618
  %indvars.iv1891.epil.init = phi i64 [ 0, %.lr.ph1618 ], [ %indvars.iv.next1892.7, %._crit_edge1619.loopexit.unr-lcssa ]
  %.011811616.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph1618 ], [ %i.bko, %._crit_edge1619.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2409)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader2404
  %indvars.iv1891.epil = phi i64 [ %indvars.iv1891.epil.init, %.epil.preheader2404 ], [ %indvars.iv.next1892.epil, %bb.l ] ; 3 uses
  %.011811616.epil = phi <4 x float> [ %.011811616.epil.init, %.epil.preheader2404 ], [ %i.bkv, %bb.l ]
  %epil.iter2406 = phi i64 [ 0, %.epil.preheader2404 ], [ %epil.iter2406.next, %bb.l ]
  %i.bkp = getelementptr [4 x i8], ptr %i.bfn, i64 %indvars.iv1891.epil
  %i.bkq = load float, ptr %i.bkp, align 1, !tbaa !8
  %i.bkr = insertelement <4 x float> poison, float %i.bkq, i64 0
  %i.bks = shufflevector <4 x float> %i.bkr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkt = mul nsw i64 %indvars.iv1891.epil, %6
  %gep1622.epil = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %i.bkt
  %i.bku = load <4 x float>, ptr %gep1622.epil, align 1, !tbaa !8
  %i.bkv = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bks, <4 x float> %i.bku, <4 x float> %.011811616.epil) ; 2 uses
  %indvars.iv.next1892.epil = add nuw nsw i64 %indvars.iv1891.epil, 1
  %epil.iter2406.next = add i64 %epil.iter2406, 1 ; 2 uses
  %epil.iter2406.cmp.not = icmp eq i64 %epil.iter2406.next, %xtraiter2405
  br i1 %epil.iter2406.cmp.not, label %._crit_edge1619, label %bb.l, !llvm.loop !63

._crit_edge1619:                                  ; preds = %._crit_edge1619.loopexit.unr-lcssa, %bb.l, %.preheader1288
  %.01181.lcssa = phi <4 x float> [ zeroinitializer, %.preheader1288 ], [ %i.bko, %._crit_edge1619.loopexit.unr-lcssa ], [ %i.bkv, %bb.l ]
  %i.bkw = getelementptr [4 x i8], ptr %i.bfp, i64 %indvars.iv1895
  store <4 x float> %.01181.lcssa, ptr %i.bkw, align 1, !tbaa !8
  %indvars.iv.next1896 = add nuw nsw i64 %indvars.iv1895, 4 ; 2 uses
  %i.bkx = trunc nuw i64 %indvars.iv.next1896 to i32 ; 2 uses
  %i.bky = icmp sgt i32 %i.h, %i.bkx
  br i1 %i.bky, label %.preheader1288, label %.preheader1294, !llvm.loop !64

.preheader1293:                                   ; preds = %._crit_edge1629, %.preheader1294
  %.19.lcssa = phi i32 [ %.18.lcssa, %.preheader1294 ], [ %i.bnt, %._crit_edge1629 ] ; 2 uses
  %17 = zext nneg i32 %.19.lcssa to i64           ; 2 uses
  %i.bkz = icmp sgt i64 %1, %17
  br i1 %i.bkz, label %.preheader.lr.ph, label %._crit_edge1644

.preheader.lr.ph:                                 ; preds = %.preheader1293
  %i.bla = mul nsw i64 %indvars.iv1912, %4
  %i.blb = getelementptr [4 x i8], ptr %3, i64 %i.bla ; 9 uses
  %i.blc = mul nsw i64 %indvars.iv1912, %8
  %i.bld = getelementptr [4 x i8], ptr %7, i64 %i.blc
  br label %.preheader

.preheader1287:                                   ; preds = %.preheader1287.lr.ph, %._crit_edge1629
  %indvars.iv1902 = phi i64 [ %i.bik, %.preheader1287.lr.ph ], [ %indvars.iv.next1903, %._crit_edge1629 ] ; 3 uses
  br i1 %i.aaq, label %.lr.ph1628, label %._crit_edge1629

.lr.ph1628:                                       ; preds = %.preheader1287
  %invariant.gep1632 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1902 ; 9 uses
  br i1 %i.aaz, label %.epil.preheader2412, label %.lr.ph1628.new

.lr.ph1628.new:                                   ; preds = %.lr.ph1628, %.lr.ph1628.new
  %indvars.iv1898 = phi i64 [ %indvars.iv.next1899.7, %.lr.ph1628.new ], [ 0, %.lr.ph1628 ] ; 10 uses
  %i.ble = phi <2 x float> [ %i.bni, %.lr.ph1628.new ], [ zeroinitializer, %.lr.ph1628 ]
  %niter2421 = phi i64 [ %niter2421.next.7, %.lr.ph1628.new ], [ 0, %.lr.ph1628 ]
  %i.blf = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv1898
  %i.blg = load float, ptr %i.blf, align 4, !tbaa !20
  %i.blh = mul nsw i64 %indvars.iv1898, %6
  %gep1633 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.blh
  %i.bli = load <2 x float>, ptr %gep1633, align 4, !tbaa !20
  %i.blj = insertelement <2 x float> poison, float %i.blg, i64 0
  %i.blk = shufflevector <2 x float> %i.blj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bll = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blk, <2 x float> %i.bli, <2 x float> %i.ble)
  %indvars.iv.next1899 = or disjoint i64 %indvars.iv1898, 1 ; 2 uses
  %i.blm = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv.next1899
  %i.bln = load float, ptr %i.blm, align 4, !tbaa !20
  %i.blo = mul nsw i64 %indvars.iv.next1899, %6
  %gep1633.1 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.blo
  %i.blp = load <2 x float>, ptr %gep1633.1, align 4, !tbaa !20
  %i.blq = insertelement <2 x float> poison, float %i.bln, i64 0
  %i.blr = shufflevector <2 x float> %i.blq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bls = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blr, <2 x float> %i.blp, <2 x float> %i.bll)
  %indvars.iv.next1899.1 = or disjoint i64 %indvars.iv1898, 2 ; 2 uses
  %i.blt = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv.next1899.1
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !20
  %i.blv = mul nsw i64 %indvars.iv.next1899.1, %6
  %gep1633.2 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.blv
  %i.blw = load <2 x float>, ptr %gep1633.2, align 4, !tbaa !20
  %i.blx = insertelement <2 x float> poison, float %i.blu, i64 0
  %i.bly = shufflevector <2 x float> %i.blx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bly, <2 x float> %i.blw, <2 x float> %i.bls)
  %indvars.iv.next1899.2 = or disjoint i64 %indvars.iv1898, 3 ; 2 uses
  %i.bma = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv.next1899.2
  %i.bmb = load float, ptr %i.bma, align 4, !tbaa !20
  %i.bmc = mul nsw i64 %indvars.iv.next1899.2, %6
  %gep1633.3 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bmc
  %i.bmd = load <2 x float>, ptr %gep1633.3, align 4, !tbaa !20
  %i.bme = insertelement <2 x float> poison, float %i.bmb, i64 0
  %i.bmf = shufflevector <2 x float> %i.bme, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmf, <2 x float> %i.bmd, <2 x float> %i.blz)
  %indvars.iv.next1899.3 = or disjoint i64 %indvars.iv1898, 4 ; 2 uses
  %i.bmh = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv.next1899.3
  %i.bmi = load float, ptr %i.bmh, align 4, !tbaa !20
  %i.bmj = mul nsw i64 %indvars.iv.next1899.3, %6
  %gep1633.4 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bmj
  %i.bmk = load <2 x float>, ptr %gep1633.4, align 4, !tbaa !20
  %i.bml = insertelement <2 x float> poison, float %i.bmi, i64 0
  %i.bmm = shufflevector <2 x float> %i.bml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmm, <2 x float> %i.bmk, <2 x float> %i.bmg)
  %indvars.iv.next1899.4 = or disjoint i64 %indvars.iv1898, 5 ; 2 uses
  %i.bmo = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv.next1899.4
  %i.bmp = load float, ptr %i.bmo, align 4, !tbaa !20
  %i.bmq = mul nsw i64 %indvars.iv.next1899.4, %6
  %gep1633.5 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bmq
  %i.bmr = load <2 x float>, ptr %gep1633.5, align 4, !tbaa !20
  %i.bms = insertelement <2 x float> poison, float %i.bmp, i64 0
  %i.bmt = shufflevector <2 x float> %i.bms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmt, <2 x float> %i.bmr, <2 x float> %i.bmn)
  %indvars.iv.next1899.5 = or disjoint i64 %indvars.iv1898, 6 ; 2 uses
  %i.bmv = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv.next1899.5
  %i.bmw = load float, ptr %i.bmv, align 4, !tbaa !20
  %i.bmx = mul nsw i64 %indvars.iv.next1899.5, %6
  %gep1633.6 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bmx
  %i.bmy = load <2 x float>, ptr %gep1633.6, align 4, !tbaa !20
  %i.bmz = insertelement <2 x float> poison, float %i.bmw, i64 0
  %i.bna = shufflevector <2 x float> %i.bmz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bna, <2 x float> %i.bmy, <2 x float> %i.bmu)
  %indvars.iv.next1899.6 = or disjoint i64 %indvars.iv1898, 7 ; 2 uses
  %i.bnc = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv.next1899.6
  %i.bnd = load float, ptr %i.bnc, align 4, !tbaa !20
  %i.bne = mul nsw i64 %indvars.iv.next1899.6, %6
  %gep1633.7 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bne
  %i.bnf = load <2 x float>, ptr %gep1633.7, align 4, !tbaa !20
  %i.bng = insertelement <2 x float> poison, float %i.bnd, i64 0
  %i.bnh = shufflevector <2 x float> %i.bng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bni = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnh, <2 x float> %i.bnf, <2 x float> %i.bnb) ; 3 uses
  %indvars.iv.next1899.7 = add nuw nsw i64 %indvars.iv1898, 8 ; 2 uses
  %niter2421.next.7 = add nuw nsw i64 %niter2421, 8 ; 2 uses
  %niter2421.ncmp.7 = icmp eq i64 %niter2421.next.7, %unroll_iter2420
  br i1 %niter2421.ncmp.7, label %._crit_edge1629.loopexit.unr-lcssa, label %.lr.ph1628.new, !llvm.loop !65

._crit_edge1629.loopexit.unr-lcssa:               ; preds = %.lr.ph1628.new
  br i1 %lcmp.mod2417.not, label %._crit_edge1629, label %.epil.preheader2412

.epil.preheader2412:                              ; preds = %._crit_edge1629.loopexit.unr-lcssa, %.lr.ph1628
  %indvars.iv1898.epil.init = phi i64 [ 0, %.lr.ph1628 ], [ %indvars.iv.next1899.7, %._crit_edge1629.loopexit.unr-lcssa ]
  %.epil.init2416 = phi <2 x float> [ zeroinitializer, %.lr.ph1628 ], [ %i.bni, %._crit_edge1629.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2419)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader2412
  %indvars.iv1898.epil = phi i64 [ %indvars.iv1898.epil.init, %.epil.preheader2412 ], [ %indvars.iv.next1899.epil, %bb.m ] ; 3 uses
  %i.bnj = phi <2 x float> [ %.epil.init2416, %.epil.preheader2412 ], [ %i.bnq, %bb.m ]
  %epil.iter2414 = phi i64 [ 0, %.epil.preheader2412 ], [ %epil.iter2414.next, %bb.m ]
  %i.bnk = getelementptr [4 x i8], ptr %i.bih, i64 %indvars.iv1898.epil
  %i.bnl = load float, ptr %i.bnk, align 4, !tbaa !20
  %i.bnm = mul nsw i64 %indvars.iv1898.epil, %6
  %gep1633.epil = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %i.bnm
  %i.bnn = load <2 x float>, ptr %gep1633.epil, align 4, !tbaa !20
  %i.bno = insertelement <2 x float> poison, float %i.bnl, i64 0
  %i.bnp = shufflevector <2 x float> %i.bno, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnp, <2 x float> %i.bnn, <2 x float> %i.bnj) ; 2 uses
  %indvars.iv.next1899.epil = add nuw nsw i64 %indvars.iv1898.epil, 1
  %epil.iter2414.next = add i64 %epil.iter2414, 1 ; 2 uses
  %epil.iter2414.cmp.not = icmp eq i64 %epil.iter2414.next, %xtraiter2413
  br i1 %epil.iter2414.cmp.not, label %._crit_edge1629, label %bb.m, !llvm.loop !66

._crit_edge1629:                                  ; preds = %._crit_edge1629.loopexit.unr-lcssa, %bb.m, %.preheader1287
  %i.bnr = phi <2 x float> [ zeroinitializer, %.preheader1287 ], [ %i.bni, %._crit_edge1629.loopexit.unr-lcssa ], [ %i.bnq, %bb.m ]
  %i.bns = getelementptr [4 x i8], ptr %i.bij, i64 %indvars.iv1902
  store <2 x float> %i.bnr, ptr %i.bns, align 4, !tbaa !20
  %indvars.iv.next1903 = add nuw nsw i64 %indvars.iv1902, 2 ; 2 uses
  %i.bnt = trunc nuw i64 %indvars.iv.next1903 to i32 ; 2 uses
  %i.bnu = icmp sgt i32 %i.i, %i.bnt
  br i1 %i.bnu, label %.preheader1287, label %.preheader1293, !llvm.loop !67

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1641
  %indvars.iv1909 = phi i64 [ %17, %.preheader.lr.ph ], [ %19, %._crit_edge1641 ] ; 2 uses
  %.201643 = phi i32 [ %.19.lcssa, %.preheader.lr.ph ], [ %18, %._crit_edge1641 ]
  %invariant.gep1636 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1909 ; 9 uses
  br i1 %i.aaq, label %.lr.ph1640.preheader, label %._crit_edge1641

.lr.ph1640.preheader:                             ; preds = %.preheader
  br i1 %i.aba, label %.lr.ph1640.epil.preheader, label %.lr.ph1640

.lr.ph1640:                                       ; preds = %.lr.ph1640.preheader, %.lr.ph1640
  %indvars.iv1905 = phi i64 [ %indvars.iv.next1906.7, %.lr.ph1640 ], [ 0, %.lr.ph1640.preheader ] ; 10 uses
  %.011571639 = phi float [ %i.bpi, %.lr.ph1640 ], [ 0.000000e+00, %.lr.ph1640.preheader ]
  %niter2428 = phi i64 [ %niter2428.next.7, %.lr.ph1640 ], [ 0, %.lr.ph1640.preheader ]
  %i.bnv = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv1905
  %i.bnw = load float, ptr %i.bnv, align 4, !tbaa !20
  %i.bnx = mul nsw i64 %indvars.iv1905, %6
  %gep1637 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bnx
  %i.bny = load float, ptr %gep1637, align 4, !tbaa !20
  %i.bnz = tail call float @llvm.fmuladd.f32(float %i.bnw, float %i.bny, float %.011571639)
  %indvars.iv.next1906 = or disjoint i64 %indvars.iv1905, 1 ; 2 uses
  %i.boa = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv.next1906
  %i.bob = load float, ptr %i.boa, align 4, !tbaa !20
  %i.boc = mul nsw i64 %indvars.iv.next1906, %6
  %gep1637.1 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.boc
  %i.bod = load float, ptr %gep1637.1, align 4, !tbaa !20
  %i.boe = tail call float @llvm.fmuladd.f32(float %i.bob, float %i.bod, float %i.bnz)
  %indvars.iv.next1906.1 = or disjoint i64 %indvars.iv1905, 2 ; 2 uses
  %i.bof = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv.next1906.1
  %i.bog = load float, ptr %i.bof, align 4, !tbaa !20
  %i.boh = mul nsw i64 %indvars.iv.next1906.1, %6
  %gep1637.2 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.boh
  %i.boi = load float, ptr %gep1637.2, align 4, !tbaa !20
  %i.boj = tail call float @llvm.fmuladd.f32(float %i.bog, float %i.boi, float %i.boe)
  %indvars.iv.next1906.2 = or disjoint i64 %indvars.iv1905, 3 ; 2 uses
  %i.bok = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv.next1906.2
  %i.bol = load float, ptr %i.bok, align 4, !tbaa !20
  %i.bom = mul nsw i64 %indvars.iv.next1906.2, %6
  %gep1637.3 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bom
  %i.bon = load float, ptr %gep1637.3, align 4, !tbaa !20
  %i.boo = tail call float @llvm.fmuladd.f32(float %i.bol, float %i.bon, float %i.boj)
  %indvars.iv.next1906.3 = or disjoint i64 %indvars.iv1905, 4 ; 2 uses
  %i.bop = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv.next1906.3
  %i.boq = load float, ptr %i.bop, align 4, !tbaa !20
  %i.bor = mul nsw i64 %indvars.iv.next1906.3, %6
  %gep1637.4 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bor
  %i.bos = load float, ptr %gep1637.4, align 4, !tbaa !20
  %i.bot = tail call float @llvm.fmuladd.f32(float %i.boq, float %i.bos, float %i.boo)
  %indvars.iv.next1906.4 = or disjoint i64 %indvars.iv1905, 5 ; 2 uses
  %i.bou = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv.next1906.4
  %i.bov = load float, ptr %i.bou, align 4, !tbaa !20
  %i.bow = mul nsw i64 %indvars.iv.next1906.4, %6
  %gep1637.5 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bow
  %i.box = load float, ptr %gep1637.5, align 4, !tbaa !20
  %i.boy = tail call float @llvm.fmuladd.f32(float %i.bov, float %i.box, float %i.bot)
  %indvars.iv.next1906.5 = or disjoint i64 %indvars.iv1905, 6 ; 2 uses
  %i.boz = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv.next1906.5
  %i.bpa = load float, ptr %i.boz, align 4, !tbaa !20
  %i.bpb = mul nsw i64 %indvars.iv.next1906.5, %6
  %gep1637.6 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bpb
  %i.bpc = load float, ptr %gep1637.6, align 4, !tbaa !20
  %i.bpd = tail call float @llvm.fmuladd.f32(float %i.bpa, float %i.bpc, float %i.boy)
  %indvars.iv.next1906.6 = or disjoint i64 %indvars.iv1905, 7 ; 2 uses
  %i.bpe = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv.next1906.6
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !20
  %i.bpg = mul nsw i64 %indvars.iv.next1906.6, %6
  %gep1637.7 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bpg
  %i.bph = load float, ptr %gep1637.7, align 4, !tbaa !20
  %i.bpi = tail call float @llvm.fmuladd.f32(float %i.bpf, float %i.bph, float %i.bpd) ; 3 uses
  %indvars.iv.next1906.7 = add nuw nsw i64 %indvars.iv1905, 8 ; 2 uses
  %niter2428.next.7 = add nuw nsw i64 %niter2428, 8 ; 2 uses
  %niter2428.ncmp.7 = icmp eq i64 %niter2428.next.7, %unroll_iter2427
  br i1 %niter2428.ncmp.7, label %._crit_edge1641.loopexit.unr-lcssa, label %.lr.ph1640, !llvm.loop !68

._crit_edge1641.loopexit.unr-lcssa:               ; preds = %.lr.ph1640
  br i1 %lcmp.mod2424.not, label %._crit_edge1641, label %.lr.ph1640.epil.preheader

.lr.ph1640.epil.preheader:                        ; preds = %._crit_edge1641.loopexit.unr-lcssa, %.lr.ph1640.preheader
  %indvars.iv1905.epil.init = phi i64 [ 0, %.lr.ph1640.preheader ], [ %indvars.iv.next1906.7, %._crit_edge1641.loopexit.unr-lcssa ]
  %.011571639.epil.init = phi float [ 0.000000e+00, %.lr.ph1640.preheader ], [ %i.bpi, %._crit_edge1641.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2426)
  br label %.lr.ph1640.epil

.lr.ph1640.epil:                                  ; preds = %.lr.ph1640.epil, %.lr.ph1640.epil.preheader
  %indvars.iv1905.epil = phi i64 [ %indvars.iv.next1906.epil, %.lr.ph1640.epil ], [ %indvars.iv1905.epil.init, %.lr.ph1640.epil.preheader ] ; 3 uses
  %.011571639.epil = phi float [ %i.bpn, %.lr.ph1640.epil ], [ %.011571639.epil.init, %.lr.ph1640.epil.preheader ]
  %epil.iter2423 = phi i64 [ %epil.iter2423.next, %.lr.ph1640.epil ], [ 0, %.lr.ph1640.epil.preheader ]
  %i.bpj = getelementptr [4 x i8], ptr %i.blb, i64 %indvars.iv1905.epil
  %i.bpk = load float, ptr %i.bpj, align 4, !tbaa !20
  %i.bpl = mul nsw i64 %indvars.iv1905.epil, %6
  %gep1637.epil = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %i.bpl
  %i.bpm = load float, ptr %gep1637.epil, align 4, !tbaa !20
  %i.bpn = tail call float @llvm.fmuladd.f32(float %i.bpk, float %i.bpm, float %.011571639.epil) ; 2 uses
  %indvars.iv.next1906.epil = add nuw nsw i64 %indvars.iv1905.epil, 1
  %epil.iter2423.next = add i64 %epil.iter2423, 1 ; 2 uses
  %epil.iter2423.cmp.not = icmp eq i64 %epil.iter2423.next, %xtraiter2422
  br i1 %epil.iter2423.cmp.not, label %._crit_edge1641, label %.lr.ph1640.epil, !llvm.loop !69

._crit_edge1641:                                  ; preds = %._crit_edge1641.loopexit.unr-lcssa, %.lr.ph1640.epil, %.preheader
  %.01157.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.bpi, %._crit_edge1641.loopexit.unr-lcssa ], [ %i.bpn, %.lr.ph1640.epil ]
  %i.bpo = getelementptr [4 x i8], ptr %i.bld, i64 %indvars.iv1909
  store float %.01157.lcssa, ptr %i.bpo, align 4, !tbaa !20
  %18 = add nsw i32 %.201643, 1                   ; 2 uses
  %19 = zext nneg i32 %18 to i64                  ; 2 uses
  %20 = icmp samesign ugt i64 %1, %19
  br i1 %20, label %.preheader, label %._crit_edge1644, !llvm.loop !70

._crit_edge1644:                                  ; preds = %._crit_edge1641, %.preheader1293
  %indvars.iv.next1913 = add nuw nsw i64 %indvars.iv1912, 1 ; 2 uses
  %exitcond1915.not = icmp eq i64 %indvars.iv.next1913, %0
  br i1 %exitcond1915.not, label %._crit_edge1646, label %.preheader1299, !llvm.loop !71

._crit_edge1646:                                  ; preds = %._crit_edge1644, %.preheader1300
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !26}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
end_hunk_2
